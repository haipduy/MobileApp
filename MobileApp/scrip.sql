USE [master]
GO
/****** Object:  Database [MobileApp]    Script Date: 01/10/2018 18:59:31 ******/
CREATE DATABASE [MobileApp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MobileApp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\MobileApp.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MobileApp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\MobileApp_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MobileApp] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MobileApp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MobileApp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MobileApp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MobileApp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MobileApp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MobileApp] SET ARITHABORT OFF 
GO
ALTER DATABASE [MobileApp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MobileApp] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [MobileApp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MobileApp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MobileApp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MobileApp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MobileApp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MobileApp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MobileApp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MobileApp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MobileApp] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MobileApp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MobileApp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MobileApp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MobileApp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MobileApp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MobileApp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MobileApp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MobileApp] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MobileApp] SET  MULTI_USER 
GO
ALTER DATABASE [MobileApp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MobileApp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MobileApp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MobileApp] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [MobileApp]
GO
/****** Object:  Table [dbo].[tbl_Account]    Script Date: 01/10/2018 18:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Account](
	[userID] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[firstName] [nvarchar](50) NULL,
	[lastName] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[phone] [int] NULL,
	[birthDate] [date] NULL,
	[status] [int] NULL,
	[role] [int] NULL,
 CONSTRAINT [PK_tbl_Account] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Category]    Script Date: 01/10/2018 18:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Category](
	[categoryID] [nvarchar](50) NOT NULL,
	[categoryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Category] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Ctdh]    Script Date: 01/10/2018 18:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Ctdh](
	[ctdhID] [int] IDENTITY(1,1) NOT NULL,
	[hdID] [int] NULL,
	[itemID] [nvarchar](50) NULL,
	[itemName] [nvarchar](50) NULL,
	[image] [nvarchar](50) NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
 CONSTRAINT [PK_tbl_Ctdh] PRIMARY KEY CLUSTERED 
(
	[ctdhID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Hd]    Script Date: 01/10/2018 18:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Hd](
	[hdID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [nvarchar](50) NULL,
	[total] [float] NULL,
	[fullName] [nvarchar](50) NULL,
	[phone] [int] NULL,
	[email] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[notes] [nvarchar](150) NULL,
	[statusID] [int] NULL,
 CONSTRAINT [PK_tbl_Hd] PRIMARY KEY CLUSTERED 
(
	[hdID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Items]    Script Date: 01/10/2018 18:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Items](
	[itemID] [nvarchar](50) NOT NULL,
	[categoryID] [nvarchar](50) NULL,
	[itemName] [nvarchar](100) NULL,
	[image] [nvarchar](200) NULL,
	[price] [float] NULL,
	[priceSale] [float] NULL,
	[quantity] [int] NULL,
	[technology] [nvarchar](100) NULL,
	[announced] [nvarchar](100) NULL,
	[dimensions] [nvarchar](100) NULL,
	[sim] [nvarchar](100) NULL,
	[type] [nvarchar](100) NULL,
	[size] [nvarchar](100) NULL,
	[resolution] [nvarchar](100) NULL,
	[protection] [nvarchar](100) NULL,
	[OS] [nvarchar](100) NULL,
	[CPU] [nvarchar](100) NULL,
	[GPU] [nvarchar](100) NULL,
	[internal] [nvarchar](100) NULL,
	[cameraPri] [nvarchar](100) NULL,
	[cameraSec] [nvarchar](100) NULL,
	[battery] [nvarchar](100) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_tbl_Items] PRIMARY KEY CLUSTERED 
(
	[itemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Role]    Script Date: 01/10/2018 18:59:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Role](
	[role] [int] NOT NULL,
	[roleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Role] PRIMARY KEY CLUSTERED 
(
	[role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[tbl_Account] ([userID], [password], [firstName], [lastName], [email], [phone], [birthDate], [status], [role]) VALUES (N'admin', N'123', N'Hai', N'Pham', N'haipduy@gmail.com', 981637027, CAST(0xB63D0B00 AS Date), 1, 1)
INSERT [dbo].[tbl_Account] ([userID], [password], [firstName], [lastName], [email], [phone], [birthDate], [status], [role]) VALUES (N'user1', N'123', N'Hai', N'Pham', N'haipduy@gmail.com', 899326569, CAST(0xF33D0B00 AS Date), 1, 2)
INSERT [dbo].[tbl_Account] ([userID], [password], [firstName], [lastName], [email], [phone], [birthDate], [status], [role]) VALUES (N'user2', N'123', N'Duy', N'Pham', N'haipduy@gmail.com', 928477, CAST(0xD63D0B00 AS Date), 1, 2)
INSERT [dbo].[tbl_Account] ([userID], [password], [firstName], [lastName], [email], [phone], [birthDate], [status], [role]) VALUES (N'user3', N'123', N'kuro', N'nguyen', N'kuro@123', 587937201, CAST(0x133E0B00 AS Date), 1, 2)
INSERT [dbo].[tbl_Account] ([userID], [password], [firstName], [lastName], [email], [phone], [birthDate], [status], [role]) VALUES (N'user4', N'123', N'sumi', N'nguyen', N'sumi@sumi.sama', 473827192, CAST(0x323E0B00 AS Date), 1, 2)
INSERT [dbo].[tbl_Account] ([userID], [password], [firstName], [lastName], [email], [phone], [birthDate], [status], [role]) VALUES (N'user456', N'123', N'Duyhai123', N'Pham12345', N'haipham@gmail.com', 987658948, CAST(0xD63D0B00 AS Date), 1, 2)
INSERT [dbo].[tbl_Account] ([userID], [password], [firstName], [lastName], [email], [phone], [birthDate], [status], [role]) VALUES (N'user4567', N'123', N'haiduypham', N'ngoasdasd', N'duyhai@gmail.com', 986574384, CAST(0x133E0B00 AS Date), 1, 2)
INSERT [dbo].[tbl_Account] ([userID], [password], [firstName], [lastName], [email], [phone], [birthDate], [status], [role]) VALUES (N'user9', N'123', N'hai pham', N'duy 1', N'hai@gmail.com', 987463524, CAST(0xEFCD0B00 AS Date), 0, 2)
INSERT [dbo].[tbl_Category] ([categoryID], [categoryName]) VALUES (N'ap', N'APPLE')
INSERT [dbo].[tbl_Category] ([categoryID], [categoryName]) VALUES (N'bl', N'BLACKBERRY')
INSERT [dbo].[tbl_Category] ([categoryID], [categoryName]) VALUES (N'ht', N'HTC')
INSERT [dbo].[tbl_Category] ([categoryID], [categoryName]) VALUES (N'hu', N'HUAWEI')
INSERT [dbo].[tbl_Category] ([categoryID], [categoryName]) VALUES (N'le', N'LENOVO')
INSERT [dbo].[tbl_Category] ([categoryID], [categoryName]) VALUES (N'mi', N'MICROSOFT')
INSERT [dbo].[tbl_Category] ([categoryID], [categoryName]) VALUES (N'mo', N'MOTOROLA')
INSERT [dbo].[tbl_Category] ([categoryID], [categoryName]) VALUES (N'so', N'SONY')
INSERT [dbo].[tbl_Category] ([categoryID], [categoryName]) VALUES (N'ss', N'SAMSUNG')
INSERT [dbo].[tbl_Category] ([categoryID], [categoryName]) VALUES (N'xi', N'XIAOMI')
SET IDENTITY_INSERT [dbo].[tbl_Ctdh] ON 

INSERT [dbo].[tbl_Ctdh] ([ctdhID], [hdID], [itemID], [itemName], [image], [quantity], [price]) VALUES (40, 35, N'A002', N'iPhone 8 Plus 64GB', N'products\2.png', 12, 2)
INSERT [dbo].[tbl_Ctdh] ([ctdhID], [hdID], [itemID], [itemName], [image], [quantity], [price]) VALUES (41, 36, N'A005', N'iPhone 7 32GB', N'products\5.png', 1, 18)
INSERT [dbo].[tbl_Ctdh] ([ctdhID], [hdID], [itemID], [itemName], [image], [quantity], [price]) VALUES (42, 36, N'A006', N'Sony Xperia XZ Premium', N'products\6.png', 1, 20)
INSERT [dbo].[tbl_Ctdh] ([ctdhID], [hdID], [itemID], [itemName], [image], [quantity], [price]) VALUES (43, 36, N'A0014', N'Iphone 11', N'products/2.png', 1, 9)
INSERT [dbo].[tbl_Ctdh] ([ctdhID], [hdID], [itemID], [itemName], [image], [quantity], [price]) VALUES (44, 37, N'A008', N'Sony Xperia XZ Premium', N'products\8.png', 1, 14)
INSERT [dbo].[tbl_Ctdh] ([ctdhID], [hdID], [itemID], [itemName], [image], [quantity], [price]) VALUES (45, 37, N'A005', N'iPhone 7 32GB', N'products\5.png', 1, 18)
INSERT [dbo].[tbl_Ctdh] ([ctdhID], [hdID], [itemID], [itemName], [image], [quantity], [price]) VALUES (46, 37, N'A006', N'Sony Xperia XZ Premium', N'products\6.png', 1, 20)
INSERT [dbo].[tbl_Ctdh] ([ctdhID], [hdID], [itemID], [itemName], [image], [quantity], [price]) VALUES (47, 37, N'A002', N'iPhone 8 Plus 64GB', N'products\2.png', 1, 2)
INSERT [dbo].[tbl_Ctdh] ([ctdhID], [hdID], [itemID], [itemName], [image], [quantity], [price]) VALUES (48, 38, N'A004', N'Sony Xperia XZ Premium', N'products\4.png', -9, 5)
SET IDENTITY_INSERT [dbo].[tbl_Ctdh] OFF
SET IDENTITY_INSERT [dbo].[tbl_Hd] ON 

INSERT [dbo].[tbl_Hd] ([hdID], [userID], [total], [fullName], [phone], [email], [address], [notes], [statusID]) VALUES (35, N'user1', 24, N'Pham Duy Hai', 982617028, N'Haipd@gmail.com', N'quan 12', N'giao buoi sang', 1)
INSERT [dbo].[tbl_Hd] ([hdID], [userID], [total], [fullName], [phone], [email], [address], [notes], [statusID]) VALUES (36, N'user1', 47, N'Duy Hair', 89864532, N'hai@gmail.com', N'Quan 1', N'Giao buoi sang', 0)
INSERT [dbo].[tbl_Hd] ([hdID], [userID], [total], [fullName], [phone], [email], [address], [notes], [statusID]) VALUES (37, N'user2', 54, N'kirito', 987463524, N'Kuroto@gmail.com', N'quan 12, TP hcm', N'Giao trong gio hanh chinh', 1)
INSERT [dbo].[tbl_Hd] ([hdID], [userID], [total], [fullName], [phone], [email], [address], [notes], [statusID]) VALUES (38, N'user1', -45, N'hai pham duy', 9888888, N'hai@gmail.com', N'quan 12', N'giao trong ngay', 1)
SET IDENTITY_INSERT [dbo].[tbl_Hd] OFF
INSERT [dbo].[tbl_Items] ([itemID], [categoryID], [itemName], [image], [price], [priceSale], [quantity], [technology], [announced], [dimensions], [sim], [type], [size], [resolution], [protection], [OS], [CPU], [GPU], [internal], [cameraPri], [cameraSec], [battery], [status]) VALUES (N'A001', N'ss', N'Samsung Galaxy S9+ 128GB', N'products\1.png', 16.9, 16, 300, N'GSM / CDMA / HSPA / EVDO / LTE', N'2018, February', N'140.9 x 73 x 7.5 mm (5.55 x 2.87 x 0.30 in)', N'Single SIM (Nano-SIM) or Hybrid Dual SIM (Nano-SIM, dual stand-by)', N'P-OLED capacitive touchscreen, 16M colors', N'5.5 inches, 83.4 cm2', N'1440 x 2560 pixels, 16:9 ratio', N'Corning Gorilla Glass 5', N'Android 8.0 (Oreo)', N'Octa-core (4x2.5 GHz Kryo & 4x1.8 GHz Kryo)', N'Adreno 540', N'128 GB, 6 GB RAM', N'Dual: 12 MP', N'5 MP', N'Li-Ion 3260 mAh', 0)
INSERT [dbo].[tbl_Items] ([itemID], [categoryID], [itemName], [image], [price], [priceSale], [quantity], [technology], [announced], [dimensions], [sim], [type], [size], [resolution], [protection], [OS], [CPU], [GPU], [internal], [cameraPri], [cameraSec], [battery], [status]) VALUES (N'A0014', N'ap', N'Iphone 11', N'products/2.png', 10, 9, 39, N'weur', N'werw', N'rew', N'erw', N'erw', N'wer', N'wer', N'wer', N'wer', N'wer', N'wer', N'wer', N'wer', N'wer', N'wer', 1)
INSERT [dbo].[tbl_Items] ([itemID], [categoryID], [itemName], [image], [price], [priceSale], [quantity], [technology], [announced], [dimensions], [sim], [type], [size], [resolution], [protection], [OS], [CPU], [GPU], [internal], [cameraPri], [cameraSec], [battery], [status]) VALUES (N'A002', N'ap', N'iPhone 8 Plus 64GB', N'products\2.png', 4, 2, 3987, N'GSM / CDMA / HSPA / EVDO / LTE', N'2017, October', N'143.5 x 71.3 x 9.3 mm (5.65 x 2.81 x 0.37 in)', N'Single SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by)', N'LTPS IPS LCD capacitive touchscreen, 16M colors', N'5.0 inches, 68.9 cm2', N'720 x 1280 pixels, 16:9 ratio ', N'Corning Gorilla Glass 3', N'Android 7.1.1 (Nougat), planned upgrade to Android 8.1 (Oreo)', N'Quad-core 1.3 GHz Cortex-A7', N'Adreno 304', N'8 GB, 1 GB RAM', N'8 MP', N'5 MP', N'Li-Ion 4100 mAh', 1)
INSERT [dbo].[tbl_Items] ([itemID], [categoryID], [itemName], [image], [price], [priceSale], [quantity], [technology], [announced], [dimensions], [sim], [type], [size], [resolution], [protection], [OS], [CPU], [GPU], [internal], [cameraPri], [cameraSec], [battery], [status]) VALUES (N'A003', N'hu', N'iPhone 7 32GB', N'products\3.png', 8, 6, 4000, N'GSM / HSPA / LTE', N'2017, October', N'143.5 x 71.3 x 9.3 mm (5.65 x 2.81 x 0.37 in)', N'Single SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by)', N'LTPS IPS LCD capacitive touchscreen, 16M colors', N'5.0 inches, 68.9 cm2', N'720 x 1280 pixels, 16:9 ratio ', N'Corning Gorilla Glass 3', N'Android 7.1.1 (Nougat), planned upgrade to Android 8.1 (Oreo)', N'Quad-core 1.3 GHz Cortex-A7', N'Adreno 304', N'8 GB, 1 GB RAM', N'8 MP', N'5 MP', N'Li-Ion 4100 mAh', 1)
INSERT [dbo].[tbl_Items] ([itemID], [categoryID], [itemName], [image], [price], [priceSale], [quantity], [technology], [announced], [dimensions], [sim], [type], [size], [resolution], [protection], [OS], [CPU], [GPU], [internal], [cameraPri], [cameraSec], [battery], [status]) VALUES (N'A004', N'ht', N'Sony Xperia XZ Premium', N'products\4.png', 7, 5, 4009, N'GSM / HSPA / LTE', N'2017, September', N'151.5 x 73.7 x 7.9 mm', N'Single SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by)', N'IPS LCD capacitive touchscreen, 16M colors', N'5.3 inches, 77.4 cm2', N'1440 x 2560 pixels, 16:9 ratio', N'Corning Gorilla Glass 3', N'Android 7.1.1 (Nougat), planned upgrade to Android 8.1 (Oreo)', N'Quad-core 1.3 GHz Cortex-A7', N'Adreno 540', N'128 GB, 6 GB RAM', N'Dual: 12 MP', N'5 MP', N'Li-Ion 4100 mAh', 1)
INSERT [dbo].[tbl_Items] ([itemID], [categoryID], [itemName], [image], [price], [priceSale], [quantity], [technology], [announced], [dimensions], [sim], [type], [size], [resolution], [protection], [OS], [CPU], [GPU], [internal], [cameraPri], [cameraSec], [battery], [status]) VALUES (N'A005', N'le', N'iPhone 7 32GB', N'products\5.png', 20, 18, 3998, N'GSM / HSPA / LTE', N'2017, September', N'143.5 x 71.3 x 9.3 mm (5.65 x 2.81 x 0.37 in)', N'Single SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by)', N'IPS LCD capacitive touchscreen, 16M colors', N'5.0 inches, 68.9 cm2', N'1440 x 2560 pixels, 16:9 ratio', N'Corning Gorilla Glass 3', N'Android 8.0 (Oreo)', N'Quad-core 1.3 GHz Cortex-A7', N'Adreno 304', N'8 GB, 1 GB RAM', N'Dual: 12 MP', N'5 MP', N'Li-Ion 4100 mAh', 1)
INSERT [dbo].[tbl_Items] ([itemID], [categoryID], [itemName], [image], [price], [priceSale], [quantity], [technology], [announced], [dimensions], [sim], [type], [size], [resolution], [protection], [OS], [CPU], [GPU], [internal], [cameraPri], [cameraSec], [battery], [status]) VALUES (N'A006', N'mi', N'Sony Xperia XZ Premium', N'products\6.png', 23, 20, 3998, N'GSM / HSPA / LTE', N'2018, February', N'143.5 x 71.3 x 9.3 mm (5.65 x 2.81 x 0.37 in)', N'Single SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by)', N'IPS LCD capacitive touchscreen, 16M colors', N'5.0 inches, 68.9 cm2', N'1440 x 2560 pixels, 16:9 ratio', N'Corning Gorilla Glass 3', N'Android 7.1.1 (Nougat), planned upgrade to Android 8.1 (Oreo)', N'Quad-core 1.3 GHz Cortex-A7', N'Adreno 540', N'8 GB, 1 GB RAM', N'Dual: 15 MP', N'5 MP', N'Li-Ion 4100 mAh', 1)
INSERT [dbo].[tbl_Items] ([itemID], [categoryID], [itemName], [image], [price], [priceSale], [quantity], [technology], [announced], [dimensions], [sim], [type], [size], [resolution], [protection], [OS], [CPU], [GPU], [internal], [cameraPri], [cameraSec], [battery], [status]) VALUES (N'A007', N'mo', N'iPhone 8 Plus 64GB', N'products\7.png', 10, 9, 4000, N'GSM / HSPA / LTE', N'2017, September', N'151.5 x 73.7 x 7.9 mm', N'Single SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by)', N'IPS LCD capacitive touchscreen, 16M colors', N'5.3 inches, 77.4 cm2', N'1440 x 2560 pixels, 16:9 ratio', N'Corning Gorilla Glass 3', N'Android 8.0 (Oreo)', N'Quad-core 1.3 GHz Cortex-A7', N'Adreno 304', N'128 GB, 6 GB RAM', N'Dual: 20 MP', N'5 MP', N'Li-Ion 4100 mAh', 1)
INSERT [dbo].[tbl_Items] ([itemID], [categoryID], [itemName], [image], [price], [priceSale], [quantity], [technology], [announced], [dimensions], [sim], [type], [size], [resolution], [protection], [OS], [CPU], [GPU], [internal], [cameraPri], [cameraSec], [battery], [status]) VALUES (N'A008', N'so', N'Sony Xperia XZ Premium', N'products\8.png', 15, 14, 3999, N'GSM / HSPA / LTE', N'2018, February', N'151.5 x 73.7 x 7.9 mm', N'Single SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by)', N'IPS LCD capacitive touchscreen, 16M colors', N'5.0 inches, 68.9 cm2', N'1440 x 2560 pixels, 16:9 ratio', N'Corning Gorilla Glass 3', N'Android 7.1.1 (Nougat), planned upgrade to Android 8.1 (Oreo)', N'Quad-core 1.3 GHz Cortex-A7', N'Adreno 540', N'128 GB, 6 GB RAM', N'Dual: 12 MP', N'5 MP', N'Li-Ion 4100 mAh', 1)
INSERT [dbo].[tbl_Items] ([itemID], [categoryID], [itemName], [image], [price], [priceSale], [quantity], [technology], [announced], [dimensions], [sim], [type], [size], [resolution], [protection], [OS], [CPU], [GPU], [internal], [cameraPri], [cameraSec], [battery], [status]) VALUES (N'A009', N'xi', N'Xiaomi Redmi Note 4', N'products\9.png', 40, 20, 4000, N'GSM / HSPA / LTE', N'2017, September', N'140.9 x 73 x 7.5 mm (5.55 x 2.87 x 0.30 in)', N'Single SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by)', N'IPS LCD capacitive touchscreen, 16M colors', N'5.3 inches, 77.4 cm2', N'1440 x 2560 pixels, 16:9 ratio', N'Corning Gorilla Glass 3', N'Android 8.0 (Oreo)', N'Quad-core 1.3 GHz Cortex-A7', N'Adreno 304', N'8 GB, 1 GB RAM', N'8 MP', N'5 MP', N'Li-Ion 4100 mAh', 1)
INSERT [dbo].[tbl_Items] ([itemID], [categoryID], [itemName], [image], [price], [priceSale], [quantity], [technology], [announced], [dimensions], [sim], [type], [size], [resolution], [protection], [OS], [CPU], [GPU], [internal], [cameraPri], [cameraSec], [battery], [status]) VALUES (N'A010', N'bl', N'Samsung Galaxy S9+ 128GB', N'products\10.png', 30, 25, 4000, N'GSM / HSPA / LTE', N'2018, February', N'140.9 x 73 x 7.5 mm (5.55 x 2.87 x 0.30 in)', N'Single SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by)', N'IPS LCD capacitive touchscreen, 16M colors', N'5.0 inches, 68.9 cm2', N'1440 x 2560 pixels, 16:9 ratio', N'Corning Gorilla Glass 3', N'Android 7.1.1 (Nougat), planned upgrade to Android 8.1 (Oreo)', N'Quad-core 1.3 GHz Cortex-A7', N'Adreno 540', N'128 GB, 6 GB RAM', N'8 MP', N'5 MP', N'Li-Ion 4100 mAh', 1)
INSERT [dbo].[tbl_Role] ([role], [roleName]) VALUES (1, N'Administrator')
INSERT [dbo].[tbl_Role] ([role], [roleName]) VALUES (2, N'Subscriber')
ALTER TABLE [dbo].[tbl_Account]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Account_tbl_Role] FOREIGN KEY([role])
REFERENCES [dbo].[tbl_Role] ([role])
GO
ALTER TABLE [dbo].[tbl_Account] CHECK CONSTRAINT [FK_tbl_Account_tbl_Role]
GO
ALTER TABLE [dbo].[tbl_Ctdh]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Ctdh_tbl_Hd] FOREIGN KEY([hdID])
REFERENCES [dbo].[tbl_Hd] ([hdID])
GO
ALTER TABLE [dbo].[tbl_Ctdh] CHECK CONSTRAINT [FK_tbl_Ctdh_tbl_Hd]
GO
ALTER TABLE [dbo].[tbl_Ctdh]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Ctdh_tbl_Items] FOREIGN KEY([itemID])
REFERENCES [dbo].[tbl_Items] ([itemID])
GO
ALTER TABLE [dbo].[tbl_Ctdh] CHECK CONSTRAINT [FK_tbl_Ctdh_tbl_Items]
GO
ALTER TABLE [dbo].[tbl_Hd]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Hd_tbl_Account] FOREIGN KEY([userID])
REFERENCES [dbo].[tbl_Account] ([userID])
GO
ALTER TABLE [dbo].[tbl_Hd] CHECK CONSTRAINT [FK_tbl_Hd_tbl_Account]
GO
ALTER TABLE [dbo].[tbl_Items]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Items_tbl_Category] FOREIGN KEY([categoryID])
REFERENCES [dbo].[tbl_Category] ([categoryID])
GO
ALTER TABLE [dbo].[tbl_Items] CHECK CONSTRAINT [FK_tbl_Items_tbl_Category]
GO
USE [master]
GO
ALTER DATABASE [MobileApp] SET  READ_WRITE 
GO
