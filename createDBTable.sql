create database books collate thai_ci_as

use books
create table authors(
author_id int not null primary key,
first_name varchar(100) not null,
middle_name varchar(100) null,
last_name varchar(100) null,
);

create table publishers(
publisher_id int identity(1,1) not null,
name varchar(255) not null,
primary key(publisher_id)
);

create table books(
book_id int not null primary key,
title varchar(255) not null,
total_pages int null,
rating decimal(4,2) null,
isbn varchar(13) null,
published_date date null,
publisher_id int null,

constraint fk_publisher
foreign key(publisher_id)
references publishers(publisher_id)
);

create table book_authors(
book_id int not null,
author_id int not null,
primary key(book_id, author_id),

constraint fk_book
foreign key(book_id)
references books(book_id),

constraint fk_author
foreign key(author_id)
references authors(author_id)
);
