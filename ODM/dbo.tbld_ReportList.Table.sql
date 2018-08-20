USE [ODMS]
GO
/****** Object:  Table [dbo].[tbld_ReportList]    Script Date: 20-Aug-2018 9:45:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbld_ReportList](
	[id] [int] NOT NULL,
	[ReportCode] [varchar](10) NULL,
	[ReportName] [varchar](50) NULL,
	[ReportController] [varchar](50) NULL,
	[ReportAction] [varchar](50) NULL,
	[ReportType] [varchar](50) NULL,
 CONSTRAINT [PK_tbld_ReportList] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
