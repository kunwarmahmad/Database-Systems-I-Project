CREATE DATABASE AirliftExpress_Project_1
USE AirliftExpress_Project_1
USE master


--DROP VIEW Revenue_REPORT
--DROP VIEW Order_Invoice_REPORT
--DROP VIEW Supplier_Report
--DROP VIEW Rider_Report
--DROP VIEW Payment_Report


--DROP TABLE Users;
--DROP TABLE Buyer;
--DROP TABLE Address;
--DROP TABLE Brand;
--DROP TABLE Category;
--DROP TABLE Supplier;
--DROP TABLE Inventory;
--DROP TABLE Inventory_Product;
--DROP TABLE Product;
--DROP TABLE Prod_Price;
--DROP TABLE Orders;
--DROP TABLE Contain_Orders;
--DROP TABLE Rider_info;
--DROP TABLE Rider_Order;
--DROP TABLE Deliver_To;
--DROP TABLE ShoppingCart;
--DROP TABLE CreditCard;
--DROP TABLE Payment;





--Selection
SELECT * FROM Users; --100
SELECT * FROM Buyer; --80
SELECT * FROM Address; --80
SELECT * FROM Brand; --24
SELECT * FROM Category; --1
SELECT * FROM Supplier; --24
SELECT * FROM Inventory; --80
SELECT * FROM Inventory_Product; --80
SELECT * FROM Product; --80
SELECT * FROM Prod_Price; --80
SELECT * FROM Orders; --500
SELECT * FROM Contain_Orders; --500
SELECT * FROM Rider_info; --100
SELECT * FROM Rider_Order; --500
SELECT * FROM Deliver_To; --500
SELECT * FROM ShoppingCart; --50
SELECT * FROM CreditCard; --80
SELECT * FROM Payment; --500

SELECT * FROM Revenue_REPORT ORDER BY pid --View
SELECT * FROM Order_Invoice_REPORT --View
SELECT * FROM Supplier_Report --View
SELECT * FROM Rider_Report --View
SELECT * FROM Payment_Report --View





-- Entity
CREATE TABLE Users
(
    userid INT NOT NULL
    ,name VARCHAR(20)
    ,phoneNumber VARCHAR(20) UNIQUE
    ,PRIMARY KEY(userid)
);

CREATE TABLE Buyer
(
    userid INT NOT NULL
    ,PRIMARY KEY(userid)
    ,FOREIGN KEY(userid) REFERENCES Users(userid)
);


CREATE TABLE Address --Scenerio based dependence. (same & diff address, userid) 
(
    addrid INT NOT NULL
    ,userid INT NOT NULL
    ,HouseNo INT
    ,streetAddr VARCHAR(100)
    ,City VARCHAR(100)
    ,postCode VARCHAR(12)
    ,PRIMARY KEY(addrid)
    ,FOREIGN KEY(userid) REFERENCES Buyer(userid)
);


CREATE TABLE Brand
(
    brandName VARCHAR(20) NOT NULL
    ,PRIMARY KEY (brandName)
);

CREATE TABLE Category
(
    Category VARCHAR(20) NOT NULL
    ,PRIMARY KEY (Category)
);


CREATE TABLE Supplier
(
    supplierid INT NOT NULL
    ,name VARCHAR(20)
    ,PRIMARY KEY(supplierid)
);


CREATE TABLE Inventory 
(
	inventoryId INT NOT NULL
	,supplierid INT NOT NULL
	,pid INT NOT NULL
    ,PRIMARY KEY(inventoryId,pid)
	,FOREIGN KEY(supplierid) REFERENCES Supplier(supplierid)
);

CREATE TABLE Inventory_Product
(
	pid INT NOT NULL
    ,price INT
	,inventoryId INT NOT NULL 
	,name VARCHAR(20)
	,quantity INT NOT NULL CHECK (quantity >=0)
	,AddTime DATETIME
	,PRIMARY KEY(pid, AddTime)
    ,FOREIGN KEY(inventoryId,pid) REFERENCES Inventory(inventoryId,pid)
);


