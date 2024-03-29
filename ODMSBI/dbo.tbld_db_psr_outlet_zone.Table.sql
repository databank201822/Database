USE [ODMSBI]
GO
/****** Object:  Table [dbo].[tbld_db_psr_outlet_zone]    Script Date: 27-Aug-2018 3:07:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbld_db_psr_outlet_zone](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[National_id] [int] NULL,
	[National] [varchar](50) NULL,
	[REGION_id] [int] NULL,
	[REGION_Name] [varchar](200) NULL,
	[AREA_id] [int] NULL,
	[AREA_Name] [varchar](200) NULL,
	[CEAREA_id] [int] NULL,
	[CEAREA_Name] [varchar](200) NULL,
	[DB_Id] [int] NULL,
	[DB_Name] [varchar](200) NULL,
	[Status] [int] NULL,
	[Name] [varchar](200) NULL,
	[PSR_id] [int] NULL,
	[PSR_Code] [int] NULL,
	[DBCode] [int] NULL,
	[OfficeAddress] [varchar](200) NULL,
	[cluster] [varchar](200) NULL,
	[RouteName] [varchar](200) NULL,
	[RouteID] [int] NULL,
	[OutletId] [int] NULL,
	[OutletCode] [int] NULL,
	[OutletName] [varchar](200) NULL,
	[OutletName_b] [varchar](200) NULL,
	[Location] [varchar](200) NULL,
	[Address] [varchar](200) NULL,
	[GpsLocation] [varchar](200) NULL,
	[OwnerName] [varchar](200) NULL,
	[ContactNo] [varchar](50) NULL,
	[Distributorid] [int] NULL,
	[HaveVisicooler] [int] NULL,
	[parentid] [int] NULL,
	[outlet_category_id] [int] NULL,
	[grading] [int] NULL,
	[channel] [int] NULL,
	[Latitude] [varchar](50) NULL,
	[Longitude] [varchar](50) NULL,
	[picture] [varchar](50) NULL,
	[IsActive] [int] NULL,
	[channel_name] [varchar](50) NULL,
	[outlet_category_name] [varchar](50) NULL,
	[Outlet_grade] [varchar](50) NULL,
 CONSTRAINT [PK_tbld_db_psr_outlet_zone] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Index [IX_tbld_db_psr_outlet_zone]    Script Date: 27-Aug-2018 3:07:26 PM ******/
CREATE CLUSTERED INDEX [IX_tbld_db_psr_outlet_zone] ON [dbo].[tbld_db_psr_outlet_zone]
(
	[DB_Id] ASC,
	[OutletId] ASC,
	[parentid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
