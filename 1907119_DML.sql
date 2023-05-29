
                                                          ------- DML -------


                                                    ---------Data Insertion----------

--------  Bicycle Table ------------

    INSERT INTO Bicycle(B_Id, B_Name, model, model_year, price_B, rent_H)VALUES('B001', 'Mountain Bike', 'MTB-1', 2021, 500, 10); 
    INSERT INTO Bicycle(B_Id, B_Name, model, model_year, price_B, rent_H)VALUES('B002', 'Road Bike', 'RB-1', 2020, 800, 15);
    INSERT INTO Bicycle(B_Id, B_Name, model, model_year, price_B, rent_H)VALUES('B003', 'City Bike', 'CB-1', 2022, 400, 8);       
    INSERT INTO Bicycle(B_Id, B_Name, model, model_year, price_B, rent_H)VALUES('B004', 'Mountain Bike', 'MTB-2', 2021, 500, 10); 
    INSERT INTO Bicycle(B_Id, B_Name, model, model_year, price_B, rent_H)VALUES('B005', 'Road Bike', 'RB-2', 2020, 800, 15);
    INSERT INTO Bicycle(B_Id, B_Name, model, model_year, price_B, rent_H)VALUES('B006', 'City Bike', 'CB-2', 2022, 400, 8);
    INSERT INTO Bicycle(B_Id, B_Name, model, model_year, price_B, rent_H)VALUES('B007', 'Mountain Bike', 'MTB-1', 2021, 500, 10); 
    INSERT INTO Bicycle(B_Id, B_Name, model, model_year, price_B, rent_H)VALUES('B008', 'Road Bike', 'RB-1', 2020, 800, 15);
    INSERT INTO Bicycle(B_Id, B_Name, model, model_year, price_B, rent_H)VALUES('B009', 'City Bike', 'CB-3', 2022, 400, 8);
    INSERT INTO Bicycle(B_Id, B_Name, model, model_year, price_B, rent_H)VALUES('B010', 'Mountain Bike', 'MTB-1', 2021, 500, 10); 



--------  Customer Table ------------

    INSERT INTO Customer (U_Id, U_Name, email, phone, address, age)VALUES('C001', 'Aciful Islam', 'aciful@example.com', 01994729653, '123 Main St', 25);
    INSERT INTO Customer (U_Id, U_Name, email, phone, address, age)VALUES('C002', 'Saugata Roy', 'saugata@example.com', 01994729650, '456 Elm St', 26);
    INSERT INTO Customer (U_Id, U_Name, email, phone, address, age)VALUES('C003', 'Swajan Paul', 'swajan@example.com',01994729651, '789 Oak St', 30);
    INSERT INTO Customer (U_Id, U_Name, email, phone, address, age)VALUES('C004', 'Debjoyti Banik', 'debu@example.com', 01994729652, '123 Main St', 25);
    INSERT INTO Customer (U_Id, U_Name, email, phone, address, age)VALUES('C005', 'Faisal Islam', 'faisal@example.com', 01994729654, '456 Elm St', 30);
    INSERT INTO Customer (U_Id, U_Name, email, phone, address, age)VALUES('C006', 'Prottoy Biswas', 'prottoy@example.com', 01994729655, '789 Oak St', 26);
    INSERT INTO Customer (U_Id, U_Name, email, phone, address, age)VALUES('C007', 'Towsif Khan', 'towsif@example.com', 01994729656, '123 Main St', 25);
    INSERT INTO Customer (U_Id, U_Name, email, phone, address, age)VALUES('C008', 'Jane Smith', 'janesmith@example.com',01994729657, '456 Elm St', 30);
    INSERT INTO Customer (U_Id, U_Name, email, phone, address, age)VALUES('C009', 'David Johnson', 'davidjohnson@example.com', 01994729658, '789 Oak St', 25);
    INSERT INTO Customer (U_Id, U_Name, email, phone, address, age)VALUES('C010', 'John Doe', 'johndoe@example.com',01994729659, '123 Main St', 25);
    
    
