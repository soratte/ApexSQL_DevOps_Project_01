/*=============================================================


Version:   0.00.0000
Server:    WIN-8USDMQGCH5T\MSSQL2019DEV

DATABASE:	MIO
  Schemas:  db_backupoperator


=============================================================*/
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_WARNINGS ON
SET NOCOUNT ON
SET XACT_ABORT ON
GO

-- Create Schema [db_backupoperator]
Print 'Create Schema [db_backupoperator]'
GO
ALTER AUTHORIZATION
	ON SCHEMA::[db_backupoperator]
	TO [db_backupoperator]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_WARNINGS ON
SET NOCOUNT ON
SET XACT_ABORT ON
GO
