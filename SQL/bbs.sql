create database bbs;

use bbs;

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
);

insert into article values (null, 0, 1, 'Java����*������ ','����', 'Java����*������ Java����*������ Java����*������ ', now(), 1,0);
insert into article values (null, 0, 2, '��̸���','����', '��̸�����̸�����̸�����̸���',now(), 1,0);

create table adminUse(
id int primary key auto_increment,
name varchar(32),
password varchar(14)
);

insert into adminUse values(null,'admin','admin');


create table user(
id int primary key auto_increment,
name varchar(32),
password varchar(14),
sex varchar(4),
email varchar(20)
);

create table News(
id int primary key auto_increment,
kind tinyint, 
title varchar(255),
keyword varchar(255),
content text,
picurl varchar(255),
newsfrom varchar(255),
publishtime datetime
);