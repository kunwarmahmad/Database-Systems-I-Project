USE AirliftExpress_Project_1

--<<<---------------------------------------PROCEDURES (INVOICES)--------------------------------------->>>>


-- Selection Procedures
EXEC Order_Invoice @orderNumber = 4532 --to Show Buyer

EXEC Browse_Product @name = '%Mango%'
EXEC Browse_Brand @brand = '%Coke%'
EXEC Browse_Price @min = 5, @max = 6000
EXEC Browse_Measurment @name = 'Deit Coke', @measurment = '500g'

EXEC Inventory_supplier @spid = 18 --Supplier Report
EXEC Inventory_ByProducts @pid = 1 --Products Supllier

EXEC Orders_ByUserId @userId = 85 --Add Time
EXEC Order_ByDate @sdate = '2022-01-01' ,@edate= '2022-01-03'
EXEC Orders_ByRiderID @rid = 1
EXEC ROrder_ByDate @sdate = '2022-01-08' ,@edate= '2022-01-10'

EXEC Payment_ByOrder @orderNumber =1238 
EXEC Payment_ByDate @sdate = '2022-01-08' ,@edate= '2022-01-10'
EXEC Payment_ByUser @userid = 85


--Updation Procedure
EXEC Update_ProductPrice @id=2, @price = 2350

--Insertion Procedures
EXEC Insert_Inventory @invid=2, @spid=20 , @pid = 2350
EXEC Insert_Inventory_Product @pid=2, @price = 2350, @inventoryId=2, @name='', @quantity='', @addTime=''
EXEC Insert_Product @pid=2, @InventoryId=2, @name='', @brand='', @Category='', @Measurment='', @Status=''
EXEC Insert_Product_Price @pid=2, @price = 2350, @addTime=''










--PROCEDURE for Buyer Order Invoice
CREATE PROCEDURE Order_Invoice @orderNumber int
AS
SELECT O.orderNumber, O.userid, O.paymentMethod, C.pid, C.quantity, P.price, (P.price*C.quantity) AS TOTAL_AMOUNT
FROM Orders AS O
INNER JOIN contain_Orders AS C 
ON O.orderNumber = C.orderNumber
INNER JOIN Prod_Price AS P 
ON P.pid = C.pid
WHERE O.orderNumber = @orderNumber
GO

EXEC Order_Invoice @orderNumber = 1238




--PROCEDURE for Buyer to Browse Product
CREATE PROCEDURE Browse_Product @name nvarchar(100)
AS
SELECT name,brand,Category,Measurment,Status,price,
((SELECT SUM(quantity) FROM Inventory_Product WHERE pid = Prod_Price.pid) - (SELECT SUM(quantity) FROM Contain_Orders WHERE pid = Prod_Price.pid)) AS Quantity 
FROM Product 
INNER JOIN Prod_Price
ON Prod_Price.pid = Product.pid
WHERE name LIKE @name
GO

EXEC Browse_Product @name = '%Mango%'
DROP PROCEDURE Browse_Product






--PROCEDURE for Buyer to Browse Brand
CREATE PROCEDURE Browse_Brand @brand nvarchar(20)
AS
SELECT name,brand,Category,Measurment,Status,price,
((SELECT SUM(quantity) FROM Inventory_Product WHERE pid = Prod_Price.pid) - (SELECT SUM(quantity) FROM Contain_Orders WHERE pid = Prod_Price.pid)) AS Quantity 
FROM Product 
INNER JOIN Prod_Price
ON Prod_Price.pid = Product.pid
WHERE brand LIKE @brand
GO

EXEC Browse_Brand @brand = '%Coke%'
DROP PROCEDURE Browse_Brand






--PROCEDURE for Buyer to Browse by Price
CREATE PROCEDURE Browse_Price @min int, @max int
AS
SELECT name,brand,Category,Measurment,Status,price,
((SELECT SUM(quantity) FROM Inventory_Product WHERE pid = Prod_Price.pid) - (SELECT SUM(quantity) FROM Contain_Orders WHERE pid = Prod_Price.pid)) AS Quantity 
FROM Product 
INNER JOIN Prod_Price
ON Prod_Price.pid = Product.pid
WHERE price BETWEEN @min AND @max
GO

