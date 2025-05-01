-- create db FinProj
CREATE DATABASE FinProj;
USE FinProj;

-- Create the tables
CREATE TABLE Catalog (
    Catalog_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Location VARCHAR(255)
);

CREATE TABLE Genre (
    Genre_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Description TEXT
);

CREATE TABLE Material (
    Material_ID INT PRIMARY KEY,
    Title VARCHAR(255),
    Publication_Date DATE,
    Catalog_ID INT,
    Genre_ID INT,
    FOREIGN KEY (Catalog_ID) REFERENCES Catalog (Catalog_ID),
    FOREIGN KEY (Genre_ID) REFERENCES Genre (Genre_ID)
);

CREATE TABLE Author (
    Author_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Birth_Date DATE,
    Nationality VARCHAR(255)
);

CREATE TABLE Authorship (
    Authorship_ID INT PRIMARY KEY,
    Author_ID INT,
    Material_ID INT,
    FOREIGN KEY (Author_ID) REFERENCES Author (Author_ID),
    FOREIGN KEY (Material_ID) REFERENCES Material (Material_ID)
);

CREATE TABLE Member (
    Member_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Contact_Info VARCHAR(255),
    Join_Date DATE
);

CREATE TABLE Staff (
    Staff_ID int PRIMARY KEY,
    Name VARCHAR(255),
    Contact_Info VARCHAR(255),
    Job_Title VARCHAR(255),
    Hire_Date DATE
);

CREATE TABLE Borrow (
    Borrow_ID SERIAL PRIMARY KEY,
    Material_ID INT,
    Member_ID INT,
    Staff_ID INT,
    Borrow_Date DATE,
    Due_Date DATE,
    Return_Date DATE,
    FOREIGN KEY (Material_ID) REFERENCES Material (Material_ID),
    FOREIGN KEY (Member_ID) REFERENCES Member (Member_ID),
    FOREIGN KEY (Staff_ID) REFERENCES Staff (Staff_ID)
);



-- Insert data into Author table
INSERT INTO Author (Author_ID, Name, Birth_Date, Nationality) VALUES
(1, 'Jane Austen', '1775-12-16', 'British'),
(2, 'Ernest Hemingway', '1899-07-21', 'American'),
(3, 'George Orwell', '1903-06-25', 'British'),
(4, 'Scott Fitzgerald', '1896-09-24', 'American'),
(5, 'J.K. Rowling', '1965-07-31', 'British'),
(6, 'Mark Twain', '1835-11-30', 'American'),
(7, 'Leo Tolstoy', '1828-09-09', 'Russian'),
(8, 'Virginia Woolf', '1882-01-25', 'British'),
(9, 'Gabriel Márquez', '1927-03-06', 'Colombian'),
(10, 'Charles Dickens', '1812-02-07', 'British'),
(11, 'Harper Lee', '1926-04-28', 'American'),
(12, 'Oscar Wilde', '1854-10-16', 'Irish'),
(13, 'William Shakespeare', '1564-04-26', 'British'),
(14, 'Franz Kafka', '1883-07-03', 'Czech'),
(15, 'James Joyce', '1882-02-02', 'Irish'),
(16, 'J.R.R. Tolkien', '1892-01-03', 'British'),
(17, 'Emily Brontë', '1818-07-30', 'British'),
(18, 'Toni Morrison', '1931-02-18', 'American'),
(19, 'Fyodor Dostoevsky', '1821-11-11', 'Russian'),
(20, 'Lucas Piki', '1847-10-16', 'British');

-- Insert data into Catalog table
INSERT INTO Catalog (Catalog_ID, Name, Location) VALUES
(1, 'Books', 'A1.1'),
(2, 'Magazines', 'B2.1'),
(3, 'E-Books', 'C3.1'),
(4, 'Audiobooks', 'D4.1'),
(5, 'Journals', 'E5.1'),
(6, 'Newspaper', 'F6.1'),
(7, 'Maps', 'G7.1'),
(8, 'Novels', 'H8.1'),
(9, 'Sheet Music', 'I9.1'),
(10, 'Educational', 'J10.1');

