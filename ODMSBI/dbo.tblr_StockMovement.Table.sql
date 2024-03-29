USE [ODMSBI]
GO
/****** Object:  Table [dbo].[tblr_StockMovement]    Script Date: 27-Aug-2018 3:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblr_StockMovement](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[BatchDate] [date] NULL,
	[dbId] [int] NULL,
	[SKUid] [int] NULL,
	[BatchNo] [int] NULL,
	[PackSize] [int] NULL,
	[db_lifting_price] [money] NULL,
	[outlet_lifting_price] [money] NULL,
	[mrp] [money] NULL,
	[ClosingSoundStockQty] [int] NULL,
	[ClosingBookedStockQty] [int] NULL,
	[PrimaryChallanQty] [int] NULL,
	[PrimaryQty] [int] NULL,
	[SalesQty] [int] NULL,
	[FreeSalesQty] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Index [IX_tblr_StockMovement]    Script Date: 27-Aug-2018 3:07:27 PM ******/
CREATE CLUSTERED INDEX [IX_tblr_StockMovement] ON [dbo].[tblr_StockMovement]
(
	[BatchDate] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
