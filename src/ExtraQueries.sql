drop view CustomerOrders;
drop view CustomerComps;
drop view CompSuppType;
drop view Processors;
drop view VideoCards;

Create or replace view CustomerOrders as
(
	select * from Customer
	join COrder using(CustID)
);


--All customer data and the components related to their orders
Create or replace view CustomerComps as
(
	select * from CustomerOrders
    join Computer using(OrderNo)
	join OrderLine using(CompID)
);

--Components, types, and suppliers
Create or replace view CompSuppType as
(
	select SerialNo, CompType, CDesc, SuppName from Component
	join CompType on CType = CompType
	join Supplier using(SuppName)
);

--select all from tables
select * from Customer;
select * from Supplier;
select * from CompType;
select * from COrder;
select * from Computer;
select * from Component;
select * from OrderLine;

--Select all from views
select * from CustomerOrders;
select * from CustomerComps;
select * from CompSuppType;
select * from Processors;
select * from VideoCards;

--select components from specific supplier
select SerialNo, CompType, SuppName from CompSuppType
where SuppName = 'Kingston';

--display amount of specific component type each supplier supplies
select SuppName, Count(*)Amount from CompSuppType
where CompType = 'Video Card'
Group by (SuppName);


--Select orders that have not been shipped
select * from COrder
where ShippedDate is null;

--select name, order number, and date or orders not yet shipped
select CustName, OrderNo, OrderDate from CustomerOrders
where ShippedDate is null;

--select name, amount of orders a person has
select CustID,CustName, Count(*) Amount from CustomerOrders
Group By(CustID,CustName)
Order By (CustID);

--How many components each customer has had as part of their order
select CustName, Count(*)Amount from CustomerComps
group by CustName;

--What components each person has ordered
select CustName, SerialNo, CompType from CustomerComps
join Component using (SerialNo)
join CompType on CompType = CType;

--Show all intel processors and gforce video cards
select * from Processors
where SuppName like 'Intel'
union
select * from VideoCards
where SuppName like 'Gforce';

--all intel processors and Gforce video cards excluding the 900 series
select * from Processors
where SuppName like 'Intel'
union
(
    select * from VideoCards
    where SuppName like 'Gforce'
    minus
    select * from VideoCards
    where SerialNo like 'GTX9%'
);

--suppliers who supply both processors and video cards
select SuppName from Processors
intersect
select SuppName from VideoCards;



--All order numbers
select CompID from Computer;

--Orders with no components related to it yet
select CompID from Computer
where CompID not in(select CompID from OrderLine);

--Orders with components related to it
select CompID from Computer
where CompID in (select CompID from OrderLine);

--Orders and amount of components related to it, even if 0
select CompID, Count(SerialNo)Amount from OrderLine
right join Computer using(CompID)
Group by CompID
Order by Amount DESC;