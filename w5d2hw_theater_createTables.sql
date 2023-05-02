CREATE TABLE movies(
	filmId Integer PRIMARY KEY,
	filmname varchar(200),
	genre varchar(20),
	rating varchar(5),
	theaternumber integer
);

CREATE table customers(
	customerid integer PRIMARY KEY,
	fullname varchar(100),
	zipcode varchar(6),
	phone varchar(10)
);

CREATE TABLE tickets(
	ticketNum integer PRIMARY KEY,
	customerid integer,
	filmid integer,
	ticketprice decimal(5,2),
	matinee boolean,
	showdate date,
	showtime time,
	FOREIGN KEY(customerid) REFERENCES customers(customerid),
	FOREIGN KEY(filmid) REFERENCES movies(filmid)
);

CREATE TABLE concessions(
	foodid varchar(20) PRIMARY key,
	foodfullname varchar(100),
	price decimal(4,2),
	quantityInStock integer
);

CREATE TABLE foodsales(
	receiptNum integer PRIMARY KEY,
	saledate date,
	totalsale decimal(5,2),
	customerid integer,
	FOREIGN KEY(customerid) REFERENCES customers(customerid)
);

CREATE TABLE concessions_foodsales(
	dummyRowId integer PRIMARY KEY,
	receiptnum integer,
	foodid varchar(20),
	FOREIGN KEY(receiptnum) REFERENCES foodsales(receiptNum),
	FOREIGN KEY(foodid) REFERENCES concessions(foodid)
);