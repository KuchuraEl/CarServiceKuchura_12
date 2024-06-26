USE [master]
GO
/****** Object:  Database [DBCarServiceKuchura12]    Script Date: 29.05.2024 10:11:52 ******/
CREATE DATABASE [DBCarServiceKuchura12]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBCarServiceKuchura12', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DBCarServiceKuchura12.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBCarServiceKuchura12_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DBCarServiceKuchura12_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBCarServiceKuchura12] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBCarServiceKuchura12].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBCarServiceKuchura12] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET  MULTI_USER 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBCarServiceKuchura12] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBCarServiceKuchura12] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DBCarServiceKuchura12] SET QUERY_STORE = OFF
GO
USE [DBCarServiceKuchura12]
GO
/****** Object:  Table [dbo].[order]    Script Date: 29.05.2024 10:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[orderid] [int] IDENTITY(1,1) NOT NULL,
	[datecreation] [date] NOT NULL,
	[orderstatus] [nvarchar](50) NULL,
	[paymentstatus] [nvarchar](50) NOT NULL,
	[carelement] [nvarchar](50) NOT NULL,
	[details] [nvarchar](50) NOT NULL,
	[amountdamage] [int] NOT NULL,
	[liquids] [nvarchar](50) NOT NULL,
 CONSTRAINT [order_pk] PRIMARY KEY CLUSTERED 
(
	[orderid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderuserlist]    Script Date: 29.05.2024 10:11:52 ******/
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
/****** Object:  Table [dbo].[shift]    Script Date: 29.05.2024 10:11:52 ******/
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
/****** Object:  Table [dbo].[user]    Script Date: 29.05.2024 10:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[lastname] [nvarchar](50) NOT NULL,
	[firstname] [nvarchar](50) NOT NULL,
	[middlename] [nvarchar](50) NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[status] [nvarchar](50) NULL,
	[userroleid] [int] NOT NULL,
 CONSTRAINT [user_pk] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userlist]    Script Date: 29.05.2024 10:11:52 ******/
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
/****** Object:  Table [dbo].[userrole]    Script Date: 29.05.2024 10:11:52 ******/
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

INSERT [dbo].[order] ([orderid], [datecreation], [orderstatus], [paymentstatus], [carelement], [details], [amountdamage], [liquids]) VALUES (1, CAST(N'2023-06-06' AS Date), N'готовится', N'принят', N'блок воздуходувки', N'мотор вентилятора', 1, N'отсутствуют')
INSERT [dbo].[order] ([orderid], [datecreation], [orderstatus], [paymentstatus], [carelement], [details], [amountdamage], [liquids]) VALUES (2, CAST(N'2023-06-07' AS Date), N'готов', N'оплачен', N'топливный инжектор', N'уплотнительные кольца', 8, N'отсутствуют')
INSERT [dbo].[order] ([orderid], [datecreation], [orderstatus], [paymentstatus], [carelement], [details], [amountdamage], [liquids]) VALUES (3, CAST(N'2023-06-08' AS Date), N'готовится', N'принят', N'система охлаждения двигателя', N'насос водяной', 1, N'антифриз')
INSERT [dbo].[order] ([orderid], [datecreation], [orderstatus], [paymentstatus], [carelement], [details], [amountdamage], [liquids]) VALUES (4, CAST(N'2023-06-09' AS Date), N'готов', N'оплачен', N'электрооборудование', N'генератор', 1, N'отсутствуют')
INSERT [dbo].[order] ([orderid], [datecreation], [orderstatus], [paymentstatus], [carelement], [details], [amountdamage], [liquids]) VALUES (5, CAST(N'2023-06-10' AS Date), N'готов', N'принят', N'передняя часть двигателя', N'рем комлект ГРМ', 1, N'моторное масло')
SET IDENTITY_INSERT [dbo].[order] OFF
GO
SET IDENTITY_INSERT [dbo].[orderuserlist] ON 

INSERT [dbo].[orderuserlist] ([orderuserlistid], [userid], [orderid]) VALUES (1, 2, 1)
INSERT [dbo].[orderuserlist] ([orderuserlistid], [userid], [orderid]) VALUES (2, 3, 2)
INSERT [dbo].[orderuserlist] ([orderuserlistid], [userid], [orderid]) VALUES (3, 4, 3)
INSERT [dbo].[orderuserlist] ([orderuserlistid], [userid], [orderid]) VALUES (4, 5, 5)
INSERT [dbo].[orderuserlist] ([orderuserlistid], [userid], [orderid]) VALUES (6, 6, 2)
SET IDENTITY_INSERT [dbo].[orderuserlist] OFF
GO
SET IDENTITY_INSERT [dbo].[shift] ON 