EXEC Browse_Price @min = 5, @max = 6000
DROP PROCEDURE Browse_Price


--SELECT * FROM inventory_product WHERE name = 'Jublee'
--SELECT * FROM Contain_Orders WHERE pid = 45
--UPDATE inventory_product SET quantity = 50 WHERE pid = 45





CREATE PROCEDURE Browse_Measurment @name varchar(20), @measurment varchar(20)
AS
SELECT name,brand,Category,Measurment,Status,price,
((SELECT SUM(quantity) FROM Inventory_Product WHERE pid = Prod_Price.pid) - (SELECT SUM(quantity) FROM Contain_Orders WHERE pid = Prod_Price.pid)) AS Quantity 
FROM Product 
INNER JOIN Prod_Price
ON Prod_Price.pid = Product.pid
WHERE name = @name AND Measurment = @measurment
GO

EXEC Browse_Measurment @name = 'Deit Coke', @measurment = '500g'
DROP PROCEDURE Browse_Measurment


--(Remaining Qty = Inventory Qty - Contain_Orders Qty)
SELECT * FROM Inventory_Product WHERE name = 'Deit Coke'
SELECT SUM(quantity) FROM Inventory_Product WHERE pid = 2
SELECT SUM(quantity) FROM Contain_Orders WHERE pid = 2




--Inventory By Supplier
CREATE PROCEDURE Inventory_supplier @spid int
AS
SELECT S.name,I.pid,Inp.name,InP.quantity,InP.price
FROM Inventory AS I
INNER JOIN Supplier AS S
ON I.supplierid = S.supplierid
INNER JOIN Inventory_Product AS InP
ON InP.pid = I.pid
WHERE I.supplierid= @spid
GO

EXEC Inventory_supplier @spid = 18 

--SELECT pid FROM Inventory WHERE supplierid=18
--SELECT name FROM Supplier WHERE supplierid=18
--SELECT name, quantity , price FROM Inventory_Product WHERE pid=1




--Inventory By Product
CREATE PROCEDURE Inventory_ByProducts @pid int
AS
SELECT S.name,I.pid,Inp.name,InP.quantity,InP.price
FROM Inventory AS I
INNER JOIN Supplier AS S
ON I.supplierid = S.supplierid
INNER JOIN Inventory_Product AS InP
ON InP.pid = I.pid
WHERE I.pid= @pid
GO

EXEC Inventory_ByProducts @pid = 1





--Order by userid
CREATE PROCEDURE Orders_ByUserId @userId int
AS
SELECT O.orderNumber, O.userid, O.paymentMethod, C.pid, C.quantity, P.price, (P.price*C.quantity) AS TOTAL_AMOUNT
FROM Orders AS O
INNER JOIN contain_Orders AS C 
ON O.orderNumber = C.orderNumber
INNER JOIN Prod_Price AS P 
ON P.pid = C.pid
WHERE O.userid = @userId
GO

EXEC Orders_ByUserId @userId = 85




--Order by dateTime
CREATE PROCEDURE Order_ByDate @sdate date,@edate date
AS
SELECT O.orderNumber, O.userid, O.paymentMethod, C.pid, C.quantity, P.price,C.creationTime ,(P.price*C.quantity) AS TOTAL_AMOUNT
FROM Orders AS O
INNER JOIN contain_Orders AS C 
ON O.orderNumber = C.orderNumber
INNER JOIN Prod_Price AS P 
ON P.pid = C.pid
WHERE C.creationTime BETWEEN @sdate AND @edate
GO
 
EXEC Order_ByDate @sdate = '2022-01-01' ,@edate= '2022-01-03'



--Rider Order by rider id
CREATE PROCEDURE Orders_ByRiderID @rid int
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
WHERE D.Riderid= @rid
GO
 

EXEC Orders_ByRiderID @rid = 1
--Checking
SELECT name FROM Rider_info WHERE Riderid=1
SELECT addrid FROM Rider_Order WHERE orderNumber=2858
SELECT userid FROM Address WHERE addrid=70
SELECT name FROM Users WHERE userid=22



--Rider Order by Date
CREATE PROCEDURE ROrder_ByDate @sdate date,@edate date
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
WHERE D.TimeDelivered BETWEEN @sdate AND @edate
GO


