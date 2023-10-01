SELECT CONCAT([Customer].[?Name], ' ', [Customer].[?Name]) AS CustomerName
FROM [AdventureWorks2019].[Sales].[Customer]
WHERE [Customer].[CustomerID] IN (
    SELECT [SalesOrderHeader].[CustomerID]
    FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
    WHERE [SalesOrderHeader].[CustomerID] NOT IN (
        SELECT DISTINCT [SalesOrderHeader].[CustomerID]
        FROM [AdventureWorks2019].[Production].[Product]
        LEFT JOIN [AdventureWorks2019].[Sales].[SalesOrderDetail]
        ON [Product].[ProductID] = [SalesOrderDetail].[ProductID]
        WHERE [SalesOrderHeader].[CustomerID] IS NOT NULL
    )
);
