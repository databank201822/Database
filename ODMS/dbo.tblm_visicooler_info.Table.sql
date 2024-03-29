USE [ODMS]
GO
/****** Object:  Table [dbo].[tblm_visicooler_info]    Script Date: 27-Aug-2018 3:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblm_visicooler_info](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[Psr_id] [int] NOT NULL,
	[sub_route_id] [int] NOT NULL,
	[outlet_id] [int] NOT NULL,
	[purity_id] [int] NOT NULL,
	[charging_id] [int] NOT NULL,
	[image_upload] [varchar](255) NULL,
	[order_qty_CS] [int] NOT NULL,
	[order_date_time] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_tblm_visicooler_info] PRIMARY KEY CLUSTERED 
(
	[id] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[tblm_visicooler_info] ADD  DEFAULT (NULL) FOR [image_upload]
GO
ALTER TABLE [dbo].[tblm_visicooler_info] ADD  DEFAULT (getdate()) FOR [order_date_time]
GO
