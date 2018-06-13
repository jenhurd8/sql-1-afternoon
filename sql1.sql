/****** Table - People******/
/* 1. Create a table called Person that records a person's ID, Name, Age, Height ( in cm ), City, FavoriteColor.
ID should be an auto-incrementing id/primary key - Use type: INTEGER PRIMARY KEY AUTOINCREMENT*/

CREATE TABLE Person (
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  Name VARCHAR(64),
  Age INTEGER,
  Height INTEGER,
  City VARCHAR(64),
  FavoriteColor VARCHAR(64)
  )

/* 2. Add 5 different people into the Person database.
Remember to not include the ID because it should auto-increment. */

INSERT INTO Person(Name, Age, Height, City, FavoriteColor)
  VALUES ("Joe Johnson", 22, 64, "Chicago", "Red"),
  ("Janet Jones", 32, 62, "New York", "Blue"),
  ("Jim Jameson", 42, 68, "Los Angeles", "Green"),
  ("Jane James", 52, 64, "Miami", "Yellow"),
  ("Josh Johns", 62, 67, "Dallas", "Purple");

/* 3. List all the people in the Person table by Height from tallest to shortest. */
SELECT * FROM Person
ORDER BY Height 
DESC;

/* 4. List all the people in the Person table by Height from shortest to tallest. */
SELECT * FROM Person
ORDER BY Height;SELECT * FROM Person
WHERE Age > 20
AND Age > 30;

/* 5. List all the people in the Person table by Age from oldest to youngest. */
SELECT * FROM Person
ORDER BY Age
DESC

/* 6. List all the people in the Person table older than age 20.*/
SELECT * FROM Person
WHERE Age > 20;

/* 7. List all the people in the Person table that are exactly 18.*/
SELECT * FROM Person
WHERE Age = 18;

/* 8. List all the people in the Person table that are less than 20 and older than 30.*/
SELECT * FROM Person
WHERE Age < 20
OR Age > 30;

/* 9. List all the people in the Person table that are not 27 (Use not equals).*/
SELECT * FROM Person
WHERE AGE IN (27);

/* 10. List all the people in the Person table where their favorite color is not red.*/
SELECT * FROM Person
WHERE FavoriteColor != "Red";

/* 11. List all the people in the Person table where their favorite color is not red and is not blue.*/
SELECT * FROM Person
WHERE FavoriteColor != "Red" AND FavoriteColor != "Blue";

/* 12. List all the people in the Person table where their favorite color is orange or green.*/
SELECT * FROM Person
WHERE FavoriteColor = "Orange" OR FavoriteColor = "Green";

/* 13. List all the people in the Person table where their favorite color is orange, green or blue (use IN).*/ 
SELECT * FROM Person
WHERE FavoriteColor IN ("Orange", "Green", "Blue");

/* 14. List all the people in the Person table where their favorite color is yellow or purple (use IN).*/
SELECT * FROM Person
WHERE FavoriteColor IN ("Yellow","Purple");

/****** Table - Orders ******/
/* 1. Create a table called Orders that records: PersonID, ProductName, ProductPrice, Quantity. */
CREATE TABLE ORDERS (
  PersonID INTEGER,
  ProductName VARCHAR(64),
  ProductPrice FLOAT,
  Quantity INTEGER
  )

/* 2. Add 5 Orders to the Orders table.*/
/*     Make orders for at least two different people.*/
/*     PersonID should be different for different people.*/
  INSERT INTO ORDERS (PersonID, ProductName, ProductPrice, Quantity)
  VALUES (5555, "pencils", 2.00, 50),
  (8888, "erasers", 0.50, 100),
  (7777, "pens", 4.00, 100),
  (3333, "paper", 1.00, 100),
  (2222, "paperclips", 2.00, 10)

/* 3. Select all the records from the Orders table.*/
select * from ORDERS;

/* 4. Calculate the total number of products ordered.*/
select SUM(Quantity) FROM ORDERS;

/* 5. Calculate the total order price.*/
select SUM(ProductPrice*Quantity) FROM ORDERS;

/* 6. Calculate the total order price by a single PersonID.*/
select SUM(ProductPrice*Quantity) FROM ORDERS WHERE PersonID = 5555;

/****** Table - Artist ******/
/* 1. Add 3 new Artists to the Artist table. ( It's already created )*/
INSERT INTO Artist (Name)
VALUES ("Pink"), ("Beyonce"), ("Christina Aguilera");

/* 2. Select 10 artists in reverse alphabetical order.*/
select * from Artist 
ORDER BY Name DESC
LIMIT 10;

/* 3. Select 5 artists in alphabetical order.*/
select * from Artist 
ORDER BY Name ASC
LIMIT 5;

/* 4. Select all artists that start with the word "Black".*/
select * from Artist 
WHERE Name LIKE "Black%";

/* 5. Select all artists that contain the word "Black".*/
select * from Artist 
WHERE Name LIKE "%Black%";

/****** Table - Employee ******/
/*1. List all Employee first and last names only that live in Calgary.*/
select FirstName, LastName from Employee 
WHERE City = "Calgary";

/*2. Find the first and last name and birthdate for the youngest employee.*/
select FirstName, LastName, MAX(BirthDate) from Employee;

/*3. Find the first and last name and birthdate for the oldest employee.*/
select FirstName, LastName, MIN(BirthDate) from Employee;

/*4. Find everyone that reports to Nancy Edwards (Use the ReportsTo column).*/
/*    You will need to query the employee table to find the Id for Nancy Edwards*/
select * from Employee WHERE ReportsTo = 2;

/*5. Count how many people live in Lethbridge.*/
SELECT COUNT(*) FROM Employee WHERE City = "Lethbridge";

/****** Table - Invoice Employee ******/
/* 1. Count how many orders were made from the USA.*/
SELECT COUNT(*) FROM Invoice WHERE BillingCountry = "USA";

/* 2. Find the largest order total amount.*/
SELECT MAX(total) FROM Invoice;

/* 3. Find the smallest order total amount.*/
SELECT MIN(total) FROM Invoice;

/* 4. Find all orders bigger than $5.*/
SELECT * FROM Invoice WHERE total > 5;

/* 5. Count how many orders were smaller than $5.*/
SELECT COUNT(*) FROM Invoice WHERE total < 5;

/* 6. Count how many orders were in CA, TX, or AZ (use IN).*/
SELECT COUNT(*) FROM Invoice WHERE BillingState in ("CA", "TX", "AZ");

/* 7. Get the average total of the orders.*/
SELECT AVG(Total) FROM Invoice; 

/* 8. Get the total sum of the orders.*/
SELECT SUM(Total) FROM Invoice; 

