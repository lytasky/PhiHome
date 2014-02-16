create database content;
use content;
CREATE TABLE pyfa(
  id int(11) NOT NULL auto_increment,
  title varchar(50) NOT NULL default 'NONE',
  content varchar(2000) default NULL,
  PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;	

create database news;

use news;

create table news(
id int primary key auto_increment,
kind tinyint, 
title varchar(255),
keyword varchar(255),
content text,
picurl varchar(255),
newsfrom varchar(255),
publishtime datetime,
extraFile varchar(255)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
