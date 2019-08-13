INSERT INTO CUSTOMER (CustID, CustName, CustAddress)
VALUES (1, 'Patricia O Byrne', 'DIT Kevin Street');

INSERT INTO CUSTOMER (CustID, CustName, CustAddress)
VALUES (2, 'John Smith', 'DIT Aungier Street');

INSERT INTO CUSTOMER (CustID, CustName, CustAddress)
VALUES (3, 'Sarah Kelly', '67 Cork Street');

INSERT INTO CUSTOMER (CustID, CustName, CustAddress)
VALUES (4, 'Raul Alvarez', '1 Mill Street');

INSERT INTO CUSTOMER (CustID, CustName, CustAddress)
VALUES (5, 'Ben Ryan', '44 Green Street');

INSERT INTO CUSTOMER (CustID, CustName, CustAddress)
VALUES (6, 'Yitchee Chin', '20 Spring Street');

INSERT INTO CUSTOMER (CustID, CustName, CustAddress)
VALUES (7, 'Tim Zerg', '8 Memorial Street');

INSERT INTO CUSTOMER (CustID, CustNAME, CustAddress)
VALUES (8, 'Anna Gallagher', '4 Grafton Street');


INSERT INTO SUPPLIER(SuppName, SuppPhone, SuppAddress)
VALUES ('Intel', '+353-1-5553321', '15 Naul Rd, Dublin 27');

INSERT INTO SUPPLIER(SuppName, SuppPhone, SuppAddress)
VALUES ('Kompak', '+44-433333333', '55 London Row, RH19, England');

INSERT INTO SUPPLIER(SuppName, SuppPhone, SuppAddress)
VALUES ('Gforce', '+44-532343344', 'Janesford Retail Pk, NW1');

INSERT INTO SUPPLIER(SuppName, SuppPhone, SuppAddress)
VALUES ('Kingston', '+44-433666554', 'Kingston Park, Watting');

INSERT INTO SUPPLIER(SuppName, SuppPhone, SuppAddress)
VALUES ('Creative', '+55-433999234', 'Creative Sounds, USA');

INSERT INTO SUPPLIER(SuppName, SuppPhone, SuppAddress)
VALUES ('Western Digital', '+44-436523454', 'Dallas Fortworth, USA');

INSERT INTO SUPPLIER(SuppName, SuppPhone, SuppAddress)
VALUES ('Corsair', '+44-434345453', 'Manor Road, London 18');

INSERT INTO SUPPLIER(SuppName, SuppPhone, SuppAddress)
VALUES ('Acer', '+353-1-3333333', 'Acer House, West Dublin');

INSERT INTO SUPPLIER(SuppName, SuppPhone, SuppAddress)
VALUES ('Radion', '+44-432222222', 'Bakers Lane, NW22');

INSERT INTO SUPPLIER(SuppName, SuppPhone, SuppAddress)
VALUES ('Crucial', '+44-431111111', 'Watting Park, Watting');

INSERT INTO SUPPLIER(SuppName, SuppPhone, SUPPADDRESS)
VALUES ('Seagate', '+353-1-445544', 'Forbes Retail Park, D22');

INSERT INTO SUPPLIER(SuppName, SuppPhone, SuppAddress)
VALUES ('AMD', '+353-1-1111111', '18 Amber Street, Dublin 8');

INSERT INTO SUPPLIER(SuppName, SuppPhone, SuppAddress)
VALUES ('Dell', '+353-1-1188888', '90 Dolphin Street, Dublin 3');

INSERT INTO SUPPLIER(SuppName, SuppPhone, SuppAddress)
VALUES ('Samsung', '+34-9506060', '40 Versalles Street, Madrid');


INSERT INTO COMPTYPE(CType, CDesc)
VALUES ('Processor', 'Central Processing Unit');

INSERT INTO COMPTYPE(CType, CDesc)
VALUES ('Monitor', 'Visual Display Unit');

INSERT INTO COMPTYPE(CType, CDesc)
VALUES ('Video Card', 'Generates output images');

