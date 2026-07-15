#insert
insert into customers(CustomerID,Firstname,Lastname,Email,Phone,DateOfBirth)values
(101,'Raghul','Sharma','rahul@gmail.com','9876543210','1998-04-15'),
(102,'Srikanth','Pasnuru','srikanth@gmail.com','6302619310','2002-12-06'),
(103,'Vivek','Gudala','vivek@gmail.com','8765432109','2004-12-24'),
(104,'Prathyusha','Konduru','prathyusha@gmail.com','7981324398','2004-08-19'),
(105,'Varsha','Emula','varsha@gmail.com','9032139478','2004-11-29');

insert into Accounts(AccountId,Account_type,Balance,CustomerID)values
(201,'Savings',25000,101),
(202,'Current',30000,102),
(203,'Savings',33000,103),
(204,'Current',40000,104),
(205,'Savimgs',50000,105);

insert into Branches (BranchID, BranchName, BranchAddress, BranchPhone)values
(11, 'Hyderabad Main', '12 MG Road, Hyderabad', '040-23456789'),
(12, 'Secunderabad Branch', '44 Station Road, Secunderabad', '040-22334455'),
(13, 'Chennai Central', '88 Mount Road, Chennai', '044-33445566'),
(14, 'Mumbai South', '21 Marine Drive, Mumbai', '022-44556677'),
(15, 'Delhi Connaught', '5 Connaught Place, Delhi', '011-55667788');

insert into Loans (LoanID,LoanAmount, InterestRate, StartDate, EndDate, CustomerID)values
(301, 20000.00, 7.5, '2026-06-01', '2029-06-01', 101),
(302, 15000.00, 8.0, '2026-06-05', '2028-06-05', 102),
(303, 10000.00, 6.5, '2026-06-10', '2027-06-10', 103),
(304, 25000.00, 9.0, '2026-06-15', '2030-06-15', 104),
(305, 5000.00, 7.0, '2026-06-20', '2027-06-20', 105);

insert into Transactions (TransactionID, TransactionDate, Amount, TransactionType, AccountID)values
(401, '2026-07-01', 2000.00, 'Deposit', 201),
(402, '2026-07-02', 500.00, 'Withdrawal', 202),
(403, '2026-07-03', 1000.00, 'Deposit', 203),
(404, '2026-07-04', 2500.00, 'Withdrawal', 204),
(405, '2026-07-05', 750.00, 'Deposit', 205);

#update
SET SQL_SAFE_UPDATES=0;

update Customers set Phone='9999999999' where CustomerID=101;
select * from Customers where CustomerID = 101;


update Customers set Email='rahul.sharma@gmail.com' WHERE CustomerID=101;
select * from Customers where CustomerID = 101;

update Accounts set  Balance=30000 where AccountID=201;
select * from Accounts where AccountID=201;

delete from  Transactions where TransactionID = 402;
select*from Transactions;

delete from accounts where AccountID=202;
select*from Accounts;

