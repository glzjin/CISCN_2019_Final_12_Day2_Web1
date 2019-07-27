create database ciscnfinal;
use ciscnfinal;

-- we don't know how to generate schema ciscnfinal (class Schema) :(
create table if not exists images
(
	id int auto_increment
		primary key,
	path varchar(1000) null
)
;

create table if not exists users
(
	username varchar(1000) not null
		primary key,
	password varchar(1000) null
)
;

INSERT INTO images (id, path) VALUES (1, 'images/guapi.png');
INSERT INTO images (id, path) VALUES (2, 'images/loulou.png');
INSERT INTO images (id, path) VALUES (3, 'images/maori.png');

INSERT INTO users values ('admin', SUBSTR(MD5(RAND()),1,20));
