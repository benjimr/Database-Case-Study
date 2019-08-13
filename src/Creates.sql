--Ben Ryan

Drop table Customer cascade constraints;
Drop table COrder cascade constraints;
Drop table Computer cascade constraints;
Drop table OrderLine cascade constraints;
Drop table Component cascade constraints;
Drop table Supplier cascade constraints;
Drop table CompType cascade constraints;


create table Customer
(
    CustID Number(6) Not Null,
    CustName Varchar2(30) Not Null,
    CustAddress Varchar2(50) Not Null,
    
    Primary Key(CustID)
);

create table Supplier
(
    SuppName Varchar2(30) Not Null,
    SuppPhone Varchar2(15) Not Null,
    SuppAddress Varchar2(50) Not Null,
    
    Primary Key(SuppName),
  	Constraint phoneCheck check (SuppPhone like '+%')
);

create table CompType
(
    CType Varchar2(30) Not Null,
    CDesc Varchar2(50) Not Null,
    
    Primary Key(CType)
);

create table COrder
(
    OrderNo Number(6) Not Null,
    CustID Number(6) Not Null,
    OrderDate Date Not Null,
    ShippedDate Date,
    
    Primary Key(OrderNo),
    Foreign Key (CustID) References customer(CustID)
);

create table Computer
(
    CompID Number(7) Not Null,
    OrderNo Number(6) Not Null,
    Completed Varchar2(1),
    
    Primary Key(CompID),
    Foreign Key(OrderNo) references COrder(OrderNo)
);

create table Component
(
    SerialNo Varchar2(15),
    CompType Varchar2(30),
    SuppName Varchar2(30),
    
    Primary Key(SerialNo),
    Foreign Key(CompType) references CompType(CType),
    Foreign Key(SuppName) references Supplier(SuppName)
);

create table OrderLine
(
    CompID Number(7) Not Null,
    SerialNo Varchar(10) Not Null,
    
    Foreign Key(CompID) references Computer(CompID),
    Foreign Key(SerialNo) references Component(SerialNo)
);





