SELECT COUNT(BusinessEntityID) AS NumberOfEmployees,
    DATENAME(mm,HireDate) from [AdventureWorks2019].[HumanResources].[Employee]
    group by DATENAME(mm,HireDate)