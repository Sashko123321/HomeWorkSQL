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
    Name VARCHAR(100) NOT NULL UNIQUE CHECK ([Name] != '')
);

CREATE TABLE Teachers (
    Id INT PRIMARY KEY IDENTITY NOT NULL,
    EmploymentDate DATE NOT NULL CHECK (EmploymentDate >= '1990-01-01'),
    [Name] VARCHAR(32) NOT NULL CHECK ([Name] != ''),
    Surname VARCHAR(32) NOT NULL CHECK (Surname != ''),
    Premium MONEY NOT NULL CHECK (Premium >= 0),
    Salary MONEY NOT NULL CHECK (Salary > 0)
);


select * from Groups
select * from Departments
select * from Faculties
select * from Teachers
