create database practice_demo;
use practice_demo;

-- create table student
-- (
-- 	rollno int primary key,
-- 	name varchar(50)
-- );

select *
from student

insert into student
	(rollno,name)
values
	(1, 'abc'),
	(2, 'meet');

insert into student
values
	(3, 'abc'),
	(4, 'ccc');

-- create table DEPOSIT
-- (
-- 	ACTNO int,
-- 	CNAME varchar(50),
-- 	BNAME varchar(50),
-- 	AMOUNT decimal(8,2),
-- 	ADATE DATETIME
-- );

create table BRANCH
(
	BNAME varchar(50),
	CITY varchar(50)
);

insert into DEPOSIT
	(ACTNO,CNAME,BNAME,AMOUNT,ADATE)
values
	(101, 'anil', 'VRCE', 1000.00 , '1995-03-01'),
	(102, 'SUNIL', 'AJNI', 5000.00, '1996-01-04'),
	(103, 'MEHUL', 'KAROLBAGH', 3500.00 , '1995-11-17'),
	(104, 'MADHURI', 'CHANDI', 1200.00 , '1995-12-17'),
	(105, 'PRMOD', 'M.G. ROAD ', 3000.00 , '1996-03-27'),
	(106, 'SANDIP', 'ANDHERI', 2000.00 , '1996-03-31'),
	(107, 'SHIVANI', 'VIRAR', 1000.00 , '1995-09-05'),
	(108, 'KRANTI', 'NEHRU PLACE ', 5000.00 , '1995-07-02'),
	(109, 'MINU', 'POWAI', 7000.00 , '1995-08-10');

select *
from DEPOSIT
select *
from BORROW
select *
from CUSTOMERS
select ACTNO, CNAME, AMOUNT
FROM DEPOSIT
select LOANNO, AMOUNT
FROM BORROW

select *
from BORROW
where BNAME = 'ANDHERI';

select ACTNO , AMOUNT
FROM DEPOSIT
where ACTNO = 106;

select *
FROM BORROW
where AMOUNT > 5000;

select *
from DEPOSIT
where ADATE > '1996-12-01';

select *
from DEPOSIT
where ACTNO < 105;

select *
from CUSTOMERS
where CITY in ('NAGPUR', 'DELHI');

SELECT CNAME, BNAME
FROM DEPOSIT
WHERE AMOUNT > 4000 AND ACTNO < 105;

select *
FROM BORROW
where AMOUNT BETWEEN 3000 AND 8000;

select *
from borrow
where AMOUNT >= 3000 and AMOUNT <= 8000;

select *
from BORROW
where BNAME != 'ANDHERI';

select *
FROM BORROW
where AMOUNT is null;

select ACTNO, CNAME, AMOUNT
from DEPOSIT
where ACTNO < 104 and BNAME in('AJNI', 'KAROLBAGH','M.G. ROAD');


SELECT TOP 5
	LOANNO, CNAME
FROM BORROW
where BNAME != 'ANDHERI'

select DISTINCT CITY
from CUSTOMERS
;

select DISTINCT CITY
from BRANCH
;

select DISTINCT BNAME
from BRANCH
;

SELECT *
FROM CUSTOMERS
ORDER BY city ASC;

SELECT *
FROM DEPOSIT
ORDER BY AMOUNT DESC;

SELECT *
FROM CUSTOMERS
ORDER BY city DESC;

SELECT DISTINCT CNAME AS UNI_Borrowers
FROM BORROW;

update DEPOSIT set AMOUNT = 5000 where AMOUNT = 3000;

update BORROW set BNAME = 'C.G. ROAD' where CNAME='ANIL' and BNAME = 'VRCE';

update DEPOSIT set AMOUNT = 5000 , ACTNO = 111 where CNAME='SANDIP';

update DEPOSIT set AMOUNT = AMOUNT + (AMOUNT*10/100);

update DEPOSIT set AMOUNT = 5000 where ACTNO between 103 and 107
;