-- Insert data into Genre table
INSERT INTO Genre (Genre_ID, Name, Description) VALUES
(1, 'General Fiction', 'Literary works with a focus on character and plot development, exploring various themes and human experiences.'),
(2, 'Mystery & Thriller', 'Suspenseful stories centered around crime, investigation, or espionage with an emphasis on tension and excitement.'),
(3, 'Science Fiction & Fantasy', 'Imaginative works that explore alternate realities, futuristic concepts, and magical or supernatural elements.'),
(4, 'Horror & Suspense', 'Stories designed to evoke fear, unease, or dread, often featuring supernatural or psychological elements.'),
(5, 'Dystopian & Apocalyptic', 'Depictions of societies in decline or collapse, often exploring themes of political and social oppression or environmental disaster.'),
(6, 'Classics', 'Enduring works of literature that have stood the test of time, often featuring rich language and complex themes.'),
(7, 'Historical Fiction', 'Fictional stories set in the past, often based on real historical events or figures, and exploring the customs and experiences of that time.'),
(8, 'Epic Poetry & Mythology', 'Ancient or traditional stories and poems, often featuring heroes, gods, and mythical creatures, and exploring cultural values and beliefs.');

-- Insert data into Material table
INSERT INTO Material (Material_ID, Title, Publication_Date, Catalog_ID, Genre_ID) VALUES
(1, 'The Catcher in the Rye', '1951-07-16', 1, 1),
(2, 'To Kill a Mockingbird', '1960-07-11', 2, 1),
(3, 'The Da Vinci Code', '2003-04-01', 3, 2),
(4, 'The Hobbit', '1937-09-21', 4, 3),
(5, 'The Shining', '1977-01-28', 5, 4),
(6, 'Pride and Prejudice', '1813-01-28', 1, 1),
(7, 'The Great Gatsby', '1925-10-04', 2, 1),
(8, 'Moby Dick', '1851-10-18', 3, 1),
(9, 'Crime and Punishment', '1866-01-01', 4, 1),
(10, 'The Hitchhiker''s Guide to the Galaxy', '1979-10-12', 5, 3),
(11, '1984', '1949-06-08', 1, 5),
(12, 'Animal Farm', '1945-08-17', 2, 5),
(13, 'The Haunting of Hill House', '1959-10-17', 3, 4),
(14, 'Brave New World', '1932-08-01', 4, 5),
(15, 'The Chronicles of Narnia: The Lion the Witch and the Wardrobe', '1950-10-16', 5, 3),
(16, 'The Adventures of Huckleberry Finn', '1884-12-10', 6, 1),
(17, 'The Catch-22', '1961-10-11', 7, 1),
(18, 'The Picture of Dorian Gray', '1890-07-01', 8, 1),
(19, 'The Call of Cthulhu', '1928-02-01', 9, 4),
(20, 'Harry Potter and the Philosopher''s Stone', '1997-06-26', 10, 3),
(21, 'Frankenstein', '1818-01-01', 6, 4),
(22, 'A Tale of Two Cities', '1859-04-30', 7, 1),
(23, 'The Iliad', '1750-01-01', 8, 6),
(24, 'The Odyssey', '1725-01-01', 9, 6),
(25, 'The Brothers Karamazov', '1880-01-01', 10, 1),
(26, 'The Divine Comedy', '1320-01-01', 6, 6),
(27, 'The Grapes of Wrath', '1939-04-14', 7, 1),
(28, 'The Old Man and the Sea', '1952-09-01', 8, 1),
(29, 'The Count of Monte Cristo', '1844-01-01', 9, 1),
(30, 'A Midsummer Night''s Dream', '1596-01-01', 10, 7),
(31, 'The Tricky Book', '1888-01-01', 10, 7);

-- Insert data into Authorship table
INSERT INTO Authorship (Authorship_ID, Author_ID, Material_ID) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20),
(21, 1, 21),
(22, 2, 22),
(23, 3, 22),
(24, 3, 23),
(25, 4, 24),
(26, 5, 25),
(27, 6, 26),
(28, 7, 27),
(29, 8, 28),
(30, 19, 28),
(31, 9, 29),
(32, 10, 30),
(33, 8, 30),
(34, 2, 29);

