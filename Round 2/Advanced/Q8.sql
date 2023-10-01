SELECT DISTINCT [Product].[?Name]
FROM 
    [AdventureWorks2019].[Sales].[SalesOrderDetail]
INNER JOIN 
    [AdventureWorks2019].[Production].[Product]
ON 
    [SalesOrderDetail].[ProductID] = [Product].[ProductID]
WHERE 
    [SalesOrderDetail].[OrderDate????] >= DATEADD(YEAR, -1, GETDATE())
    AND [SalesOrderDetail].[OrderDate????] < GETDATE()
    AND [SalesOrderDetail].[OrderQty] < (
        SELECT [OrderQty]
        FROM [AdventureWorks2019].[Sales].[SalesOrderDetail]
        WHERE [OrderDate????] >= DATEADD(YEAR, -1, GETDATE())
        AND [OrderDate????] < GETDATE()
    );
