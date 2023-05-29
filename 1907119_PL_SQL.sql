                                                          ------- PL SQL -------

                                   
------- PL/SQL variable declaration and print value----
        

SET SERVEROUTPUT ON
DECLARE 
  B_Id Bicycle.B_Id%TYPE;
  B_Name Bicycle.B_Name%TYPE;
  price_B NUMBER;
BEGIN
  SELECT B_Id, B_Name, price_B INTO B_Id, B_Name, price_B FROM Bicycle WHERE model_year = 2023;
  DBMS_OUTPUT.PUT_LINE('Bicycle_ID: ' || B_Id || ' Bicycle_Name: ' || B_Name || ' Bicycle_Price: ' || price_B);
END;
/


----Insert and set default value-------
set serveroutput on
declare 
B_Id Bicycle.B_Id%TYPE:='B011';
  B_Name Bicycle.B_Name%TYPE:='City Bike';
  model Bicycle.model%TYPE:='CB-3';
  model_year NUMBER:=2022;
  price_B NUMBER :=900;
  rent_H NUMBER := 20;
begin
insert into Bicycle values(B_Id, B_Name, model, model_year, price_B, rent_H);
end;
/


---------Row type----------

set serveroutput on
declare 
Bicycle_row Bicycle%rowtype;
begin
select  B_Id, B_Name, model, model_year, price_B, rent_H into Bicycle_row.B_Id, Bicycle_row.B_Name, Bicycle_row.model, Bicycle_row.model_year, Bicycle_row.price_B, Bicycle_row.rent_H  from Bicycle where model_year=2023;
end;
/

-------- Cursor and row count ----------------

set serveroutput on
declare 
cursor Bicycle_cursor is select * from Bicycle;
Bicycle_row Bicycle%rowtype;
begin
open Bicycle_cursor;
fetch Bicycle_cursor into Bicycle_row.B_Id, Bicycle_row.B_Name, Bicycle_row.model, Bicycle_row.model_year, Bicycle_row.price_B, Bicycle_row.rent_H;
while Bicycle_cursor%found loop
dbms_output.put_line('Bicycle_ID: ' || Bicycle_row.B_Id || ' Bicycle_Name: ' || Bicycle_row.B_Name || ' Bicycle_Model: ' ||Bicycle_row.model ||' Model Year: ' ||Bicycle_row.model_year || ' Bicycle_Price: ' || Bicycle_row.price_B || ' Rent_ per_Hour: ' || Bicycle_row.rent_H);
dbms_output.put_line('Row count: '|| Bicycle_cursor%rowcount);
fetch Bicycle_cursor into Bicycle_row.B_Id, Bicycle_row.B_Name, Bicycle_row.model, Bicycle_row.model_year, Bicycle_row.price_B, Bicycle_row.rent_H;
end loop;
close Bicycle_cursor;
end;
/

---------IF /ELSEIF /ELSE----------- 
SET SERVEROUTPUT ON

DECLARE
  B_Id Bicycle.B_Id%TYPE;
  B_Name Bicycle.B_Name%TYPE;
  Price_B Bicycle.Price_B%TYPE;
  Price_Range VARCHAR2(20);
BEGIN
  FOR bike IN (SELECT B_Id, B_Name, Price_B FROM Bicycle)
  LOOP
    B_Id := bike.B_Id;
    B_Name := bike.B_Name;
    Price_B := bike.Price_B;

    IF Price_B < 500 THEN
      Price_Range := 'Low';
    ELSIF Price_B >= 500 AND Price_B <= 1000 THEN
      Price_Range := 'Medium';
    ELSE
      Price_Range := 'High';
    END IF;

    DBMS_OUTPUT.PUT_LINE('Bicycle_ID: ' || B_Id || ' Bicycle_Name: ' || B_Name || ' Price_Range: ' || Price_Range);
  END LOOP;
END;
/



-----------Procedure--------------
CREATE OR REPLACE PROCEDURE GetCustomerDetails
IS
BEGIN
  FOR cust IN (SELECT * FROM Customer)
  LOOP
    DBMS_OUTPUT.PUT_LINE('User ID: ' || cust.U_Id || ', Name: ' || cust.U_Name || ', Email: ' || cust.email);
  END LOOP;
END;
/

SET SERVEROUTPUT ON;
EXECUTE GetCustomerDetails;

-----------Function---------------

CREATE OR REPLACE FUNCTION getRentInfo(p_RentId IN Rent.R_Id%TYPE)
  RETURN Rent%ROWTYPE
IS
  v_RentInfo Rent%ROWTYPE;
BEGIN
  SELECT *
  INTO v_RentInfo
  FROM Rent
  WHERE R_Id = p_RentId;

  RETURN v_RentInfo;
END;
/

DECLARE
  v_RentData Rent%ROWTYPE;
BEGIN
  v_RentData := getRentInfo('R001');
  DBMS_OUTPUT.PUT_LINE('Rent ID: ' || v_RentData.R_Id);
  DBMS_OUTPUT.PUT_LINE('Location From: ' || v_RentData.Location_From);
  DBMS_OUTPUT.PUT_LINE('Location To: ' || v_RentData.Location_To);
END;
/


----------------drop procedure and function-----------------

Drop Procedure GetCustomerDetails;
Drop Function getRentInfo;