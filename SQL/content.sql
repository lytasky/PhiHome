create database content;
use content;

CREATE TABLE file(
  id int(11) NOT NULL auto_increment,
  title varchar(50) NOT NULL default 'NONE',
  content varchar(2000) default NULL,
  classify varchar(20) default NULL,
  publishtime DATE ,
  PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;



