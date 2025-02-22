CREATE DATABASE Academy;

USE Academy;

CREATE TABLE Groups (
    Id INT PRIMARY KEY IDENTITY,
    Name VARCHAR(10),
    Rating INT,
    [Year] INT
);

CREATE TABLE Departments (
    Id INT PRIMARY KEY IDENTITY,
    Financing MONEY,
    Name VARCHAR(100)
);

CREATE TABLE Faculties (
    Id INT PRIMARY KEY IDENTITY,
    Name VARCHAR(100)
);

CREATE TABLE Teachers (
    Id INT PRIMARY KEY IDENTITY,
    EmploymentDate DATE,
    Name VARCHAR(50),
    Surname VARCHAR(50),
    Premium MONEY,
    Salary MONEY
);



select * from Groups
select * from Departments
select * from Faculties
select * from Teachers