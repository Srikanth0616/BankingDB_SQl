create database BankingDB;
use BankingDB;

create table Customers(
CustomerIDint,
Firstname varchar(100),
Lastname varchar(100),
Emailvarchar(100),
Phone varchar(1000)
);

alter table  Customers change Email_id Email varchar(100);
alter table Customers add Account_createdDate date;
DESCRIBE Customers;

insert into  customers(Customer_id,Firstname,Lastname,Email_id,Phone)values
(1,"Pasnuru","Srikanth","pasnurusrikanth6@gmail.com",'6302619310'),
(2,"Konduru","Prathyusha","konduruprathyusha008@gmail.com",'7891324398');


