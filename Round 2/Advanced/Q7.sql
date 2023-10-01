SELECT TOP 5
    -- CONCAT([?Name], ' ', [?Name]) AS CustomerName,
    COUNT(*) AS RepeatPurchases
FROM 
    [AdventureWorks2019].[Sales].[Customer]
INNER JOIN 
    [AdventureWorks2019].[Sales].[SalesOrderHeader]
ON 
    [Customer].[CustomerID] = [SalesOrderHeader].[CustomerID]
GROUP BY 
    [Customer].[CustomerID] --, [FirstName], [LastName]
HAVING 
    COUNT(*) > 1
ORDER BY 
    RepeatPurchases DESC;
