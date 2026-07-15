create table Accounts(
AccountID int,
Account_type varchar(100),
Balance decimal(10,2)
);


create table Transactions(
TransactionID int,
TransactionDate date,
Amount Decimal(10,2),
TransactionType varchar(20)
);

create table Branches(
BranchID int,
BranchName varchar(100),
BranchAddress varchar(200),
BranchPhone varchar(15)
);

create table AccountBranches(
AssignmentDate date
);

create table Loans (
LoanID int,
LoanAmount decimal(10,2),
InterestRate decimal(5,2),
Startdate date,
EndDate date
);


Alter table customers add DateOfBirth date; 

alter table customers modify Phone varchar(20);

alter table Accounts add constraint chk_minibalance Check (Balance >=1000);

drop table AccountBranches;

alter table customers add primary key(Customer_ID);

alter table Accounts add CustomerID int;

alter table Accounts add constraint FK_Accounts_Customers foreign key (CustomerID) references Customers(CustomerID);

alter table Customers modify FirstName varchar(50) not null;

alter table Customers add constraint uq_Email unique (Email);

alter table Accounts add BranchID int;
alter table Branches add primary key (BranchID);
alter table Branches add  unique (BranchID);
alter table Accounts add constraint fk_Accounts_Branches foreign key (BranchID) references Branches(BranchID);

alter table Transactions add AccountID int;
alter table Accounts add primary key (AccountID);
alter table Transactions add constraint fk_Transactions_Accounts foreign key  (AccountID) references Accounts(AccountID);


alter table Loans add CustomerID int;
alter table  Loans add constraint fk_Loans_Customers foreign key (CustomerID) references Customers(CustomerID);








