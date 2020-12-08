package org.example.service.impl;

import org.example.bean.Book;
import org.example.bean.PageBean;
import org.example.mapper.BookMapper;
import org.example.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl implements BookService {
    @Autowired
    BookMapper bookMapper;

    @Override
    public List<Book> getAllBookList() {
        return bookMapper.getAllBookList();
    }

    @Override
    public void insertBook(Book book) {
        bookMapper.insertBook(book);
    }

    @Override
    public void deleteBook(Integer id) {
        bookMapper.deleteBook(id);
    }

    @Override
    public void updateBookFirst(Integer id) {
        bookMapper.updateBookFirst(id);
    }

    @Override
    public void updateBookAfter(Book book) {
        bookMapper.updateBookAfter(book);
    }

    @Override
    public List<Book> getAllBookListPage(Integer a, Integer b) {
        return bookMapper.getAllBookListPage(a, b);
    }

    @Override
    public List<Book> getAllBookListPageBean(PageBean pageBean) {
        return bookMapper.getAllBookListPageBean(pageBean);
    }

}