CREATE TABLE Product -- Veiws will use to show Products to Buyers (Hiding InventoryId)
(
    pid INT NOT NULL
	,InventoryId INT NOT NULL
    ,name VARCHAR(100)
    ,brand VARCHAR(20) NOT NULL
    ,Category VARCHAR(20)
	,Measurment VARCHAR(20)
	,Status VARCHAR(50)
    ,PRIMARY KEY(pid)
    ,FOREIGN KEY(brand) REFERENCES Brand(brandName)
    ,FOREIGN KEY(Category) REFERENCES Category(Category)
	,FOREIGN KEY(inventoryId,pid) REFERENCES Inventory(inventoryId,pid)
);


CREATE TABLE Prod_Price -- get quantity through joins
(
	pid INT NOT NULL
	,price INT
	--,quantity INT CHECK (quantity >=0)
	,AddTime DATETIME
	,PRIMARY KEY(pid, AddTime)
	,FOREIGN KEY(pid) REFERENCES Product(pid)
);


CREATE TABLE Orders --total amount calculated through procedure
(
    userid INT NOT NULL
    ,orderNumber INT NOT NULL
    ,paymentMethod VARCHAR(255)
    ,PRIMARY KEY (orderNumber)
    ,FOREIGN KEY(userid) REFERENCES Buyer(userid)
);

   
CREATE TABLE Contain_Orders --Transactional (Fully Functional depends on both orderNumber,pid)
(
    orderNumber INT NOT NULL
    ,pid INT NOT NULL
    ,quantity INT
	,creationTime DATE
    ,PRIMARY KEY (orderNumber,pid)
    ,FOREIGN KEY(orderNumber) REFERENCES Orders(orderNumber)
	,FOREIGN KEY(pid) REFERENCES Product(pid)
);
--Procedure (Inventory qty - Contain Order qty = qty Left in Inventory)


CREATE TABLE Rider_info
(
    Riderid INT NOT NULL
	,name VARCHAR(20)
    ,phoneNumber VARCHAR(20) UNIQUE,
	PRIMARY KEY(Riderid)
);

CREATE TABLE Rider_Order
(
    addrid INT NOT NULL
    ,orderNumber INT NOT NULL
    ,PRIMARY KEY(orderNumber)
    ,FOREIGN KEY(addrid) REFERENCES Address(addrid)
    ,FOREIGN KEY(orderNumber) REFERENCES Orders(orderNumber)
);

CREATE TABLE Deliver_To --Transactional
(
    Riderid INT NOT NULL
    ,orderNumber INT NOT NULL
    ,TimeDelivered DATE
    ,PRIMARY KEY(Riderid,orderNumber)
    ,FOREIGN KEY(Riderid) REFERENCES Rider_info(Riderid)
    ,FOREIGN KEY(orderNumber) REFERENCES Rider_Order(orderNumber)
);


CREATE TABLE ShoppingCart
(
    userid INT NOT NULL
    ,pid INT NOT NULL
    ,addTime DATE
    ,quantity INT CHECK(quantity>=0)
    ,PRIMARY KEY (userid,pid)
    ,FOREIGN KEY(userid) REFERENCES Buyer(userid)
    ,FOREIGN KEY(pid) REFERENCES Product(pid)
);


CREATE TABLE CreditCard
(
    cardNumber VARCHAR(25)
    ,userid INT NOT NULL
	,expiryDate DATE
    ,bank VARCHAR(20)
    ,organization VARCHAR(20)
    ,PRIMARY KEY(cardNumber)
    ,FOREIGN KEY(userid) REFERENCES Buyer(userid)
);


CREATE TABLE Payment--Transaction Entity
(
    orderNumber INT NOT NULL
    ,creditcardNumber VARCHAR(25)
    ,payTime DATE
    ,PRIMARY KEY(orderNumber,creditcardNumber)
    ,FOREIGN KEY(orderNumber) REFERENCES Orders(orderNumber)
    ,FOREIGN KEY(creditcardNumber) REFERENCES CreditCard(cardNumber)
);





