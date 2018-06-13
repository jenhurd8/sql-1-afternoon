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
WHERE FavoriteColor NOT IN ("Red", "Blue");

/* 12. List all the people in the Person table where their favorite color is orange or green.*/
SELECT * FROM Person
WHERE FavoriteColor IN ("Orange", "Green");

/* 13. List all the people in the Person table where their favorite color is orange, green or blue (use IN).*/ 
SELECT * FROM Person
WHERE FavoriteColor IN ("Orange", "Green", "Blue");

/* 14. List all the people in the Person table where their favorite color is yellow or purple (use IN).*/
SELECT * FROM Person
WHERE FavoriteColor IN ("Yellow","Purple");

/****** Table - Orders ******/

