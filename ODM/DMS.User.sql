USE [ODMS]
GO
/****** Object:  User [DMS]    Script Date: 20-Aug-2018 9:45:22 PM ******/
CREATE USER [DMS] FOR LOGIN [DMS] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [DMS]
GO