update BORROW set AMOUNT = 0 where LOANNO = 321;

UPDATE BORROW SET LOANNO = 401, BNAME = 'AJNI' WHERE LOANNO = 201;

update DEPOSIT set CNAME = 'RAMESH' , BNAME = 'VRCE' , AMOUNT = 5500 where ACTNO = 102;

UPDATE BORROW SET BNAME = 'null', AMOUNT = 0 WHERE LOANNO = 481 and CNAME = 'KRANTI';



---------DELETE/DROP/TRUNCATE--------


DELETE FROM CUSTOMERS WHERE CITY = 'BOMBAY';

DELETE FROM DEPOSIT WHERE AMOUNT <= 1000;

DELETE FROM BORROW WHERE BNAME = 'AJNI';

DELETE FROM BORROW WHERE LOANNO BETWEEN 201 AND 210
;

DELETE FROM DEPOSIT WHERE ADATE > '1996-12-01';

TRUNCATE TABLE CUSTOMERS;

DELETE FROM DEPOSIT WHERE CNAME = 'ANIL' AND ACTNO = 101;

DELETE FROM DEPOSIT WHERE BNAME != 'ANDHERI';

DELETE FROM BORROW WHERE AMOUNT <= 2000 AND BNAME != 'VRCE';

DROP TABLE BRANCH



-------------ALTER----------------

-- CREATE TABLE Student
-- (
-- 	Enrollment_No VARCHAR(20),
-- 	Name VARCHAR(20),
-- 	CPI DECIMAL(5,2),
-- 	Birthdate DATETIME
-- );

ALTER TABLE STUDENT ADD
	City VARCHAR(20) NULL,
	Backlog INT NOT NULL


ALTER TABLE STUDENT
ALTER COLUMN
NAME VARCHAR (35)

ALTER TABLE STUDENT
ALTER COLUMN
CPI INT

EXEC sp_rename 'STUDENT.[ENO1]', 'ENO', 'COLUMN';

ALTER TABLE Student DROP COLUMN City;

EXEC sp_rename 'Student', 'Student_Master';

ALTER TABLE Student_MASTER DROP COLUMN BACKLOG;

ALTER TABLE STUDENT_MASTER
ALTER COLUMN NAME VARCHAR(255) NOT NULL;

EXEC sp_rename 'Student_Master.[Birthdate]', 'BDATE', 'COLUMN';

ALTER TABLE Student_Master
ALTER COLUMN
ENO VARCHAR (12)

SELECT *
FROM Student_Master



-------------------LIKE------------------

INSERT INTO Students
	(StuID, FirstName, LastName, Website, City, Division)
VALUES
	(1011, 'Keyur', 'Patel', 'techonthenet.com', 'Rajkot', 'II-BCX'),
	(1022, 'Hardik', 'Shah', 'digminecraft.com', 'Ahmedabad', 'I-BCY'),
	(1033, 'Kajal', 'Trivedi', 'bigactivities.com', 'Baroda', 'IV-DCX'),
	(1044, 'Bhoomi', 'Gajera', 'checkyourmath.com', 'Ahmedabad', 'III-DCW'),
	(1055, 'Harmit', 'Mitel', NULL, 'Rajkot', 'II-BCY'),
	(1066, 'Ashok', 'Jani', NULL, 'Baroda', 'II-BCZ');



select *
from students
where FirstName like 'k%';

select *
from students
where FirstName like '_____';

select FirstName, LastName
from students
where City like '_____%a';

select *
from students
where lastName like '%tel';


select *
from students
where FirstName like 'ha%t';

SELECT *
FROM Students
WHERE FirstName LIKE 'k_y%';

SELECT * FROM Students;

select *
from students
where website is null and firstname like '_____';

select *
from students
where lastname like '%jer%';


select *
from students
where city like 'r%' or city like 'b%';

select *
from students
where website like '%%';


SELECT *
FROM Students
WHERE FirstName LIKE '[A-H]%';

