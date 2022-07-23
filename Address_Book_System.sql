﻿---uc1---
create database Address_Book_Service_DB;

---uc2---
create table Address_Book1_Table
(FirstName varchar(100),
SecondName varchar(100),
Address varchar(250),
City varchar(100),
State varchar(100),
zip BigInt,
PhoneNumber BigInt,
Email varchar(200)
)

------ UC 3: Insert Values to Table ------
Insert into Address_Book1_Table(FirstName,SecondName,Address,City,State,zip,PhoneNumber,Email) 
values('Harsha','Verma','645 Catherine Street','Bangalore','Karnataka',243001,9842905050,'harsha@gmail.com'),
('Rutuja','Kolte','836 Heritage Rd','Mumbai','Maharashtra',134002,98402000,'Rujula@gmail.com'),
('Anita','Yadav','19 Augusta Avenue','Lucknow','Uttar Pradesh',113201,87210505053,'anita@gmail.com');

select * from Address_Book1_Table;