INSERT INTO COMPTYPE(CType, CDesc)
VALUES ('RAM', 'Random Access Memory');

INSERT INTO COMPTYPE(CType, CDesc)
VALUES ('Sound Card', 'Facilitates sound');

INSERT INTO COMPTYPE(CType, CDesc)
VALUES ('Hard Drive', 'Seconday memory storage');

INSERT INTO COMPTYPE(CType, CDesc)
VALUES ('Power Supply', 'Energy');

INSERT INTO COMPTYPE(CType, CDesc)
VALUES ('Motherboard', 'Circuit Board');

INSERT INTO COMPTYPE(CType, CDesc)
VALUES ('Keyboard', 'Text Input');

INSERT INTO COMPTYPE(CType, CDesc)
VALUES ('Mouse', 'Input');

INSERT INTO COMPTYPE(CType, CDesc)
VALUES ('Fan', 'Temp Control');



INSERT INTO COrder(OrderNo, CustID, OrderDate, ShippedDate)
VALUES (7733, 1, TO_DATE('13/11/2017', 'DD/MM/YYYY'), TO_DATE('18/11/2017', 'DD/MM/YYYY'));

INSERT INTO COrder(OrderNo, CustID, OrderDate, ShippedDate)
VALUES (1122, 1, TO_DATE('22/12/2017', 'DD/MM/YYYY'), TO_DATE('29/12/2017', 'DD/MM/YYYY'));

INSERT INTO COrder(OrderNo, CustID, OrderDate, ShippedDate)
VALUES (9090, 2, TO_DATE('1/11/2017', 'DD/MM/YYYY'), TO_DATE('10/11/2017', 'DD/MM/YYYY'));

INSERT INTO COrder(OrderNo, CustID, OrderDate, ShippedDate)
VALUES (3883, 4, TO_DATE('8/10/2017', 'DD/MM/YYYY'), Null);

INSERT INTO COrder(OrderNo, CustID, OrderDate, ShippedDate)
VALUES (1010, 5, TO_DATE('24/10/2017', 'DD/MM/YYYY'), Null);

INSERT INTO COrder(OrderNo, CustID, OrderDate, ShippedDate)
VALUES (5555, 6, TO_DATE('13/11/2017', 'DD/MM/YYYY'), NUll);

INSERT INTO COrder(OrderNo, CustID, OrderDate, ShippedDate)
VALUES (3298, 6, TO_DATE('7/12/2017', 'DD/MM/YYYY'), TO_DATE('15/12/2017', 'DD/MM/YYYY'));


INSERT INTO Computer(CompID, OrderNo, Completed)
VALUES (5544554, 7733, 'Y');

INSERT INTO Computer(CompID, OrderNo, Completed)
VALUES (5522222, 7733, 'Y');

INSERT INTO Computer(CompID, OrderNo, Completed)
VALUES (5556666, 1122, 'Y');

INSERT INTO Computer(CompID, OrderNo, Completed)
VALUES (5556667, 1122, 'Y');

INSERT INTO Computer(CompID, OrderNo, Completed)
VALUES (5111115, 9090, 'Y');

INSERT INTO Computer(CompID, OrderNo, Completed)
VALUES (5881004, 3883, 'N');

INSERT INTO Computer(CompID, OrderNo, Completed)
VALUES (5678900, 1010, 'Y');

INSERT INTO Computer(CompID, OrderNo, Completed)
VALUES (5678901, 1010, 'N');

INSERT INTO Computer(CompID, OrderNo, Completed)
VALUES (3777771, 5555, 'N');

INSERT INTO Computer(CompID, OrderNo, Completed)
VALUES (3777772, 5555, 'N');

INSERT INTO Computer(CompID, OrderNo, Completed)
VALUES (3777773, 5555, 'N');

INSERT INTO Computer(CompID, OrderNo, Completed)
VALUES (5856570, 3298, 'Y');


INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('IN3344455', 'Processor', 'Intel');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('K33554433', 'Monitor', 'Kompak');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('GF55', 'Video Card', 'Gforce');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('King667', 'RAM', 'Kingston');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('CRE120', 'Sound Card', 'Creative');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('WD40G', 'Hard Drive', 'Western Digital');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('C444', 'Power Supply', 'Corsair');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('A4225566', 'Monitor', 'Acer');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('Rad5533', 'Video Card', 'Radion');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('C1.5G', 'RAM', 'Crucial');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('S40G', 'Hard Drive', 'Seagate');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('I7', 'Processor', 'Intel');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('RYZEN7P', 'Processor', 'AMD');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('RYZEN50', 'Processor', 'AMD');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('XPS13', 'Monitor', 'Dell');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('XPS15', 'Monitor', 'Dell');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('Ultrawide700', 'Monitor', 'Samsung');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('GTX1080', 'Video Card', 'Gforce');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('GTX970', 'Video Card', 'Gforce');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('VEGA', 'Video Card', 'AMD');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('RX500', 'Video Card', 'AMD');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('SMAUD12', 'Sound Card', 'Samsung');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('SSD500', 'Hard Drive', 'Samsung');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('RT43', 'Fan', 'Corsair');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('8460H', 'Motherboard', 'Radion');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('75E6G', 'Mouse', 'Kingston');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('GH456', 'Keyboard', 'Corsair');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('P90478', 'Motherboard', 'Corsair');

INSERT INTO Component(SerialNo, CompType, SuppName)
VALUES ('AC675', 'Sound Card', 'Acer');


INSERT INTO OrderLine(CompID, SerialNo)
VALUES (5678900, 'P90478');

INSERT INTO OrderLine(CompID, SerialNo)
VALUES (5678900, 'AC675');

INSERT INTO OrderLine(CompID, SerialNo)
VALUES (5678900, 'GH456');

INSERT INTO OrderLine(CompID, SerialNo)
VALUES (5678900, 'RT43');

INSERT INTO OrderLine(CompID, SerialNo)
VALUES (5678900, 'SSD500');

INSERT INTO OrderLine(CompID, SerialNo)
VALUES (5678901, '8460H');

INSERT INTO OrderLine(CompID, SerialNo)
VALUES (5678901, 'SMAUD12');

INSERT INTO OrderLine(CompID, SerialNo)
VALUES (5678901, 'RX500');

INSERT INTO OrderLine(CompID, SerialNo)
VALUES (5678901, 'XPS15');

INSERT INTO OrderLine(CompID, SerialNo)
VALUES (5678901, 'C1.5G');

INSERT INTO OrderLine(CompID, SerialNo)
VALUES (5544554, 'IN3344455');

INSERT INTO OrderLine(CompID, SerialNo)
VALUES (5544554, 'K33554433');

INSERT INTO OrderLine(CompID, SerialNo)
VALUES (5544554, 'GF55');

INSERT INTO OrderLine(CompID, SerialNo)
VALUES (5544554, 'King667');

INSERT INTO OrderLine(CompID, SerialNo)
VALUES (5544554, 'CRE120');

INSERT INTO OrderLine(CompID, SerialNo)
VALUES (5544554, 'WD40G');

INSERT INTO OrderLine(CompID, SerialNo)
VALUES (5544554, 'C444');

INSERT INTO OrderLine(CompID, SerialNo)
VALUES (5522222, 'IN3344455');

INSERT INTO OrderLine(CompID, SerialNo)
VALUES (5522222, 'A4225566');

INSERT INTO OrderLine(CompID, SerialNo)
VALUES (5522222, 'Rad5533');

INSERT INTO OrderLine(CompID, SerialNo)
VALUES (5522222, 'C1.5G');

INSERT INTO OrderLine(CompID, SerialNo)
VALUES (5522222, 'CRE120');

INSERT INTO OrderLine(CompID, SerialNo)
VALUES (5522222, 'S40G');

INSERT INTO OrderLine(CompID, SerialNo)
VALUES (5522222, 'C444');
