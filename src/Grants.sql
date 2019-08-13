--Grant access to group member accounts as appropriate for their role

--CUSTOMER
--BRYAN is the Customer
--full access to the customer table, to create, view, update or delete their account
GRANT ALL ON CUSTOMER TO BRYAN;

--full access to the tables used for storing orders, so they can make, view, update and 
--delete their order
GRANT ALL ON CORDER TO BRYAN; 
GRANT ALL ON COMPUTER TO BRYAN;
GRANT ALL ON ORDERLINE TO BRYAN; 

--Select access to these tables so they can view products by supplier, type etc.
GRANT SELECT ON SUPPLIER TO BRYAN;
GRANT SELECT ON COMPTYPE TO BRYAN;
GRANT SELECT ON COMPONENT TO BRYAN;

GRANT SELECT ON ORDERSEQ TO BRYAN;
GRANT SELECT ON COMPSEQ TO BRYAN;



--EMPLOYEE
--Y is the employee
-- can view and insert customers but can't update or delete their information
GRANT SELECT ON CUSTOMER TO Y;
GRANT INSERT ON CUSTOMER TO Y;

-- full access to orders and components
GRANT ALL ON ORDER TO Y;
GRANT ALL ON ORDERLINE TO Y;
GRANT ALL ON COMPUTER TO Y;
GRANT ALL ON COMPONENT TO Y;
GRANT ALL ON COMPTYPE TO Y;

-- can view, insert or update supplier but not delete them
GRANT SELECT ON SUPPLIER TO Y;
GRANT INSERT ON SUPPLIER TO Y;
GRANT UPDATE ON SUPPLIER TO Y;



--SUPPLIER
--X is the supplier
--has full access to supplier table and the components they supply
GRANT ALL ON SUPPLIER TO X;
GRANT ALL ON COMPONENT TO X;

--can view the component types
GRANT SELECT ON COMPTYPE TO X;

--can view order line so they can see how their components are selling
GRANT SELECT ON ORDERLINE TO X;