-- Insert data into Member table
INSERT INTO Member (Member_ID, Name, Contact_Info, Join_Date) VALUES
(1, 'Alice Johnson', 'alice.johnson@email.com', '2018-01-10'),
(2, 'Bob Smith', 'bob.smith@email.com', '2018-03-15'),
(3, 'Carol Brown', 'carol.brown@email.com', '2018-06-20'),
(4, 'David Williams', 'david.williams@email.com', '2018-09-18'),
(5, 'Emily Miller', 'emily.miller@email.com', '2019-02-12'),
(6, 'Frank Davis', 'frank.davis@email.com', '2019-05-25'),
(7, 'Grace Wilson', 'grace.wilson@email.com', '2019-08-15'),
(8, 'Harry Garcia', 'harry.garcia@email.com', '2019-11-27'),
(9, 'Isla Thomas', 'isla.thomas@email.com', '2020-03-04'),
(10, 'Jack Martinez', 'jack.martinez@email.com', '2020-07-01'),
(11, 'Kate Anderson', 'kate.anderson@email.com', '2020-09-30'),
(12, 'Luke Jackson', 'luke.jackson@email.com', '2021-01-18'),
(13, 'Mia White', 'mia.white@email.com', '2021-04-27'),
(14, 'Noah Harris', 'noah.harris@email.com', '2021-07-13'),
(15, 'Olivia Clark', 'olivia.clark@email.com', '2021-10-05'),
(16, 'Peter Lewis', 'peter.lewis@email.com', '2021-12-01'),
(17, 'Quinn Hall', 'quinn.hall@email.com', '2022-02-28'),
(18, 'Rachel Young', 'rachel.young@email.com', '2022-06-17'),
(19, 'Sam Walker', 'sam.walker@email.com', '2022-09-25'),
(20, 'Tiffany Allen', 'tiffany.allen@email.com', '2022-12-10');

-- Insert data into Staff table
INSERT INTO Staff (Staff_ID, Name, Contact_Info, Job_Title, Hire_Date) VALUES
(1, 'Amy Green', 'amy.green@email.com', 'Librarian', '2017-06-01'),
(2, 'Brian Taylor', 'brian.taylor@email.com', 'Library Assistant', '2018-11-15'),
(3, 'Christine King', 'chris.king@email.com', 'Library Assistant', '2019-05-20'),
(4, 'Daniel Wright', 'dan.wright@email.com', 'Library Technician', '2020-02-01');

-- Insert data into Borrow table
INSERT INTO Borrow (Borrow_ID, Material_ID, Member_ID, Staff_ID, Borrow_Date, Due_Date, Return_Date) VALUES
(1, 1, 1, 1, '2018-09-12', '2018-10-03', '2018-09-30'),
(2, 2, 2, 1, '2018-10-15', '2018-11-05', '2018-10-29'),
(3, 3, 3, 1, '2018-12-20', '2019-01-10', '2019-01-08'),
(4, 4, 4, 1, '2019-03-11', '2019-04-01', '2019-03-27'),
(5, 5, 5, 1, '2019-04-20', '2019-05-11', '2019-05-05'),
(6, 6, 6, 1, '2019-07-05', '2019-07-26', '2019-07-21'),
(7, 7, 7, 1, '2019-09-10', '2019-10-01', '2019-09-25'),
(8, 8, 8, 1, '2019-11-08', '2019-11-29', '2019-11-20'),
(9, 9, 9, 1, '2020-01-15', '2020-02-05', '2020-02-03'),
(10, 10, 10, 1, '2020-03-12', '2020-04-02', '2020-03-28'),
(11, 1, 11, 2, '2020-05-14', '2020-06-04', '2020-05-28'),
(12, 2, 12, 2, '2020-07-21', '2020-08-11', '2020-08-02'),
(13, 3, 13, 2, '2020-09-25', '2020-10-16', '2020-10-15'),
(14, 4, 1, 2, '2020-11-08', '2020-11-29', '2020-11-24'),
(15, 5, 2, 2, '2021-01-03', '2021-01-24', '2021-01-19'),
(16, 6, 3, 2, '2021-02-18', '2021-03-11', '2021-03-12'),
(17, 17, 4, 2, '2021-04-27', '2021-05-18', '2021-05-20'),
(18, 18, 5, 2, '2021-06-13', '2021-07-04', '2021-06-28'),
(19, 19, 6, 2, '2021-08-15', '2021-09-05', '2021-09-03'),
(20, 20, 7, 2, '2021-10-21', '2021-11-11', NULL),
(21, 21, 1, 3, '2021-11-29', '2021-12-20', NULL),
(22, 22, 2, 3, '2022-01-10', '2022-01-31', '2022-01-25'),
(23, 23, 3, 3, '2022-02-07', '2022-02-28', '2022-02-23'),
(24, 24, 4, 3, '2022-03-11', '2022-04-01', '2022-03-28'),
(25, 25, 5, 3, '2022-04-28', '2022-05-19', '2022-05-18'),
(26, 26, 6, 3, '2022-06-22', '2022-07-13', '2022-07-08'),
(27, 27, 7, 3, '2022-08-04', '2022-08-25', '2022-08-23'),
(28, 28, 8, 3, '2022-09-13', '2022-10-04', '2022-09-28'),
(29, 29, 9, 3, '2022-10-16', '2022-11-06', '2022-11-05'),
(30, 30, 8, 3, '2022-11-21', '2022-12-12', '2022-12-05'),
(31, 1, 9, 4, '2022-12-28', '2023-01-18', NULL),
(32, 2, 1, 4, '2023-01-23', '2023-02-13', NULL),
(33, 3, 10, 4, '2023-02-02', '2023-02-23', '2023-02-17'),
(34, 4, 11, 4, '2023-03-01', '2023-03-22', NULL),
(35, 5, 12, 4, '2023-03-10', '2023-03-31', NULL),
(36, 6, 13, 4, '2023-03-15', '2023-04-05', NULL),
(37, 7, 17, 4, '2023-03-25', '2023-04-15', NULL),
(38, 8, 8, 4, '2023-03-30', '2023-04-20', NULL),
(39, 9, 9, 4, '2023-03-26', '2023-04-16', NULL),
(40, 10, 20, 4, '2023-03-28', '2023-04-18', NULL);

