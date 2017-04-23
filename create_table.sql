CREATE TABLE `user`(
  `id` int UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  `username` VARCHAR(64) UNIQUE NOT NULL,
  `password` VARCHAR(64) NOT NULL,
  `last_login_at` TIMESTAMP NOT NULL DEFAULT now(),
  `created_at` TIMESTAMP NOT NULL DEFAULT NOW(),
  `img` varchar(256) NOT NULL
);

create table `article`(
`id` int unsigned NOT NULL auto_increment primary key,
`title` VARCHAR(128) NOT NULL ,
`content` Mediumtext NOT NULL ,
`created_at` TIMESTAMP NOT NULL DEFAULT now(),
`user_id` INT NOT NULL
);


create table `comment`(
  `id` int UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  `content` Mediumtext NOT NULL ,
  `created_at` TIMESTAMP NOT NULL DEFAULT NOW(),
  `user_id` INT NOT NULL ,
  `article_id` INT NOT NULL
);

insert into `article` values(1,'我的第一篇文章','这是我的第一篇文章内容',NULL ),
                            (2,'tornado教程','今天主要讲解一下tornado数据库的操作',NULL);


create table `comment` (
  `id` int unsigned auto_increment primary key not null,
  `content` varchar(128) NOT NULL ,
  `created_at` TIMESTAMP DEFAULT now() NOT NULL ,
  `article_id` int NOT NULL ,
  `uid` INT NOT NULL
);

 alter database alex character set utf8;

create table `hello`(
  `created_at` TIMESTAMP NOT NULL DEFAULT NOW(),
  `user_id` INT NOT NULL
);