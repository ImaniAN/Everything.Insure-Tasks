SELECT 
    [Sales].[Customer].[CustomerID]
FROM 
    [AdventureWorks2019].[Sales].[Customer]
INNER JOIN 
    [AdventureWorks2019].[Sales].[SalesOrderHeader]
ON 
    [Sales].[Customer].[CustomerID] = [Sales].[SalesOrderHeader].[CustomerID]
WHERE 
    YEAR([Sales].[SalesOrderHeader].[OrderDate]) = 2022
GROUP BY 
    [].[Customer].[CustomerID];
