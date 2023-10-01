SELECT 
    [Production].[ProductCategory].[?Name] AS CategoryName,
    AVG([Production].[Product].[ListPrice]) AS AverageListPrice
FROM 
    [AdventureWorks2019].[Production].[Product]
INNER JOIN 
    [AdventureWorks2019].[Production].[ProductSubcategory]
ON 
    [Production].[Product].[ProductSubcategoryID] = [Production].[ProductSubcategory].[ProductSubcategoryID]
INNER JOIN 
    [AdventureWorks2019].[Production].[ProductCategory]
ON 
    [Production].[ProductSubcategory].[ProductCategoryID] = [Production].[ProductCategory].[ProductCategoryID]
GROUP BY 
    [Production].[ProductCategory].[?Name]
ORDER BY 
    AverageListPrice DESC;
