#图书管理
##包括两个实体类对应数据库的两张表类
1. Book
    1. private Integer id; 书籍id
    2. private User user;   用户id
    3. private String isbn; 书籍isbn 号
    4.  private String name; 书籍名字
    5. private String price; 书籍价格
    6. private String publisher; 书籍出版社
    7. private String pages; 书籍页数
    8. private String cover;  书籍封面
2. User
    1. private Integer id; 用户id
    2. private String name;  用户姓名
    3. private String password; 用户密码
    4. private String email; 用户email
    5. private List<Book> bookList; 用户添加的书籍
3. pageBean
    1. private Integer total; 总记录数 
    2. private Integer count; 每页条数 
    3. private Integer nowPage; 当前页数 
    4. private Integer beginCount; 起始下标， 当前页减去1再乘每页条数
    5. private Integer endPage; 最后页数
#jsp
1. listTest.jsp 对图书信息的个展示页面
    1. 欢迎页面
    2. 用户密码修改
    3. 增加图书
    4. 删除图书
2. login.jsp 登录页面
3.register 注册用户页面