--Trigger HISTORY TABLES
CREATE TABLE Price_History
(
	pid INT,
	price INT,
	AddTime DATETIME
);
SELECT * FROM Price_History


CREATE TABLE Rider_Info_History
(
	 Riderid INT NOT NULL
	,name VARCHAR(20)
    ,phoneNumber VARCHAR(20)
);
SELECT * FROM Rider_Info_History

CREATE TABLE Delete_Prod_History
(
	pid INT,
	price INT,
	AddTime DATETIME
);
SELECT * FROM Delete_Prod_History


CREATE TABLE Inventory_Prod_History
(
	pid INT
    ,price INT
	,inventoryId INT
	,name VARCHAR(20)
	,quantity INT
	,AddTime DATETIME
);
SELECT * FROM Inventory_Prod_History


CREATE TABLE Order_History
(
    orderNumber INT
    ,pid INT
    ,quantity INT
	,creationTime DATE
);
SELECT * FROM Order_History










--<<<---------------------------------------VIEWS (REPORTS)--------------------------------------->>>>

--Revenue report by Order
CREATE  VIEW Revenue_REPORT AS 
SELECT DISTINCT (C.pid) , I.quantity AS Purchased, C.quantity AS SOLD,  (I.quantity- C.quantity) AS Remain ,(C.quantity * P.price)-(C.quantity * I.price) AS Profit
FROM Contain_Orders AS C
INNER JOIN Prod_Price AS P
ON C.pid = p.pid
INNER JOIN Inventory_Product AS I 
ON C.pid = I.pid
GO

SELECT * FROM Revenue_REPORT ORDER BY pid
DROP VIEW Revenue_REPORT



--VIEW for (Calculating Total Amount of Orders)

CREATE VIEW  Order_Invoice_REPORT AS  
	SELECT O.orderNumber, O.userid, O.paymentMethod, C.pid, C.quantity, P.price, (P.price*C.quantity) AS TOTAL_AMOUNT
	FROM Orders AS O
	INNER JOIN contain_Orders AS C 
	ON O.orderNumber = C.orderNumber
	INNER JOIN Prod_Price AS P 
	ON P.pid = C.pid
	--WHERE O.orderNumber = 1238
GO

SELECT * FROM Order_Invoice_REPORT





--Inventory By Supplier
CREATE VIEW Supplier_Report AS
SELECT S.name AS S_Name,I.pid,Inp.name,InP.quantity,InP.price
FROM Inventory AS I 
INNER JOIN Supplier AS S 
ON I.supplierid = S.supplierid 
INNER JOIN Inventory_Product AS InP 
ON InP.pid = I.pid
GO

SELECT * FROM Supplier_Report






--Rider Orders Report
CREATE VIEW Rider_Report
AS
SELECT D.Riderid, D.orderNumber, D.TimeDelivered,RI.name AS R_name, RO.addrid,U.name AS B_name, A.userid
FROM Deliver_To AS D
INNER JOIN Rider_Order AS RO 
ON D.orderNumber = RO.orderNumber
INNER JOIN Rider_info AS RI 
ON D.Riderid = RI.Riderid
INNER JOIN Address AS A 
ON RO.addrid = A.addrid
INNER JOIN Users AS U 
ON U.userid = A.userid
GO

SELECT * FROM Rider_Report







--Payment by User Report
CREATE VIEW Payment_Report
AS
SELECT Cr.userid, P.orderNumber, P.creditcardNumber, P.payTime, U.name, C.pid,C.quantity ,(Pp.price*C.quantity) AS TOTAL_AMOUNT
FROM Payment AS P
INNER JOIN contain_Orders AS C 
ON P.orderNumber = C.orderNumber
INNER JOIN CreditCard AS Cr 
ON P.creditcardNumber = Cr.cardNumber
INNER JOIN Users AS U 
ON  Cr.userid=U.userid  
INNER JOIN Prod_Price AS Pp 
ON  C.pid=Pp.pid
GO

SELECT * FROM Payment_Report











