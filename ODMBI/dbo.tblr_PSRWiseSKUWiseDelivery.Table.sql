USE [ODMSBI]
GO
/****** Object:  Table [dbo].[tblr_PSRWiseSKUWiseDelivery]    Script Date: 20-Aug-2018 9:44:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblr_PSRWiseSKUWiseDelivery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DB_id] [int] NULL,
	[BatchDate] [date] NULL,
	[PSRId] [int] NULL,
	[PSRName] [varchar](50) NULL,
	[SKUId] [int] NULL,
	[SKUName] [varchar](50) NULL,
	[PackSize] [int] NULL,
	[SKUVolume8oz] [money] NULL,
	[UnitPrice] [money] NULL,
	[Delivered_Quentity] [money] NULL,
	[FreeDelivered_Quentity] [money] NULL,
 CONSTRAINT [PK_tblr_PSRWiseSKUWiseDelivery] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Index [IX_tblr_PSRWiseSKUWiseDelivery]    Script Date: 20-Aug-2018 9:44:29 PM ******/
CREATE CLUSTERED INDEX [IX_tblr_PSRWiseSKUWiseDelivery] ON [dbo].[tblr_PSRWiseSKUWiseDelivery]
(
	[BatchDate] DESC,
	[DB_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
