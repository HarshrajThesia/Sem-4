--PART A

--1. Write a function to print "hello world". 

CREATE OR ALTER FUNCTION FN_HELLOWORLD()
	RETURNS VARCHAR(100)
AS
BEGIN
	RETURN 'HELLO WORLD';
END

SELECT DBO.FN_HELLOWORLD();

--2. Write a function which returns addition of two numbers. 

CREATE OR ALTER FUNCTION FN_ADDTWONUMBERS(@NUM1 INT,@NUM2 INT)
	RETURNS INT 
AS
BEGIN
	RETURN @NUM1 + @NUM2
END

SELECT DBO.FN_ADDTWONUMBERS(4,5);

--3. Write a function to check whether the given number is ODD or EVEN. 

CREATE OR ALTER FUNCTION FN_EVENORODD(@NUM INT)
	RETURNS VARCHAR(50)
AS
BEGIN
	DECLARE @RESULT VARCHAR(10)
	IF @NUM%2=0
		SET @RESULT='EVEN'
	ELSE
		SET @RESULT='ODD'
	RETURN @RESULT
END

SELECT DBO.FN_EVENORODD(7);

--4. Write a function which returns a table with details of a person whose first name starts with B. 

CREATE OR ALTER FUNCTION FN_PERSON_FIRSTNAMEWITHB()
	RETURNS TABLE
AS
	RETURN(SELECT * FROM PERSON WHERE FIRSTNAME LIKE 'B%');

SELECT * FROM FN_PERSON_FIRSTNAMEWITHB();

--EXTRA

CREATE OR ALTER FUNCTION FN_PERSON_FIRSTNAMEWHITHANYNUMBER(@N VARCHAR(100))
	RETURNS TABLE
AS
	RETURN(SELECT * FROM PERSON WHERE FIRSTNAME LIKE @N+'%');

SELECT * FROM FN_PERSON_FIRSTNAMEWHITHANYNUMBER('B');

--5. Write a function which returns a table with unique first names from the person table.

CREATE OR ALTER FUNCTION FN_PERSON_UNIQUENAME()
	RETURNS TABLE
AS
	RETURN(SELECT DISTINCT FIRSTNAME FROM PERSON);

SELECT * FROM FN_PERSON_UNIQUENAME();

--6. Write a function to print number from 1 to N. (Using while loop) 

CREATE OR ALTER FUNCTION FN_PRINT1TONNUMBERS(@NUM INT)
	RETURNS VARCHAR(100)
AS
BEGIN
	DECLARE @I INT=1
	DECLARE @N VARCHAR(100)='';
	WHILE @I<=@NUM
		BEGIN
			SET @N=@N+CAST(@I AS VARCHAR)+' '
			SET @I=@I+1
		END
	RETURN @N
END 

SELECT DBO.FN_PRINT1TONNUMBERS(5);

--7. Write a function to find the factorial of a given integer.

CREATE OR ALTER FUNCTION FN_FACTORIAL(@NUM INT)
	RETURNS INT
AS
BEGIN
	DECLARE @FAC INT=1;
	DECLARE @I INT=1;
	WHILE @I<=@NUM
		BEGIN
			SET @FAC=@FAC*@I
			SET @I=@I+1;
		END
	RETURN @FAC
END

SELECT DBO.FN_FACTORIAL(5);

--PART B

--8. Write a function to compare two integers and return the comparison result. (Using Case statement) 
CREATE OR ALTER FUNCTION FN_COMPARETWOINTEGER(@INTEGER1 INT,@INTEGER2 INT)
	RETURNS VARCHAR(50)
AS
BEGIN
	DECLARE @RESULT  VARCHAR(50)
	SET @RESULT=CASE
		WHEN @INTEGER1>@INTEGER2 THEN 'INTEGER1 IS GREATER THAN INTEGER2'
		WHEN @INTEGER1<@INTEGER2 THEN 'INTEGER2 IS GREATER THAN INTEGER1'
		ELSE 'INTEGER1 AND INTEGER2 ARE EQUAL'
		END
	RETURN @RESULT
END

SELECT DBO.FN_COMPARETWOINTEGER(4,5);

--9. Write a function to print the sum of even numbers between 1 to 20. 
CREATE OR ALTER FUNCTION FN_SUMOFEVENNUMBERS()
	RETURNS INT
AS
BEGIN
	DECLARE @RESULT INT=0;
	DECLARE @I INT=1;
	WHILE @I<=20
		BEGIN
			IF @I%2=0
				SET @RESULT+=@I;
			SET @I=@I+1;
		END
	RETURN @RESULT
END

SELECT DBO.FN_SUMOFEVENNUMBERS();

--10. Write a function that checks if a given string is a palindrome 
CREATE OR ALTER FUNCTION FN_PALINDROME(@STRING VARCHAR(100))
	RETURNS VARCHAR(100)
AS
BEGIN
	DECLARE @REVERSE VARCHAR(100) = REVERSE(@STRING);
	DECLARE @RESULT VARCHAR(100);
	IF @STRING = @REVERSE
		SET @RESULT = 'Palindrome'
	ELSE
		SET @RESULT = 'Not Palindrome'
	RETURN @RESULT
END

SELECT dbo.FN_PALINDROME('16461');

--PART C

--11. Write a function to check whether a given number is prime or not.
CREATE OR ALTER FUNCTION FN_PRIME(@NUM INT)
	RETURNS VARCHAR(50)
AS
BEGIN
	DECLARE @RESULT VARCHAR(10)
	IF @NUM%2=0
		SET @RESULT='PRIME'
	ELSE
		SET @RESULT='NOT PRIME'
	RETURN @RESULT
END

SELECT dbo.FN_PRIME(7)

--12. Write a function which accepts two parameters start date & end date, and returns a difference in days.
--13. Write a function which accepts two parameters year & month in integer and returns total days each year.
--14. Write a function which accepts departmentID as a parameter & returns a detail of the persons.
--15. Write a function that returns a table with details of all persons who joined after 1-1-1991.