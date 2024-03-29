USE [ODMS]
GO
/****** Object:  Table [dbo].[tbl_SubMenuSecond]    Script Date: 27-Aug-2018 3:06:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_SubMenuSecond](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubMenuName] [varchar](50) NULL,
	[Controller] [varchar](100) NULL,
	[Action] [varchar](100) NULL,
	[SubMenuId] [int] NULL,
	[MainMenuId] [int] NULL,
	[sl] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[tbl_SubMenuSecond]  WITH CHECK ADD  CONSTRAINT [FK_tbl_2ndSubMenu_tbl_SubMenu] FOREIGN KEY([SubMenuId])
REFERENCES [dbo].[tbl_SubMenu] ([Id])
GO
ALTER TABLE [dbo].[tbl_SubMenuSecond] CHECK CONSTRAINT [FK_tbl_2ndSubMenu_tbl_SubMenu]
GO
ALTER TABLE [dbo].[tbl_SubMenuSecond]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SubMenuSecond_tbl_MainMenu] FOREIGN KEY([MainMenuId])
REFERENCES [dbo].[tbl_MainMenu] ([Id])
GO
ALTER TABLE [dbo].[tbl_SubMenuSecond] CHECK CONSTRAINT [FK_tbl_SubMenuSecond_tbl_MainMenu]
GO
