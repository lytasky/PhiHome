create database liuyanban;
use liuyanban;

CREATE TABLE vlyb(
  id int(11) NOT NULL auto_increment,
  title varchar(50) NOT NULL default 'NONE',
  name varchar(20) default NULL,
  qq varchar(15) default NULL,
  mail varchar(30) default NULL,
  page varchar(30) default NULL,
  addr varchar(50) default NULL,
  pic varchar(50) default NULL,
  body varchar(200) NOT NULL default 'NONE',
  ip varchar(20) NOT NULL default 'NONE',
  time datetime default NULL,
  pb char(2) NOT NULL default 'no',
  re varchar(100) default NULL,
  PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE user(
  id int(11) NOT NULL auto_increment,
  name varchar(20) default NULL,
  pwd varchar(20) default NULL,
  class varchar(2) default NULL,
  PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO user(name,pwd) VALUES('admin','admin');
