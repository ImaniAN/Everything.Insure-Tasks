-- So I encountered a problem here, could also be my lack of 
--knowledge of all the tables with their respective columns so I made a 
--educated guess based on the relationships of the tables in the AdventureWorks DB
--The guess that the [EmployeeDepartmentHistory] keeps track of where employees are. 
--I used the my understanding of that relationship to connect employees to a DepartmentID
--I hope this satisfies the question

SELECT [HumanResources].[Department].[?Name], COUNT([HumanResources].[EmployeeDepartmentHistory].[BusinessEntityID]) AS EmployeeCount
FROM [AdventureWorks2019].[HumanResources].[EmployeeDepartmentHistory]
INNER JOIN [AdventureWorks2019].[HumanResources].[Department]
ON [AdventureWorks2019].[HumanResources].[EmployeeDepartmentHistory].[DepartmentID] = [AdventureWorks2019].[HumanResources].[Department].[DepartmentID]
GROUP BY [HumanResources].[Department].[?Name]
ORDER BY EmployeeCount DESC;
