--I Couldn't find employee names 
--so assumed BusinessEntityID will identify each employee
--as each unique BusinessEntityID is attached to a departmentId as a foreign Key

SELECT DISTINCT [HumanResources].[Employee].[BusinessEntityID]
FROM [AdventureWorks2019].[HumanResources].[Employee]
INNER JOIN [AdventureWorks2019].[HumanResources].[EmployeeDepartmentHistory]
ON [HumanResources].[Employee].[BusinessEntityID] = [HumanResources].[EmployeeDepartmentHistory].[BusinessEntityID]
WHERE [HumanResources].[Employee].[JobTitle] = 'Sales Representative';
