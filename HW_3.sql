CREATE DATABASE Rand_1;
use Rand_1

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY,
    Customer VARCHAR(30),
    OrderDate DATE,
    TotalAmount FLOAT,
    Discount FLOAT,
    PaymentMethod VARCHAR(20),
    [Status] VARCHAR(15),
    ShippingCountry VARCHAR(50)
);




--1
SELECT SUM(TotalAmount) AS TotalIncome FROM Orders
WHERE [Status] = 'Delivered';

--2
SELECT Customer, COUNT(OrderID) AS OrderCount FROM Orders
GROUP BY Customer;

--3
SELECT PaymentMethod, AVG(TotalAmount) AS AverageAmount FROM Orders
GROUP BY PaymentMethod;

--4
SELECT OrderDate, SUM(TotalAmount) AS DailyIncome FROM Orders
GROUP BY OrderDate;

--5
SELECT MAX(Discount) AS MaxDiscount FROM Orders;

--6
SELECT ShippingCountry, COUNT(OrderID) AS OrderCount FROM Orders
WHERE [Status] = 'Delivered'
GROUP BY ShippingCountry;

--7
SELECT TOP 5 Customer, SUM(TotalAmount) AS TotalSpent FROM Orders
GROUP BY Customer
ORDER BY TotalSpent DESC;