-- 4.1 Queries/Updates
-- 1.  Which materials are currently available in the library? If a material is borrowed and not returned, it’s not considered as available. 
SELECT DISTINCT material. Material_ID, material. Title
FROM Material
WHERE material. Material_ID NOT IN (
SELECT Material_ID
FROM Borrow
WHERE Return_Date IS NULL
) ;


-- 2. Which materials are currently overdue? Suppose today is 04/01/2023, and show the borrow date and due date of each material.
SELECT M.Material_ID, M.Title, B.Borrow_Date, B.Due_Date
FROM Material M
INNER JOIN Borrow B ON M.Material_ID = B.Material_ID
WHERE B.Due_Date < '2023-04-01' AND B.Return_Date IS NULL;

-- 3. What are the top 10 most borrowed materials in the library? Show the title of each material and order them based on their available counts.
SELECT M.Material_ID, M.Title, COUNT(*) AS BorrowCount
FROM Material M
INNER JOIN Borrow B ON M.Material_ID = B.Material_ID
GROUP BY M.Material_ID, M.Title
ORDER BY BorrowCount DESC
LIMIT 10;

-- 4. How many materials has the author Lucas Piki written?
SELECT COUNT(*) AS TotalMaterialsWritten
FROM Author A
INNER JOIN Authorship ASH ON A.Author_ID = ASH.Author_ID
WHERE A.Name = 'Lucas Piki';

-- 5. How many materials were written by two or more authors?
SELECT COUNT(*) AS TotalMaterials
FROM (
    SELECT Material_ID, COUNT(*) AS AuthorCount
    FROM Authorship
    GROUP BY Material_ID
    HAVING AuthorCount >= 2
) AS MultiAuthorMaterials;


-- 6. What are the most popular genres in the library ranked by the total number of borrowed times of each genre?
SELECT G.Genre_ID, G.Name, COUNT(*) AS BorrowCount
FROM Genre G
INNER JOIN Material M ON G.Genre_ID = M.Genre_ID
INNER JOIN Borrow B ON M.Material_ID = B.Material_ID
GROUP BY G.Genre_ID, G.Name
ORDER BY BorrowCount DESC;

-- 7. How many materials had been borrowed from 09/2020-10/2020?
SELECT COUNT(*) AS BorrowedMaterials
FROM Borrow
WHERE Borrow_Date >= '2020-09-01' AND Borrow_Date <= '2020-10-31';

-- 8. How do you update the “Harry Potter and the Philosopher's Stone” when it is returned on 04/01/2023?
UPDATE Borrow
SET Return_Date = '2023-04-01'
WHERE Material_ID IN (
		SELECT Material_ID
		FROM Material
        WHERE Title = 'Harry Potter and the Philosophers Stone'
);
SELECT Material_ID, Return_Date
FROM Borrow
WHERE Material_ID in (
		SELECT Material_ID
		FROM Material
        WHERE Title = 'Harry Potter and the Philosophers Stone'
);

-- 9. How do you delete the member Emily Miller and all her related records from the database? 
-- Delete Borrow records related to "Emily Miller":
DELETE FROM Borrow
WHERE Member_ID = (SELECT Member_ID FROM Member WHERE Name = 'Emily Miller');

-- Delete the "Emily Miller" member record:
SET SQL_SAFE_UPDATES = 0;
DELETE FROM Member
WHERE Name = 'Emily Miller';
SET SQL_SAFE_UPDATES = 1;

