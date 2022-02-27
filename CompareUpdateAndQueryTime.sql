dbcc DROPCLEANBUFFERS
--select * from AccountWithCluster
select * from Account
order by Id

dbcc DROPCLEANBUFFERS
select * from AccountWithCluster
order by Id

dbcc DROPCLEANBUFFERS
select * from AccountWithClusterSeqField
order by Id

dbcc DROPCLEANBUFFERS
-- test update time cost with low index fragement
begin transaction
update Accounts
set Temp = N'update data'
where Id > '6EE95336-FB1F-4E5E-93A8-002B2E0343A7'
rollback

begin transaction
update AccountWithCluster
set Temp = N'update data'
where Id > '9E01A2B6-654C-4E69-9654-230B89E5E5E6'
rollback
-- effected row = 863663

begin transaction
update AccountWithClusterSeqField
set Temp = N'update data'
where Id > '15E76E00-C748-4633-9F5E-380BA8D661CA'
rollback