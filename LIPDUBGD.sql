USE [LIPDUBTRAVELL]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 11/1/2020 7:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Banner](
	[BannerId] [varchar](10) NOT NULL,
	[BannerName] [varchar](100) NULL,
	[BannerImage] [text] NULL,
	[Title] [varchar](100) NULL,
	[BannerLink] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[BannerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 11/1/2020 7:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Blog](
	[BlogId] [varchar](10) NOT NULL,
	[BlogName] [varchar](100) NULL,
	[BlogContent] [text] NULL,
	[DateCreated] [date] NULL,
	[BlogStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[BlogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 11/1/2020 7:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentId] [varchar](10) NOT NULL,
	[BlogId] [varchar](10) NULL,
	[UserId] [varchar](10) NULL,
	[CommentContent] [text] NULL,
	[DateCreated] [date] NULL,
	[ParentId] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 11/1/2020 7:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hotel](
	[HotelId] [varchar](10) NOT NULL,
	[HotelName] [varchar](100) NULL,
	[City] [varchar](50) NULL,
	[Descriptions] [text] NULL,
	[Price] [float] NULL,
	[Images] [text] NULL,
	[HotelStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[HotelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HotelService]    Script Date: 11/1/2020 7:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HotelService](
	[HotelServiceId] [int] IDENTITY(1,1) NOT NULL,
	[HotelId] [varchar](10) NULL,
	[ServiceId] [varchar](10) NULL,
	[Price] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[HotelServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderHotel]    Script Date: 11/1/2020 7:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderHotel](
	[OrderHotelId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [varchar](10) NULL,
	[HotelId] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderHotelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Orderr]    Script Date: 11/1/2020 7:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orderr](
	[OrderId] [varchar](10) NOT NULL,
	[UserId] [varchar](10) NULL,
	[UserPhone] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Servicee]    Script Date: 11/1/2020 7:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Servicee](
	[ServiceId] [varchar](10) NOT NULL,
	[ServiceName] [varchar](100) NULL,
	[Descriptions] [text] NULL,
	[ServiceStatus] [bit] NULL,
	[Price] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Setting]    Script Date: 11/1/2020 7:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Setting](
	[Email] [text] NULL,
	[PhoneNumber] [varchar](20) NOT NULL,
	[Logo] [text] NULL,
	[SettingId] [varchar](10) NOT NULL,
	[Value] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[SettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Userr]    Script Date: 11/1/2020 7:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Userr](
	[UserId] [varchar](10) NOT NULL,
	[UserName] [varchar](100) NULL,
	[UserSex] [varchar](10) NULL,
	[UserAddress] [varchar](100) NULL,
	[UserEmail] [text] NULL,
	[UserPhone] [varchar](20) NULL,
	[UserPassword] [text] NULL,
	[UserStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Banner] ([BannerId], [BannerName], [BannerImage], [Title], [BannerLink]) VALUES (N'B001', N'Anhh1', N'../images/banner1.jpg', N'Hinh anh Hotel', N'')
INSERT [dbo].[Blog] ([BlogId], [BlogName], [BlogContent], [DateCreated], [BlogStatus]) VALUES (N'B001', N'Travel', N'This is Travel', CAST(N'2020-10-19' AS Date), 1)
INSERT [dbo].[Comment] ([CommentId], [BlogId], [UserId], [CommentContent], [DateCreated], [ParentId]) VALUES (N'C001', N'B001', N'U001', N'Bai viet rat hayy', CAST(N'2020-10-19' AS Date), N'1')
INSERT [dbo].[Hotel] ([HotelId], [HotelName], [City], [Descriptions], [Price], [Images], [HotelStatus]) VALUES (N'P001', N'Normandy Hotel', N'Czech', N'This is Hotel', 250, N'../images/hotels01.jpg', 1)
INSERT [dbo].[Hotel] ([HotelId], [HotelName], [City], [Descriptions], [Price], [Images], [HotelStatus]) VALUES (N'P002', N'Hotel West-End', N'Czech', N'This is Hotel`', 349, N'../images/hotels02.jpg', 1)
INSERT [dbo].[Hotel] ([HotelId], [HotelName], [City], [Descriptions], [Price], [Images], [HotelStatus]) VALUES (N'P003', N'Chambiges Elysees', N'Czech', N'This is Hotel', 360, N'../images/hotels03.jpg', 1)
INSERT [dbo].[Hotel] ([HotelId], [HotelName], [City], [Descriptions], [Price], [Images], [HotelStatus]) VALUES (N'P004', N'Hamilton Hotel', N'Czech', N'This is Hotel', 79, N'../images/hotels04.jpg', 1)
INSERT [dbo].[Hotel] ([HotelId], [HotelName], [City], [Descriptions], [Price], [Images], [HotelStatus]) VALUES (N'P005', N'Hamilton Hotel', N'Czech', N'This is Hotel', 65, N'../images/hotels05.jpg', 1)
INSERT [dbo].[Hotel] ([HotelId], [HotelName], [City], [Descriptions], [Price], [Images], [HotelStatus]) VALUES (N'P006', N'Ambasador Premium', N'Czech', N'This is Hotel', 35, N'../images/hotels06.jpg', 1)
INSERT [dbo].[Hotel] ([HotelId], [HotelName], [City], [Descriptions], [Price], [Images], [HotelStatus]) VALUES (N'P007', N'Grand Plaza', N'Czech', N'This is Hotel', 450, N'../images/hotels07.jpg', 1)
INSERT [dbo].[Hotel] ([HotelId], [HotelName], [City], [Descriptions], [Price], [Images], [HotelStatus]) VALUES (N'P008', N'Grand Iberia', N'Czech', N'This is Hotel', 255, N'../images/hotels08.jpg', 1)
INSERT [dbo].[Hotel] ([HotelId], [HotelName], [City], [Descriptions], [Price], [Images], [HotelStatus]) VALUES (N'P009', N'Westminster Hotel', N'Czech', N'This is Hotel', 275, N'../images/hotels09.jpg', 1)
SET IDENTITY_INSERT [dbo].[HotelService] ON 

INSERT [dbo].[HotelService] ([HotelServiceId], [HotelId], [ServiceId], [Price]) VALUES (1, N'P001', N'S001', 350)
SET IDENTITY_INSERT [dbo].[HotelService] OFF
SET IDENTITY_INSERT [dbo].[OrderHotel] ON 

INSERT [dbo].[OrderHotel] ([OrderHotelId], [OrderId], [HotelId]) VALUES (1, N'O001', N'P001')
SET IDENTITY_INSERT [dbo].[OrderHotel] OFF
INSERT [dbo].[Orderr] ([OrderId], [UserId], [UserPhone]) VALUES (N'O001', N'U001', NULL)
INSERT [dbo].[Servicee] ([ServiceId], [ServiceName], [Descriptions], [ServiceStatus], [Price]) VALUES (N'S001', N'Wifi', N'This is wifi', 1, 100)
INSERT [dbo].[Setting] ([Email], [PhoneNumber], [Logo], [SettingId], [Value]) VALUES (N'manhdung2312@gmail.com', N'0916188063', N'../images/logo01.png', N'S001', N'logo')
INSERT [dbo].[Userr] ([UserId], [UserName], [UserSex], [UserAddress], [UserEmail], [UserPhone], [UserPassword], [UserStatus]) VALUES (N'U001', N'Bui Manh Dung', N'Male', N'VietNam', N'manhdung2312@gmail.com', NULL, N'123456789', 1)
INSERT [dbo].[Userr] ([UserId], [UserName], [UserSex], [UserAddress], [UserEmail], [UserPhone], [UserPassword], [UserStatus]) VALUES (N'U002', N'Phung Thi Khanh Linh', N'Female', N'VietNam', N'phungthikhanhlinh@gmail.com', NULL, N'123456789', 1)
INSERT [dbo].[Userr] ([UserId], [UserName], [UserSex], [UserAddress], [UserEmail], [UserPhone], [UserPassword], [UserStatus]) VALUES (N'U003', N'Dinh Van Giang', N'Male', N'VietNam', N'dinhvangiang@gmail.com', NULL, N'123456789', 1)
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([BlogId])
REFERENCES [dbo].[Blog] ([BlogId])
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Userr] ([UserId])
GO
ALTER TABLE [dbo].[HotelService]  WITH CHECK ADD FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotel] ([HotelId])
GO
ALTER TABLE [dbo].[HotelService]  WITH CHECK ADD FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Servicee] ([ServiceId])
GO
ALTER TABLE [dbo].[OrderHotel]  WITH CHECK ADD FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotel] ([HotelId])
GO
ALTER TABLE [dbo].[OrderHotel]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orderr] ([OrderId])
GO
ALTER TABLE [dbo].[Orderr]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Userr] ([UserId])
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD CHECK  (([Price]>(0)))
GO
ALTER TABLE [dbo].[HotelService]  WITH CHECK ADD CHECK  (([Price]>(0)))
GO
ALTER TABLE [dbo].[Servicee]  WITH CHECK ADD CHECK  (([Price]>(0)))
GO
