USE [ODMS]
GO
/****** Object:  StoredProcedure [dbo].[RPT_Realtime_DBLifting]    Script Date: 27-Aug-2018 3:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[RPT_Realtime_DBLifting]
	@Start_Date Datetime,
	@End_Date Datetime,
	@dbids Varchar(MAX)
AS
BEGIN

SELECT A.DB_Id, A.DB_Name, A.CEAREA_id, A.CEAREA_Name, A.AREA_id, A.AREA_Name, A.REGION_id, A.REGION_Name, A.National_id, A.[National], A.Status, A.Cluster, A.DBCode, A.OfficeAddress, A.PriceBuandle_id, B.Id, B.ChallanNo, B.DbId, 
                  B.ChallanDate, B.ReceivedDate, B.Timestamp ,C.ChallanQty,C.ReciveQty
FROM     tbld_db_zone_view AS A INNER JOIN
                  tblt_PurchaseOrder AS B ON A.DB_Id = B.DbId LEFT OUTER JOIN
                      (SELECT POId, SUM(ChallanQty / PackSize) AS ChallanQty, SUM(ReciveQty / PackSize) AS ReciveQty
                       FROM      tblt_PurchaseOrderLine
                       GROUP BY POId) AS C ON B.Id = C.POId
					   Where B.ReceivedDate between @Start_Date AND @End_Date And B.DbId in (SELECT Value
                       FROM      dbo.FunctionStringtoIntlist(@dbids, ','))
END

GO
