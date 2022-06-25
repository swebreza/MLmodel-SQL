select MAX(a.discountpct),f.CustomerID FROM Sales.SpecialOffer a 
JOIN Sales.SpecialOfferProduct c on a.SpecialOfferID=c.SpecialOfferID
JOIN Sales.SalesOrderDetail d on d.ProductID=c.ProductID
JOIN Sales.SalesOrderHeader e on e.SalesOrderID=d.SalesOrderID
JOIN Sales.Customer f on f.CustomerID=e.CustomerID 
where month(e.OrderDate)in (1,2,3)
group by f.CustomerID ,a.DiscountPct
order by a.DiscountPct desc;