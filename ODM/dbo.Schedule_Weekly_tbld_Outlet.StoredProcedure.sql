USE [ODMS]
GO
/****** Object:  StoredProcedure [dbo].[Schedule_Weekly_tbld_Outlet]    Script Date: 20-Aug-2018 9:45:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[Schedule_Weekly_tbld_Outlet]
	@BatchDeliveryDate date
	
AS
BEGIN

TRUNCATE TABLE [ODMSBI].[dbo].[tbld_Outlet];
INSERT INTO [ODMSBI].[dbo].[tbld_Outlet]
           ([OutletId]
           ,[OutletCode]
           ,[OutletName]
           ,[OutletName_b]
           ,[Location]
           ,[Address]
           ,[GpsLocation]
           ,[OwnerName]
           ,[ContactNo]
           ,[Distributorid]
           ,[HaveVisicooler]
           ,[parentid]
           ,[outlet_category_id]
           ,[grading]
           ,[channel]
           ,[Latitude]
           ,[Longitude]
           ,[picture]
           ,[IsActive]
           ,[createdate])
SELECT  [OutletId]
      ,[OutletCode]
      ,[OutletName]
      ,[OutletName_b]
      ,[Location]
      ,[Address]
      ,[GpsLocation]
      ,[OwnerName]
      ,[ContactNo]
      ,[Distributorid]
      ,[HaveVisicooler]
      ,[parentid]
      ,[outlet_category_id]
      ,[grading]
      ,[channel]
      ,[Latitude]
      ,[Longitude]
      ,[picture]
      ,[IsActive]
      ,[createdate]
  FROM [ODMS].[dbo].[tbld_Outlet]
END

GO
