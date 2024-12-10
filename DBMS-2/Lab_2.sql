------- Lab2-------
-- Create Department Table
CREATE TABLE Department (
 DepartmentID INT PRIMARY KEY,
 DepartmentName VARCHAR(100) NOT NULL UNIQUE
);
-- Create Designation Table
CREATE TABLE Designation (
 DesignationID INT PRIMARY KEY,
 DesignationName VARCHAR(100) NOT NULL UNIQUE
);
-- Create Person Table
CREATE TABLE Person (
 PersonID INT PRIMARY KEY IDENTITY(101,1),
 FirstName VARCHAR(100) NOT NULL,
 LastName VARCHAR(100) NOT NULL,
 Salary DECIMAL(8, 2) NOT NULL,
 JoiningDate DATETIME NOT NULL,
 DepartmentID INT NULL,
 DesignationID INT NULL,
 FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
 FOREIGN KEY (DesignationID) REFERENCES Designation(DesignationID)
)

CREATE PROCEDURE SP_DEPARTMENT_INSERT
	@DepartmentID INT,
	@DepartmentName VARCHAR(100)
AS
BEGIN
  INSERT INTO Department(DepartmentID,DepartmentName) VALUES
  (@DepartmentID,@DepartmentName)
  END


  EXEC SP_DEPARTMENT_INSERT 1,'Admin'
  EXEC SP_DEPARTMENT_INSERT 2,'IT'
  EXEC SP_DEPARTMENT_INSERT 3,'HR'
  EXEC SP_DEPARTMENT_INSERT 4,'Account'
  select * from Department


CREATE PROCEDURE SP_DESIGNATION_INSERT
	@DesignationID INT,
	@DesignationName VARCHAR(100)
AS
BEGIN
  INSERT INTO Designation(DesignationID,DesignationName) VALUES
  (@DesignationID,@DesignationName)
  END


   EXEC SP_DESIGNATION_INSERT 11,'Jobber'
   EXEC SP_DESIGNATION_INSERT 12,'Welder'
   EXEC SP_DESIGNATION_INSERT 13,'Clerk'
   EXEC SP_DESIGNATION_INSERT 14,'Manager'
   EXEC SP_DESIGNATION_INSERT 15,'CEO'
   select* from Designation


   ALTER PROCEDURE SP_PERSON_INSERT
	
	@FirstName VARCHAR(100),
	@LastName VARCHAR(100),
	@Salary INT,
	@JoiningDate DATETIME,
	@DepartmentID INT,
	@DesignationID INT
AS
BEGIN
  INSERT INTO PERSON(FirstName,LastName,Salary,JoiningDate,DepartmentID,DesignationID) VALUES
  (@FirstName,@LastName,@Salary,@JoiningDate,@DepartmentID,@DesignationID)
  END

  EXEC SP_PERSON_INSERT 'Rahul','Anshu',56000,'1990-01-01',1,12  EXEC SP_PERSON_INSERT 'Hardik','Hinsu',18000,'1990-09-25',2,11  EXEC SP_PERSON_INSERT 'Bhavin','Kamani',25000,'1991-05-14',NULL,11  EXEC SP_PERSON_INSERT 'Bhoomi','Patel',39000,'2014-02-20',1,13  EXEC SP_PERSON_INSERT 'Rohit','Rajgor',17000,'1990-07-23',2,15  EXEC SP_PERSON_INSERT 'Priya','Mehta',25000,'1990-10-18',2,NULL  EXEC SP_PERSON_INSERT 'Neha','Trivedi',18000 ,'2014-02-20',3,15   select *from Person