SELECT *
FROM Students
WHERE FirstName LIKE '_[aeiou]%';

select *
from students
where city like '%rod%';

select firstname, lastname
from students
where website like 'bi%';


select *
from students
where lastname like '______';


select *
from students
where city like '_____' and city like 'ba%';


select firstname
from students
where Division like '%bc%';



select StuID, city
from students
where Division like '______' and website like '%%';

SELECT *
FROM Students
WHERE FirstName LIKE '__[^aeiouAEIOU]%';



---------------Math functions---------------

SELECT 5 * 30 AS result;

SELECT ABS(-25) AS abs_neg25, ABS(25) AS abs_25, ABS(-50) AS abs_neg50, ABS(50) AS abs_50;

SELECT CEILING(25.2) AS ceil_25_2, CEILING(25.7) AS ceil_25_7, CEILING(-25.2) AS ceil_neg25_2;

SELECT FLOOR(25.2) AS floor_25_2, FLOOR(25.7) AS floor_25_7, FLOOR(-25.2) AS floor_neg25_2;

SELECT 5 % 2 AS mod_5_2, 5 % 3 AS mod_5_3;

SELECT POWER(3, 2) AS three_squared, POWER(4, 3) AS four_cubed;

SELECT SQRT(25) AS sqrt_25, SQRT(30) AS sqrt_30, SQRT(50) AS sqrt_50;

SELECT POWER(5, 2) AS square_5, POWER(15, 2) AS square_15, POWER(25, 2) AS square_25;

SELECT PI() AS pi_value;

SELECT
	ROUND(157.732, 2) AS round_2_dp,
	ROUND(157.732, 0) AS round_0_dp,
	ROUND(157.732, -2) AS round_minus_2_dp;

SELECT EXP(2) AS exp_2, EXP(3) AS exp_3;

SELECT LOG10(5) AS log10_5, LOG10(100) AS log10_100;

SELECT
	SIN(3.1415) AS sin_val,
	COS(3.1415) AS cos_val,
	TAN(3.1415) AS tan_val;

SELECT SIGN(-25) AS sign_neg25, SIGN(0) AS sign_0, SIGN(25) AS sign_25;

SELECT RAND() AS random_number;



-------------String functions------------


SELECT 
	LEN(NULL) AS Null_Length,
	LEN('   hello     ') AS Hello_Length_With_Spaces,
	LEN('') AS Blank_Length;

SELECT 
	LOWER('KAGATHARA') as lower,
	upper('kagathra') as upper;

SELECT SUBSTRING('kagtahra',1,3);

SELECT LEFT(FirstName, 3) AS First_3_Chars
FROM Students;

SELECT LEFT('kagtahra', 3) AS First_3_Chars;

SELECT SUBSTRING('kagtahra',3,10);

SELECT 
	REPLACE('abc123efg','abc123efg','abcXYZefg'),
	REPLACE('abcabcabc','abcabcabc','ab5ab5ab5');

SELECT 
	ASCII('A'),
	ASCII('a'),
	ASCII('z'),
	ASCII('Z'),
	ASCII('1'),
	ASCII('0');

SELECT 
	CHAR(65),
	CHAR(97),
	CHAR(122),
	CHAR(90),
	CHAR(48),
	CHAR(57);

SELECT TRIM('    hello     world     ');

SELECT TRIM('hello world     ');
SELECT LTRIM('   hello world   ') AS Left_Trimmed;
SELECT RTRIM('   hello world  ') AS Right_Trimmed;


SELECT LTRIM(RTRIM('    hello world     ')) AS Fully_Trimmed;

SELECT ASCII(RIGHT('   hello world  ', 1)) AS LastCharCode;


SELECT 
	LEFT('SQL Server', 4) AS First_4_Chars,
	RIGHT('SQL Server', 5) AS Last_5_Chars;

SELECT CAST('1234.56' AS DECIMAL(12,4)) AS Converted_Number;

