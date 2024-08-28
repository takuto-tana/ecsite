CREATE DATABASE `ecdb` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */

create table if not exists mst_user (
 id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
 user_name varchar(25) UNIQUE NOT NULL,
 password varchar(25) NOT NULL,
 full_name varchar(50) NOT NULL,
 is_admin tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table if not exists mst_goods (
 id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
 goods_name varchar(255) COLLATE utf-8_unicode_ci NOT NULL,
 price int(11) DEFAULT 0,
 created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
 updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table if not exists tbl_purchase (
 id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
 user_id int(11) NOT NULL,
 goods_id int(11) NOT NULL,
 goods_name varchar(255) NOT NULL,
 item_count int(11) DEFAULT 0,
 total int(11) DEFAULT 0,
 created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;