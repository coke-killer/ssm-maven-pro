package org.example.controller;

import lombok.SneakyThrows;
import org.example.bean.Book;
import org.example.bean.PageBean;
import org.example.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    BookService bookService;

    @RequestMapping("/list")
    public String getAllBookList(Model model) {
        List<Book> bookList = bookService.getAllBookList();
        model.addAttribute("bookList", bookList);
        return "list";
    }

    @SneakyThrows
    @RequestMapping("/insert")
    public String insertBook(MultipartFile file, Book book) {
        //判断传来的文件不等于空长度要大于0
        if (file != null && file.getSize() > 0) {
            //我们要得到存放头像像的文件夹路径就需要现在参数里创建application对象
            //然后通过该对象获得根目录下的file文件夹的绝对路径
            File dir = new File("F:\\ssm-maven-pro\\testSSM\\src\\main\\webapp\\images");
            if (!dir.exists()) {
                dir.mkdir();
            }
            System.out.println(dir);
            //获得了根目录我们就可以把MultipartFile file对象写到根目录下面去
            //这时需要获取上传文件的名称以获取后缀名
            String upfilename = file.getOriginalFilename();
            System.out.println(upfilename);
            String suffix = upfilename.substring(upfilename.lastIndexOf("."));
            //动态生成一个32位不重复的文件名
            String filename = UUID.randomUUID() + suffix;
            System.out.println(filename);
            //把上传的文件写入到指定的路径里去
            try {
                file.transferTo(new File("F:\\ssm-maven-pro\\testSSM\\src\\main\\webapp\\images" + "\\" + filename));
            } catch (Exception e) {
            }
            book.setCover(filename);
            //将路径保存到实体中，存入到数据库
            bookService.insertBook(book);
        }
        return "forward:/book/list";
    }

    @RequestMapping("/deleteBook")
    public String deleteBook(Integer id) {
        bookService.deleteBook(id);
        return "forward:/book/list";
    }

    @RequestMapping("/updateBookFirst")
    public String updateBookFirst(Integer id) {
        bookService.updateBookFirst(id);
        return "updateBookBefore";
    }

    @RequestMapping("updatebook")
    public String updateBookAfter(Book book) {
        bookService.updateBookAfter(book);
        return "forward:/book/list";
    }

    @RequestMapping("/pageBean/{nowPage}")
    public String getPageBean(@PathVariable Integer nowPage, Model model) {
        Integer total = bookService.selectTotal();
        PageBean pageBean = new PageBean(10, total, nowPage);
        System.out.println(pageBean);
//        List<Book> list = bookService.getAllBookListPage(pageBean.getBeginCount(),pageBean.getCount());
        List<Book> list = bookService.getAllBookListPageBean(pageBean);
        model.addAttribute("pageBean", pageBean);
        model.addAttribute("list", list);
        return "list";
    }
}
