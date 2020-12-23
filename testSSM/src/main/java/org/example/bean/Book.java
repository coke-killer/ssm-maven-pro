package org.example.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Book {
    private Integer id;
    private User user;
    private String isbn;
    private String name;
    private String price;
    private String publisher;
    private String pages;
    private String cover;
}
