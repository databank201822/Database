USE [ODMSBI]
GO
/****** Object:  StoredProcedure [dbo].[RPT_Delivery_OutletWiseSummary]    Script Date: 27-Aug-2018 3:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RPT_Delivery_OutletWiseSummary]
	@Start_Date Datetime,
	@End_Date Datetime,
	@dbids Varchar(MAX),
	@skuids Varchar(MAX)
AS
BEGIN
SELECT A.DB_Id, A.DB_Name, A.CEAREA_id, A.CEAREA_Name, A.AREA_id, A.AREA_Name, A.REGION_id, A.REGION_Name, A.Status, A.Name, A.PSR_id, A.PSR_Code, A.DBCode, A.OfficeAddress,
                  A.RouteName, A.RouteID, A.OutletId, A.OutletCode, A.OutletName, A.OutletName_b, A.Address, A.OwnerName, A.ContactNo, A.HaveVisicooler,A.IsActive, A.channel_name, A.outlet_category_name, A.Outlet_grade, SUM(B.Delivered_Quentity/B.PackSize) AS Delivered_Quentity,SUM(B.Delivered_Quentity* B.UnitPrice) AS Value,
                   SUM(B.FreeDelivered_Quentity/B.PackSize) AS FreeDelivered_Quentity
FROM     ODMS.dbo.tbld_db_psr_outlet_zone AS A INNER JOIN
                  tblr_OutletWiseSKUWiseDelivery AS B ON A.OutletId = B.OutletId
				   where   B.BatchDate between @Start_Date AND @End_Date AND A.DB_Id IN (select Value FROM dbo.FunctionStringtoIntlist(@dbids,',')) AND B.SKUId IN (select Value FROM dbo.FunctionStringtoIntlist(@skuids,','))
				  Group by A.DB_Id, A.DB_Name, A.CEAREA_id, A.CEAREA_Name, A.AREA_id, A.AREA_Name, A.REGION_id, A.REGION_Name, A.Status, A.Name, A.PSR_id, A.PSR_Code, A.DBCode, A.OfficeAddress,
                  A.RouteName, A.RouteID, A.OutletId, A.OutletCode, A.OutletName, A.OutletName_b, A.Address, A.OwnerName, A.ContactNo, A.HaveVisicooler,A.IsActive, A.channel_name, A.outlet_category_name, A.Outlet_grade



				
END

GO
