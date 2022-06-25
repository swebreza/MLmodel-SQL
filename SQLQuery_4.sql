SELECT a.Firstname,b.Jobtitle,b.organizationlevel,count(*) from Person.Person a
JOIN HumanResources.Employee b ON a.BusinessEntityID=b.BusinessEntityID
WHERE OrganizationLevel<'5'
group by a.FirstName,b.JobTitle,b.OrganizationLevel
ORDER by OrganizationLevel
;