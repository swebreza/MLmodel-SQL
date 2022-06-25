select c.Name,YEAR(HireDate),COUNT(*) as 'hire_count' from HumanResources.Employee a
join HumanResources.EmployeeDepartmentHistory b
ON a.BusinessEntityID=b.BusinessEntityID
join HumanResources.Department c
on b.DepartmentID=c.DepartmentID
group by c.Name,YEAR(HireDate)
order by c.Name;