USE [ODMSBI]
GO
/****** Object:  StoredProcedure [dbo].[RPT_Delivery_BuyerByDBDetails]    Script Date: 27-Aug-2018 3:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RPT_Delivery_BuyerByDBDetails]
	@Start_Date Datetime,
	@End_Date Datetime,
	@dbids Varchar(MAX),
	@skuids Varchar(MAX)
AS
BEGIN


SELECT A.DB_Id, A.DB_Name, A.CEAREA_Name, A.AREA_Name, A.REGION_Name, A.Status, A.Cluster, A.DBCode, A.OfficeAddress, C.SKU_id, C.SKUName, ISNULL(D.TotalOutlet, 0) AS TotalOutlet, ISNULL(E.BuyerOutlet, 0) AS BuyerOutlet, 
                  ISNULL(D.TotalOutlet, 0) - ISNULL(E.BuyerOutlet, 0) AS NonBuyer
FROM     tbld_db_zone AS A INNER JOIN
                      (SELECT DISTINCT sku_id AS skuid, bundle_price_id
                       FROM      tbld_bundle_price_details AS t1) AS B ON A.PriceBuandle_id = B.bundle_price_id INNER JOIN
                  tbld_sku_list AS C ON B.skuid = C.SKU_id LEFT OUTER JOIN
                      (SELECT Distributorid, COUNT(DISTINCT OutletId) AS TotalOutlet
                       FROM      tbld_Outlet AS a1
                       WHERE   (IsActive = 1)
                       GROUP BY Distributorid) AS D ON A.DB_Id = D.Distributorid LEFT OUTER JOIN
                      (SELECT t2.DB_id, t2.sku_id, COUNT(DISTINCT t1.OutletId) AS BuyerOutlet
                       FROM      tbld_Outlet AS t1 INNER JOIN
                                         tblr_OutletWiseBuyer AS t2 ON t1.OutletId = t2.outlet_id INNER JOIN
                                         tbld_Route_Plan_Mapping AS t3 ON t1.parentid = t3.route_id
                       WHERE   (t2.BatchDate BETWEEN @Start_Date AND @End_Date)
                       GROUP BY t2.DB_id, t2.sku_id) AS E ON A.DB_Id = E.DB_id AND B.skuid = E.sku_id
WHERE  (A.DB_Id IN (select Value FROM dbo.FunctionStringtoIntlist(@dbids,','))) AND (B.skuid IN (select Value FROM dbo.FunctionStringtoIntlist(@skuids,',')))
ORDER BY A.REGION_id, A.AREA_id, A.CEAREA_id, A.DB_Id, B.skuid

	

END


GO
