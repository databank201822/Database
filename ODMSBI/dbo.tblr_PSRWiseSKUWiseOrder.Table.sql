USE [ODMSBI]
GO
/****** Object:  Table [dbo].[tblr_PSRWiseSKUWiseOrder]    Script Date: 27-Aug-2018 3:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblr_PSRWiseSKUWiseOrder](
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
	[Order_Quentity] [money] NULL,
	[Confirmed_Quantity] [money] NULL,
	[FreeOrder_Quentity] [money] NULL,
	[FreeConfirmed_Quantity] [money] NULL,
 CONSTRAINT [PK_tblr_PSRWiseSKUWiseOrder] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Index [IX_tblr_PSRWiseSKUWiseOrder]    Script Date: 27-Aug-2018 3:07:27 PM ******/
CREATE CLUSTERED INDEX [IX_tblr_PSRWiseSKUWiseOrder] ON [dbo].[tblr_PSRWiseSKUWiseOrder]
(
	[BatchDate] DESC,
	[DB_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
