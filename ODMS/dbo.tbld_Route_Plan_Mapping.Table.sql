USE [ODMS]
GO
/****** Object:  Table [dbo].[tbld_Route_Plan_Mapping]    Script Date: 27-Aug-2018 3:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbld_Route_Plan_Mapping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[db_id] [int] NOT NULL,
	[db_emp_id] [int] NOT NULL,
	[route_plan_id] [int] NOT NULL,
	[route_id] [int] NOT NULL,
	[day] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tbld_Route_Plan_Mapping] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Index [IX_tbld_Route_Plan_Mapping]    Script Date: 27-Aug-2018 3:06:21 PM ******/
CREATE CLUSTERED INDEX [IX_tbld_Route_Plan_Mapping] ON [dbo].[tbld_Route_Plan_Mapping]
(
	[db_emp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
