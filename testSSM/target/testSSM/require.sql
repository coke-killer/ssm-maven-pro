DROP DATABASE IF EXISTS book;
create database book ;
use book;

drop table if exists t_book;
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

INSERT INTO `t_book`(`b_id`, `u_id`, `b_isbn`, `b_name`, `b_price`, `b_publisher`, `b_pages`, `b_cover`) VALUES (12, 15, '978-7-5688-3362-2', '红楼梦', '150', '延边大学出版社', '255', '3999975e-4d77-432d-a245-821497c359bd.jpg');
INSERT INTO `t_book`(`b_id`, `u_id`, `b_isbn`, `b_name`, `b_price`, `b_publisher`, `b_pages`, `b_cover`) VALUES (13, 15, '978-7-02-015354-1', '庆余年', '50', '人民文学出版社', '333', '78a00625-fbf1-4ee2-b553-d0c39ec3840f.jpg');
INSERT INTO `t_book`(`b_id`, `u_id`, `b_isbn`, `b_name`, `b_price`, `b_publisher`, `b_pages`, `b_cover`) VALUES (14, 15, '978-7-5484-4678-1', '假如给我三天光明', '50', '哈尔滨出版社', '40', '4643b8d6-7ad3-487a-acd4-963106dd6557.png');
INSERT INTO `t_book`(`b_id`, `u_id`, `b_isbn`, `b_name`, `b_price`, `b_publisher`, `b_pages`, `b_cover`) VALUES (15, 1, '978-7-208-06164-4', '追风筝的人', '45', '上海人民出版社', '362', '64bfc7f7-e589-4fab-b443-4bd6d4806ea9.jpg');
INSERT INTO `t_book`(`b_id`, `u_id`, `b_isbn`, `b_name`, `b_price`, `b_publisher`, `b_pages`, `b_cover`) VALUES (16, 1, '7-201-13928-9', '全球通史', '200', '天津人民出版社', '615', 'a19af056-d66b-4723-9cfb-001618583774.png');
INSERT INTO `t_book`(`b_id`, `u_id`, `b_isbn`, `b_name`, `b_price`, `b_publisher`, `b_pages`, `b_cover`) VALUES (17, 1, '978-7-205-09466-9', '傲慢与偏见', '49', '辽宁人民出版社', '412', '916c7009-3d22-4334-aeb8-846365f7a5e3.jpg');
INSERT INTO `t_book`(`b_id`, `u_id`, `b_isbn`, `b_name`, `b_price`, `b_publisher`, `b_pages`, `b_cover`) VALUES (18, 1, '978-7-5403-5451-0', '长生殿', '25', '武汉：崇文书局', '319', '1468de29-a0ac-4875-b098-8c3b014bb6ab.jpg');
INSERT INTO `t_book`(`b_id`, `u_id`, `b_isbn`, `b_name`, `b_price`, `b_publisher`, `b_pages`, `b_cover`) VALUES (19, 1, '978-7-5641-8294-6', 'python从入门到放弃', '66', '东南大学出版社', '55', 'b2a8d960-bccd-40fb-91c6-0ab3645e592c.jpg');
INSERT INTO `t_book`(`b_id`, `u_id`, `b_isbn`, `b_name`, `b_price`, `b_publisher`, `b_pages`, `b_cover`) VALUES (20, 1, '978-7-302-51759-7', 'Java从入门到放弃', '66', '清华大学出版社', '500', '6074316f-69fe-4b3e-82b0-adbe97a120b6.jpg');
INSERT INTO `t_book`(`b_id`, `u_id`, `b_isbn`, `b_name`, `b_price`, `b_publisher`, `b_pages`, `b_cover`) VALUES (21, 1, '7-113-21114-1', 'C语言从入门到放弃', '40', '中国铁道出版社', '888', 'e283b2a5-f057-48ba-80c6-577bd327ec58.jpg');

CREATE TABLE `t_user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `u_name` varchar(30) NOT NULL,
  `u_password` varchar(30) NOT NULL,
  `u_email` varchar(40) NOT NULL,
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
INSERT INTO `t_user`(`u_id`, `u_name`, `u_password`, `u_email`) VALUES (1, 'lisi', '1234567', 'oakyue@outlook.com');
INSERT INTO `t_user`(`u_id`, `u_name`, `u_password`, `u_email`) VALUES (15, 'zhangsan', '123456', 'oakyue@outlook.com');