EXEC ROrder_ByDate @sdate = '2022-01-08' ,@edate= '2022-01-10'



--Payment by OrderNumber
CREATE PROCEDURE Payment_ByOrder @orderNumber int
AS
SELECT P.orderNumber, P.creditcardNumber, P.payTime, Cr.userid, U.name, C.pid,C.quantity ,(Pp.price*C.quantity) AS TOTAL_AMOUNT
FROM Payment AS P
INNER JOIN contain_Orders AS C 
ON P.orderNumber = C.orderNumber
INNER JOIN CreditCard AS Cr 
ON P.creditcardNumber = Cr.cardNumber
INNER JOIN Users AS U 
ON  Cr.userid=U.userid  
INNER JOIN Prod_Price AS Pp 
ON  C.pid=Pp.pid
WHERE P.orderNumber= @orderNumber
GO

EXEC Payment_ByOrder @orderNumber =1238 


--Checking
SELECT * FROM Payment 
SELECT userid FROM CreditCard WHERE cardNumber=5554614344793747
SELECT name FROM Users WHERE userid=85
SELECT pid , quantity FROM Contain_Orders WHERE orderNumber=1238
SELECT price FROM Prod_Price WHERE pid = 54


--Payment by DATE
CREATE PROCEDURE Payment_ByDate @sdate date , @edate date
AS
SELECT P.orderNumber, P.creditcardNumber, P.payTime, Cr.userid, U.name, C.pid,C.quantity ,(Pp.price*C.quantity) AS TOTAL_AMOUNT
FROM Payment AS P
INNER JOIN contain_Orders AS C 
ON P.orderNumber = C.orderNumber
INNER JOIN CreditCard AS Cr 
ON P.creditcardNumber = Cr.cardNumber
INNER JOIN Users AS U 
ON  Cr.userid=U.userid  
INNER JOIN Prod_Price AS Pp 
ON  C.pid=Pp.pid
WHERE P.payTime BETWEEN @sdate AND @edate
GO

EXEC Payment_ByDate @sdate = '2022-01-08' ,@edate= '2022-01-10'
 


--Payment by User
CREATE PROCEDURE Payment_ByUser @userid int 
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
WHERE Cr.userid = @userid
GO

EXEC Payment_ByUser @userid = 85






--Update Procedure For Product Price
CREATE PROCEDURE Update_ProductPrice @id Int, @price int
AS
UPDATE Prod_Price SET price= @price
WHERE  pid = @id
GO

EXEC Update_ProductPrice @id=2, @price = 2350
--Checking
SELECT price FROM Prod_Price WHERE pid = 2






--Insertion Procedures

--Insert Procedure For Inventory
CREATE PROCEDURE Insert_Inventory @invid int ,@pid int, @spid int
AS
INSERT INTO Inventory
VALUES
(@invid,@spid,@pid)
GO

EXEC Insert_Inventory @invid=80, @spid=20 , @pid = 80




--Insert Procedure For Inventory_Product
CREATE PROCEDURE Insert_Inventory_Product @pid int ,@price int, @inventoryId INT,@name VARCHAR(255),@quantity INT, @addTime DATETIME 
AS
INSERT INTO Inventory_Product
VALUES
(
    @pid,
    @price,
    @inventoryId,
    @name,
    @quantity,
    @addTime
)
GO

EXEC Insert_Inventory_Product @pid=80, @price = 1000, @inventoryId=80, @name='Kabaab', @quantity='50', @addTime='2021-02-02'

SELECT * FROM Inventory_Product



--Insert Procedure For Product
CREATE PROCEDURE Insert_Product @InventoryId int ,@pid int, @name varchar(255),@brand varchar(255),@Category varchar(255),@Measurment varchar(255),@Status varchar(255)
AS
INSERT INTO Product
VALUES
(
    @pid,
    @InventoryId,
    @name,
    @brand,
    @Category,
    @Measurment,
    @Status
)
GO

EXEC Insert_Product @pid=80, @InventoryId=80, @name='Kabaab', @brand='Meat', @Category='Grocery', @Measurment='500g', @Status='Available'




--Insert Procedure For Product_Price
CREATE PROCEDURE Insert_Product_Price @pid int ,@price int, @addTime DATETIME 
AS
INSERT INTO Prod_Price
VALUES
(
    @pid,
    @price,
    @addTime
)
GO

