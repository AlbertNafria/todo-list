package dev.albertnafria.controller;

import dev.albertnafria.model.TodoData;
import dev.albertnafria.model.TodoItem;
import dev.albertnafria.service.TodoItemService;
import dev.albertnafria.util.AttributeNames;
import dev.albertnafria.util.Mappings;
import dev.albertnafria.util.ViewNames;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.time.LocalDate;
import java.util.Map;

@Slf4j
@Controller
public class TodoItemController {

    private final TodoItemService todoItemService;

    @Autowired
    public TodoItemController(TodoItemService todoItemService) {
        this.todoItemService = todoItemService;
    }

    @ModelAttribute
    public TodoData todoData() {
        return todoItemService.getData();
    }

    // Handler methods
    // http://localhost:8080/todo-list/items
    @GetMapping(value=Mappings.ITEMS)
    public String items() {
        return ViewNames.ITEMS_LIST;
    }

    @GetMapping(value=Mappings.ADD_ITEM)
    public String addEditItem(Model model) {
        TodoItem todoItem = new TodoItem("", "", LocalDate.now());
        model.addAttribute(AttributeNames.TODO_ITEM, todoItem);
        return ViewNames.ADD_ITEM;
    }
    @PostMapping(value=Mappings.ADD_ITEM)
    public String processItem(@ModelAttribute(AttributeNames.TODO_ITEM) TodoItem todoItem) {
        log.info("todoItem form from = {}", todoItem);
        todoItemService.addItem(todoItem);
        return "redirect:/" + Mappings.ITEMS;
    }
}
