SELECT TOP 5
    [Sales].[SalesOrderHeader].[SalesOrderNumber] AS OrderNumber,
    SUM([Sales].[SalesOrderDetail].[LineTotal]) AS OrderTotal
FROM 
    [AdventureWorks2019].[Sales].[SalesOrderHeader]
INNER JOIN 
    [AdventureWorks2019].[Sales].[SalesOrderDetail]
ON 
    [Sales].[SalesOrderHeader].[SalesOrderID] = [Sales].[SalesOrderDetail].[SalesOrderID]
GROUP BY 
    [Sales].[SalesOrderHeader].[SalesOrderNumber]
ORDER BY 
    OrderTotal DESC;