SELECT CONVERT(INT, 11.58) AS Converted_Int;

SELECT REPLICATE(' ', 10) + 'meet';

SELECT ('Meet'+ ' ' +'kagathara');

SELECT CONCAT('meet',' ','kagathara');

SELECT REVERSE('darshan');

SELECT REPLICATE('hello from SQL',3);

select STUFF('abcde', 1, 3, 'HTML');

SELECT COALESCE(NULL, NULL, '1st value','2nd value');

SELECT ISNUMERIC('non');
SELECT ISNUMERIC('123');
SELECT ISNUMERIC(123.244);

SELECT CHARINDEX('t','customer',1);


----------------Date Functions--------------


SELECT GETDATE() as column_Today_Date;

SELECT DATEADD(DAY, 365, GETDATE());

SELECT FORMAT(GETDATE(), 'MM dd yyyy hh:mmtt') AS Formatted_Full;

SELECT FORMAT(GETDATE(), 'dd MMMM yyyy');

SELECT FORMAT(GETDATE(), 'MMM dd, yy');

SELECT DATEDIFF(MONTH, '2008-03-31', '2008-12-31');

SELECT DATEDIFF(YEAR, '2010-09-14', '2012-1-25');

SELECT DATEDIFF(HOUR, '2012-1-25 10:30', '2012-01-26 7:00');

SELECT 
	DAY('2016-05-12')   AS Extracted_Day,
	MONTH('2016-05-12') AS Extracted_Month,
	YEAR('2016-05-12')  AS Extracted_Year;

SELECT 
	DATEPART(DAY, '2016-05-12') AS Day_Part,
	DATEPART(MONTH, '2016-05-12') AS Month_Part,
	DATEPART(YEAR, '2016-05-12') AS Year_Part;

SELECT DATEADD(YEAR, 5, GETDATE());

SELECT DATEADD(MONTH, -2, GETDATE());

SELECT DATENAME(MONTH,GETDATE());

SELECT EOMONTH(GETDATE()) AS last_date_of_current_month;

SELECT DATEDIFF(MONTH, '2005-06-13', GETDATE()) as Age_Month;

SELECT DATEDIFF(YEAR, '2005-06-13', GETDATE())as Age_Year;



------------------------------


CREATE TABLE StudentMarks (
	Sid INT NOT NULL,
	SName VARCHAR(50) NOT NULL,
	Marks INT NOT NULL
);

INSERT INTO StudentMarks (Sid, SName, Marks)
VALUES 
(1, 'John', 90),
(2, 'Martin', 80),
(3, 'Carol', 89),
(4, 'Jack', 99),
(5, 'Rose', 88),
(6, 'Mary', 90);

SELECT COUNT(*) AS Total_Students 
FROM StudentMarks;

SELECT SUM(Marks) AS Total_Marks 
FROM StudentMarks;

SELECT AVG(Marks) AS Average_Marks 
FROM StudentMarks;

SELECT MIN(Marks) AS Minimum_Marks 
FROM StudentMarks;

SELECT MAX(Marks) AS Maximum_Marks 
FROM StudentMarks;

CREATE TABLE Employee1 (
	EID INT NOT NULL,
	EName VARCHAR(50) NOT NULL,
	Department VARCHAR(50) NOT NULL,
	Salary DECIMAL(8,2) NOT NULL,
	JoiningDate DATETIME NOT NULL,
	City VARCHAR(50) NOT NULL
);

INSERT INTO Employee1 (EID, EName, Department, Salary, JoiningDate, City)
VALUES
(101, 'Rahul', 'Admin', 56000, '1990-01-01', 'Rajkot'),
(102, 'HarMAX()dik', 'IT', 18000, '1990-09-25', 'Ahmedabad'),
(103, 'Bhavin', 'HR', 25000, '1991-05-14', 'Baroda'),
(104, 'Bhoomi', 'Admin', 39000, '1991-02-08', 'Rajkot'),
(105, 'Rohit', 'IT', 17000, '1990-07-23', 'Jamnagar'),
(106, 'Priya', 'IT', 9000,  '1990-10-18', 'Ahmedabad'),
(107, 'Neha', 'HR', 34000,  '1991-12-25', 'Rajkot');


