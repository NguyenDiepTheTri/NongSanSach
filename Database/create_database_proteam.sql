USE [master]
GO
/*
DROP DATABASE [NongSanSach]
GO
*/
/****** Object:  Database [NongSanSach]    Script Date: 24/12/2022 5:19:23 PM ******/
CREATE DATABASE [NongSanSach]
GO

USE [NongSanSach]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 24/12/2022 5:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Phone] [varchar](10) NOT NULL,
	[Province] [nvarchar](50) NOT NULL,
	[District] [nvarchar](50) NOT NULL,
	[Ward] [nvarchar](50) NOT NULL,
	[Detail] [nvarchar](200) NOT NULL,
	[User_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 24/12/2022 5:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Time] [datetime] NULL,
	[Image1] [nvarchar](100) NULL,
	[Image2] [nvarchar](100) NULL,
	[Image3] [nvarchar](100) NULL,
	[Image4] [nvarchar](100) NULL,
	[Content1] [nvarchar](max) NULL,
	[Content2] [nvarchar](max) NULL,
	[Content3] [nvarchar](max) NULL,
	[Content4] [nvarchar](max) NULL,
	[Comment] [nvarchar](500) NULL,
	[Like] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 24/12/2022 5:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Logo] [varchar](100) NOT NULL,
	[Banner] [varchar](100) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
	[NameSearch] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 24/12/2022 5:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](255) NOT NULL,
	[Star] [int] NOT NULL,
	[User_Id] [int] NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Status] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 24/12/2022 5:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Code] [varchar](10) NOT NULL,
	[Price] [int] NOT NULL,
	[Quality] [int] NOT NULL,
	[ApplyDay] [date] NOT NULL,
	[Expiration] [date] NOT NULL,
	[MoneyLimit] [int] NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee_model]    Script Date: 24/12/2022 5:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee_model](
	[fullname] [varchar](255) NOT NULL,
	[startday] [varchar](255) NULL,
	[birthday] [varchar](255) NULL,
	[department] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
	[position] [varchar](255) NULL,
	[salary] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[fullname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 24/12/2022 5:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Department] [nvarchar](50) NOT NULL,
	[Position] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](10) NOT NULL,
	[StartDay] [date] NOT NULL,
	[Salary] [int] NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
	[User_Id] [int] NOT NULL,
	[Image] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorites]    Script Date: 24/12/2022 5:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Date] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformationShop]    Script Date: 24/12/2022 5:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformationShop](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Active] [bit] NULL,
	[TimeOpen] [nvarchar](50) NOT NULL,
	[Logo] [varchar](100) NOT NULL,
	[Phone] [varchar](15) NOT NULL,
	[Fax] [varchar](15) NOT NULL,
	[Email] [varchar](25) NOT NULL,
	[LogoFooter] [varchar](100) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufactures]    Script Date: 24/12/2022 5:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufactures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Logo] [varchar](100) NOT NULL,
	[Banner] [varchar](100) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuOne]    Script Date: 24/12/2022 5:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuOne](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[NameSearch] [nvarchar](50) NOT NULL,
	[Cate_Id] [int] NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuTwo]    Script Date: 24/12/2022 5:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuTwo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[NameSearch] [nvarchar](50) NOT NULL,
	[Menu1_Id] [int] NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_model]    Script Date: 24/12/2022 5:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_model](
	[id] [varchar](255) NOT NULL,
	[date] [varchar](255) NULL,
	[discount] [varbinary](255) NULL,
	[name] [varchar](255) NULL,
	[quantity] [bigint] NULL,
	[status] [varchar](255) NULL,
	[total] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 24/12/2022 5:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](6) NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Address_Id] [int] NOT NULL,
	[Discount_Id] [int] NULL,
	[Quality] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Method] [char](1) NOT NULL,
	[Status] [char](1) NOT NULL,
	[Comment] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 24/12/2022 5:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](20) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [int] NOT NULL,
	[Point] [int] NULL,
	[Quality] [int] NOT NULL,
	[Views] [int] NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Specification] [nvarchar](max) NOT NULL,
	[Image1] [nvarchar](100) NOT NULL,
	[Image2] [nvarchar](100) NOT NULL,
	[Image3] [nvarchar](100) NOT NULL,
	[Image4] [nvarchar](100) NOT NULL,
	[Image5] [nvarchar](100) NOT NULL,
	[Active] [bit] NOT NULL,
	[Manu_Id] [int] NOT NULL,
	[Cate_Id] [int] NOT NULL,
	[NameSearch] [varchar](50) NOT NULL,
	[Color] [nvarchar](20) NULL,
	[Memory] [nvarchar](10) NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 24/12/2022 5:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[statistical_order]    Script Date: 24/12/2022 5:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[statistical_order](
	[count] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[count] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[statistical_product_day]    Script Date: 24/12/2022 5:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[statistical_product_day](
	[code] [varchar](255) NOT NULL,
	[name] [varchar](255) NULL,
	[price] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[selled] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Role]    Script Date: 24/12/2022 5:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NOT NULL,
	[Role_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 24/12/2022 5:19:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](125) NOT NULL,
	[FullName] [nvarchar](125) NOT NULL,
	[Point] [int] NULL,
	[Birthday] [date] NULL,
	[CreateDay] [datetime] NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[Sex] [int] NULL,
	[Subscribe] [int] NULL,
	[Img] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (NULL) FOR [NameSearch]
GO
ALTER TABLE [dbo].[Discount] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[Discount] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[Discount] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[Discount] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[Discount] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (NULL) FOR [Image]
GO
ALTER TABLE [dbo].[InformationShop] ADD  DEFAULT ((0)) FOR [Active]
GO
ALTER TABLE [dbo].[InformationShop] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[InformationShop] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[InformationShop] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[InformationShop] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[InformationShop] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[Manufactures] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[Manufactures] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[Manufactures] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[Manufactures] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[Manufactures] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[MenuOne] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[MenuOne] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[MenuOne] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[MenuOne] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[MenuOne] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[MenuTwo] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[MenuTwo] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[MenuTwo] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[MenuTwo] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[MenuTwo] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (NULL) FOR [Discount_Id]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (NULL) FOR [Comment]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [Point]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [Views]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (NULL) FOR [Color]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (NULL) FOR [Memory]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Point]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (NULL) FOR [Birthday]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Sex]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Subscribe]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK6i66ijb8twgcqtetl8eeeed6v] FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK6i66ijb8twgcqtetl8eeeed6v]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK6uv0qku8gsu6x1r2jkrtqwjtn] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK6uv0qku8gsu6x1r2jkrtqwjtn]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK8omq0tc18jd43bu5tjh6jvraq] FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK8omq0tc18jd43bu5tjh6jvraq]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK69x3vjuy1t5p18a5llb8h2fjx] FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK69x3vjuy1t5p18a5llb8h2fjx]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK6sgu5npe8ug4o42bf9j71x20c] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK6sgu5npe8ug4o42bf9j71x20c]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FKk7du8b8ewipawnnpg76d55fus] FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FKk7du8b8ewipawnnpg76d55fus]
GO
ALTER TABLE [dbo].[MenuOne]  WITH CHECK ADD FOREIGN KEY([Cate_Id])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuOne]  WITH CHECK ADD  CONSTRAINT [FKe5ewl507c2dihj92b3h4lml69] FOREIGN KEY([Cate_Id])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[MenuOne] CHECK CONSTRAINT [FKe5ewl507c2dihj92b3h4lml69]
GO
ALTER TABLE [dbo].[MenuTwo]  WITH CHECK ADD FOREIGN KEY([Menu1_Id])
REFERENCES [dbo].[MenuOne] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuTwo]  WITH CHECK ADD  CONSTRAINT [FKsroge7yng11ps8uwxfltgctj5] FOREIGN KEY([Menu1_Id])
REFERENCES [dbo].[MenuOne] ([Id])
GO
ALTER TABLE [dbo].[MenuTwo] CHECK CONSTRAINT [FKsroge7yng11ps8uwxfltgctj5]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Address_Id])
REFERENCES [dbo].[Address] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Discount_Id])
REFERENCES [dbo].[Discount] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FKdovsc3u2it5yoknwgx4brjid1] FOREIGN KEY([Discount_Id])
REFERENCES [dbo].[Discount] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FKdovsc3u2it5yoknwgx4brjid1]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FKf5464gxwc32ongdvka2rtvw96] FOREIGN KEY([Address_Id])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FKf5464gxwc32ongdvka2rtvw96]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FKkp5k52qtiygd8jkag4hayd0qg] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FKkp5k52qtiygd8jkag4hayd0qg]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([Cate_Id])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([Manu_Id])
REFERENCES [dbo].[Manufactures] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FKmesyn8937lg2c3jndt0umqwqh] FOREIGN KEY([Manu_Id])
REFERENCES [dbo].[Manufactures] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FKmesyn8937lg2c3jndt0umqwqh]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FKmj3byw2biiru52u2cok719rye] FOREIGN KEY([Cate_Id])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FKmj3byw2biiru52u2cok719rye]
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD FOREIGN KEY([Role_Id])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD  CONSTRAINT [FKj345gk1bovqvfame88rcx7yyx] FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[User_Role] CHECK CONSTRAINT [FKj345gk1bovqvfame88rcx7yyx]
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD  CONSTRAINT [FKt7e7djp752sqn6w22i6ocqy6q] FOREIGN KEY([Role_Id])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[User_Role] CHECK CONSTRAINT [FKt7e7djp752sqn6w22i6ocqy6q]
GO
USE [master]
GO
ALTER DATABASE [NongSanSach] SET  READ_WRITE 
GO