INSERT [dbo].[shift] ([shiftid], [datestart], [dateend]) VALUES (3, CAST(N'2023-06-06' AS Date), CAST(N'2023-07-07' AS Date))
INSERT [dbo].[shift] ([shiftid], [datestart], [dateend]) VALUES (4, CAST(N'2023-06-07' AS Date), CAST(N'2023-06-07' AS Date))
INSERT [dbo].[shift] ([shiftid], [datestart], [dateend]) VALUES (5, CAST(N'2023-06-05' AS Date), CAST(N'2023-07-06' AS Date))
INSERT [dbo].[shift] ([shiftid], [datestart], [dateend]) VALUES (6, CAST(N'2023-06-07' AS Date), CAST(N'2023-06-07' AS Date))
INSERT [dbo].[shift] ([shiftid], [datestart], [dateend]) VALUES (7, CAST(N'2023-06-05' AS Date), CAST(N'2023-06-07' AS Date))
SET IDENTITY_INSERT [dbo].[shift] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([userid], [lastname], [firstname], [middlename], [login], [password], [status], [userroleid]) VALUES (2, N'Селиванов', N'Николай', N'Даниилович', N'rubies', N'cmjcFvB3cI', N'работает', 1)
INSERT [dbo].[user] ([userid], [lastname], [firstname], [middlename], [login], [password], [status], [userroleid]) VALUES (3, N'Афанасьев', N'Никита', N'Львович', N'windle', N'2PAUAd0gMZ', N'уволен', 2)
INSERT [dbo].[user] ([userid], [lastname], [firstname], [middlename], [login], [password], [status], [userroleid]) VALUES (4, N'Кириллова', N'Мария', N'Львовна', N'improv', N'bcFFGU16f6', N'уволен', 2)
INSERT [dbo].[user] ([userid], [lastname], [firstname], [middlename], [login], [password], [status], [userroleid]) VALUES (5, N'Савина', N'Анна', N'Серафимовна', N'moving', N'A8HPZz9HTG', N'работает', 1)
INSERT [dbo].[user] ([userid], [lastname], [firstname], [middlename], [login], [password], [status], [userroleid]) VALUES (6, N'Зайцева', N'Алиса', N'Адамовна', N'bellum', N'ZjXm3JW7RJ', N'работает', 3)
INSERT [dbo].[user] ([userid], [lastname], [firstname], [middlename], [login], [password], [status], [userroleid]) VALUES (7, N'Фадеев', N'Степан', N'Романович', N'siller', N'dVMfx1VMFF', N'работает', 3)
INSERT [dbo].[user] ([userid], [lastname], [firstname], [middlename], [login], [password], [status], [userroleid]) VALUES (8, N'Яковлева', N'Ева', N'Максимовна', N'ragman', N'25Y9oOkwHn', N'работает', 1)
INSERT [dbo].[user] ([userid], [lastname], [firstname], [middlename], [login], [password], [status], [userroleid]) VALUES (9, N'Зиновьев', N'Станислав', N'Демидович', N'fautor', N'RJ41C0qynP', N'работает', 3)
INSERT [dbo].[user] ([userid], [lastname], [firstname], [middlename], [login], [password], [status], [userroleid]) VALUES (10, N'Корнев', N'Андрей', N'Ильич', N'coated', N'8g2FubQVZH', N'работает', 1)
INSERT [dbo].[user] ([userid], [lastname], [firstname], [middlename], [login], [password], [status], [userroleid]) VALUES (11, N'Кондрашов', N'Иван', N'Даниилович', N'fiches', N'LO1qRB42GP', N'работает', 2)
SET IDENTITY_INSERT [dbo].[user] OFF
GO
SET IDENTITY_INSERT [dbo].[userlist] ON 

INSERT [dbo].[userlist] ([userlistid], [userid], [shiftid]) VALUES (7, 2, 4)
INSERT [dbo].[userlist] ([userlistid], [userid], [shiftid]) VALUES (8, 3, 3)
INSERT [dbo].[userlist] ([userlistid], [userid], [shiftid]) VALUES (9, 4, 5)
INSERT [dbo].[userlist] ([userlistid], [userid], [shiftid]) VALUES (10, 5, 6)
INSERT [dbo].[userlist] ([userlistid], [userid], [shiftid]) VALUES (11, 5, 7)
SET IDENTITY_INSERT [dbo].[userlist] OFF
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
USE [master]
GO
ALTER DATABASE [DBCarServiceKuchura12] SET  READ_WRITE 
GO