SELECT
	MAX(Salary) as highest_salary,
	MIN(Salary) as lowest_salary,
	AVG(Salary) AS average_salary,
	SUM(Salary) AS total
FROM Employee1;

SELECT COUNT(*) FROM Employee1;

SELECT MAX(Salary) FROM Employee1
WHERE Department = 'IT';

SELECT COUNT(DISTINCT City) AS Unique_City_Count 
FROM Employee1;

SELECT City, COUNT(*) AS Total_Employees
FROM Employee1
GROUP BY City
HAVING COUNT(*) > 1;

SELECT Department, SUM(Salary) AS total_salary
FROM Employee1
GROUP BY Department

SELECT AVG(Salary) AS total_salary
FROM Employee1
GROUP BY Department

SELECT MIN(Salary) AS Min_Salary_Ahmedabad
FROM Employee1
WHERE City = 'Ahmedabad';

SELECT Department, SUM(Salary) AS Min_Salary_Ahmedabad
FROM Employee1
WHERE City = 'rajkot'
GROUP BY Department
HAVING SUM(Salary) != 50000;

SELECT COUNT(city) 
FROM Employee1 
where City = 'rajkot'

SELECT MAX(Salary) - MIN(Salary) AS SAL_DIFFERENCE
FROM Employee1;

SELECT COUNT(EName)
FROM Employee1
WHERE JoiningDate > '1991-01-01';

SELECT Department, SUM(Salary) AS Total_Salary
FROM Employee1
GROUP BY Department
HAVING SUM(Salary) > 35000
ORDER BY Total_Salary;

select Department, COUNT(EName)
FROM Employee1
GROUP BY Department
HAVING COUNT(EName) > 2

SELECT MIN(Salary) 
FROM Employee1 
where City = 'rajkot'

select Department, MIN(Salary)
FROM Employee1
GROUP BY Department

SELECT sum(Salary) AS total_salary
FROM Employee1
GROUP BY City

select Department,
MIN(Salary) as MIN,
MAX(Salary) as MAX,
SUM(Salary) as SUM
FROM Employee1
GROUP BY Department


--------------SET Operators-----------------


CREATE TABLE Computer (
	RollNo INT,
	Name VARCHAR(50)
);

CREATE TABLE Electrical (
	RollNo INT,
	Name VARCHAR(50)
);

INSERT INTO Computer (RollNo, Name)
VALUES 
(101, 'Ajay'),
(109, 'Haresh'),
(115, 'Manish');

INSERT INTO Electrical (RollNo, Name)
VALUES 
(105, 'Ajay'),
(107, 'Mahesh'),
(115, 'Manish');

SELECT Name FROM Computer
UNION
SELECT Name FROM Electrical

SELECT Name FROM Computer
UNION ALL
SELECT Name FROM Electrical

SELECT Name FROM Computer
INTERSECT
SELECT Name FROM Electrical;

SELECT Name FROM Computer
EXCEPT
SELECT Name FROM Electrical;

SELECT Name FROM Electrical
EXCEPT
SELECT Name FROM Computer;

SELECT * FROM Computer
UNION
SELECT * FROM Electrical

SELECT * FROM Computer
UNION ALL
SELECT * FROM Electrical



-----------------Select Into ----------

CREATE TABLE Cricket (
	Name VARCHAR(50),
	City VARCHAR(50),
	Age INT
);

INSERT INTO Cricket (Name, City, Age)
VALUES
('Sachin Tendulkar', 'Mumbai', 30),
('Rahul Dravid', 'Bombay', 35),
('M. S. Dhoni', 'Jharkhand', 31),
('Suresh Raina', 'Gujarat', 30);


