USE [ODMS]
GO
/****** Object:  User [ODMS]    Script Date: 20-Aug-2018 9:45:22 PM ******/
CREATE USER [ODMS] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [ODMS]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ODMS]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [ODMS]
GO
