SELECT
    [?Name] AS ProductName,
    [ListPrice]
FROM
    [AdventureWorks2019].[Production].[Product]
WHERE
    [ListPrice] > 100.00
ORDER BY ListPrice ASC; --Extra