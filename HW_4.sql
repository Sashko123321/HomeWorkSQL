use CUSTOMER_ORDER_DB_STUDY

SELECT [OperationTime], s.[Name] AS StoreName
FROM [Order] o
JOIN [Shop] s ON o.[ShopId] = s.[Id]
WHERE o.[OperationTime] > '2025-03-01';


SELECT p.[Title] AS ProductName, p.[Price], m.[Name] AS ManufacturerName FROM [Product] p
JOIN [Manufacturer] m ON p.[ManufacturerId] = m.[Id]
WHERE p.[Price] < 8.00;


SELECT per.[Name] AS CustomerFirstName, per.[LastName], c.[Discount], con.[ContactValue] AS Email FROM [Customer] c
JOIN [Person] per ON c.[PersonId] = per.[Id]
JOIN [PersonContact] con ON per.[Id] = con.[PersonId]
JOIN [ContactType] ct ON con.[ContactTypeId] = ct.[Id]
WHERE c.[Discount] > 10 AND ct.[Name] = 'email'
ORDER BY per.[Name];




SELECT p.[Title] AS ProductName, pc.[Name] AS ProductCategory, ci.[Name] AS CityName FROM [Product] p
JOIN [ProductCategory] pc ON p.[CategoryId] = pc.[Id]
JOIN [Shop] s ON p.[Id] = s.[Id]
JOIN [Street] st ON s.[StreetId] = st.[Id]
JOIN [City] ci ON st.[CityId] = ci.[Id]
WHERE ci.[Name] LIKE 'K%'
ORDER BY p.[Title], ci.[Name];
