create database practice_demo;
use practice_demo;

create table student(
	rollno int primary key,
	name varchar(50)
);

select * from student

insert into student
(rollno,name) 
values 
(1,'dipuu'),
(2,'meet');

insert into student
values 
(3,'dudu'),
(4,'bubu');

create table DEPOSIT(
	ACTNO int,
	CNAME varchar(50),
	BNAME varchar(50),
	AMOUNT decimal(8,2),
	ADATE DATETIME
);

create table BRANCH(
	BNAME varchar(50),
	CITY varchar(50)
);

insert into DEPOSIT 
(ACTNO,CNAME,BNAME,AMOUNT,ADATE) values 
(101, 'anil', 'VRCE', 1000.00 , '1995-03-01'),
(102, 'SUNIL', 'AJNI', 5000.00, '1996-01-04'),
(103, 'MEHUL', 'KAROLBAGH', 3500.00 , '1995-11-17'),
(104, 'MADHURI', 'CHANDI', 1200.00 , '1995-12-17'),
(105, 'PRMOD', 'M.G. ROAD ', 3000.00 , '1996-03-27'),
(106, 'SANDIP', 'ANDHERI', 2000.00 , '1996-03-31'),
(107, 'SHIVANI', 'VIRAR', 1000.00 , '1995-09-05'),
(108, 'KRANTI', 'NEHRU PLACE ', 5000.00 , '1995-07-02'),
(109, 'MINU', 'POWAI', 7000.00 , '1995-08-10');

select * from DEPOSIT
select * from BORROW
select * from CUSTOMERS
select ACTNO, CNAME,AMOUNT FROM DEPOSIT
select LOANNO, AMOUNT FROM BORROW

select * from BORROW 
where BNAME = 'ANDHERI';

select ACTNO , AMOUNT FROM DEPOSIT where ACTNO = 106;

select * FROM BORROW where AMOUNT > 5000;

select * from DEPOSIT where ADATE > '1996-12-01';

select * from DEPOSIT where ACTNO < 105;

select * from CUSTOMERS where CITY in ('NAGPUR', 'DELHI');

SELECT CNAME, BNAME 
FROM DEPOSIT 
WHERE AMOUNT > 4000 AND ACTNO < 105;

select * FROM BORROW where AMOUNT BETWEEN 3000 AND 8000;

select * from borrow where AMOUNT >= 3000 and AMOUNT <= 8000;

select * from BORROW where BNAME != 'ANDHERI';

select * FROM BORROW where AMOUNT is null;

select ACTNO, CNAME, AMOUNT from DEPOSIT 
where ACTNO < 104 and BNAME in('AJNI', 'KAROLBAGH','M.G. ROAD');


SELECT TOP 5 LOANNO, CNAME FROM BORROW
where BNAME != 'ANDHERI'

select DISTINCT  CITY from CUSTOMERS ;

select DISTINCT  CITY from BRANCH ;

select DISTINCT  BNAME from BRANCH ;

SELECT * FROM CUSTOMERS
ORDER BY city ASC;

SELECT * FROM DEPOSIT
ORDER BY AMOUNT DESC;

SELECT * FROM CUSTOMERS
ORDER BY city DESC;

SELECT DISTINCT CNAME AS UNI_Borrowers
FROM BORROW;

update DEPOSIT set AMOUNT = 5000 where AMOUNT = 3000;

update BORROW set BNAME = 'C.G. ROAD' where CNAME='ANIL' and BNAME = 'VRCE';

update DEPOSIT set AMOUNT = 5000 , ACTNO = 111 where CNAME='SANDIP';

update DEPOSIT set AMOUNT = AMOUNT + (AMOUNT*10/100);

update DEPOSIT set AMOUNT = 5000 where ACTNO between 103 and 107 ;

update BORROW set AMOUNT = 0 where LOANNO = 321;

UPDATE BORROW SET LOANNO = 401, BNAME = 'AJNI' WHERE LOANNO = 201;

update DEPOSIT set CNAME = 'RAMESH' , BNAME = 'VRCE' , AMOUNT = 5500 where ACTNO = 102;

UPDATE BORROW SET BNAME = 'null', AMOUNT = 0 WHERE LOANNO = 481 and CNAME = 'KRANTI';



---------DELETE/DROP/TRUNCATE--------


DELETE FROM CUSTOMERS WHERE CITY = 'BOMBAY';

DELETE FROM DEPOSIT WHERE AMOUNT <= 1000;

DELETE FROM BORROW WHERE BNAME = 'AJNI';

DELETE FROM BORROW WHERE LOANNO BETWEEN 201 AND 210 ;

DELETE FROM DEPOSIT WHERE ADATE > '1996-12-01';

TRUNCATE TABLE CUSTOMERS;

DELETE FROM DEPOSIT WHERE CNAME = 'ANIL' AND ACTNO = 101;

DELETE FROM DEPOSIT WHERE BNAME != 'ANDHERI';

DELETE FROM BORROW WHERE AMOUNT <= 2000 AND BNAME != 'VRCE';

DROP TABLE BRANCH



-------------ALTER----------------

CREATE TABLE Student(
	Enrollment_No VARCHAR(20),
	Name VARCHAR(20),
	CPI DECIMAL(5,2),
	Birthdate DATETIME
);

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

SELECT * FROM Student_Master



-------------------LIKE------------------

INSERT INTO Students (StuID, FirstName, LastName, Website, City, Division)
VALUES 
(1011, 'Keyur', 'Patel', 'techonthenet.com', 'Rajkot', 'II-BCX'),
(1022, 'Hardik', 'Shah', 'digminecraft.com', 'Ahmedabad', 'I-BCY'),
(1033, 'Kajal', 'Trivedi', 'bigactivities.com', 'Baroda', 'IV-DCX'),
(1044, 'Bhoomi', 'Gajera', 'checkyourmath.com', 'Ahmedabad', 'III-DCW'),
(1055, 'Harmit', 'Mitel', NULL, 'Rajkot', 'II-BCY'),
(1066, 'Ashok', 'Jani', NULL, 'Baroda', 'II-BCZ');



select * from students
where FirstName like 'k%';

select * from students
where FirstName like '_____';

select FirstName, LastName from students
where City like '_____%a';

select * from students
where lastName like '%tel';


select * from students
where FirstName like 'ha%t';

SELECT * 
FROM Students
WHERE FirstName LIKE 'k_y%';

select * from students
where website is null and firstname like '_____';

select * from students
where lastname like '%jer%';


select * from students
where city like 'r%' or city like 'b%';

select * from students
where website like '%%';


SELECT * FROM Students
WHERE FirstName LIKE '[A-H]%';

SELECT * FROM Students
WHERE FirstName LIKE '_[aeiou]%';

select * from students
where city like '%rod%';

select firstname, lastname from students 
where website like 'bi%';


select * from students
where lastname like '______';


select * from students
where city like '_____' and city like 'ba%';


select firstname from students
where Division like '%bc%';



select StuID, city from students
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


