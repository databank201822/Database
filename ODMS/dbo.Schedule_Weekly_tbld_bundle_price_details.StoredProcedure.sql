USE [ODMS]
GO
/****** Object:  StoredProcedure [dbo].[Schedule_Weekly_tbld_bundle_price_details]    Script Date: 27-Aug-2018 3:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[Schedule_Weekly_tbld_bundle_price_details]
	
AS
BEGIN

TRUNCATE TABLE [ODMSBI].[dbo].[tbld_bundle_price_details];
INSERT INTO [ODMSBI].[dbo].[tbld_bundle_price_details]
           ([bundle_price_id]
           ,[sku_id]
           ,[batch_id]
           ,[quantity]
           ,[db_lifting_price]
           ,[outlet_lifting_price]
           ,[mrp]
           ,[start_date]
           ,[end_date]
           ,[status])
SELECT [bundle_price_id]
      ,[sku_id]
      ,[batch_id]
      ,[quantity]
      ,[db_lifting_price]
      ,[outlet_lifting_price]
      ,[mrp]
      ,[start_date]
      ,[end_date]
      ,[status]
  FROM [ODMS].[dbo].[tbld_bundle_price_details]

END


GO
