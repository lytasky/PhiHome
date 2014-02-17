create database news;

use news;

create table xxzxdh(
id int primary key auto_increment,
title varchar(255),
newsfrom varchar(255),
publishtime datetime,
content text
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table zxydx(

id int primary key auto_increment,
title varchar(255),
newsfrom varchar(255),
publishtime datetime,
content text
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table zxqw(
id int primary key auto_increment,
title varchar(255),
newsfrom varchar(255),
publishtime datetime,
content text
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table tzgg(
id int primary key auto_increment,
title varchar(255),
newsfrom varchar(255),
publishtime datetime,
content text
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table xwbd(
id int primary key auto_increment,
title varchar(255),
newsfrom varchar(255),
publishtime datetime,
content text
)ENGINE=InnoDB DEFAULT CHARSET=utf8;