SELECT Name, City, Age 
INTO  World_cup
FROM Cricket

SELECT Name, City
INTO T20
FROM Cricket
WHERE 1 = 0;

SELECT *
INTO IPL
FROM Cricket
WHERE 1 = 0;

INSERT INTO IPL (Name, City, Age)
SELECT Name, City, Age
FROM Cricket
WHERE name LIKE'_a_____%';

DELETE FROM IPL;

DELETE FROM Cricket
WHERE City = 'Jharkhand';

EXEC sp_rename 'IPL', 'IPL2018';

DROP TABLE T20;
-- Removed 'USE practice_demo' as it is not allowed in a procedure, function, or trigger.
SELECT * FROM student
CREATE TABLE Student1 (
    Rno INT,
    Name VARCHAR(50),
    Branch VARCHAR(50)
);

INSERT INTO Student VALUES
(101, 'Raju', 'CE'),
(102, 'Amit', 'CE'),
(103, 'Sanjay', 'ME'),
(104, 'Neha', 'EC'),
(105, 'Meera', 'EE'),
(106, 'Mahesh', 'ME');


CREATE TABLE Result1 (
    Rno INT,
    SPI DECIMAL(4,2)
);

INSERT INTO Result VALUES
(101, 8.8),
(102, 9.2),
(103, 7.6),
(104, 8.2),
(105, 7.0),
(107, 8.9);


CREATE TABLE Employee1 (
    EmployeeNo VARCHAR(50),
    Name VARCHAR(50),
    ManagerNo VARCHAR(50)
);

INSERT INTO Employee1 VALUES
('E01', 'Tarun', NULL),
('E02', 'Rohan', 'E02'),
('E03', 'Priya', 'E01'),
('E04', 'Milan', 'E03'),
('E05', 'Jay', 'E01'),
('E06', 'Anjana', 'E04');


SELECT *
FROM Student S
JOIN Result R ON S.Rno = R.Rno;

SELECT *
FROM Student S
JOIN Result R ON S.Rno = R.Rno
WHERE Branch = 'ce';


SELECT S.Rno, S.Name, S.Branch, R.SPI
FROM Student S
JOIN Result R ON S.Rno = R.Rno
WHERE S.Branch != 'EC';

SELECT S.Branch, AVG(R.SPI) AS Average_SPI
FROM Student S
JOIN Result R ON S.Rno = R.Rno
GROUP BY S.Branch;

SELECT S.Branch, AVG(R.SPI) AS Average_SPI
FROM Student S
JOIN Result R ON S.Rno = R.Rno
GROUP BY S.Branch
ORDER BY Average_SPI ASC;

SELECT S.Branch, AVG(R.SPI) AS Average_SPI
FROM Student S 
JOIN Result R ON S.Rno = R.Rno 
GROUP BY S.Branch
HAVING Branch = 'CE' OR Branch = 'ME';

SELECT * 
FROM Student S 
LEFT JOIN Result R ON S.Rno = R.Rno

SELECT * 
FROM Student S 
RIGHT JOIN Result R ON S.Rno = R.Rno

SELECT *
FROM Student S 
FULL JOIN Result R ON S.Rno = R.Rno

SELECT E1.Name AS Employee_Name, E2.Name AS Manager_Name
FROM Employee1 E1
LEFT JOIN Employee1 E2 ON E1.ManagerNo = E2.EmployeeNo;

-- City table
CREATE TABLE City (
    CityID INT PRIMARY KEY,
    CityName VARCHAR(50) UNIQUE,
    Pincode VARCHAR(6),
    Remarks VARCHAR(250)
);

-- Village table
CREATE TABLE Village (
    VillageID INT PRIMARY KEY,
    VillageName VARCHAR(50),
    CityID INT,
    FOREIGN KEY (CityID) REFERENCES City(CityID)
);
INSERT INTO City (CityID, CityName, Pincode, Remarks) VALUES
(1, 'Rajkot', '360005', 'Good'),
(2, 'Surat', '335009', 'Very Good'),
(3, 'Baroda', '390001', 'Awesome'),
(4, 'Jamnagar', '361003', 'Smart'),
(5, 'Junagadh', '362229', 'Historic'),
(6, 'Morbi', '363641', 'Ceramic');

