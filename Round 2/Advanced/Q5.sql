SELECT 
    [Production].[ProductCategory].[Name] AS CategoryName, 
    SUM([Sales].[SalesOrderDetail].[LineTotal]) AS TotalSalesAmount
FROM 
    [AdventureWorks2019].[Sales].[SalesOrderDetail]
INNER JOIN 
    [AdventureWorks2019].[Production].[Product]
ON 
    [Sales].[SalesOrderDetail].[ProductID] = [Production].[Product].[ProductID]
INNER JOIN 
    [AdventureWorks2019].[Production].[ProductSubcategory]
ON 
    [Production].[Product].[ProductSubcategoryID] = [Production].[ProductSubcategory].[ProductSubcategoryID]
INNER JOIN 
    [AdventureWorks2019].[Production].[ProductCategory]
ON 
    [Production].[ProductSubcategory].[ProductCategoryID] = [Production].[ProductCategory].[ProductCategoryID]
GROUP BY 
    [Production].[ProductCategory].[Name]
ORDER BY 
    TotalSalesAmount DESC;