--------  Rent Table ------------

    INSERT INTO Rent (R_Id, location_from, location_to, R_Hour, rent, B_Id, U_Id)VALUES('R001', 'Park A', 'Park B', 2, 20, 'B001', 'C001');
    INSERT INTO Rent (R_Id, location_from, location_to, R_Hour, rent, B_Id, U_Id)VALUES('R002', 'Beach', 'Lake', 3, 30, 'B002', 'C002');
    INSERT INTO Rent (R_Id, location_from, location_to, R_Hour, rent, B_Id, U_Id)VALUES('R003', 'Downtown', 'Suburb', 4, 40, 'B003', 'C003');
    INSERT INTO Rent (R_Id, location_from, location_to, R_Hour, rent, B_Id, U_Id)VALUES('R004', 'Park A', 'Park B', 2, 20, 'B004', 'C004');
    INSERT INTO Rent (R_Id, location_from, location_to, R_Hour, rent, B_Id, U_Id)VALUES('R005', 'Beach', 'Lake', 3, 30, 'B005', 'C005');
    INSERT INTO Rent (R_Id, location_from, location_to, R_Hour, rent, B_Id, U_Id)VALUES('R006', 'Downtown', 'Suburb', 4, 40, 'B006', 'C006');
    INSERT INTO Rent (R_Id, location_from, location_to, R_Hour, rent, B_Id, U_Id)VALUES('R007', 'Park A', 'Park B', 2, 20, 'B007', 'C007');
    INSERT INTO Rent (R_Id, location_from, location_to, R_Hour, rent, B_Id, U_Id)VALUES('R008', 'Beach', 'Lake', 3, 30, 'B008', 'C008');
    INSERT INTO Rent (R_Id, location_from, location_to, R_Hour, rent, B_Id, U_Id)VALUES('R009', 'Downtown', 'Suburb', 4, 40, 'B009', 'C009');   
    INSERT INTO Rent (R_Id, location_from, location_to, R_Hour, rent, B_Id, U_Id)VALUES('R010', 'Park A', 'Park B', 2, 20, 'B010', 'C010');
    INSERT INTO Rent (R_Id, location_from, location_to, R_Hour, rent, B_Id, U_Id)VALUES('R011', 'ogog', 'BGOG', 2, 20, 'B001', 'C002');



--------  Sale Table ------------

    INSERT INTO Sale (S_Id, sale_No, B_Id, U_Id)VALUES('S001', 1001, 'B001', 'C001');
    INSERT INTO Sale (S_Id, sale_No, B_Id, U_Id)VALUES('S002', 1002, 'B002', 'C002');
    INSERT INTO Sale (S_Id, sale_No, B_Id, U_Id)VALUES('S003', 1003, 'B003', 'C003');
    INSERT INTO Sale (S_Id, sale_No, B_Id, U_Id)VALUES('S004', 1004, 'B004', 'C004');
    INSERT INTO Sale (S_Id, sale_No, B_Id, U_Id)VALUES('S005', 1005, 'B005', 'C005');
    INSERT INTO Sale (S_Id, sale_No, B_Id, U_Id)VALUES('S006', 1006, 'B006', 'C006');
    INSERT INTO Sale (S_Id, sale_No, B_Id, U_Id)VALUES('S007', 1007, 'B007', 'C007');
    INSERT INTO Sale (S_Id, sale_No, B_Id, U_Id)VALUES('S008', 1008, 'B008', 'C008');
    INSERT INTO Sale (S_Id, sale_No, B_Id, U_Id)VALUES('S009', 1009, 'B009', 'C009');
    INSERT INTO Sale (S_Id, sale_No, B_Id, U_Id)VALUES('S010', 1010, 'B010', 'C010');



