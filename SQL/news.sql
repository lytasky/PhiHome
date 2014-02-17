create database news;

use news;

create table XixiDialogue(
id int primary key auto_increment,
title varchar(255),
newsfrom varchar(255),
publishtime datetime,
content text
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
create table PhilosophyAndUniversity(
id int primary key auto_increment,
title varchar(255),
newsfrom varchar(255),
publishtime datetime,
content text
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
create table PhilosophyCuriosities(
id int primary key auto_increment,
title varchar(255),
newsfrom varchar(255),
publishtime datetime,
content text
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
create table Announcement(
id int primary key auto_increment,
title varchar(255),
newsfrom varchar(255),
publishtime datetime,
content text
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
create table NewsReport(
id int primary key auto_increment,
title varchar(255),
newsfrom varchar(255),
publishtime datetime,
content text
)ENGINE=InnoDB DEFAULT CHARSET=utf8;