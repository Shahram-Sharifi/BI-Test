create table SaleTable (SalesID int identity(1,1) primary key,
						OrderID int not null,
						Customer nvarchar(255) not null,
						Product nvarchar(255) not null,
						DateofSale int not null,
						Quantity int not null,
						UnitPrice int not null);

--SaleTable created.

insert into SaleTable (orderid , Customer, Product, DateofSale, Quantity, UnitPrice)
values (1,'C1','P1',1,2,100),
		(1,'C1','P2',1,4,150),
		(2,'C2','P2',1,5,150),
		(3,'C3','P4',1,3,550),
		(4,'C4','P3',1,1,300),
		(4,'C4','P6',1,6,150),
		(4,'C4','P4',1,6,550),
		(5,'C5','P2',1,3,150),
		(5,'C5','P1',1,6,100),
		(6,'C1','P6',1,3,150),
		(6,'C1','P3',1,2,300),
		(7,'C3','P5',1,4,400),
		(7,'C3','P1',1,6,100),
		(7,'C3','P3',1,1,300),
		(8,'C5','P2',1,3,150),
		(8,'C5','P5',1,4,400),
		(8,'C5','P1',1,2,100),
		(9,'C2','P3',2,1,300),
		(9,'C2','P4',2,3,550),
		(9,'C2','P5',2,6,400),
		(9,'C2','P1',2,4,100),
		(10,'C4','P6',2,3,150),
		(11,'C6','P3',2,2,300),
		(11,'C6','P4',2,3,550),
		(12,'C7','P1',2,5,100),
		(12,'C7','P2',2,3,150),
		(12,'C7','P3',2,1,300),
		(13,'C2','P1',2,4,100),
		(13,'C2','P3',2,2,300),
		(14,'C6','P2',2,6,150),
		(15,'C4','P6',2,1,150),
		(16,'C1','P4',3,6,550),
		(17,'C2','P5',3,3,400),
		(18,'C8','P1',3,6,100),
		(18,'C8','P3',3,3,300),
		(18,'C8','P5',3,5,400),
		(19,'C9','P2',3,2,150),
		(20,'C2','P3',3,3,300),
		(20,'C2','P1',3,4,100),
		(20,'C2','P2',3,1,150);

--Data imported to SaleTable.


create table SaleProfit (Product nvarcahr(255) not null,
				ProfitRate decimal not null);

--SaleProfit table created.


insert into SaleProfit (Product, ProfitRate) values 
						('P1' , 0.05),
						('P2' , 0.25),
						('P3' , 0.10),
						('P4' , 0.20),
						('P5' , 0.10),
						('P6' , 0.10);  

--Data imported to SaleProfit.


--Questions:

--1)
select sum(Quantity*unitprice) as TotalSale from SaleTable;


--2)
select count (distinct customer) from saletable;


--3)
select product , sum(quantity) as SaleofEveryProduct from SaleTable group by product;


--6)
select sum(distinctusers) from (select count (distinct customer) as distinctusers from SaleTable 
group by dateofsale);



--Next Table:

create table OrgChart (ID int identity(1,1) primary key,
						EmpName nvarchar(255) not null,
						Manager nvarchar(255),
						ManagerID int);

--OrgChart created.

insert into OrgChart (EmpName) values ('Ken'),('Hugo');
insert into OrgChart (EmpName,Manager,ManagerID) values 
					('James','Carol',5),
					('Mark','Morgan',13),
					('Carol','Alex',12),
					('David','Rose',21),
					('Michael','Markos',11),
					('Brad','Alex',12),
					('Rob','Matt',15),
					('Dylan','Alex',12),
					('Markos','Carol',5),
					('Alex','Ken',1),
					('Morgan','Matt',15),
					('Jennifer','Morgan',13),
					('Matt','Hugo',2),
					('Tom','Brad',8),
					('Oliver','Dylan',10),
					('Daniel','Rob',9),
					('Amanda','Markos',11),
					('Ana','Dylan',10),
					('Rose','Rob',9),
					('Robert','Rob',9),
					('Fill','Morgan',13),
					('Antoan','David',6),
					('Eddie','Mark',4);

--Data imported to OrgChart.