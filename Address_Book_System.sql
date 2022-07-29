---uc1---
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

------ UC 4: Ability to Edit Contact Person Based on their Name ------
--Edit Email based on Name--
Update Address_Book1_Table
set Email='AnitaYadav@gmail.com'
where FirstName='Anita'

--Edit Address based on Name--
Update Address_Book1_Table
set Address='836 Heritage Resort Road'
where FirstName='Rutuja' and SecondName='Kolte';

------ UC 5: Ability to Delete Contact Person Based on their Name ------
delete 
from Address_Book1_Table
where FirstName='Anita' and SecondName='Yadav'

------ UC 6: Ability to Retrieve Person belonging to a City or State ------

select * 
from Address_Book1_Table
where City='Bangalore' or State='Karnataka'


------ UC 7: Ability to Retrieve Count of Person belonging to a City or State ------
Insert into Address_Book1_Table(FirstName,SecondName,Address,City,State,zip,PhoneNumber,Email) 
values('meena','Vargheese','22 Catherine Street','Hosur','Karnataka',2545001,957575050,'Meena@gmail.com')
select Count(*),state,City
from Address_Book1_Table
Group by state,City