--------  Accessories Table ------------

    INSERT INTO Accessories (A_Id, A_Name, price_Acc, B_Id)VALUES('A001', 'Helmet', 50, 'B001');
    INSERT INTO Accessories (A_Id, A_Name, price_Acc, B_Id)VALUES('A002', 'Lock', 20, 'B002');
    INSERT INTO Accessories (A_Id, A_Name, price_Acc, B_Id)VALUES('A003', 'Lights', 30, 'B003');
    INSERT INTO Accessories (A_Id, A_Name, price_Acc, B_Id)VALUES('A004', 'Helmet', 50, 'B004');
    INSERT INTO Accessories (A_Id, A_Name, price_Acc, B_Id)VALUES('A005', 'Lock', 20, 'B005');
    INSERT INTO Accessories (A_Id, A_Name, price_Acc, B_Id)VALUES('A006', 'Lights', 30, 'B006');
    INSERT INTO Accessories (A_Id, A_Name, price_Acc, B_Id)VALUES('A007', 'Helmet', 50, 'B007');
    INSERT INTO Accessories (A_Id, A_Name, price_Acc, B_Id)VALUES('A008', 'Lock', 20, 'B008');
    INSERT INTO Accessories (A_Id, A_Name, price_Acc, B_Id)VALUES('A009', 'Lights', 30, 'B009');
    INSERT INTO Accessories (A_Id, A_Name, price_Acc, B_Id)VALUES('A010', 'Helmet', 50, 'B010');
     


     
-------- Payment Table ------------
    INSERT INTO Payment (P_Id, P_No, amount, B_Id, U_Id,A_Id)VALUES('P001', 'PAY001', 100, 'B001', 'C001', 'A001');
    INSERT INTO Payment (P_Id, P_No, amount, B_Id, U_Id,A_Id)VALUES('P002', 'PAY002', 200, 'B002', 'C002', 'A002');
    INSERT INTO Payment (P_Id, P_No, amount, B_Id, U_Id,A_Id)VALUES('P003', 'PAY003', 150, 'B003', 'C003', 'A003');
    INSERT INTO Payment (P_Id, P_No, amount, B_Id, U_Id,A_Id)VALUES('P004', 'PAY004', 100, 'B004', 'C004', 'A004');
    INSERT INTO Payment (P_Id, P_No, amount, B_Id, U_Id,A_Id)VALUES('P005', 'PAY005', 200, 'B005', 'C005', 'A005');
    INSERT INTO Payment (P_Id, P_No, amount, B_Id, U_Id,A_Id)VALUES('P006', 'PAY006', 150, 'B006', 'C006', 'A006');
    INSERT INTO Payment (P_Id, P_No, amount, B_Id, U_Id,A_Id)VALUES('P007', 'PAY007', 100, 'B007', 'C007', 'A007');
    INSERT INTO Payment (P_Id, P_No, amount, B_Id, U_Id,A_Id)VALUES('P008', 'PAY008', 200, 'B008', 'C008', 'A008');
    INSERT INTO Payment (P_Id, P_No, amount, B_Id, U_Id,A_Id)VALUES('P009', 'PAY009', 150, 'B009', 'C009', 'A009');
    INSERT INTO Payment (P_Id, P_No, amount, B_Id, U_Id,A_Id)VALUES('P010', 'PAY010', 100, 'B010', 'C010', 'A010');
   


-------- Displaying table data using SELECT command ------------

   select * from Bicycle;
   select * from Customer;
   select * from Rent;
   select * from Sale;
   select * from Accessories;
   select * from Payment;


-------------Update Delete Insert Command -----------------------

   UPDATE Bicycle
   SET model = 'MTB-3' 
   WHERE B_Id = 'B010';

   UPDATE Accessories SET price_Acc = price_Acc * 1.1;

   DELETE FROM Rent WHERE R_Id = 'R011';

   INSERT INTO Customer (U_Id, U_Name, email, phone, address, age)VALUES ('C011', 'Sarah Johnson', 'sarah@example.com', 01994729660, '789 Oak St', 28);


