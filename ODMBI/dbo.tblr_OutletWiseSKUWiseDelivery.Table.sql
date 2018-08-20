USE [ODMSBI]
GO
/****** Object:  Table [dbo].[tblr_OutletWiseSKUWiseDelivery]    Script Date: 20-Aug-2018 9:44:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblr_OutletWiseSKUWiseDelivery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[BatchDate] [date] NULL,
	[OutletId] [int] NULL,
	[OutletCode] [int] NULL,
	[OutletName] [varchar](50) NULL,
	[Distributorid] [int] NULL,
	[HaveVisicooler] [int] NULL,
	[SKUId] [int] NULL,
	[SKUName] [varchar](50) NULL,
	[PackSize] [int] NULL,
	[UnitPrice] [float] NULL,
	[SKUVolume8oz] [money] NULL,
	[Delivered_Quentity] [money] NULL,
	[FreeDelivered_Quentity] [money] NULL,
 CONSTRAINT [PK_tblr_OutletWiseSKUWiseDelivery] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Index [IX_tblr_OutletWiseSKUWiseDelivery]    Script Date: 20-Aug-2018 9:44:29 PM ******/
CREATE CLUSTERED INDEX [IX_tblr_OutletWiseSKUWiseDelivery] ON [dbo].[tblr_OutletWiseSKUWiseDelivery]
(
	[BatchDate] DESC,
	[Distributorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
