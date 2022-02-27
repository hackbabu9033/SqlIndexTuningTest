
select  * from sys.dm_db_index_physical_stats
(
 DB_ID('IndexTuningTest'),
 OBJECT_ID('dbo.Accounts'),
 0,
 null,
 null
);

select  * from sys.dm_db_index_physical_stats
(
 DB_ID('IndexTuningTest'),
 OBJECT_ID('dbo.AccountWithCluster'),
 1,
 null,
 null
);

select  * from sys.dm_db_index_physical_stats
(
 DB_ID('IndexTuningTest'),
 OBJECT_ID('dbo.AccountWithClusterSeqField'),
 1,
 null,
 null
);