-------- Displaying table data using SELECT command ------------

   SELECT B_Id, B_Name, model, model_year, price_B FROM Bicycle;
   
   SELECT AVG(R_Hour)
   AS average_duration 
   FROM Rent;

   SELECT A_Id, A_Name, price_Acc
   FROM Accessories
   WHERE B_Id = 'B001';


   SELECT U_Id, U_Name, email
FROM Customer
WHERE U_Id IN (
  SELECT U_Id
  FROM Rent
  WHERE B_Id = 'B001'
);


SELECT B_Id, B_Name, model, model_year
FROM Bicycle
WHERE B_Id IN (
  SELECT B_Id
  FROM Rent
  WHERE U_Id IN (
    SELECT U_Id
    FROM Customer
    WHERE age > 25
  )
);

SELECT B_Id, B_Name,
  (SELECT SUM(price_Acc)
   FROM Accessories
   WHERE B_Id = Bicycle.B_Id
  ) AS total_accessory_revenue
FROM Bicycle;


SELECT U_Id, U_Name, email
FROM Customer
WHERE U_Id IN (
  SELECT U_Id
  FROM Sale
  UNION
  SELECT U_Id
  FROM Rent
);


--- Union ---
SELECT A_Id, A_Name,price_Acc FROM Accessories
UNION
SELECT B_Id, B_Name,price_B FROM Bicycle; 



--- Intersect---
SELECT U_Id FROM Customer
INTERSECT
SELECT U_Id FROM Sale;

 
 ----With clause----

SELECT MAX(Price_B) AS MAximum_Price
FROM Bicycle;

with MAximum_Price(val) as (select max(Price_B) from Bicycle)
select * from Bicycle,MAximum_Price where Bicycle.Price_B=MAximum_Price.val;


--- Save the SQL command output in txt file---

SPOOL "D:\DataBase LAB\OUTPUT\Bicycle.txt"
SELECT *
FROM Bicycle;
SPOOL OFF

SPOOL "D:\DataBase LAB\OUTPUT\Accessories.txt"
SELECT *
FROM Bicycle;
SPOOL OFF

SPOOL "D:\DataBase LAB\OUTPUT\Customer.txt"
SELECT *
FROM Bicycle;
SPOOL OFF

SPOOL "D:\DataBase LAB\OUTPUT\Payment.txt"
SELECT *
FROM Bicycle;
SPOOL OFF

SPOOL "D:\DataBase LAB\OUTPUT\Rent.txt"
SELECT *
FROM Bicycle;
SPOOL OFF

SPOOL "D:\DataBase LAB\OUTPUT\Sales.txt"
SELECT *
FROM Bicycle;
SPOOL OFF



---------Aggregate function----------

select count(distinct B_Name) as Number_of_Bicycle_brand from Bicycle;

select max(price_Acc) from Accessories;
select min(price_Acc) from Accessories;


------------ Group by and Having -----------

select model,avg(price_B) from Bicycle group by model;

select B_Name,avg(price_B)  from Bicycle group by B_Name having avg(price_B)>400;



---------Nested subquery-----------

SELECT U_Name, email
FROM Customer
WHERE U_Id IN (
    SELECT U_Id
    FROM Rent
    WHERE rent>20
);


-------Set Membership(AND, OR,NOT)------------

select * from Bicycle where model='MTB-1' and B_Id in (select B_id from Accessories where A_Name like '%Helmet%');



SELECT SUBSTR(B_Name, 1, 5) AS Substring_Name
FROM Bicycle;


------- Join operations-----------

SELECT *
FROM Bicycle
INNER JOIN Rent ON Bicycle.B_Id = Rent.B_Id;


SELECT *
FROM Customer
LEFT JOIN Sale ON Customer.U_Id = Sale.U_Id;


SELECT *
FROM Accessories
RIGHT JOIN Bicycle ON Accessories.B_Id = Bicycle.B_Id;

SELECT *
FROM Customer
FULL OUTER JOIN Sale ON Customer.U_Id = Sale.U_Id;


----------Views-------------

create view Bicycle_details as select B_id,B_Name,model,model_year from Bicycle; 