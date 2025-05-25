CREATE TABLE IF NOT EXISTS salesman(salesman_id TEXT PRIMARY KEY,name TEXT,city TEXT,commission REAL);
INSERT INTO salesman(salesman_id,name,city,commission) 
VALUES ("5000","john","new york",0.15),
("5001","jacob","new delhi",0.13),
("5002","james","new jersey",0.14),
("5003","johnson","new orleans",0.17),
("5004","jimmy","mexico city",0.12),
("5005","jake","beijing",0.10),
("5006","jamal","tokyo",0.19);
SELECT*FROM salesman;
SELECT name,city FROM salesman;
