create database bbs;

use bbs;

create table course 
(
id int primary key auto_increment,
pid int,
rootid int,
title varchar(255),
writer varchar(255),
cont text,
pdate datetime,
isleaf int ,
pno  int
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table reading 
(
id int primary key auto_increment,
pid int,
rootid int,
title varchar(255),
writer varchar(255),
cont text,
pdate datetime,
isleaf int ,
pno  int
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table salon 
(
id int primary key auto_increment,
pid int,
rootid int,
title varchar(255),
writer varchar(255),
cont text,
pdate datetime,
isleaf int ,
pno  int
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table article 
(
id int primary key auto_increment,
pid int,
rootid int,
title varchar(255),
writer varchar(255),
cont text,
pdate datetime,
isleaf int ,
pno  int
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into course values (null, 0, 1, 'Java语言*初级版 ','张三', 'Java语言*初级版 Java语言*初级版 Java语言*初级版 ', now(), 1,0);
insert into course values (null, 0, 2, '请教高手','张三', '请教高手请教高手请教高手请教高手',now(), 1,0);

insert into reading values(null, 0, 1, 'Java语言*初级版 ','张三', 'Java语言*初级版 Java语言*初级版 Java语言*初级版 ', now(), 1,0);
insert into reading values (null, 0, 2, '请教高手','张三', '请教高手请教高手请教高手请教高手',now(), 1,0);

insert into salon values(null, 0, 1, 'Java语言*初级版 ','张三', 'Java语言*初级版 Java语言*初级版 Java语言*初级版 ', now(), 1,0);
insert into salon values (null, 0, 2, '请教高手','张三', '请教高手请教高手请教高手请教高手',now(), 1,0);

create table adminUse(
id int primary key auto_increment,
name varchar(32),
password varchar(14)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into adminUse values(null,'admin','admin');


create table student(
id int primary key auto_increment,
name varchar(32),
password varchar(32),
sex varchar(10),
studentID varchar(16),
email varchar(32),
discipline varchar(80),
entryTime varchar(32),
degree tinyint
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table teacher(
id int primary key auto_increment,
name varchar(32),
password varchar(32),
sex varchar(10),
teacherID varchar(16),
email varchar(32),
discipline varchar(80),
entryTime varchar(32),
degree tinyint
)ENGINE=InnoDB DEFAULT CHARSET=utf8;