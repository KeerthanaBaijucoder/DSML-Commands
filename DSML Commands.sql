create database Company;
use Company;
create table Managers(
Manager_Id int primary key,
First_name varchar(50) not null,
Last_name varchar (50),
DOB Date,
Age int check (Age > 21),
Last_Update Date,
Gender char(1),
Department varchar(50),
Salery int not null
);

insert into Managers (Manager_Id, First_name, Last_name, DOB, Age, Last_Update, Gender, Department, Salery) values
(1, 'Aaliya', 'Khan', '1985-04-10', 39, '2024-12-01', 'F', 'Finance', 30000),
(2, 'Rohan', 'Mehta', '1990-07-22', 34, '2025-01-15', 'M', 'IT', 28000),
(3, 'Neha', 'Sharma', '1988-03-05', 37, '2025-02-20', 'F', 'HR', 24000),
(4, 'Amit', 'Verma', '1983-11-30', 41, '2024-11-18', 'M', 'IT', 32000),
(5, 'Sara', 'Ali', '1992-06-17', 32, '2025-03-10', 'F', 'Sales', 27000),
(6, 'Karan', 'Patel', '1986-02-14', 38, '2024-10-05', 'M', 'Marketing', 25000),
(7, 'Meera', 'Rao', '1991-09-09', 33, '2025-01-01', 'F', 'IT', 26000),
(8, 'Vikram', 'Singh', '1980-12-12', 44, '2024-09-28', 'M', 'Finance', 22000),
(9, 'Priya', 'Desai', '1989-01-20', 36, '2024-08-15', 'F', 'HR', 18000),
(10, 'Arjun', 'Kapoor', '1984-05-25', 40, '2025-04-01', 'M', 'Sales', 31000);

select First_name, Last_name, DOB
from Managers where Manager_Id =1;

select First_name, Last_name, (Salery * 12)
as Annual_Income from Managers;

select *
from Managers where First_name != 'Aaliya';

select *
from Managers where Department = 'IT' and Salery >25000;

select *
from Managers where Salery between 10000 and 35000;




