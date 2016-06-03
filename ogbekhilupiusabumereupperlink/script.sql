USE [AdioConsultancyGroupDB]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 03/24/2016 17:48:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](100) NULL,
	[Surname] [varchar](100) NULL,
	[PhoneNumber] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Passport] [nvarchar](200) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON
INSERT [dbo].[Employee] ([Id], [FirstName], [Surname], [PhoneNumber], [Email], [Passport]) VALUES (10, N'opeyemi', N'opeyemi', N'09866645467', N'opeyemi@gmail.com', N'~/Passport/2.txt')
INSERT [dbo].[Employee] ([Id], [FirstName], [Surname], [PhoneNumber], [Email], [Passport]) VALUES (11, N'tope', N'tope', N'09011188899', N'p@gmail.com', N'~/Passport/fmnew0[1].jpg')
INSERT [dbo].[Employee] ([Id], [FirstName], [Surname], [PhoneNumber], [Email], [Passport]) VALUES (12, N'kkkk', N'kkkk', N'08111199900', N'kk@gmail.com', N'~/Passport/mid3[1].gif')
INSERT [dbo].[Employee] ([Id], [FirstName], [Surname], [PhoneNumber], [Email], [Passport]) VALUES (13, N'babalola', N'babalola', N'08111199900', N'kk22@gmail.com', N'~/Passport/ML_main_2.jpg')
SET IDENTITY_INSERT [dbo].[Employee] OFF
/****** Object:  Table [dbo].[Adminstrator]    Script Date: 03/24/2016 17:48:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Adminstrator](
	[Id] [int] NOT NULL,
	[AdminType] [varchar](50) NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Adminstrator] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
