-- Select para Dim_product
select pr.ProductID, pr.Name as Product, pr.ProductNumber, pr.ListPrice, prsc.Name as productsubcategory,
prc.Name as productcategory
from adventureworks2017.product as pr
left join adventureworks2017.productsubcategory as prsc on pr.productsubcategoryid = prsc.productsubcategoryid
left join adventureworks2017.productcategory as prc on prsc.productcategoryid = prc.productcategoryid;

-- Select para Dim_customer
SELECT CustomerID, PersonID, FirstName, LastName, EmailPromotion, st.name as StoreName
FROM adventureworks2017.customer AS cu
left JOIN adventureworks2017.person AS pe  
ON cu.PersonID=pe.BusinessEntityID
left JOIN adventureworks2017.store as st ON cu.StoreID=st.BusinessEntityID;

-- Select para fact_sales
SELECT soh.SalesOrderID, soh.OrderDate, soh.CustomerID, sod.ProductID, soh.OnlineOrderFlag, sod.OrderQty, sod.UnitPrice, 
sod.UnitPriceDiscount, sod.LineTotal
FROM adventureworks2017.salesorderheader as soh
join adventureworks2017.salesorderdetail as sod on sod.SalesOrderID= soh.SalesOrderID;