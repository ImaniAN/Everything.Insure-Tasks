SELECT 
    YEAR([OrderDate]) AS Year,
    MONTH([OrderDate]) AS Month,
    AVG([TotalDue]) AS AverageSalesAmount
FROM 
    [AdventureWorks2019].[Sales].[SalesOrderHeader]
GROUP BY 
    YEAR([OrderDate]), MONTH([OrderDate])
ORDER BY 
    Year, Month;
