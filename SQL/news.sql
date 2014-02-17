create database news;

use news;

create table XixiDuihua(
id int primary key auto_increment,
title varchar(255),
newsfrom varchar(255),
publishtime datetime,
content text
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
create table ZhexueAndDaxue(
id int primary key auto_increment,
title varchar(255),
newsfrom varchar(255),
publishtime datetime,
content text
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
create table ZhexueQushi(
id int primary key auto_increment,
title varchar(255),
newsfrom varchar(255),
publishtime datetime,
content text
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
create table TongzhiGonggao(
id int primary key auto_increment,
title varchar(255),
newsfrom varchar(255),
publishtime datetime,
content text
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
create table XinwenBaodao(
id int primary key auto_increment,
title varchar(255),
newsfrom varchar(255),
publishtime datetime,
content text
)ENGINE=InnoDB DEFAULT CHARSET=utf8;