CREATE DATABASE Academy;
USE Academy;

CREATE TABLE Groups (
    Id INT PRIMARY KEY IDENTITY NOT NULL,
    [Name] VARCHAR(10) NOT NULL UNIQUE CHECK ([Name] != ''),
    Rating INT NOT NULL CHECK (Rating >= 0 AND Rating <= 5),
    [Year] INT NOT NULL CHECK ([Year] >= 1 AND [Year] <= 5)
);

CREATE TABLE Departments (
    Id INT PRIMARY KEY IDENTITY NOT NULL,
    Financing MONEY NOT NULL CHECK (Financing >= 0),
    [Name] VARCHAR(100) NOT NULL UNIQUE CHECK ([Name] != '')
);

CREATE TABLE Faculties (
    Id INT PRIMARY KEY IDENTITY NOT NULL,
	Dean VARCHAR(100) NOT NULL UNIQUE CHECK (Dean != ''),
    [Name] VARCHAR(100) NOT NULL UNIQUE CHECK ([Name] != '')
);

CREATE TABLE Teachers (
    Id INT PRIMARY KEY IDENTITY,
    EmploymentDate DATE NOT NULL CHECK (EmploymentDate >= '1990-01-01'),
    IsAssistant BIT NOT NULL DEFAULT 0,
    IsProfessor BIT NOT NULL DEFAULT 0,
    Name VARCHAR(32) NOT NULL,
    Position VARCHAR(32) NOT NULL,
    Premium MONEY NOT NULL CHECK (Premium >= 0) DEFAULT 0,
    Salary MONEY NOT NULL CHECK (Salary > 0),
    Surname VARCHAR(32) NOT NULL
);





--1
SELECT Name, Financing, Id FROM Departments;

--2
SELECT Name AS 'Group Name', Rating AS 'Group Rating' FROM Groups;

--3
SELECT Surname,
(Salary / Premium) * 100 AS 'Salary to Premium %',
(Salary / (Salary + Premium)) * 100 AS 'Salary to Total %' FROM Teachers;

--4
SELECT 'The dean of faculty ' + f.Name + ' is ' + f.Dean AS 'Faculty Informatio' FROM Faculties f;

--5
SELECT Surname FROM Teachers
WHERE IsProfessor = 1 AND Salary > 1050;

--6
SELECT Name FROM Departments
WHERE Financing < 11000 OR Financing > 25000;

--7
SELECT Name FROM Faculties
WHERE Name != 'Computer Science';

--8
SELECT Surname, Position FROM Teachers
WHERE IsProfessor = 0;

--9
SELECT Surname, Position, Salary, Premium FROM Teachers
WHERE IsAssistant = 1 AND Premium >= 160 AND Premium <= 550;

--10
SELECT Surname, Salary FROM Teachers
WHERE IsAssistant = 1;

--11 
SELECT Surname, Position FROM Teachers
WHERE EmploymentDate < '2000-01-01';

--12
SELECT Name AS 'Name of Department' FROM Departments
WHERE Name < 'Software Development'
ORDER BY Name;

--13
SELECT Surname FROM Teachers
WHERE IsAssistant = 1 AND (Salary + Premium) <= 1200;

--14
SELECT Name FROM Groups
WHERE [Year] = 5 AND Rating >= 2 AND Rating <= 4;

--15
SELECT Surname FROM Teachers
WHERE IsAssistant = 1 AND (Salary < 550 OR Premium < 200);