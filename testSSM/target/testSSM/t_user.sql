CREATE TABLE `t_user` (
    `u_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
    `u_name` varchar(30) NOT NULL,
    `u_password` varchar(30) NOT NULL,
    `u_email` varchar(40) NOT NULL,
    PRIMARY KEY (`u_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;