EXEC Insert_Product_Price @pid=80, @price = 2000, @addTime='2021-12-22'


SELECT * FROM Inventory WHERE pid = 80
SELECT * FROM Inventory_Product WHERE pid = 80
SELECT * FROM Product WHERE pid = 80
SELECT * FROM Prod_Price WHERE pid = 80





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



--Sales report by Order
CREATE  VIEW SALES_REPORT AS 
SELECT DISTINCT (C.pid) , I.quantity AS Purchased, C.quantity AS SOLD,  (I.quantity- C.quantity) AS Remain ,(C.quantity * P.price) AS Sales
FROM Contain_Orders AS C
INNER JOIN Prod_Price AS P
ON C.pid = p.pid
INNER JOIN Inventory_Product AS I 
ON C.pid = I.pid
GO

SELECT * FROM SALES_REPORT ORDER BY pid
DROP VIEW SALES_REPORT










--<<<---------------------------------------TRIGGERS (HISTORY TABLE)--------------------------------------->>>>



--Product Price Update
Create trigger Price_Triggers
on Prod_Price
After Update
AS
begin
declare @id int ,@price INT , @AddTime DATETIME
select @id=pid from inserted
select @price=price from inserted
SELECT @AddTime=AddTime FROM inserted
insert into Price_History values (@id,@price,@AddTime)
print 'UPDATE Trigger executed'
end
GO

UPDATE Prod_Price SET price = 1220 WHERE pid = 1
SELECT * FROM Prod_Price

DROP TRIGGER Price_Trigger




--Rider Info Update
Create trigger RiderInfo_Trigger
on Rider_Info
After Update
AS
begin
declare @Riderid int ,@name VARCHAR(20) , @phoneNumber VARCHAR(20)
select @Riderid=Riderid from inserted
select @name=name from inserted
SELECT @phoneNumber=phoneNumber FROM inserted
insert into Rider_Info_History values (@Riderid,@name,@phoneNumber)
print 'UPDATE Trigger executed'
end
GO

UPDATE Rider_info SET name = 'John' WHERE Riderid = 1
SELECT * FROM Rider_info

DROP TRIGGER RiderInfo_Trigger





--Inventory Product History
Create trigger Inventory_History_Trigger
on Inventory_Product
After Insert
AS
begin
declare @pid INT, @price INT, @inventoryId INT, @name VARCHAR(20), @quantity INT, @AddTime DATETIME
select @pid=pid from inserted
select @price=price from inserted
SELECT @inventoryId=inventoryId FROM inserted
SELECT @name=name FROM inserted
SELECT @quantity=quantity FROM inserted
SELECT @AddTime=AddTime FROM inserted
insert into Inventory_Prod_History values (@pid,@price,@inventoryId,@name,@quantity,@AddTime)
print 'UPDATE Trigger executed'
end
GO

INSERT INTO Inventory_Product
(
    pid,
    price,
    inventoryId,
    name,
    quantity,
    AddTime
)
VALUES
(   80,        -- pid - int
    1400,     -- price - int
    80,        -- inventoryId - int
    'Kabaab',     -- name - varchar(20)
    20,        -- quantity - int
    GETDATE() -- AddTime - datetime
    )
SELECT * FROM Inventory_Product

DROP TRIGGER Inventory_History_Trigger






--Order History Insertion
CREATE TRIGGER Order_History_Trigger
ON Contain_Orders
AFTER INSERT
AS
BEGIN
DECLARE @orderNumber INT, @pid INT, @quantity INT, @creationTime DATE
SELECT @orderNumber=orderNumber FROM INSERTED
SELECT @pid=pid FROM INSERTED
SELECT @quantity=quantity FROM INSERTED
SELECT @creationTime=creationTime FROM INSERTED
INSERT INTO Order_History VALUES (@orderNumber,@pid,@quantity,@creationTime)
PRINT 'UPDATE Trigger executed'
END
GO

INSERT INTO Contain_Orders
(
    orderNumber,
    pid,
    quantity,
    creationTime
)
VALUES
(   7890,        -- orderNumber - int
    30,     -- pid - int
    2,        -- quantity - int
    GETDATE() -- creationTime - datetime
    )

SELECT * FROM Contain_Orders;
