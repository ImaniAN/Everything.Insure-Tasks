 SELECT TOP 10
    c.customerID,
    concat(p.firstname,' ',p.LastName) CustomerName,
    SUM([TotalDue]) AS TotalSalesAmount
  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader] soh
  inner join sales.Customer c on c.CustomerID = soh.CustomerID
  inner join person.Person p on p.BusinessEntityID = c.PersonID
GROUP BY 
    c.CustomerID, p.FirstName, p.LastName
ORDER BY 
    TotalSalesAmount DESC;