SELECT 
    CONCAT([Person].[FirstName], ' ', [Person].[LastName]) AS EmployeeName
FROM 
    [AdventureWorks2019].[Sales].[SalesOrderHeader], [Person].[Person]
WHERE [Person].[BusinessEntityID] IN (
    SELECT [Sales].[SalesPerson].[BusinessEntityID]
    FROM [AdventureWorks2019].[Sales].[SalesPerson]
    WHERE [Sales].[SalesPerson].[BusinessEntityID] NOT IN (
        SELECT DISTINCT [Sales].[SalesPerson].[BusinessEntityID]
        FROM [AdventureWorks2019].[Sales].[SalesOrderHeader], [AdventureWorks2019].[Sales].[SalesTerritory]
        WHERE [SalesOrderHeader].[TerritoryID] = [SalesTerritory].[TerritoryID]
    )
);
