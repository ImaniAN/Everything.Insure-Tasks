SELECT TOP 5
    [Product].[Name] AS ProductName,
    AVG([ProductReview].[Rating]) AS AverageRating
FROM 
    [AdventureWorks2019].[Production].[Product] AS Product
INNER JOIN 
    [AdventureWorks2019].[Production].[ProductReview] AS ProductReview
ON 
    [Product].[ProductID] = [ProductReview].[ProductID]
GROUP BY 
    [Product].[ProductID], [Product].[Name]
ORDER BY 
    AverageRating DESC;
