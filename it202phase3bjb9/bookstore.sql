--Brian Bates it202-001 10/10/22 phase1-->

-- create and select the database
CREATE DATABASE bookstore;
USE bookstore;  -- MySQL command

-- create the tables
CREATE TABLE bookCategories (
  bookCategoryID     INT(11)        NOT NULL   AUTO_INCREMENT,
  bookCategoryName   VARCHAR(255)   NOT NULL,
  PRIMARY KEY (bookCategoryID)
);

CREATE TABLE books (
  bookID             INT(11)        NOT NULL   AUTO_INCREMENT,
  bookCategoryID     INT(11)        NOT NULL,
  bookCode           VARCHAR(10)    NOT NULL   UNIQUE,
  bookName           VARCHAR(255)   NOT NULL,
  description        TEXT           NOT NULL,
  price              DECIMAL(10,2)  NOT NULL,
  dateAdded          DATETIME       NOT NULL,
  PRIMARY KEY (bookID)
);

CREATE TABLE customers (
  customerID         INT            NOT NULL   AUTO_INCREMENT,
  firstName          VARCHAR(60)    NOT NULL,
  lastName           VARCHAR(60)    NOT NULL,
  emailAddress       VARCHAR(255)   NOT NULL   UNIQUE,
  streetAddress      VARCHAR(60)    NOT NULL,
  city               VARCHAR(40)    NOT NULL,
  state              VARCHAR(2)     NOT NULL,
  zipCode            VARCHAR(10)    NOT NULL,
  reference          VARCHAR(60)    NOT NULL,
  dateAdded          DATETIME       NOT NULL,
  PRIMARY KEY (customerID)
);
--Write 5 insert statements to create 5 different categories of books in the “bookCategories” database table.
--Write insert statements to create 3 books for each category in the “books” database table.
--Write 3 insert statements to create customers in the “customers” database table.

INSERT INTO customers VALUES (null, 'Brian', 'Bates', 'bjb9@njit.edu', '123 street', 'Newark', 'NJ', 07410, 'friend', NOW());
INSERT INTO customers VALUES (null, 'Jane', 'Doe', 'jd@gmail.com', '456 ave', 'NYC', 'NY', 12345, 'ad', NOW());
INSERT INTO customers VALUES (null, 'Joe', 'Smith', 'smith@hotmail.com', '789 blv', 'TRenton', 'NJ', 67890, 'website', NOW());

INSERT INTO  bookcategories VALUES (1, 'horror'); 
INSERT INTO  bookcategories VALUES (2, 'romance'); 
INSERT INTO  bookcategories VALUES (3, 'sci-fi');
INSERT INTO  bookcategories VALUES (4, 'non-fiction');  
INSERT INTO  bookcategories VALUES (5, 'other'); 

INSERT INTO  books VALUES (null, 1, 'spooky', 'haunted horror', 'ahhhhhhhh', 10.99, NOW()); 
INSERT INTO  books VALUES (null, 1, 'spookier', 'haunted houses', 'scream', 20.99, NOW()); 
INSERT INTO  books VALUES (null, 1, 'spookiest', 'haunted mansion', 'bloody murder', 99.99, NOW()); 

INSERT INTO  books VALUES (null, 2, 'kiss', 'walk on beach', 'theres a beach', 9.99, NOW()); 
INSERT INTO  books VALUES (null, 2, 'hug', 'nice winter night', 'enjoy the fireplace', 1.99, NOW()); 
INSERT INTO  books VALUES (null, 2, 'spaghetti', 'romantic diner', 'they eat spaghett', 59.99, NOW()); 

INSERT INTO  books VALUES (null, 3, 'zip', 'Hitchers guide to the galaxy 1', 'the first one', 14.99, NOW()); 
INSERT INTO  books VALUES (null, 3, 'zap', 'Hitchers guide to the galaxy 2', 'the second one', 14.99, NOW()); 
INSERT INTO  books VALUES (null, 3, 'zop', 'Hitchers guide to the galaxy 3', 'the third one', 14.99, NOW()); 

INSERT INTO  books VALUES (null, 4, 'history', 'The Great war', 'ww1', 12.99, NOW()); 
INSERT INTO  books VALUES (null, 4, 'science', 'Make things explode!', 'this is chemistry', 29.99, NOW()); 
INSERT INTO  books VALUES (null, 4, 'math', 'Time to cry', 'Dont major in math', 149.99, NOW()); 

INSERT INTO  books VALUES (null, 5, 'Sports', 'Yankees', 'they win or something', 4.99, NOW()); 
INSERT INTO  books VALUES (null, 5, 'Kard', 'Keep up with kard', 'they are like rich because you buy this book', 4999.99, NOW()); 
INSERT INTO  books VALUES (null, 5, 'Philospy', 'To do your homework or not to do it', 'finish it already', 14.99, NOW()); 