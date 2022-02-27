CREATE DATABASE IndexTuningTest;

Create table Accounts
(
   Id UniqueIdentifier NOT NULL DEFAULT (NEWID()),
   Temp CHAR(1950) NOT NULL DEFAULT ('test')
)

Create table AccountWithCluster
(
   Id UniqueIdentifier NOT NULL DEFAULT (NEWID()),
   Temp CHAR(1950) NOT NULL DEFAULT ('test')
)
Create UNIQUE CLUSTERED INDEX idx_Id on AccountWithCluster(Id)

Create table AccountWithClusterSeqField
(
   Id UniqueIdentifier NOT NULL DEFAULT (NEWID()),
   Seq int IDENTITY PRIMARY KEY,
   Temp CHAR(1946) NOT NULL DEFAULT ('test')
)
Set NOCOUNT OFF;

DECLARE @count int = 0
TRUNCATE TABLE Accounts
set @count = 0
while @count <= 1000000
begin 
	insert into Accounts default values
	set @count = @count + 1;
END

TRUNCATE TABLE AccountWithCluster
--DECLARE @count int = 0
set @count = 0
while @count <= 1000000
begin 
	insert into AccountWithCluster default values
	set @count = @count + 1;
END

TRUNCATE TABLE AccountWithClusterSeqField
--DECLARE @count int = 0
set @count = 0
while @count <= 1000000
begin 
	insert into AccountWithClusterSeqField default values
	set @count = @count + 1;
END

