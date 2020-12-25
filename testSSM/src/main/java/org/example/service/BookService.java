package org.example.service;

import org.example.bean.Book;
import org.example.bean.PageBean;

import java.util.List;

public interface BookService {
    List<Book> getAllBookList();

    void insertBook(Book book,Integer userId);

    void deleteBook(Integer id);

    void updateBookFirst(Integer id);

    void updateBookAfter(Book book);

    List<Book> getAllBookListPage(Integer a,Integer b);


    List<Book> getAllBookListPageBean(PageBean pageBean);

    Integer selectTotal();

}
