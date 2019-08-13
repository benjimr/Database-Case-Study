--VIEWS used in the following queries
--All processors
Create or replace view Processors as
(
    select CompType, SerialNo, SuppName from Component
    join Supplier using(SuppName)
    where CompType like 'Processor'
);

--All video cards
Create or replace view VideoCards as
(
    select CompType, SerialNo, SuppName from Component
    join Supplier using(SuppName)
    where CompType like 'Video Card'
); 

--QUERIES
--SELECTION // PROJECTION
--Display all components from Samsung
select SerialNo, CompType from Component
where SuppName like 'Samsung';

--AGGREGATION WITH FILTERS
--Display amount of components supplied by each supplier but only over 2
select SuppName, Count(*) Amount from Supplier
join Component using(SuppName)
Group By(SuppName)
Having Count(*) > 2;

--UNION
--Display all processors from Intel and all video cards from Gforce
select * from Processors
where SuppName like 'Intel'
union
select * from VideoCards
where SuppName like 'Gforce';

--MINUS
--Display all processors from Intel and all video cards from Gforce
--but exclude anything from the 900 series video cards.
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

--INTERSECTION
--Display Suppliers who supply both processors and video cards
select SuppName from Processors
intersect
select SuppName from VideoCards;


--INNER JOIN
--Display Customers order which have been shipped
select CustName, OrderNo, ShippedDate from Customer
inner join COrder using(CustID)
where ShippedDate is not null;


--OUTER JOIN
--Display Computer IDs and how many components each on has related to it. Even if 0
select CompID, Count(SerialNo)Amount from OrderLine
right outer join Computer using(CompID)
Group by CompID
Order by Amount DESC;

--ANTI JOIN
--Display Computer IDs that have no components related to it.
select CompID from Computer
where CompID not in(select CompID from OrderLine);

--SEMI JOIN // CORRELATED SUB-QUERY
--Display Suppliers who supply monitors
select * from Supplier s
where exists
    (select * from Component c
    where s.SuppName = c.SuppName
    and c.CompType like 'Monitor');





