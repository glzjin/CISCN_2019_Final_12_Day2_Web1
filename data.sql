create database ciscnfinal;
use ciscnfinal;

-- we don't know how to generate schema ciscnfinal (class Schema) :(
create table if not exists images
(
	id int auto_increment
		primary key,
	path varchar(100) null
)
;

create table if not exists users
(
	username varchar(100) not null
		primary key,
	password varchar(100) null
)
;

INSERT INTO images (id, path) VALUES (1, 'images/guapi.jpg');
INSERT INTO images (id, path) VALUES (2, 'images/loulou.jpg');
INSERT INTO images (id, path) VALUES (3, 'images/maori.jpg');

INSERT INTO users values ('admin', SUBSTR(MD5(RAND()),1,20));
