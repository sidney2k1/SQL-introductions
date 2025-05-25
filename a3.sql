CREATE TABLE IF NOT EXISTS orders (orderno TEXT PRIMARY KEY, purchase REAL, date TEXT, customerid TEXT, salesmanid TEXT);
INSERT INTO orders (orderno,purchase,date,customerid,salesmanid) VALUES 
("1",150.00,"20/5/2025","5001","3500"),("2",175.00,"21/5/2025","5002","3501"),("3",200.00,"20/5/2025","5003","3502"),("4",250.00,"24/5/2025","5004","3503"),("5",300.00,"25/5/2025","5005","3504");
SELECT*FROM orders;
SELECT purchase,date FROM orders
