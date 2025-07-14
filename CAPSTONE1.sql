CREATE TABLE SALESMAN(Salesmanid TEXT PRIMARY KEY,name TEXT,city TEXT,commission REAL);
INSERT INTO SALESMAN(Salesmanid,name,city,commission)
VALUES
('5001', 'James Hoog', 'New York', 0.15),
('5002', 'Nail Knite', 'Paris', 0.13),
('5005', 'Pit Alex', 'London', 0.11),
('5006', 'Mc Lyon', 'Paris', 0.14),
('5007', 'Paul Adam', 'Rome', 0.13),
('5003', 'Lauson Hen', 'San Jose', 0.12);
CREATE TABLE CUSTOMER(Customerid PRIMARY KEY,custname TEXT,city TEXT,grade INTEGER,Salesmanid TEXT, FOREIGN KEY(Salesmanid) REFERENCES SALESMAN(Salesmanid));
INSERT INTO CUSTOMER(Customerid,custname,city,grade,Salesmanid)
VALUES
('3002', 'nick rimando', 'new york', 100, '5001'),
('3007', 'brad davis', 'new york', 200, '5001'),
('3005', 'graham zusi', 'california', 200, '5002'),
('3008', 'julian green', 'london', 300, '5002'),
('3004', 'fabian johnson', 'paris', 300, '5006'),
('3009', 'geoff cameron', 'berlin', 100, '5003'),
('3003', 'jozy altidor', 'moscow', 200, '5007'),
('3001', 'brad guzan', 'london', NULL, '5005');
CREATE TABLE ORDERS(ordno TEXT PRIMARY KEY,purchamt REAL,orddate TEXT,Customerid TEXT,salesmanid TEXT,FOREIGN KEY(Customerid) REFERENCES CUSTOMER(Customerid),FOREIGN KEY(Salesmanid) REFERENCES SALESMAN(Salesmanid));
INSERT INTO ORDERS(ordno,purchamt,orddate,Customerid,salesmanid)
VALUES
('70001', 150.5, '2012-10-05', '3005', '5002'),
('70009', 270.65, '2012-09-10', '3001', '5001'),
('70002', 65.26, '2012-10-05', '3002', '5003'),
('70004', 110.5, '2012-08-17', '3009', '5007'),
('70007', 948.5, '2012-09-10', '3005', '5005'),
('70005', 2400.6, '2012-07-27', '3007', '5006');
SELECT CUSTOMER.custname,SALESMAN.NAME,SALESMAN.city FROM CUSTOMER
JOIN SALESMAN ON CUSTOMER.city=SALESMAN.city;
SELECT CUSTOMER.custname,SALESMAN.name FROM CUSTOMER
JOIN SALESMAN ON CUSTOMER.Salesmanid=SALESMAN.Salesmanid;
