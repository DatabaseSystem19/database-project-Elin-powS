                 ------- DDL -------

----Check User -------------
check user;
-------- Drop Table-----------
drop table Payment;
drop table Rent;
drop table Sale;
drop table Accessories;
drop table Customer;
drop table Bicycle;

----------create table-------

CREATE TABLE Bicycle (
    B_Id VARCHAR(30) PRIMARY KEY,
    B_Name VARCHAR(30),
    model CHAR(30),
    model_year NUMBER(10),
    price_B NUMBER(10)
);

CREATE TABLE Customer (
    U_Id VARCHAR(30) PRIMARY KEY,
    U_Name VARCHAR(30),
    email VARCHAR(30),
    phone NUMBER(10),
    address VARCHAR(100),
    age NUMBER(10)
);

CREATE TABLE Rent (
    R_Id VARCHAR(30) PRIMARY KEY,
    location_from VARCHAR(30),
    location_to VARCHAR(30),
    R_Hour NUMBER(10),
    rent NUMBER(10),
    B_Id VARCHAR(30),
    U_Id VARCHAR(30),
    FOREIGN KEY (B_Id) REFERENCES Bicycle (B_Id),
    FOREIGN KEY (U_Id) REFERENCES Customer (U_Id)
);

CREATE TABLE Sale (
    S_Id VARCHAR(30) PRIMARY KEY,
    sale_No NUMBER(10),
    B_Id VARCHAR(30),
    U_Id VARCHAR(30),
    location VARCHAR(30),
    FOREIGN KEY (B_Id) REFERENCES Bicycle (B_Id),
    FOREIGN KEY (U_Id) REFERENCES Customer (U_Id)
);

CREATE TABLE Accessories (
    A_Id VARCHAR(30) PRIMARY KEY,
    A_Name VARCHAR(30),
    price_A NUMBER(30),
    B_Id VARCHAR(30),
    FOREIGN KEY (B_Id) REFERENCES Bicycle (B_Id)
);

CREATE TABLE Payment (
    P_Id VARCHAR(30) PRIMARY KEY,
    P_No VARCHAR(30),
    amount NUMBER(10),
    B_Id VARCHAR(30),
    U_Id VARCHAR(30),
    A_Id VARCHAR(30),
    FOREIGN KEY (B_Id) REFERENCES Bicycle (B_Id),
    FOREIGN KEY (U_Id) REFERENCES Customer (U_Id),
    FOREIGN KEY (A_Id) REFERENCES Accessories (A_Id)
);


alter table Bicycle add rent_H NUMBER(10);
alter table Bicycle modify model VARCHAR(30);
alter table Accessories rename column price_A to price_Acc;
alter table Sale drop column location;


set linesize 500;
set pagesize 500; 
