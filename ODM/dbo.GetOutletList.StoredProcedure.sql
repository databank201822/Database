USE [ODMS]
GO
/****** Object:  StoredProcedure [dbo].[GetOutletList]    Script Date: 20-Aug-2018 9:45:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetOutletList]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT t1.DB_Id, t1.DB_Name, t1.CEAREA_id, t1.CEAREA_Name, t1.AREA_id, t1.AREA_Name, t1.REGION_id, t1.REGION_Name, t1.National_id, t1.[National], t1.Status, t2.Name, t4.RouteName, t5.OutletCode, t5.OutletName, t5.Address, 
                  t5.OwnerName, t5.ContactNo, t5.HaveVisicooler, t5.IsActive
FROM     tbld_db_zone_view AS t1 INNER JOIN
                  tbld_distribution_employee AS t2 ON t2.DistributionId = t1.DB_Id INNER JOIN
                  tbld_Route_plan_Current_Route AS t3 ON t2.id = t3.db_emp_id INNER JOIN
                  tbld_distributor_Route AS t4 ON t3.route_id = t4.RouteID INNER JOIN
                  tbld_Outlet AS t5 ON t4.RouteID = t5.parentid
END

GO