INSERT INTO Village (VillageID, VillageName, CityID) VALUES
(101, 'Raiya', 1),
(102, 'Madhapar', 1),
(103, 'Dodka', 3),
(104, 'Falla', 4),
(105, 'Bhesan', 5),
(106, 'Dhoraji', 5);


SELECT V.VillageID, V.VillageName
FROM Village V
JOIN City C ON V.CityID = C.CityID 
WHERE CityName = 'RAJKOT'

SELECT C.Pincode , V.VillageName , C.CityName
FROM Village V
JOIN City C ON V.CityID = C.CityID 

SELECT 
	City.CityName, 
	COUNT(Village.VillageID) AS VillageCount
FROM 
	City
JOIN 
	Village ON City.CityID = Village.CityID
GROUP BY 
	City.CityName
HAVING 
	COUNT(Village.VillageID) > 1;

SELECT C.CityName
FROM City C
LEFT JOIN Village V ON V.CityID = C.CityID 
WHERE V.VillageName IS NULL

SELECT C.CityName , COUNT(V.VillageName) AS VILLAGE_COUNT
FROM City C
LEFT JOIN Village V ON V.CityID = C.CityID
GROUP BY C.CityName

SELECT COUNT(*) AS CityCount
FROM (
    SELECT C.CityID
    FROM City C
    JOIN Village V ON C.CityID = V.CityID
    GROUP BY C.CityID
    HAVING COUNT(V.VillageID) > 1
) AS MultiVillageCities;

CREATE TABLE Studentsp (
    RNo INT,
    Name VARCHAR(50),
    Branch VARCHAR(50)
);
INSERT INTO Studentsp (RNo, Name, Branch) VALUES
(101, 'Raju', 'CE'),
(102, 'Amit', 'CE'),
(103, 'Sanjay', 'ME'),
(104, 'Neha', 'EC'),
(105, 'Meera', 'EE'),
(106, 'Mahesh', 'ME');

CREATE TABLE Resultsp (
    RNo INT,
    SPI DECIMAL(4,2)
);
INSERT INTO Result (RNo, SPI) VALUES
(101, 8.8),
(102, 9.2),
(103, 7.6),
(104, 8.2),
(105, 7.0),
(107, 8.9);

CREATE PROCEDURE GetAllStudentRecords
AS
BEGIN
	SELECT S.RNo, S.Name, S.Branch, R.SPI
	FROM Student S
	LEFT JOIN Result R ON S.RNo = R.RNo;
END;
GO

EXEC GetAllStudentRecords;

ALTER PROCEDURE StudentInfo_sp
	@rollno int
AS 
BEGIN
	SELECT * 
	FROM Studentsp S
	LEFT JOIN Resultsp R ON s.Rno = r.Rno
	WHERE s.Rno = @rollno;
END;

EXEC StudentInfo_sp 101;

CREATE PROCEDURE InsertStudentRecord
    @Rno INT,
    @Name VARCHAR(50),
    @Branch VARCHAR(50)
AS
BEGIN
    INSERT INTO Student (RNo, Name, Branch)
    VALUES (@Rno, @Name, @Branch);
    
    PRINT 'Student record inserted successfully.';
END;

EXEC InsertStudentRecord 107, 'Raj', 'EE';


create procedure update_sp
	@Branch varchar(50)
AS
BEGIN
	UPDATE Student
	SET BRANCH = @Branch
END;

EXEC update_sp 'EC'

create procedure delete_sp
	@rollno int
AS
BEGIN
	DELETE FROM student
	where @rollno = Rno;
END;

EXEC delete_sp 103

select * from student

use practice_demo