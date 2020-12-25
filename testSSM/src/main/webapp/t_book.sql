CREATE TABLE `t_book` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `u_id` int(11) NOT NULL COMMENT '用户id',
  `b_isbn` varchar(255) NOT NULL COMMENT 'isbn号',
  `b_name` varchar(255) NOT NULL COMMENT '书籍名字',
  `b_price` varchar(255) NOT NULL COMMENT '书籍价格',
  `b_publisher` varchar(255) NOT NULL COMMENT '出版社',
  `b_pages` varchar(255) NOT NULL COMMENT '页码',
  `b_cover` varchar(255) NOT NULL COMMENT '图片路径',
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;