/*=============================================================


Version:   0.00.0000
Server:    WIN-8USDMQGCH5T\MSSQL2019DEV

DATABASE:	MIO
  Tables:  C_Order


=============================================================*/
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_WARNINGS ON
SET NOCOUNT ON
SET XACT_ABORT ON
GO

-- Create Table [dbo].[C_Order]
Print 'Create Table [dbo].[C_Order]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[C_Order] (
		[o_id]             [int] NULL,
		[o_d_id]           [tinyint] NULL,
		[o_w_id]           [int] NULL,
		[o_c_id]           [int] NULL,
		[o_entry_d]        [datetime] NULL,
		[o_carrier_id]     [tinyint] NULL,
		[o_ol_cnt]         [tinyint] NULL,
		[o_all_local]      [tinyint] NULL,
		[Column_10]        [int] NOT NULL
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[C_Order]
	ADD
	CONSTRAINT [DF__C_Order__Column___5AEE82B9]
	DEFAULT ((0)) FOR [Column_10]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE UNIQUE CLUSTERED INDEX [C_Order_I1]
	ON [dbo].[C_Order] ([o_w_id], [o_d_id], [o_id])
	ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[C_Order] SET (LOCK_ESCALATION = TABLE)
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
