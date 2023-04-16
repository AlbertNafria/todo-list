package dev.albertnafria.service;

import dev.albertnafria.model.TodoData;
import dev.albertnafria.model.TodoItem;

public interface TodoItemService {

    void addItem(TodoItem toAdd);

    void removeItem(int id);

    TodoItem getItem(int id);

    void updateItem(TodoItem toUpdate);

    TodoData getData();
}