-- 10. How do you add the following material to the database? Title: New book, Date: 2020-08-01, Catalog: E-Books Genre: Mystery & Thriller, Author: Lucas Luke
-- Insert the "New book" into the Material table:
INSERT INTO Material (Material_ID, Title, Publication_Date, Catalog_ID, Genre_ID)
VALUES (32, 'New book', '2020-08-01', (SELECT Catalog_ID FROM Catalog WHERE Name = 'E-Books'), (SELECT Genre_ID FROM Genre WHERE Name = 'Mystery & Thriller'));

-- Insert the Author "Lucas Luke" into the Author table:
INSERT INTO Author (Author_ID, Name, Birth_Date, Nationality)
VALUES (21, 'Lucas Luke', NULL, NULL);

-- Insert the new Material_ID and Author_ID into the Authorship table:
INSERT INTO Authorship(Authorship_ID,Author_ID,Material_ID)
VALUES (35,(SELECT Author_ID FROM Author WHERE Name = 'Lucas Luke'),
        (SELECT Material_ID FROM Material WHERE Title = 'New book'));

-- checking by retrieving Authorship
SELECT *
FROM Authorship
WHERE Author_ID IN (SELECT Author_ID FROM Author WHERE Name = 'Lucas Luke');

-- 4.2 Design
-- 1. Alert Staff About Overdue Materials on a Daily Basis
-- Example Query to Retrieve Overdue Materials
SELECT 
    Borrow.Member_ID,
    Member.Name AS MemberName,
    Material.Title AS MaterialTitle,
    Borrow.Due_Date
FROM 
    Borrow
JOIN 
    Material ON Borrow.Material_ID = Material.Material_ID
JOIN 
    Member ON Borrow.Member_ID = Member.Member_ID
WHERE 
    Borrow.Due_Date < CURRENT_DATE AND Borrow.Return_Date IS NULL;



-- 3.3 Querying and Manipulation

-- Example queries are included in the Tests section below.
-- 1. Develop a set of SQL queries or stored procedures to perform common tasks, such as 
-- searching, updating, inserting, and deleting records.

-- Searching example: Search for Members by Name
SELECT *
FROM member
WHERE Name LIKE '%Bob%';

-- Inserting Records:
-- Add a New Member:
INSERT INTO Member (Member_ID, Name, Contact_Info, Join_Date) VALUES
(999, 'Ali John', 'ali.john@email.com', '2023-08-12');

-- Example for updating a record
-- Update Member Information:

UPDATE member
SET Contact_Info = 'ali123.john@email.com'
WHERE Member_ID = 999 ;

-- Example for deleting a record
-- Delete a Member:
DELETE FROM member
WHERE Member_ID = 999;

-- Advanced Queries:
-- Find the top 5 authors with the most published materials:
SELECT Author.Name, COUNT(Authorship.Material_ID) AS PublishedMaterials
FROM Author
LEFT JOIN Authorship ON Author.Author_ID = Authorship.Author_ID
GROUP BY Author.Name
ORDER BY PublishedMaterials DESC
LIMIT 5;

-- Retrieve the names of staff members and their job titles for materials published before a specific date:
SELECT DISTINCT Staff.Name, Staff.Job_Title
FROM Staff
INNER JOIN Borrow ON Staff.Staff_ID = Borrow.Staff_ID
INNER JOIN Material ON Borrow.Material_ID = Material.Material_ID
WHERE Material.Publication_Date < '2000-01-01';

-- Aggregation and Subquery Example:
-- Find the Most Popular Genre and Its Most Popular Material:
-- Step 1: Find the most popular genre (genre with the highest number of materials)
SELECT Genre.Name AS MostPopularGenre, COUNT(Material.Material_ID) AS MaterialCount
FROM Genre
INNER JOIN Material ON Genre.Genre_ID = Material.Genre_ID
GROUP BY Genre.Name
ORDER BY MaterialCount DESC
LIMIT 1;

-- Step 2: Find the most popular material in the most popular genre
SELECT Material.Title AS MostPopularMaterial, Author.Name AS Author
FROM Material
INNER JOIN Genre ON Material.Genre_ID = Genre.Genre_ID
INNER JOIN Authorship ON Material.Material_ID = Authorship.Material_ID
INNER JOIN Author ON Authorship.Author_ID = Author.Author_ID
WHERE Genre.Genre_ID = (
    SELECT Genre.Genre_ID
    FROM Genre
    INNER JOIN Material ON Genre.Genre_ID = Material.Genre_ID
    GROUP BY Genre.Genre_ID
    ORDER BY COUNT(Material.Material_ID) DESC
    LIMIT 1
);














































