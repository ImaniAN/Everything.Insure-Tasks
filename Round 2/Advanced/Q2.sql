SELECT
    CONCAT([Person].[FirstName], ' ',[Person].[LastName]) AS EmployeeName
FROM
    [AdventureWorks2019].[Sales].[SalesOrderHeader], [Person].[Person]
INNER JOIN
    [AdventureWorks2019].[Sales].[SalesPerson]
ON
    [Person].[BusinessEntityID] = [SalesPerson].[BusinessEntityID]
GROUP BY 
    [Person].[FirstName],[Person].[LastName]
HAVING
    COUNT(DISTINCT [Sales].[SalesOrderHeader].[TerritoryID]) > 1;
