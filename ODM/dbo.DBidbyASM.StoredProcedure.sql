USE [ODMS]
GO
/****** Object:  StoredProcedure [dbo].[DBidbyASM]    Script Date: 20-Aug-2018 9:45:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DBidbyASM]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [DB_Id],[AREA_id]
       FROM [MSTORE].[dbo].[tbld_db_zone_view] where [Status]=1
END

GO
