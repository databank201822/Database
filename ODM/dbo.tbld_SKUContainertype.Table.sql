USE [ODMS]
GO
/****** Object:  Table [dbo].[tbld_SKUContainertype]    Script Date: 20-Aug-2018 9:45:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbld_SKUContainertype](
	[ContainertypeId] [int] NOT NULL,
	[Containertype] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ContainertypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
