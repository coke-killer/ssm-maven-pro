package org.example.mapper;

import org.apache.ibatis.annotations.Param;
import org.example.bean.Book;
import org.example.bean.PageBean;

import java.util.List;

public interface BookMapper {
    List<Book> getAllBookList();

    void insertBook(@Param("book") Book book, @Param("userId") Integer userId);

    void deleteBook(Integer id);

    void updateBookFirst(Integer id);

    void updateBookAfter(Book book);

    List<Book> getAllBookListPage(Integer a, Integer b);

    List<Book> getAllBookListPageBean(PageBean pageBean);

    Integer selectTotal();
}
