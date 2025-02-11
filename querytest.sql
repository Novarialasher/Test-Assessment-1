CREATE TABLE Customer
(
  ID INT PRIMARY KEY ,
  CUST_NAME VARCHAR(50), PHONENUMBER VARCHAR(20), EMAIL VARCHAR (100),
  CATEGORY INT
  )
  
  CREATE TABLE Product
(
  ID VARCHAR(5) PRIMARY KEY ,
  Prod_Name INT,
  Prod_Amount VARCHAR(100),
  Vendor_id INT
  )

  CREATE TABLE Orders
(
  ID INT PRIMARY KEY ,
  CUST_ID INT,
  AMOUNT VARCHAR(100),
  PROD_ID VARCHAR(5),
  FOREIGN KEY (CUST_ID) REFERENCES Customer(ID),
  FOREIGN KEY (PROD_ID) REFERENCES Product(ID)
  )
  
  INSERT INTO Customer
  VALUES ('101', 'ahmad', '081200001','ahmad@gmail.com',1),
  ('102', 'budi', '081200002','budi@gmail.com',1),
  ('103', 'indah', '081200003','indah@gmail.com',2),
  ('104', 'rani', '081200004','rani@gmail.com',3),
    ('105', 'putri', '081200005','putri@gmail.com',2)
    
  INSERT INTO Product
  VALUES ('121', '101', '10000','A100'),
  ('122', '101', '20000','A101'),
  ('123', '103', '20000','A101'),
  ('124', '102', '15000','A103'),
    ('125', '103', '30000','A104')
  
  INSERT INTO Product
  VALUES ('A100', 'Sabun Mandi', '10000','10'),
  ('A101', 'Pasta Gigi', '20000','11'),
  ('A102', 'Shampoo', '15000','12'),
  ('A103', 'Sabun Cuci', '15000','13'),
   ('A104', 'Pewangi', '30000','14')
  
 
 --1
SELECT *
  FROM Orders
  ORDER BY AMOUNT ASC

--2
SELECT cust_name
 FROM CUSTOMER C
 JOIN ORDERS O
 ON C.id = O.cust_id
 WHERE PROD_ID = 'A101' OR PROD_ID = 'A103'
 
 ==3
SELECT * FROM PRODUCT P
  JOIN ORDERS O
  ON P.id = O.prod_id
  JOIN Customer C
  ON O.cust_id = C.id
  WHERE CUST_NAME = 'Budi'