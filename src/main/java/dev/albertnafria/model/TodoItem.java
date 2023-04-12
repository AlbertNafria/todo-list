package dev.albertnafria.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

import java.time.LocalDate;

@Data
@EqualsAndHashCode(of = "id")
public class TodoItem {

    private int id;
    private String title;
    private String details;
    private LocalDate dateline;

    public TodoItem(String title, String details, LocalDate dateline) {
        this.title = title;
        this.details = details;
        this.dateline = dateline;
    }
}
