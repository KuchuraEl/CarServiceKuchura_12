USE [name_database]
GO
/****** Object:  Table [dbo].[order]    Script Date: 26.02.2024 15:00:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[datecreation] [date] NOT NULL,
	[orderstatus] [nvarchar](50) NOT NULL,
	[paymentstatus] [nvarchar](50) NOT NULL,
	[carelement] [nvarchar](50) NOT NULL,
	[details] [nvarchar](50) NOT NULL,
	[amountdamage] [int] NOT NULL,
	[liquids] [nvarchar](50) NOT NULL,
	[orderid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [order_pk] PRIMARY KEY CLUSTERED 
(
	[orderid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderuserlist]    Script Date: 26.02.2024 15:00:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderuserlist](
	[orderuserlistid] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NOT NULL,
	[orderid] [int] NOT NULL,
 CONSTRAINT [orderuserlist_pk] PRIMARY KEY CLUSTERED 
(
	[orderuserlistid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shift]    Script Date: 26.02.2024 15:00:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shift](
	[shiftid] [int] IDENTITY(1,1) NOT NULL,
	[datestart] [date] NOT NULL,
	[dateend] [date] NOT NULL,
 CONSTRAINT [shift_pk] PRIMARY KEY CLUSTERED 
(
	[shiftid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 26.02.2024 15:00:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[status] [nvarchar](50) NULL,
	[lastname] [nvarchar](50) NOT NULL,
	[firstname] [nvarchar](50) NOT NULL,
	[middlename] [nvarchar](50) NOT NULL,
	[userroleid] [int] NOT NULL,
 CONSTRAINT [user_pk] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userlist]    Script Date: 26.02.2024 15:00:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userlist](
	[userlistid] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NOT NULL,
	[shiftid] [int] NOT NULL,
 CONSTRAINT [userlist_pk] PRIMARY KEY CLUSTERED 
(
	[userlistid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userrole]    Script Date: 26.02.2024 15:00:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userrole](
	[userroleid] [int] IDENTITY(1,1) NOT NULL,
	[namerole] [nvarchar](50) NOT NULL,
 CONSTRAINT [userrole_pk] PRIMARY KEY CLUSTERED 
(
	[userroleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[order] ON 

INSERT [dbo].[order] ([datecreation], [orderstatus], [paymentstatus], [carelement], [details], [amountdamage], [liquids], [orderid]) VALUES (CAST(N'2023-06-06' AS Date), N'готовится', N'принят', N'блок воздуходувки', N'мотор вентилятора', 1, N'отсутствуют', 1)
INSERT [dbo].[order] ([datecreation], [orderstatus], [paymentstatus], [carelement], [details], [amountdamage], [liquids], [orderid]) VALUES (CAST(N'2023-06-07' AS Date), N'готов', N'оплачен', N'топливный инжектор', N'уплотнительные кольца', 8, N'отсутствуют', 2)
INSERT [dbo].[order] ([datecreation], [orderstatus], [paymentstatus], [carelement], [details], [amountdamage], [liquids], [orderid]) VALUES (CAST(N'2023-06-08' AS Date), N'готовится', N'принят', N'система охлаждения двигателя', N'насос водяной', 1, N'антифриз', 3)
INSERT [dbo].[order] ([datecreation], [orderstatus], [paymentstatus], [carelement], [details], [amountdamage], [liquids], [orderid]) VALUES (CAST(N'2023-06-09' AS Date), N'готов', N'оплачен', N'электрооборудование', N'генератор', 1, N'отсутствуют', 4)
INSERT [dbo].[order] ([datecreation], [orderstatus], [paymentstatus], [carelement], [details], [amountdamage], [liquids], [orderid]) VALUES (CAST(N'2023-06-10' AS Date), N'готов', N'принят', N'передняя часть двигателя', N'рем комлект ГРМ', 1, N'моторное масло', 5)
SET IDENTITY_INSERT [dbo].[order] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([userid], [Login], [password], [status], [lastname], [firstname], [middlename], [userroleid]) VALUES (2, N'rubies', N'cmjcFvB3cI', NULL, N'Селиванов', N'Николай', N'Даниилович', 1)
INSERT [dbo].[user] ([userid], [Login], [password], [status], [lastname], [firstname], [middlename], [userroleid]) VALUES (3, N'windle', N'2PAUAd0gMZ', NULL, N'Афанасьев', N'Никита', N'Львович', 2)
INSERT [dbo].[user] ([userid], [Login], [password], [status], [lastname], [firstname], [middlename], [userroleid]) VALUES (4, N'improv', N'bcFFGU16f6', NULL, N'Кириллова', N'Мария', N'Львовна', 2)
INSERT [dbo].[user] ([userid], [Login], [password], [status], [lastname], [firstname], [middlename], [userroleid]) VALUES (5, N'moving', N'A8HPZz9HTG', NULL, N'Савина', N'Анна', N'Серафимовна', 1)
INSERT [dbo].[user] ([userid], [Login], [password], [status], [lastname], [firstname], [middlename], [userroleid]) VALUES (6, N'bellum', N'ZjXm3JW7RJ', NULL, N'Зайцева', N'Алиса', N'Адамовна', 3)
INSERT [dbo].[user] ([userid], [Login], [password], [status], [lastname], [firstname], [middlename], [userroleid]) VALUES (7, N'siller', N'dVMfx1VMFF', NULL, N'Фадеев', N'Степан', N'Романович', 3)
INSERT [dbo].[user] ([userid], [Login], [password], [status], [lastname], [firstname], [middlename], [userroleid]) VALUES (8, N'ragman', N'25Y9oOkwHn', NULL, N'Яковлева', N'Ева', N'Максимовна', 1)
INSERT [dbo].[user] ([userid], [Login], [password], [status], [lastname], [firstname], [middlename], [userroleid]) VALUES (9, N'fautor', N'RJ41C0qynP', NULL, N'Зиновьев', N'Станислав', N'Демидович', 3)
INSERT [dbo].[user] ([userid], [Login], [password], [status], [lastname], [firstname], [middlename], [userroleid]) VALUES (10, N'coated', N'8g2FubQVZH', NULL, N'Корнев', N'Андрей', N'Ильич', 1)
INSERT [dbo].[user] ([userid], [Login], [password], [status], [lastname], [firstname], [middlename], [userroleid]) VALUES (11, N'fiches', N'LO1qRB42GP', NULL, N'Кондрашов', N'Иван', N'Даниилович', 2)
SET IDENTITY_INSERT [dbo].[user] OFF
GO
SET IDENTITY_INSERT [dbo].[userrole] ON 

INSERT [dbo].[userrole] ([userroleid], [namerole]) VALUES (1, N'Автомеханик')
INSERT [dbo].[userrole] ([userroleid], [namerole]) VALUES (2, N'Мастер приемщик')
INSERT [dbo].[userrole] ([userroleid], [namerole]) VALUES (3, N'Автодиагност')
SET IDENTITY_INSERT [dbo].[userrole] OFF
GO
ALTER TABLE [dbo].[orderuserlist]  WITH CHECK ADD  CONSTRAINT [orderuserlist___fk] FOREIGN KEY([userid])
REFERENCES [dbo].[user] ([userid])
GO
ALTER TABLE [dbo].[orderuserlist] CHECK CONSTRAINT [orderuserlist___fk]
GO
ALTER TABLE [dbo].[orderuserlist]  WITH CHECK ADD  CONSTRAINT [orderuserlist___fk_2] FOREIGN KEY([orderid])
REFERENCES [dbo].[order] ([orderid])
GO
ALTER TABLE [dbo].[orderuserlist] CHECK CONSTRAINT [orderuserlist___fk_2]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [user___fk] FOREIGN KEY([userroleid])
REFERENCES [dbo].[userrole] ([userroleid])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [user___fk]
GO
ALTER TABLE [dbo].[userlist]  WITH CHECK ADD  CONSTRAINT [userlist___fk] FOREIGN KEY([userid])
REFERENCES [dbo].[user] ([userid])
GO
ALTER TABLE [dbo].[userlist] CHECK CONSTRAINT [userlist___fk]
GO
ALTER TABLE [dbo].[userlist]  WITH CHECK ADD  CONSTRAINT [userlist___fk_2] FOREIGN KEY([shiftid])
REFERENCES [dbo].[shift] ([shiftid])
GO
ALTER TABLE [dbo].[userlist] CHECK CONSTRAINT [userlist___fk_2]
GO
