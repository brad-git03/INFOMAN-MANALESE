SHOW DATABASES;
CREATE DATABASE library_db;

USE library_db;

CREATE TABLE authors (
	author_id INT,
    first_name VARCHAR(100),
    middle_name VARCHAR(100),
    last_name VARCHAR(100),
    age INT,
    contact_number INT,
    email VARCHAR(100),
    PRIMARY KEY (author_id)
);

CREATE TABLE books (
	book_id INT,
    author_id INT,
    title VARCHAR(100),
    genre VARCHAR(100),
    date_published DATE,
    publisher_id INT,
    PRIMARY KEY (book_id),
    FOREIGN KEY (publisher_id) REFERENCES publishers(publisher_id)
);

CREATE TABLE publishers (
	publisher_id INT,
	publisher_name VARCHAR(100),
    publisher_address VARCHAR(100),
    publisher_contact INT,
    email VARCHAR(100),
    PRIMARY KEY (publisher_id)
);

show databases;

show tables;

desc authors;
desc books;
desc publishers;