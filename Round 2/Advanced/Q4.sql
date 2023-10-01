SELECT CONCAT([Person].[Person].[FirstName], ' ', [Person].[Person].[LastName]) AS CustomerName
FROM [AdventureWorks2019].[Sales].[Customer], [AdventureWorks2019].[Person].[Person]
WHERE NOT EXISTS (
    SELECT DISTINCT YEAR([OrderDate])
    FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
    WHERE [SalesOrderHeader].[CustomerID] = [Customer].[CustomerID]
    EXCEPT
    SELECT DISTINCT YEAR(GETDATE())
);
