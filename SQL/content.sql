create database content;
use content;
CREATE TABLE pyfa(
  id int(11) NOT NULL auto_increment,
  title varchar(50) NOT NULL default 'NONE',
  content varchar(2000) default NULL,
  classify varchar(20) default NULL,
  PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;	

CREATE TABLE file(
  id int(11) NOT NULL auto_increment,
  title varchar(50) NOT NULL default 'NONE',
  content varchar(2000) default NULL,
  classify varchar(20) default NULL,
  PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;



