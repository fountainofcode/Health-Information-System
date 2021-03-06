USE [master]
GO
/****** Object:  Database [HIS]    Script Date: 01/16/2015 12:05:23 ******/
CREATE DATABASE [HIS] ON  PRIMARY 
( NAME = N'HIS', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\HIS.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HIS_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\HIS_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HIS] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HIS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HIS] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [HIS] SET ANSI_NULLS OFF
GO
ALTER DATABASE [HIS] SET ANSI_PADDING OFF
GO
ALTER DATABASE [HIS] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [HIS] SET ARITHABORT OFF
GO
ALTER DATABASE [HIS] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [HIS] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [HIS] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [HIS] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [HIS] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [HIS] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [HIS] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [HIS] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [HIS] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [HIS] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [HIS] SET  DISABLE_BROKER
GO
ALTER DATABASE [HIS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [HIS] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [HIS] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [HIS] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [HIS] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [HIS] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [HIS] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [HIS] SET  READ_WRITE
GO
ALTER DATABASE [HIS] SET RECOVERY SIMPLE
GO
ALTER DATABASE [HIS] SET  MULTI_USER
GO
ALTER DATABASE [HIS] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [HIS] SET DB_CHAINING OFF
GO
USE [HIS]
GO
/****** Object:  Table [dbo].[OtherUser]    Script Date: 01/16/2015 12:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OtherUser](
	[otherUserId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[otherUserType] [varchar](20) NOT NULL,
	[otherUserOtherPassword] [varchar](20) NOT NULL,
	[otherUserFirstName] [varchar](20) NOT NULL,
	[otherUserMiddleName] [varchar](20) NULL,
	[otherUserLastName] [varchar](20) NOT NULL,
	[otherUserDob] [varchar](15) NOT NULL,
	[otherUserGender] [varchar](1) NOT NULL,
	[otherUserContact] [varchar](20) NOT NULL,
	[otherUserSecContact] [varchar](50) NULL,
	[otherUserHouseAdd] [varchar](40) NULL,
	[otherUserCity] [varchar](20) NOT NULL,
	[otherUserDistrict] [varchar](20) NOT NULL,
	[otherUserCountry] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[otherUserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[OtherUser] ON
INSERT [dbo].[OtherUser] ([otherUserId], [userId], [otherUserType], [otherUserOtherPassword], [otherUserFirstName], [otherUserMiddleName], [otherUserLastName], [otherUserDob], [otherUserGender], [otherUserContact], [otherUserSecContact], [otherUserHouseAdd], [otherUserCity], [otherUserDistrict], [otherUserCountry]) VALUES (1, 1, N'super', N'sita', N'Sita', N'Devi', N'Sita', N'11/11/1988', N'F', N'4444444444', N'', N'', N'Kathmandu', N'Bagmati', N'Nepal')
INSERT [dbo].[OtherUser] ([otherUserId], [userId], [otherUserType], [otherUserOtherPassword], [otherUserFirstName], [otherUserMiddleName], [otherUserLastName], [otherUserDob], [otherUserGender], [otherUserContact], [otherUserSecContact], [otherUserHouseAdd], [otherUserCity], [otherUserDistrict], [otherUserCountry]) VALUES (2, 2, N'super', N'ram', N'Ram', N'', N'Ram', N'11-11-1987', N'M', N'5555555555', N'', N'', N'Kathmandu', N'Bagmati', N'Nepal')
INSERT [dbo].[OtherUser] ([otherUserId], [userId], [otherUserType], [otherUserOtherPassword], [otherUserFirstName], [otherUserMiddleName], [otherUserLastName], [otherUserDob], [otherUserGender], [otherUserContact], [otherUserSecContact], [otherUserHouseAdd], [otherUserCity], [otherUserDistrict], [otherUserCountry]) VALUES (3, 3, N'admin', N'hari', N'Hari', N'Prasad', N'Harii', N'11/11/1989', N'M', N'3333333333', N'1212121221', N'', N'Kathmandu', N'Bagmati', N'Nepal')
SET IDENTITY_INSERT [dbo].[OtherUser] OFF
/****** Object:  Table [dbo].[new_employees]    Script Date: 01/16/2015 12:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[new_employees](
	[id_num] [int] IDENTITY(1,1) NOT NULL,
	[fname] [varchar](20) NULL,
	[minit] [char](1) NULL,
	[lname] [varchar](30) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[new_employees] ON
INSERT [dbo].[new_employees] ([id_num], [fname], [minit], [lname]) VALUES (1, N'Karin', N'F', N'Josephs')
SET IDENTITY_INSERT [dbo].[new_employees] OFF
/****** Object:  Table [dbo].[Log_UsersWholeFieldWithName]    Script Date: 01/16/2015 12:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_UsersWholeFieldWithName](
	[userWholeFieldLogWithName_Id] [int] IDENTITY(1,1) NOT NULL,
	[userWholeFieldLogWithName_Date] [varchar](25) NOT NULL,
	[userWholeFieldLogWithName_Operation] [varchar](10) NOT NULL,
	[userId] [int] NOT NULL,
	[username] [varchar](50) NOT NULL,
	[tableName] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[userWholeFieldLogWithName_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Log_UsersWholeFieldWithName] ON
INSERT [dbo].[Log_UsersWholeFieldWithName] ([userWholeFieldLogWithName_Id], [userWholeFieldLogWithName_Date], [userWholeFieldLogWithName_Operation], [userId], [username], [tableName]) VALUES (1, N'02/01/2015 09:33:59 AM', N'Delete', 37, N'testOther', N'Log_UsersWholeFieldWithName')
INSERT [dbo].[Log_UsersWholeFieldWithName] ([userWholeFieldLogWithName_Id], [userWholeFieldLogWithName_Date], [userWholeFieldLogWithName_Operation], [userId], [username], [tableName]) VALUES (3, N'04/01/2015 01:56:49 PM', N'Delete', 28, N'test20', N'Log_UsersWholeFieldWithName')
INSERT [dbo].[Log_UsersWholeFieldWithName] ([userWholeFieldLogWithName_Id], [userWholeFieldLogWithName_Date], [userWholeFieldLogWithName_Operation], [userId], [username], [tableName]) VALUES (5, N'04/01/2015 01:59:05 PM', N'Delete', 16, N'test9', N'Log_UsersWholeFieldWithName')
INSERT [dbo].[Log_UsersWholeFieldWithName] ([userWholeFieldLogWithName_Id], [userWholeFieldLogWithName_Date], [userWholeFieldLogWithName_Operation], [userId], [username], [tableName]) VALUES (6, N'04/01/2015 02:01:49 PM', N'Delete', 17, N'test10', N'Log_UsersWholeFieldWithName')
SET IDENTITY_INSERT [dbo].[Log_UsersWholeFieldWithName] OFF
/****** Object:  Table [dbo].[Log_UsersWholeField]    Script Date: 01/16/2015 12:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_UsersWholeField](
	[userWholeFieldLog_Id] [int] IDENTITY(1,1) NOT NULL,
	[userWholeFieldLog_Date] [varchar](25) NOT NULL,
	[userWholeFieldLog_Operation] [varchar](10) NOT NULL,
	[userId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[userWholeFieldLog_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Log_UsersWholeField] ON
INSERT [dbo].[Log_UsersWholeField] ([userWholeFieldLog_Id], [userWholeFieldLog_Date], [userWholeFieldLog_Operation], [userId]) VALUES (1, N'29/11/2014 01:34:59 PM', N'Insert', 1)
INSERT [dbo].[Log_UsersWholeField] ([userWholeFieldLog_Id], [userWholeFieldLog_Date], [userWholeFieldLog_Operation], [userId]) VALUES (2, N'29/11/2014 03:43:59 PM', N'Insert', 5)
INSERT [dbo].[Log_UsersWholeField] ([userWholeFieldLog_Id], [userWholeFieldLog_Date], [userWholeFieldLog_Operation], [userId]) VALUES (3, N'28/12/2014 03:04:41 PM', N'Insert', 29)
INSERT [dbo].[Log_UsersWholeField] ([userWholeFieldLog_Id], [userWholeFieldLog_Date], [userWholeFieldLog_Operation], [userId]) VALUES (4, N'28/12/2014 03:34:00 PM', N'Insert', 33)
INSERT [dbo].[Log_UsersWholeField] ([userWholeFieldLog_Id], [userWholeFieldLog_Date], [userWholeFieldLog_Operation], [userId]) VALUES (5, N'29/12/2014 06:01:53 PM', N'Insert', 34)
INSERT [dbo].[Log_UsersWholeField] ([userWholeFieldLog_Id], [userWholeFieldLog_Date], [userWholeFieldLog_Operation], [userId]) VALUES (6, N'30/12/2014 03:48:02 PM', N'Insert', 35)
INSERT [dbo].[Log_UsersWholeField] ([userWholeFieldLog_Id], [userWholeFieldLog_Date], [userWholeFieldLog_Operation], [userId]) VALUES (7, N'30/12/2014 03:51:51 PM', N'Insert', 36)
INSERT [dbo].[Log_UsersWholeField] ([userWholeFieldLog_Id], [userWholeFieldLog_Date], [userWholeFieldLog_Operation], [userId]) VALUES (8, N'04/01/2015 12:17:18 PM', N'Insert', 41)
INSERT [dbo].[Log_UsersWholeField] ([userWholeFieldLog_Id], [userWholeFieldLog_Date], [userWholeFieldLog_Operation], [userId]) VALUES (9, N'04/01/2015 12:49:42 PM', N'Insert', 42)
INSERT [dbo].[Log_UsersWholeField] ([userWholeFieldLog_Id], [userWholeFieldLog_Date], [userWholeFieldLog_Operation], [userId]) VALUES (10, N'05/01/2015 11:04:36 AM', N'Insert', 43)
INSERT [dbo].[Log_UsersWholeField] ([userWholeFieldLog_Id], [userWholeFieldLog_Date], [userWholeFieldLog_Operation], [userId]) VALUES (11, N'09/01/2015 01:46:27 PM', N'Insert', 45)
INSERT [dbo].[Log_UsersWholeField] ([userWholeFieldLog_Id], [userWholeFieldLog_Date], [userWholeFieldLog_Operation], [userId]) VALUES (12, N'09/01/2015 01:54:15 PM', N'Insert', 46)
INSERT [dbo].[Log_UsersWholeField] ([userWholeFieldLog_Id], [userWholeFieldLog_Date], [userWholeFieldLog_Operation], [userId]) VALUES (13, N'09/01/2015 02:01:30 PM', N'Insert', 47)
INSERT [dbo].[Log_UsersWholeField] ([userWholeFieldLog_Id], [userWholeFieldLog_Date], [userWholeFieldLog_Operation], [userId]) VALUES (14, N'09/01/2015 02:13:30 PM', N'Insert', 48)
INSERT [dbo].[Log_UsersWholeField] ([userWholeFieldLog_Id], [userWholeFieldLog_Date], [userWholeFieldLog_Operation], [userId]) VALUES (15, N'09/01/2015 02:20:17 PM', N'Insert', 49)
SET IDENTITY_INSERT [dbo].[Log_UsersWholeField] OFF
/****** Object:  Table [dbo].[Log_UsersIndivField]    Script Date: 01/16/2015 12:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_UsersIndivField](
	[userIndivFieldLog_Id] [int] IDENTITY(1,1) NOT NULL,
	[userIndivFieldLog_Date] [varchar](25) NOT NULL,
	[userIndivFieldLog_Operation] [varchar](10) NOT NULL,
	[userId] [int] NOT NULL,
	[userIndivFieldLog_Field] [varchar](50) NOT NULL,
	[userIndivFieldLog_DataBefore] [varchar](50) NOT NULL,
	[userIndivFieldLog_DataLater] [varchar](50) NOT NULL,
	[tableName] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[userIndivFieldLog_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Log_UsersIndivField] ON
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (1, N'23/12/2014 12:46:59 PM', N'Update', 3, N'userSecEmail', N'', N'hari@hotmail.com', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (2, N'27/12/2014 06:11:04 PM', N'Update', 3, N'userSecEmail', N'hari@hotmail.com', N'har@hotmail.com', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (3, N'27/12/2014 06:12:05 PM', N'Update', 3, N'userSecEmail', N'har@hotmail.com', N'hari@hotmail.com', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (4, N'27/12/2014 07:42:52 PM', N'Update', 3, N'username', N'hari', N'har', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (5, N'27/12/2014 07:46:21 PM', N'Update', 3, N'username', N'har', N'hari', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (6, N'27/12/2014 07:59:54 PM', N'Update', 3, N'username', N'hari', N'har', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (7, N'27/12/2014 08:00:23 PM', N'Update', 3, N'userSecEmail', N'hari@hotmail.com', N'har@hotmail.com', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (8, N'27/12/2014 08:00:38 PM', N'Update', 3, N'username', N'har', N'hari', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (9, N'27/12/2014 08:01:38 PM', N'Update', 3, N'username', N'hari', N'har', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (10, N'27/12/2014 08:02:05 PM', N'Update', 3, N'username', N'har', N'hari', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (11, N'27/12/2014 08:02:44 PM', N'Update', 3, N'username', N'hari', N'har', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (12, N'27/12/2014 08:28:18 PM', N'Update', 3, N'username', N'har', N'hari', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (13, N'27/12/2014 08:56:47 PM', N'Update', 3, N'userPasswd', N'hari', N'har', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (14, N'27/12/2014 08:57:16 PM', N'Update', 3, N'userPasswd', N'har', N'hari', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (15, N'28/12/2014 10:22:12 AM', N'Update', 3, N'userPasswd', N'hari', N'hari', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (16, N'28/12/2014 10:42:38 AM', N'Update', 3, N'userEmail', N'hari@live.com', N'har@live.com', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (17, N'28/12/2014 10:43:05 AM', N'Update', 3, N'userEmail', N'har@live.com', N'hari@live.com', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (18, N'28/12/2014 10:43:40 AM', N'Update', 3, N'userSecEmail', N'har@hotmail.com', N'hari@hotmail.com', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (19, N'28/12/2014 12:52:00 PM', N'Update', 3, N'username', N'hari', N'har', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (20, N'28/12/2014 12:52:33 PM', N'Update', 3, N'username', N'har', N'hari', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (21, N'28/12/2014 12:52:58 PM', N'Update', 3, N'username', N'hari', N'har', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (22, N'28/12/2014 12:53:04 PM', N'Update', 3, N'username', N'har', N'hari', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (23, N'28/12/2014 12:53:13 PM', N'Update', 3, N'username', N'hari', N'hari', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (24, N'28/12/2014 12:57:02 PM', N'Update', 3, N'userPasswd', N'hari', N'hari', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (25, N'28/12/2014 12:59:17 PM', N'Update', 3, N'userEmail', N'hari@live.com', N'har@live.com', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (26, N'28/12/2014 12:59:29 PM', N'Update', 3, N'userEmail', N'har@live.com', N'hari@live.com', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (27, N'28/12/2014 01:13:13 PM', N'Update', 3, N'userSecEmail', N'hari@hotmail.com', N'har@hotmail.com', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (28, N'28/12/2014 01:13:23 PM', N'Update', 3, N'userSecEmail', N'har@hotmail.com', N'hari@hotmail.com', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (29, N'28/12/2014 09:03:07 PM', N'Update', 3, N'userEmail', N'hari@live.com', N'harilive.com', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (30, N'28/12/2014 09:04:39 PM', N'Update', 3, N'userEmail', N'harilive.com', N'hari@live.com', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (31, N'28/12/2014 09:07:11 PM', N'Update', 3, N'userEmail', N'hari@live.com', N'hari@live.com', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (32, N'29/12/2014 08:32:35 AM', N'Update', 3, N'userEmail', N'hari@live.com', N'hari@live.com', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (33, N'29/12/2014 08:39:18 AM', N'Update', 3, N'userPasswd', N'hari', N'hari', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (34, N'29/12/2014 08:40:24 AM', N'Update', 3, N'userEmail', N'hari@live.com', N'hari@live.com', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (35, N'29/12/2014 10:28:56 AM', N'Update', 3, N'username', N'hari', N'har', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (36, N'29/12/2014 10:29:49 AM', N'Update', 3, N'userPasswd', N'hari', N'hari', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (37, N'29/12/2014 10:31:25 AM', N'Update', 3, N'username', N'har', N'hari', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (38, N'29/12/2014 10:31:52 AM', N'Update', 3, N'userPasswd', N'hari', N'hari', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (39, N'29/12/2014 10:33:12 AM', N'Update', 3, N'userPasswd', N'hari', N'hari', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (40, N'29/12/2014 11:15:07 AM', N'Update', 3, N'username', N'hari', N'har', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (41, N'29/12/2014 11:17:31 AM', N'Update', 3, N'username', N'har', N'hari', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (42, N'29/12/2014 11:19:40 AM', N'Update', 3, N'username', N'hari', N'har', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (43, N'29/12/2014 11:20:07 AM', N'Update', 3, N'username', N'har', N'hari', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (44, N'29/12/2014 11:27:37 AM', N'Update', 3, N'username', N'hari', N'har', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (45, N'29/12/2014 11:32:46 AM', N'Update', 3, N'username', N'har', N'hari', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (46, N'29/12/2014 01:10:07 PM', N'Update', 4, N'userSecEmail', N'', N'kriss@hotmail.com', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (47, N'29/12/2014 01:45:36 PM', N'Update', 4, N'userEmail', N'kriss@live.com', N'kriss1@live.com', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (48, N'29/12/2014 01:46:34 PM', N'Update', 4, N'userEmail', N'kriss1@live.com', N'kriss1@live.com', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (49, N'29/12/2014 02:15:06 PM', N'Update', 4, N'userEmail', N'kriss1@live.com', N'kriss@live.com', N'Log_UsersIndivField')
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (50, N'12/01/2015 01:02:12 AM', N'Update', 5, N'userSecEmail', N'', N'krishna@hotmail.com', NULL)
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (51, N'13/01/2015 07:44:36 PM', N'Update', 4, N'userPasswd', N'kriss', N'kriss', NULL)
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (52, N'13/01/2015 07:46:59 PM', N'Update', 4, N'userPasswd', N'kriss', N'kriss', NULL)
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (53, N'13/01/2015 07:58:26 PM', N'Update', 4, N'userSecEmail', N'kriss@hotmail.com', N'kriss@hotmail.com', NULL)
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (54, N'13/01/2015 07:58:30 PM', N'Update', 4, N'userSecEmail', N'kriss@hotmail.com', N'kriss@hotmail.com', NULL)
INSERT [dbo].[Log_UsersIndivField] ([userIndivFieldLog_Id], [userIndivFieldLog_Date], [userIndivFieldLog_Operation], [userId], [userIndivFieldLog_Field], [userIndivFieldLog_DataBefore], [userIndivFieldLog_DataLater], [tableName]) VALUES (55, N'13/01/2015 08:10:37 PM', N'Update', 5, N'userPasswd', N'krishna', N'krishna', NULL)
SET IDENTITY_INSERT [dbo].[Log_UsersIndivField] OFF
/****** Object:  Table [dbo].[Log_PatientWholeFieldWithName]    Script Date: 01/16/2015 12:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_PatientWholeFieldWithName](
	[patientWholeFieldLogWithName_Id] [int] IDENTITY(1,1) NOT NULL,
	[patientWholeFieldLogWithName_Date] [varchar](25) NOT NULL,
	[patientWholeFieldLogWithName_Operation] [varchar](10) NOT NULL,
	[userId] [int] NOT NULL,
	[patientId] [int] NOT NULL,
	[patientFullName] [varchar](65) NOT NULL,
	[tableName] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[patientWholeFieldLogWithName_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Log_PatientWholeFieldWithName] ON
INSERT [dbo].[Log_PatientWholeFieldWithName] ([patientWholeFieldLogWithName_Id], [patientWholeFieldLogWithName_Date], [patientWholeFieldLogWithName_Operation], [userId], [patientId], [patientFullName], [tableName]) VALUES (1, N'02/01/2015 01:47:59 PM', N'Delete', 40, 30, N'testPatient testPatient', N'Log_PatientWholeFieldWithName')
INSERT [dbo].[Log_PatientWholeFieldWithName] ([patientWholeFieldLogWithName_Id], [patientWholeFieldLogWithName_Date], [patientWholeFieldLogWithName_Operation], [userId], [patientId], [patientFullName], [tableName]) VALUES (2, N'04/01/2015 01:59:05 PM', N'Delete', 16, 11, N'test9  test9', N'Log_PatientWholeFieldWithName')
INSERT [dbo].[Log_PatientWholeFieldWithName] ([patientWholeFieldLogWithName_Id], [patientWholeFieldLogWithName_Date], [patientWholeFieldLogWithName_Operation], [userId], [patientId], [patientFullName], [tableName]) VALUES (3, N'04/01/2015 02:01:49 PM', N'Delete', 17, 12, N'test10  test10', N'Log_PatientWholeFieldWithName')
SET IDENTITY_INSERT [dbo].[Log_PatientWholeFieldWithName] OFF
/****** Object:  Table [dbo].[Log_PatientWholeField]    Script Date: 01/16/2015 12:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_PatientWholeField](
	[patientWholeFieldLog_Id] [int] IDENTITY(1,1) NOT NULL,
	[patientWholeFieldLog_Date] [varchar](25) NOT NULL,
	[patientWholeFieldLog_Operation] [varchar](10) NOT NULL,
	[userId] [int] NOT NULL,
	[patientId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[patientWholeFieldLog_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Log_PatientWholeField] ON
INSERT [dbo].[Log_PatientWholeField] ([patientWholeFieldLog_Id], [patientWholeFieldLog_Date], [patientWholeFieldLog_Operation], [userId], [patientId]) VALUES (1, N'29/11/2014 15:43:59 PM', N'Insert', 5, 1)
INSERT [dbo].[Log_PatientWholeField] ([patientWholeFieldLog_Id], [patientWholeFieldLog_Date], [patientWholeFieldLog_Operation], [userId], [patientId]) VALUES (2, N'28/12/2014 03:04:41 PM', N'Insert', 29, 29)
INSERT [dbo].[Log_PatientWholeField] ([patientWholeFieldLog_Id], [patientWholeFieldLog_Date], [patientWholeFieldLog_Operation], [userId], [patientId]) VALUES (3, N'28/12/2014 03:34:00 PM', N'Insert', 33, 26)
INSERT [dbo].[Log_PatientWholeField] ([patientWholeFieldLog_Id], [patientWholeFieldLog_Date], [patientWholeFieldLog_Operation], [userId], [patientId]) VALUES (4, N'29/12/2014 06:01:53 PM', N'Insert', 34, 27)
INSERT [dbo].[Log_PatientWholeField] ([patientWholeFieldLog_Id], [patientWholeFieldLog_Date], [patientWholeFieldLog_Operation], [userId], [patientId]) VALUES (5, N'30/12/2014 03:48:02 PM', N'Insert', 35, 28)
INSERT [dbo].[Log_PatientWholeField] ([patientWholeFieldLog_Id], [patientWholeFieldLog_Date], [patientWholeFieldLog_Operation], [userId], [patientId]) VALUES (6, N'30/12/2014 03:51:51 PM', N'Insert', 36, 29)
INSERT [dbo].[Log_PatientWholeField] ([patientWholeFieldLog_Id], [patientWholeFieldLog_Date], [patientWholeFieldLog_Operation], [userId], [patientId]) VALUES (7, N'04/01/2015 12:17:18 PM', N'Insert', 41, 31)
INSERT [dbo].[Log_PatientWholeField] ([patientWholeFieldLog_Id], [patientWholeFieldLog_Date], [patientWholeFieldLog_Operation], [userId], [patientId]) VALUES (8, N'04/01/2015 12:49:42 PM', N'Insert', 42, 32)
INSERT [dbo].[Log_PatientWholeField] ([patientWholeFieldLog_Id], [patientWholeFieldLog_Date], [patientWholeFieldLog_Operation], [userId], [patientId]) VALUES (9, N'05/01/2015 11:04:36 AM', N'Insert', 43, 33)
INSERT [dbo].[Log_PatientWholeField] ([patientWholeFieldLog_Id], [patientWholeFieldLog_Date], [patientWholeFieldLog_Operation], [userId], [patientId]) VALUES (10, N'09/01/2015 01:46:27 PM', N'Insert', 45, 34)
SET IDENTITY_INSERT [dbo].[Log_PatientWholeField] OFF
/****** Object:  Table [dbo].[Log_PatientIndivField]    Script Date: 01/16/2015 12:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_PatientIndivField](
	[patientIndivFieldLog_Id] [int] IDENTITY(1,1) NOT NULL,
	[patientIndivFieldLog_Date] [varchar](25) NOT NULL,
	[patientIndivFieldLog_Operation] [varchar](10) NOT NULL,
	[patientId] [int] NOT NULL,
	[patientIndivFieldLog_Field] [varchar](50) NOT NULL,
	[patientIndivFieldLog_DataBefore] [varchar](150) NOT NULL,
	[patientIndivFieldLog_DataLater] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[patientIndivFieldLog_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Log_PatientIndivField] ON
INSERT [dbo].[Log_PatientIndivField] ([patientIndivFieldLog_Id], [patientIndivFieldLog_Date], [patientIndivFieldLog_Operation], [patientId], [patientIndivFieldLog_Field], [patientIndivFieldLog_DataBefore], [patientIndivFieldLog_DataLater]) VALUES (1, N'23/12/2014 06:40:59 PM', N'Update', 5, N'patientMiddleName', N'', N'Prasad')
INSERT [dbo].[Log_PatientIndivField] ([patientIndivFieldLog_Id], [patientIndivFieldLog_Date], [patientIndivFieldLog_Operation], [patientId], [patientIndivFieldLog_Field], [patientIndivFieldLog_DataBefore], [patientIndivFieldLog_DataLater]) VALUES (2, N'29/12/2014 03:47:36 PM', N'Update', 5, N'patientContact', N'1111111111', N'1111111110')
INSERT [dbo].[Log_PatientIndivField] ([patientIndivFieldLog_Id], [patientIndivFieldLog_Date], [patientIndivFieldLog_Operation], [patientId], [patientIndivFieldLog_Field], [patientIndivFieldLog_DataBefore], [patientIndivFieldLog_DataLater]) VALUES (3, N'29/12/2014 04:32:39 PM', N'Update', 5, N'patientDob', N'11/11/1990', N'11/11/2015')
INSERT [dbo].[Log_PatientIndivField] ([patientIndivFieldLog_Id], [patientIndivFieldLog_Date], [patientIndivFieldLog_Operation], [patientId], [patientIndivFieldLog_Field], [patientIndivFieldLog_DataBefore], [patientIndivFieldLog_DataLater]) VALUES (4, N'29/12/2014 04:36:01 PM', N'Update', 5, N'patientDob', N'11/11/2015', N'11/11/2011')
INSERT [dbo].[Log_PatientIndivField] ([patientIndivFieldLog_Id], [patientIndivFieldLog_Date], [patientIndivFieldLog_Operation], [patientId], [patientIndivFieldLog_Field], [patientIndivFieldLog_DataBefore], [patientIndivFieldLog_DataLater]) VALUES (5, N'29/12/2014 04:36:30 PM', N'Update', 5, N'patientDob', N'11/11/2011', N'11/11/2011')
INSERT [dbo].[Log_PatientIndivField] ([patientIndivFieldLog_Id], [patientIndivFieldLog_Date], [patientIndivFieldLog_Operation], [patientId], [patientIndivFieldLog_Field], [patientIndivFieldLog_DataBefore], [patientIndivFieldLog_DataLater]) VALUES (6, N'29/12/2014 04:36:48 PM', N'Update', 5, N'patientDob', N'11/11/2011', N'11/11/1990')
INSERT [dbo].[Log_PatientIndivField] ([patientIndivFieldLog_Id], [patientIndivFieldLog_Date], [patientIndivFieldLog_Operation], [patientId], [patientIndivFieldLog_Field], [patientIndivFieldLog_DataBefore], [patientIndivFieldLog_DataLater]) VALUES (7, N'12/01/2015 01:04:29 AM', N'Update', 5, N'patientContact', N'1111111110', N'1111011110')
INSERT [dbo].[Log_PatientIndivField] ([patientIndivFieldLog_Id], [patientIndivFieldLog_Date], [patientIndivFieldLog_Operation], [patientId], [patientIndivFieldLog_Field], [patientIndivFieldLog_DataBefore], [patientIndivFieldLog_DataLater]) VALUES (8, N'12/01/2015 01:04:54 AM', N'Update', 5, N'patientContact', N'1111011110', N'1111011110')
INSERT [dbo].[Log_PatientIndivField] ([patientIndivFieldLog_Id], [patientIndivFieldLog_Date], [patientIndivFieldLog_Operation], [patientId], [patientIndivFieldLog_Field], [patientIndivFieldLog_DataBefore], [patientIndivFieldLog_DataLater]) VALUES (9, N'12/01/2015 01:05:00 AM', N'Update', 5, N'patientContact', N'1111011110', N'1111011110')
SET IDENTITY_INSERT [dbo].[Log_PatientIndivField] OFF
/****** Object:  Table [dbo].[Log_OtherUserWholeFieldWithName]    Script Date: 01/16/2015 12:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_OtherUserWholeFieldWithName](
	[otherUserWholeFieldLogWithName_Id] [int] IDENTITY(1,1) NOT NULL,
	[otherUserWholeFieldLogWithName_Date] [varchar](25) NOT NULL,
	[otherUserWholeFieldLogWithName_Operation] [varchar](10) NOT NULL,
	[userId] [int] NOT NULL,
	[otherUserId] [int] NOT NULL,
	[otherUserFullName] [varchar](65) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[otherUserWholeFieldLogWithName_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Log_OtherUserWholeFieldWithName] ON
INSERT [dbo].[Log_OtherUserWholeFieldWithName] ([otherUserWholeFieldLogWithName_Id], [otherUserWholeFieldLogWithName_Date], [otherUserWholeFieldLogWithName_Operation], [userId], [otherUserId], [otherUserFullName]) VALUES (1, N'02/01/2015 02:24:59 PM', N'Delete', 38, 5, N'test1Other test1Other')
SET IDENTITY_INSERT [dbo].[Log_OtherUserWholeFieldWithName] OFF
/****** Object:  Table [dbo].[Log_OtherUserWholeField]    Script Date: 01/16/2015 12:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_OtherUserWholeField](
	[otherUserWholeFieldLog_Id] [int] IDENTITY(1,1) NOT NULL,
	[otherUserWholeFieldLog_Date] [varchar](25) NOT NULL,
	[otherUserWholeFieldLog_Operation] [varchar](10) NOT NULL,
	[userId] [int] NOT NULL,
	[otherUserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[otherUserWholeFieldLog_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Log_OtherUserWholeField] ON
INSERT [dbo].[Log_OtherUserWholeField] ([otherUserWholeFieldLog_Id], [otherUserWholeFieldLog_Date], [otherUserWholeFieldLog_Operation], [userId], [otherUserId]) VALUES (1, N'29/11/2014 13:34:59 PM', N'Insert', 1, 1)
SET IDENTITY_INSERT [dbo].[Log_OtherUserWholeField] OFF
/****** Object:  Table [dbo].[Log_OtherUserIndivField]    Script Date: 01/16/2015 12:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_OtherUserIndivField](
	[otherUserIndivFieldLog_Id] [int] IDENTITY(1,1) NOT NULL,
	[otherUserIndivFieldLog_Date] [varchar](25) NOT NULL,
	[otherUserIndivFieldLog_Operation] [varchar](10) NOT NULL,
	[otherUserId] [int] NOT NULL,
	[otherUserIndivFieldLog_Field] [varchar](50) NOT NULL,
	[otherUserIndivFieldLog_DataBefore] [varchar](150) NOT NULL,
	[otherUserIndivFieldLog_DataLater] [varchar](150) NOT NULL,
	[tableName] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[otherUserIndivFieldLog_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Log_OtherUserIndivField] ON
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (1, N'23/12/2014 06:55:59 PM', N'Update', 3, N'otherUserMiddleName', N'', N'Devi', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (2, N'27/12/2014 07:30:58 PM', N'Update', 3, N'userFullName', N'Hari Prasad Har', N'Hari Prasad Har', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (3, N'27/12/2014 07:32:44 PM', N'Update', 3, N'userFullName', N'Hari Prasad Hari', N'Hari Prasad Hari', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (4, N'27/12/2014 07:34:56 PM', N'Update', 3, N'userFullName', N'Hari Prasad Hari', N'Hari Prasad Hari', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (5, N'27/12/2014 07:35:05 PM', N'Update', 3, N'userFullName', N'Hari Prasad Hari', N'Hari Prasad Har', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (6, N'27/12/2014 07:35:31 PM', N'Update', 3, N'userFullName', N'Hari Prasad Har', N'Hari Prasad Hari', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (7, N'28/12/2014 11:02:00 AM', N'Update', 3, N'otherUserDob', N'11-11-1989', N'11-12-1989', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (8, N'28/12/2014 11:02:27 AM', N'Update', 3, N'otherUserDob', N'11-12-1989', N'11/12/1989', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (9, N'28/12/2014 11:05:17 AM', N'Update', 3, N'otherUserDob', N'11/12/1989', N'11/11/1989', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (10, N'28/12/2014 11:09:21 AM', N'Update', 3, N'otherUserDob', N'11/11/1989', N'11/12/1989', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (11, N'28/12/2014 11:09:55 AM', N'Update', 3, N'otherUserFullName', N'Hari Prasad Hari', N'Hari Prasad Har', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (12, N'28/12/2014 11:21:59 AM', N'Update', 3, N'otherUserDob', N'11/12/1989', N'11/11/1989', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (13, N'28/12/2014 11:22:56 AM', N'Update', 3, N'otherUserDob', N'11/11/1989', N'11/12/1989', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (14, N'28/12/2014 11:31:25 AM', N'Update', 3, N'otherUserDob', N'11/12/1989', N'11/12/1989', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (15, N'28/12/2014 11:31:35 AM', N'Update', 3, N'otherUserDob', N'11/12/1989', N'11/11/1989', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (16, N'28/12/2014 11:35:09 AM', N'Update', 3, N'otherUserDob', N'11/11/1989', N'11/12/1989', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (17, N'28/12/2014 11:58:18 AM', N'Update', 3, N'otherUserGender', N'M', N'F', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (18, N'28/12/2014 11:59:46 AM', N'Update', 3, N'otherUserGender', N'F', N'M', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (19, N'28/12/2014 12:00:10 PM', N'Update', 3, N'otherUserFullName', N'Hari Prasad Har', N'Hari Prasad Hari', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (20, N'28/12/2014 12:05:12 PM', N'Update', 3, N'otherUserContact', N'3333333333', N'3333333338', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (21, N'28/12/2014 12:05:43 PM', N'Update', 3, N'otherUserContact', N'3333333338', N'3333333333', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (22, N'28/12/2014 12:19:22 PM', N'Update', 3, N'otherUserAddress', N'; Bagmati; Kathmandu; Nepal', N'Vanasthali 16; Bagmati; Kathmandu; Nepal', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (23, N'28/12/2014 12:20:41 PM', N'Update', 3, N'otherUserAddress', N'; Bagmati; Kathmandu; Nepal', N'Vanasthali 16; Bagmati; Kathmandu; Nepal', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (24, N'28/12/2014 12:23:14 PM', N'Update', 3, N'otherUserAddress', N'Vanasthali 16; Bagmati; Kathmandu; Nepal', N'Vanasthali 16, Balaju; Bagmati; Kathmandu; Nepal', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (25, N'28/12/2014 12:23:37 PM', N'Update', 3, N'otherUserAddress', N'Vanasthali 16, Balaju; Bagmati; Kathmandu; Nepal', N'; Bagmati; Kathmandu; Nepal', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (26, N'28/12/2014 12:24:27 PM', N'Update', 3, N'otherUserAddress', N'; Bagmati; Kathmandu; Nepal', N'h; Bagmati; Kathmandu; Nepal', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (27, N'28/12/2014 12:24:56 PM', N'Update', 3, N'otherUserAddress', N'h; Bagmati; Kathmandu; Nepal', N'; Bagmati; Kathmandu; Nepal', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (28, N'28/12/2014 12:39:19 PM', N'Update', 3, N'otherUserSecContact', N'', N'1111888822', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (29, N'28/12/2014 12:43:30 PM', N'Update', 3, N'otherUserFullName', N'Hari Prasad Hari', N'Hari Prasad Har', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (30, N'28/12/2014 12:44:42 PM', N'Update', 3, N'otherUserFullName', N'Hari Prasad Har', N'Hari Prasad Hari', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (31, N'28/12/2014 12:45:39 PM', N'Update', 3, N'otherUserFullName', N'Hari Prasad Hari', N'Hari Prasad Har', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (32, N'28/12/2014 12:47:44 PM', N'Update', 3, N'otherUserFullName', N'Hari Prasad Har', N'Hari Prasad Har', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (33, N'28/12/2014 12:47:51 PM', N'Update', 3, N'otherUserFullName', N'Hari Prasad Har', N'Hari Prasad Hari', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (34, N'28/12/2014 12:49:11 PM', N'Update', 3, N'otherUserFullName', N'Hari Prasad Hari', N'Hari Prasad Har', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (35, N'28/12/2014 12:49:18 PM', N'Update', 3, N'otherUserFullName', N'Hari Prasad Har', N'Hari Prasad Hari', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (36, N'28/12/2014 12:49:41 PM', N'Update', 3, N'otherUserFullName', N'Hari Prasad Hari', N'Hari Prasad Hari', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (37, N'28/12/2014 01:01:17 PM', N'Update', 3, N'otherUserDob', N'11/12/1989', N'11/11/1989', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (38, N'28/12/2014 01:01:24 PM', N'Update', 3, N'otherUserDob', N'11/11/1989', N'11/12/1989', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (39, N'28/12/2014 01:03:54 PM', N'Update', 3, N'otherUserGender', N'M', N'F', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (40, N'28/12/2014 01:04:00 PM', N'Update', 3, N'otherUserGender', N'F', N'M', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (41, N'28/12/2014 01:06:06 PM', N'Update', 3, N'otherUserContact', N'3333333333', N'3333333334', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (42, N'28/12/2014 01:06:12 PM', N'Update', 3, N'otherUserContact', N'3333333334', N'3333333333', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (43, N'28/12/2014 01:10:22 PM', N'Update', 3, N'otherUserAddress', N'; Bagmati; Kathmandu; Nepal', N'h; Bagmati; Kathmandu; Nepal', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (44, N'28/12/2014 01:10:33 PM', N'Update', 3, N'otherUserAddress', N'h; Bagmati; Kathmandu; Nepal', N'; Bagmati; Kathmandu; Nepal', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (45, N'28/12/2014 01:14:48 PM', N'Update', 3, N'otherUserSecContact', N'1111888822', N'1111888821', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (46, N'28/12/2014 01:14:56 PM', N'Update', 3, N'otherUserSecContact', N'1111888821', N'1111888822', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (47, N'28/12/2014 01:25:00 PM', N'Update', 3, N'otherUserDob', N'11/12/1989', N'11/11/1989', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (48, N'28/12/2014 01:29:58 PM', N'Update', 3, N'otherUserFullName', N'Hari Prasad Hari', N'Hari Prasad Har', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (49, N'28/12/2014 01:30:23 PM', N'Update', 3, N'otherUserFullName', N'Hari Prasad Har', N'Hari Prasad Hari', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (50, N'28/12/2014 01:31:22 PM', N'Update', 3, N'otherUserSecContact', N'1111888822', N'1111888821', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (51, N'28/12/2014 01:32:51 PM', N'Update', 3, N'otherUserSecContact', N'1111888821', N'1111888822', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (52, N'28/12/2014 01:39:05 PM', N'Update', 3, N'otherUserFullName', N'Hari Prasad Hari', N'Hari Prasad Hari', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (53, N'28/12/2014 01:39:27 PM', N'Update', 3, N'otherUserFullName', N'Hari Prasad Hari', N'Hari Prasad Hari', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (54, N'28/12/2014 02:03:35 PM', N'Update', 3, N'otherUserFullName', N'Hari Prasad Hari', N'Hari Prasad Hari', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (55, N'28/12/2014 02:28:12 PM', N'Update', 3, N'otherUserFullName', N'Hari Prasad Hari', N'Hari Prasad Hari', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (56, N'28/12/2014 06:37:53 PM', N'Update', 3, N'otherUserFullName', N'Hari Prasad Hari', N'Hari Prasad Hari', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (57, N'28/12/2014 07:09:22 PM', N'Update', 3, N'otherUserSecContact', N'1111888822', N'', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (58, N'28/12/2014 07:10:34 PM', N'Update', 3, N'otherUserSecContact', N'', N'1212121222', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (59, N'28/12/2014 08:57:57 PM', N'Update', 3, N'otherUserFullName', N'Hari Prasad Hari', N'Hari Prasad Har', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (60, N'28/12/2014 09:01:03 PM', N'Update', 3, N'otherUserFullName', N'Hari Prasad Har', N'Hari Prasad Hari', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (61, N'29/12/2014 08:31:11 AM', N'Update', 3, N'otherUserFullName', N'Hari Prasad Hari', N' Prasad Hari', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (62, N'29/12/2014 08:31:41 AM', N'Update', 3, N'otherUserFullName', N' Prasad Hari', N'Hari Prasad Hari', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (63, N'29/12/2014 08:32:52 AM', N'Update', 3, N'otherUserFullName', N'Hari Prasad Hari', N' Prasad Hari', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (64, N'29/12/2014 08:34:29 AM', N'Update', 3, N'otherUserFullName', N' Prasad Hari', N'Hari Prasad Hari', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (65, N'29/12/2014 08:36:38 AM', N'Update', 3, N'otherUserFullName', N'Hari Prasad Hari', N'Hari Prasad Hari', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (66, N'29/12/2014 08:37:15 AM', N'Update', 3, N'otherUserFullName', N'Hari Prasad Hari', N'Hari Prasad Hari', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (67, N'03/01/2015 03:55:09 PM', N'Update', 3, N'otherUserSecContact', N'1212121222', N'1212121221', N'Log_OtherUserIndivField')
INSERT [dbo].[Log_OtherUserIndivField] ([otherUserIndivFieldLog_Id], [otherUserIndivFieldLog_Date], [otherUserIndivFieldLog_Operation], [otherUserId], [otherUserIndivFieldLog_Field], [otherUserIndivFieldLog_DataBefore], [otherUserIndivFieldLog_DataLater], [tableName]) VALUES (68, N'03/01/2015 04:42:55 PM', N'Update', 3, N'otherUserFullName', N'Hari Prasad Hari', N'Hari Prasad Harii', N'Log_OtherUserIndivField')
SET IDENTITY_INSERT [dbo].[Log_OtherUserIndivField] OFF
/****** Object:  Table [dbo].[Log_HospitalWholeFieldWithName]    Script Date: 01/16/2015 12:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_HospitalWholeFieldWithName](
	[hospitalWholeFieldLogWithName_Id] [int] IDENTITY(1,1) NOT NULL,
	[hospitalWholeFieldLogWithName_Date] [varchar](25) NOT NULL,
	[hospitalWholeFieldLogWithName_Operation] [varchar](10) NOT NULL,
	[hospitalId] [int] NOT NULL,
	[hospitalFullName] [varchar](50) NOT NULL,
	[tableName] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[hospitalWholeFieldLogWithName_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Log_HospitalWholeFieldWithName] ON
INSERT [dbo].[Log_HospitalWholeFieldWithName] ([hospitalWholeFieldLogWithName_Id], [hospitalWholeFieldLogWithName_Date], [hospitalWholeFieldLogWithName_Operation], [hospitalId], [hospitalFullName], [tableName]) VALUES (1, N'02/01/2015 02:30:59 PM', N'Delete', 3, N'hospTest', N'Log_HospitalWholeFieldWithName')
INSERT [dbo].[Log_HospitalWholeFieldWithName] ([hospitalWholeFieldLogWithName_Id], [hospitalWholeFieldLogWithName_Date], [hospitalWholeFieldLogWithName_Operation], [hospitalId], [hospitalFullName], [tableName]) VALUES (2, N'03/01/2015 10:45:23 PM', N'Delete', 8, N'hospTest5', N'Log_HospitalWholeFieldWithName')
INSERT [dbo].[Log_HospitalWholeFieldWithName] ([hospitalWholeFieldLogWithName_Id], [hospitalWholeFieldLogWithName_Date], [hospitalWholeFieldLogWithName_Operation], [hospitalId], [hospitalFullName], [tableName]) VALUES (3, N'03/01/2015 10:48:02 PM', N'Delete', 7, N'hospTest3_Edit_testing', N'Log_HospitalWholeFieldWithName')
INSERT [dbo].[Log_HospitalWholeFieldWithName] ([hospitalWholeFieldLogWithName_Id], [hospitalWholeFieldLogWithName_Date], [hospitalWholeFieldLogWithName_Operation], [hospitalId], [hospitalFullName], [tableName]) VALUES (4, N'14/01/2015 08:12:12 PM', N'Delete', 15, N'testing', NULL)
INSERT [dbo].[Log_HospitalWholeFieldWithName] ([hospitalWholeFieldLogWithName_Id], [hospitalWholeFieldLogWithName_Date], [hospitalWholeFieldLogWithName_Operation], [hospitalId], [hospitalFullName], [tableName]) VALUES (5, N'14/01/2015 08:25:13 PM', N'Delete', 16, N'testing a', NULL)
INSERT [dbo].[Log_HospitalWholeFieldWithName] ([hospitalWholeFieldLogWithName_Id], [hospitalWholeFieldLogWithName_Date], [hospitalWholeFieldLogWithName_Operation], [hospitalId], [hospitalFullName], [tableName]) VALUES (6, N'14/01/2015 09:01:42 PM', N'Delete', 17, N'testingB', NULL)
SET IDENTITY_INSERT [dbo].[Log_HospitalWholeFieldWithName] OFF
/****** Object:  Table [dbo].[Log_HospitalWholeField]    Script Date: 01/16/2015 12:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_HospitalWholeField](
	[hospitalWholeFieldLog_Id] [int] IDENTITY(1,1) NOT NULL,
	[hospitalWholeFieldLog_Date] [varchar](25) NOT NULL,
	[hospitalWholeFieldLog_Operation] [varchar](10) NOT NULL,
	[hospitalId] [int] NOT NULL,
	[tableName] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[hospitalWholeFieldLog_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Log_HospitalWholeField] ON
INSERT [dbo].[Log_HospitalWholeField] ([hospitalWholeFieldLog_Id], [hospitalWholeFieldLog_Date], [hospitalWholeFieldLog_Operation], [hospitalId], [tableName]) VALUES (1, N'29/11/2014 14:41:59 PM', N'Insert', 1, N'Log_HospitalWholeField')
INSERT [dbo].[Log_HospitalWholeField] ([hospitalWholeFieldLog_Id], [hospitalWholeFieldLog_Date], [hospitalWholeFieldLog_Operation], [hospitalId], [tableName]) VALUES (2, N'29/12/2014 08:54:01 PM', N'Insert', 5, N'Log_HospitalWholeField')
INSERT [dbo].[Log_HospitalWholeField] ([hospitalWholeFieldLog_Id], [hospitalWholeFieldLog_Date], [hospitalWholeFieldLog_Operation], [hospitalId], [tableName]) VALUES (3, N'29/12/2014 08:59:16 PM', N'Insert', 6, N'Log_HospitalWholeField')
INSERT [dbo].[Log_HospitalWholeField] ([hospitalWholeFieldLog_Id], [hospitalWholeFieldLog_Date], [hospitalWholeFieldLog_Operation], [hospitalId], [tableName]) VALUES (4, N'29/12/2014 09:32:52 PM', N'Insert', 7, N'Log_HospitalWholeField')
INSERT [dbo].[Log_HospitalWholeField] ([hospitalWholeFieldLog_Id], [hospitalWholeFieldLog_Date], [hospitalWholeFieldLog_Operation], [hospitalId], [tableName]) VALUES (5, N'29/12/2014 09:39:27 PM', N'Insert', 8, N'Log_HospitalWholeField')
INSERT [dbo].[Log_HospitalWholeField] ([hospitalWholeFieldLog_Id], [hospitalWholeFieldLog_Date], [hospitalWholeFieldLog_Operation], [hospitalId], [tableName]) VALUES (6, N'29/12/2014 09:44:35 PM', N'Insert', 9, N'Log_HospitalWholeField')
INSERT [dbo].[Log_HospitalWholeField] ([hospitalWholeFieldLog_Id], [hospitalWholeFieldLog_Date], [hospitalWholeFieldLog_Operation], [hospitalId], [tableName]) VALUES (7, N'30/12/2014 03:53:48 PM', N'Insert', 11, N'Log_HospitalWholeField')
INSERT [dbo].[Log_HospitalWholeField] ([hospitalWholeFieldLog_Id], [hospitalWholeFieldLog_Date], [hospitalWholeFieldLog_Operation], [hospitalId], [tableName]) VALUES (8, N'03/01/2015 11:26:48 AM', N'Insert', 13, N'Log_HospitalWholeField')
INSERT [dbo].[Log_HospitalWholeField] ([hospitalWholeFieldLog_Id], [hospitalWholeFieldLog_Date], [hospitalWholeFieldLog_Operation], [hospitalId], [tableName]) VALUES (9, N'04/01/2015 12:20:19 PM', N'Insert', 14, N'Log_HospitalWholeField')
INSERT [dbo].[Log_HospitalWholeField] ([hospitalWholeFieldLog_Id], [hospitalWholeFieldLog_Date], [hospitalWholeFieldLog_Operation], [hospitalId], [tableName]) VALUES (10, N'14/01/2015 08:12:03 PM', N'Insert', 15, NULL)
INSERT [dbo].[Log_HospitalWholeField] ([hospitalWholeFieldLog_Id], [hospitalWholeFieldLog_Date], [hospitalWholeFieldLog_Operation], [hospitalId], [tableName]) VALUES (11, N'14/01/2015 08:24:21 PM', N'Insert', 16, NULL)
INSERT [dbo].[Log_HospitalWholeField] ([hospitalWholeFieldLog_Id], [hospitalWholeFieldLog_Date], [hospitalWholeFieldLog_Operation], [hospitalId], [tableName]) VALUES (12, N'14/01/2015 09:00:31 PM', N'Insert', 17, NULL)
SET IDENTITY_INSERT [dbo].[Log_HospitalWholeField] OFF
/****** Object:  Table [dbo].[Log_HospitalIndivField]    Script Date: 01/16/2015 12:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_HospitalIndivField](
	[hospitalIndivFieldLog_Id] [int] IDENTITY(1,1) NOT NULL,
	[hospitalIndivFieldLog_Date] [varchar](25) NOT NULL,
	[hospitalIndivFieldLog_Operation] [varchar](10) NOT NULL,
	[hospitalId] [int] NOT NULL,
	[hospitalIndivFieldLog_Field] [varchar](50) NOT NULL,
	[hospitalIndivFieldLog_DataBefore] [varchar](300) NOT NULL,
	[hospitalIndivFieldLog_DataLater] [varchar](300) NOT NULL,
	[tableName] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[hospitalIndivFieldLog_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Log_HospitalIndivField] ON
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (1, N'23/12/2014 07:47:59 PM', N'Update', 1, N'hospitalHouseAdd', N'', N'near to NAC', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (2, N'03/01/2015 02:24:49 PM', N'Update', 13, N'hospitalFullName', N'hospTest8', N'hospTest8_EditTest', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (3, N'03/01/2015 02:35:32 PM', N'Update', 13, N'hospitalFullName', N'hospTest8_EditTest', N'hospTest8_EditTest', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (4, N'03/01/2015 02:35:39 PM', N'Update', 13, N'hospitalFullName', N'hospTest8_EditTest', N'hospTest8_EditTest1', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (5, N'03/01/2015 02:42:55 PM', N'Update', 13, N'hospitalType', N'Primary Health Care Centre', N'Health Post', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (6, N'03/01/2015 02:44:32 PM', N'Update', 13, N'hospitalType', N'Primary Health Care Centre', N'Health Post', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (7, N'03/01/2015 02:45:02 PM', N'Update', 13, N'hospitalType', N'Primary Health Care Centre', N'Health Post', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (8, N'03/01/2015 02:45:31 PM', N'Update', 13, N'hospitalType', N'Primary Health Care Centre', N'Primary Health Care Centre', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (9, N'03/01/2015 02:45:51 PM', N'Update', 13, N'hospitalFullName', N'hospTest8_EditTest1', N'hospTest8_EditTest1', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (10, N'03/01/2015 02:54:03 PM', N'Update', 13, N'hospitalDescription', N'hospTest8', N'hospTest8_EditTesting', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (11, N'03/01/2015 03:23:09 PM', N'Update', 11, N'hospitalDescription', N'&nbsp;', N'EditingTesting', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (12, N'03/01/2015 03:45:17 PM', N'Update', 6, N'hospitalDescription', N'&nbsp;', N'Kanti', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (13, N'03/01/2015 03:47:49 PM', N'Update', 6, N'hospitalDescription', N'Kanti', N'Kanti Children', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (14, N'03/01/2015 03:49:44 PM', N'Update', 6, N'hospitalDescription', N'Kanti Children', N'Kanti Children Hospital', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (15, N'03/01/2015 03:51:53 PM', N'Update', 6, N'hospitalDescription', N'Kanti Children Hospital', N'Kanti', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (16, N'03/01/2015 03:53:21 PM', N'Update', 6, N'hospitalDescription', N'Kanti', N'Kanti Children Hospital', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (17, N'03/01/2015 03:58:52 PM', N'Update', 6, N'hospitalDescription', N'Kanti Children Hospital', N'Kanti Children', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (18, N'03/01/2015 03:59:19 PM', N'Update', 6, N'hospitalDescription', N'Kanti Children', N'Kanti Children Hospital', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (19, N'03/01/2015 04:01:07 PM', N'Update', 6, N'hospitalDescription', N'Kanti Children Hospital', N'Kanti Children', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (20, N'03/01/2015 04:02:59 PM', N'Update', 6, N'hospitalFullName', N'hospTest2', N'Kanti Children Hospital', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (21, N'03/01/2015 04:03:13 PM', N'Update', 6, N'hospitalFullName', N'Kanti Children Hospital', N'Kanti Children Hospital', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (22, N'03/01/2015 04:03:48 PM', N'Update', 6, N'hospitalType', N'Health Post', N'Public Hospital', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (23, N'03/01/2015 04:04:12 PM', N'Update', 6, N'hospitalAddress', N'; hospTest2; hospTest2', N'; Bagmati; Kathmandu', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (24, N'03/01/2015 04:09:20 PM', N'Update', 6, N'hospitalDescription', N'Kanti Children', N'Kanti Children Hospital', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (25, N'03/01/2015 04:11:44 PM', N'Update', 6, N'hospitalDescription', N'Kanti Children Hospital', N'Kanti Children', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (26, N'03/01/2015 04:13:49 PM', N'Update', 6, N'hospitalDescription', N'Kanti Children', N'Kanti Children Hospital', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (27, N'03/01/2015 04:16:09 PM', N'Update', 6, N'hospitalDescription', N'Kanti Children Hospital', N'Kanti', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (28, N'03/01/2015 04:16:18 PM', N'Update', 6, N'hospitalDescription', N'Kanti Children Hospital', N'Kanti Children Hospital', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (29, N'03/01/2015 04:16:27 PM', N'Update', 6, N'hospitalDescription', N'Kanti Children Hospital', N'Kanti', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (30, N'03/01/2015 04:21:34 PM', N'Update', 6, N'hospitalDescription', N'Kanti', N'Kanti Children Hospital', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (31, N'03/01/2015 04:22:13 PM', N'Update', 6, N'hospitalDescription', N'Kanti Children Hospital', N'Kanti', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (32, N'03/01/2015 04:23:23 PM', N'Update', 6, N'hospitalDescription', N'Kanti', N'Kanti Children Hospital', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (33, N'03/01/2015 04:24:13 PM', N'Update', 6, N'hospitalDescription', N'Kanti Children Hospital', N'Kanti', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (34, N'03/01/2015 04:24:25 PM', N'Update', 6, N'hospitalDescription', N'Kanti Children Hospital', N'Kanti Children Hospital', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (35, N'03/01/2015 04:24:33 PM', N'Update', 6, N'hospitalDescription', N'Kanti Children Hospital', N'Kanti', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (36, N'03/01/2015 04:25:01 PM', N'Update', 5, N'hospitalDescription', N'&nbsp;', N'edit testing', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (37, N'03/01/2015 04:26:12 PM', N'Update', 5, N'hospitalDescription', N'edit testing', N'', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (38, N'03/01/2015 04:26:59 PM', N'Update', 5, N'hospitalDescription', N'&nbsp;', N'edit testing', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (39, N'03/01/2015 04:42:29 PM', N'Update', 7, N'hospitalAddress', N'; hospTest3; hospTest3', N'; hospTest3_Edit testing; hospTest3', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (40, N'03/01/2015 04:47:54 PM', N'Update', 7, N'hospitalFullName', N'hospTest3', N'hospTest3_Edit_testing', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (41, N'03/01/2015 04:52:32 PM', N'Update', 6, N'hospitalDescription', N'Kanti', N'Kanti Children Hospital', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (42, N'03/01/2015 04:53:59 PM', N'Update', 8, N'hospitalType', N'Sub Health Post', N'Female Community Health  Service', N'Log_HospitalIndivField')
INSERT [dbo].[Log_HospitalIndivField] ([hospitalIndivFieldLog_Id], [hospitalIndivFieldLog_Date], [hospitalIndivFieldLog_Operation], [hospitalId], [hospitalIndivFieldLog_Field], [hospitalIndivFieldLog_DataBefore], [hospitalIndivFieldLog_DataLater], [tableName]) VALUES (43, N'05/01/2015 09:27:49 PM', N'Update', 14, N'hospitalDescription', N'hospTest9', N'hospTest9_testingLogNow', NULL)
SET IDENTITY_INSERT [dbo].[Log_HospitalIndivField] OFF
/****** Object:  Table [dbo].[Log_FeedbackWholeFieldWithDateToFrom]    Script Date: 01/16/2015 12:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_FeedbackWholeFieldWithDateToFrom](
	[feedbackWholeFieldLogWithDateToFrom_Id] [int] IDENTITY(1,1) NOT NULL,
	[feedbackWholeFieldLogWithDateToFrom_Date] [varchar](25) NOT NULL,
	[feedbackWholeFieldLogWithDateToFrom_Operation] [varchar](10) NOT NULL,
	[feedbackId] [int] NOT NULL,
	[feedbackDate] [varchar](25) NOT NULL,
	[feedbackByUserId] [int] NOT NULL,
	[feedbackToUserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[feedbackWholeFieldLogWithDateToFrom_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Log_FeedbackWholeFieldWithDateToFrom] ON
INSERT [dbo].[Log_FeedbackWholeFieldWithDateToFrom] ([feedbackWholeFieldLogWithDateToFrom_Id], [feedbackWholeFieldLogWithDateToFrom_Date], [feedbackWholeFieldLogWithDateToFrom_Operation], [feedbackId], [feedbackDate], [feedbackByUserId], [feedbackToUserId]) VALUES (1, N'02/01/2015 02:41:59 PM', N'Delete', 6, N'30/12/2014 07:53:14 PM', 3, 9)
SET IDENTITY_INSERT [dbo].[Log_FeedbackWholeFieldWithDateToFrom] OFF
/****** Object:  Table [dbo].[Log_FeedbackWholeField]    Script Date: 01/16/2015 12:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_FeedbackWholeField](
	[feedbackWholeFieldLog_Id] [int] IDENTITY(1,1) NOT NULL,
	[feedbackWholeFieldLog_Date] [varchar](25) NOT NULL,
	[feedbackWholeFieldLog_Operation] [varchar](10) NOT NULL,
	[feedbackId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[feedbackWholeFieldLog_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Log_FeedbackWholeField] ON
INSERT [dbo].[Log_FeedbackWholeField] ([feedbackWholeFieldLog_Id], [feedbackWholeFieldLog_Date], [feedbackWholeFieldLog_Operation], [feedbackId]) VALUES (1, N'29/11/2014 18:08:59 PM', N'Insert', 2)
INSERT [dbo].[Log_FeedbackWholeField] ([feedbackWholeFieldLog_Id], [feedbackWholeFieldLog_Date], [feedbackWholeFieldLog_Operation], [feedbackId]) VALUES (2, N'30/12/2014 07:12:43 PM', N'Insert', 3)
INSERT [dbo].[Log_FeedbackWholeField] ([feedbackWholeFieldLog_Id], [feedbackWholeFieldLog_Date], [feedbackWholeFieldLog_Operation], [feedbackId]) VALUES (3, N'30/12/2014 07:23:27 PM', N'Insert', 4)
INSERT [dbo].[Log_FeedbackWholeField] ([feedbackWholeFieldLog_Id], [feedbackWholeFieldLog_Date], [feedbackWholeFieldLog_Operation], [feedbackId]) VALUES (4, N'30/12/2014 07:36:31 PM', N'Insert', 5)
INSERT [dbo].[Log_FeedbackWholeField] ([feedbackWholeFieldLog_Id], [feedbackWholeFieldLog_Date], [feedbackWholeFieldLog_Operation], [feedbackId]) VALUES (5, N'30/12/2014 07:53:14 PM', N'Insert', 6)
INSERT [dbo].[Log_FeedbackWholeField] ([feedbackWholeFieldLog_Id], [feedbackWholeFieldLog_Date], [feedbackWholeFieldLog_Operation], [feedbackId]) VALUES (6, N'30/12/2014 08:01:33 PM', N'Insert', 7)
INSERT [dbo].[Log_FeedbackWholeField] ([feedbackWholeFieldLog_Id], [feedbackWholeFieldLog_Date], [feedbackWholeFieldLog_Operation], [feedbackId]) VALUES (7, N'31/12/2014 10:17:29 AM', N'Insert', 8)
INSERT [dbo].[Log_FeedbackWholeField] ([feedbackWholeFieldLog_Id], [feedbackWholeFieldLog_Date], [feedbackWholeFieldLog_Operation], [feedbackId]) VALUES (8, N'31/12/2014 10:24:25 AM', N'Insert', 9)
INSERT [dbo].[Log_FeedbackWholeField] ([feedbackWholeFieldLog_Id], [feedbackWholeFieldLog_Date], [feedbackWholeFieldLog_Operation], [feedbackId]) VALUES (9, N'31/12/2014 10:25:44 AM', N'Insert', 10)
INSERT [dbo].[Log_FeedbackWholeField] ([feedbackWholeFieldLog_Id], [feedbackWholeFieldLog_Date], [feedbackWholeFieldLog_Operation], [feedbackId]) VALUES (10, N'31/12/2014 10:40:47 AM', N'Insert', 11)
INSERT [dbo].[Log_FeedbackWholeField] ([feedbackWholeFieldLog_Id], [feedbackWholeFieldLog_Date], [feedbackWholeFieldLog_Operation], [feedbackId]) VALUES (11, N'31/12/2014 10:43:40 AM', N'Insert', 12)
INSERT [dbo].[Log_FeedbackWholeField] ([feedbackWholeFieldLog_Id], [feedbackWholeFieldLog_Date], [feedbackWholeFieldLog_Operation], [feedbackId]) VALUES (12, N'10/01/2015 05:49:59 PM', N'Insert', 13)
INSERT [dbo].[Log_FeedbackWholeField] ([feedbackWholeFieldLog_Id], [feedbackWholeFieldLog_Date], [feedbackWholeFieldLog_Operation], [feedbackId]) VALUES (13, N'10/01/2015 05:53:55 PM', N'Insert', 14)
INSERT [dbo].[Log_FeedbackWholeField] ([feedbackWholeFieldLog_Id], [feedbackWholeFieldLog_Date], [feedbackWholeFieldLog_Operation], [feedbackId]) VALUES (14, N'10/01/2015 06:13:32 PM', N'Insert', 15)
INSERT [dbo].[Log_FeedbackWholeField] ([feedbackWholeFieldLog_Id], [feedbackWholeFieldLog_Date], [feedbackWholeFieldLog_Operation], [feedbackId]) VALUES (15, N'10/01/2015 09:41:08 PM', N'Insert', 16)
INSERT [dbo].[Log_FeedbackWholeField] ([feedbackWholeFieldLog_Id], [feedbackWholeFieldLog_Date], [feedbackWholeFieldLog_Operation], [feedbackId]) VALUES (16, N'12/01/2015 08:09:36 PM', N'Insert', 17)
SET IDENTITY_INSERT [dbo].[Log_FeedbackWholeField] OFF
/****** Object:  Table [dbo].[Log_FeedbackIndivField]    Script Date: 01/16/2015 12:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_FeedbackIndivField](
	[feedbackIndivFieldLog_Id] [int] IDENTITY(1,1) NOT NULL,
	[feedbackIndivFieldLog_Date] [varchar](25) NOT NULL,
	[feedbackIndivFieldLog_Operation] [varchar](10) NOT NULL,
	[feedbackId] [int] NOT NULL,
	[feedbackIndivFieldLog_Field] [varchar](50) NOT NULL,
	[feedbackIndivFieldLog_DataBefore] [varchar](400) NOT NULL,
	[feedbackIndivFieldLog_DataLater] [varchar](400) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[feedbackIndivFieldLog_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Log_FeedbackIndivField] ON
INSERT [dbo].[Log_FeedbackIndivField] ([feedbackIndivFieldLog_Id], [feedbackIndivFieldLog_Date], [feedbackIndivFieldLog_Operation], [feedbackId], [feedbackIndivFieldLog_Field], [feedbackIndivFieldLog_DataBefore], [feedbackIndivFieldLog_DataLater]) VALUES (1, N'23/12/2014 07:54:59 PM', N'Update', 2, N'feedbackSubject', N'Appointment Date and Time', N'Appointment: Date and Time')
SET IDENTITY_INSERT [dbo].[Log_FeedbackIndivField] OFF
/****** Object:  Table [dbo].[Log_EntryUserWholeFieldWithName]    Script Date: 01/16/2015 12:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_EntryUserWholeFieldWithName](
	[entryUserWholeFieldLogWithName_Id] [int] IDENTITY(1,1) NOT NULL,
	[entryUserWholeFieldLogWithName_Date] [varchar](25) NOT NULL,
	[entryUserWholeFieldLogWithName_Operation] [varchar](10) NOT NULL,
	[userId] [int] NOT NULL,
	[entryUserId] [int] NOT NULL,
	[entryUserFullName] [varchar](65) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[entryUserWholeFieldLogWithName_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Log_EntryUserWholeFieldWithName] ON
INSERT [dbo].[Log_EntryUserWholeFieldWithName] ([entryUserWholeFieldLogWithName_Id], [entryUserWholeFieldLogWithName_Date], [entryUserWholeFieldLogWithName_Operation], [userId], [entryUserId], [entryUserFullName]) VALUES (1, N'02/01/2015 02:15:59 PM', N'Delete', 39, 2, N'testEntry testEntry')
SET IDENTITY_INSERT [dbo].[Log_EntryUserWholeFieldWithName] OFF
/****** Object:  Table [dbo].[Log_EntryUserWholeField]    Script Date: 01/16/2015 12:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_EntryUserWholeField](
	[entryUserWholeFieldLog_Id] [int] IDENTITY(1,1) NOT NULL,
	[entryUserWholeFieldLog_Date] [varchar](25) NOT NULL,
	[entryUserWholeFieldLog_Operation] [varchar](10) NOT NULL,
	[userId] [int] NOT NULL,
	[entryUserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[entryUserWholeFieldLog_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Log_EntryUserWholeField] ON
INSERT [dbo].[Log_EntryUserWholeField] ([entryUserWholeFieldLog_Id], [entryUserWholeFieldLog_Date], [entryUserWholeFieldLog_Operation], [userId], [entryUserId]) VALUES (1, N'29/11/2014 15:42:59 PM', N'Insert', 4, 1)
INSERT [dbo].[Log_EntryUserWholeField] ([entryUserWholeFieldLog_Id], [entryUserWholeFieldLog_Date], [entryUserWholeFieldLog_Operation], [userId], [entryUserId]) VALUES (2, N'09/01/2015 01:54:15 PM', N'Insert', 46, 3)
INSERT [dbo].[Log_EntryUserWholeField] ([entryUserWholeFieldLog_Id], [entryUserWholeFieldLog_Date], [entryUserWholeFieldLog_Operation], [userId], [entryUserId]) VALUES (3, N'09/01/2015 02:01:30 PM', N'Insert', 47, 4)
INSERT [dbo].[Log_EntryUserWholeField] ([entryUserWholeFieldLog_Id], [entryUserWholeFieldLog_Date], [entryUserWholeFieldLog_Operation], [userId], [entryUserId]) VALUES (4, N'09/01/2015 02:13:30 PM', N'Insert', 48, 5)
INSERT [dbo].[Log_EntryUserWholeField] ([entryUserWholeFieldLog_Id], [entryUserWholeFieldLog_Date], [entryUserWholeFieldLog_Operation], [userId], [entryUserId]) VALUES (5, N'09/01/2015 02:20:17 PM', N'Insert', 49, 6)
SET IDENTITY_INSERT [dbo].[Log_EntryUserWholeField] OFF
/****** Object:  Table [dbo].[Log_EntryUserIndivField]    Script Date: 01/16/2015 12:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_EntryUserIndivField](
	[entryUserIndivFieldLog_Id] [int] IDENTITY(1,1) NOT NULL,
	[entryUserIndivFieldLog_Date] [varchar](25) NOT NULL,
	[entryUserIndivFieldLog_Operation] [varchar](10) NOT NULL,
	[entryUserId] [int] NOT NULL,
	[entryUserIndivFieldLog_Field] [varchar](50) NOT NULL,
	[entryUserIndivFieldLog_DataBefore] [varchar](150) NOT NULL,
	[entryUserIndivFieldLog_DataLater] [varchar](150) NOT NULL,
	[entryUserIndivFieldLog_UpdatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[entryUserIndivFieldLog_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Log_EntryUserIndivField] ON
INSERT [dbo].[Log_EntryUserIndivField] ([entryUserIndivFieldLog_Id], [entryUserIndivFieldLog_Date], [entryUserIndivFieldLog_Operation], [entryUserId], [entryUserIndivFieldLog_Field], [entryUserIndivFieldLog_DataBefore], [entryUserIndivFieldLog_DataLater], [entryUserIndivFieldLog_UpdatedBy]) VALUES (1, N'23/12/2014 06:51:59 PM', N'Update', 4, N'entryUserMiddleName', N'', N'Prasad', 4)
INSERT [dbo].[Log_EntryUserIndivField] ([entryUserIndivFieldLog_Id], [entryUserIndivFieldLog_Date], [entryUserIndivFieldLog_Operation], [entryUserId], [entryUserIndivFieldLog_Field], [entryUserIndivFieldLog_DataBefore], [entryUserIndivFieldLog_DataLater], [entryUserIndivFieldLog_UpdatedBy]) VALUES (2, N'29/12/2014 12:56:36 PM', N'Update', 4, N'entryUserDob', N'11-11-1991', N'11/11/1991', 4)
INSERT [dbo].[Log_EntryUserIndivField] ([entryUserIndivFieldLog_Id], [entryUserIndivFieldLog_Date], [entryUserIndivFieldLog_Operation], [entryUserId], [entryUserIndivFieldLog_Field], [entryUserIndivFieldLog_DataBefore], [entryUserIndivFieldLog_DataLater], [entryUserIndivFieldLog_UpdatedBy]) VALUES (3, N'29/12/2014 01:13:56 PM', N'Update', 4, N'entryUserContact', N'2222222222', N'2222222222', 4)
INSERT [dbo].[Log_EntryUserIndivField] ([entryUserIndivFieldLog_Id], [entryUserIndivFieldLog_Date], [entryUserIndivFieldLog_Operation], [entryUserId], [entryUserIndivFieldLog_Field], [entryUserIndivFieldLog_DataBefore], [entryUserIndivFieldLog_DataLater], [entryUserIndivFieldLog_UpdatedBy]) VALUES (4, N'29/12/2014 02:12:09 PM', N'Update', 4, N'entryUserDesignation', N'Kidney MD specialist', N'Kidney MD specialist1', 4)
INSERT [dbo].[Log_EntryUserIndivField] ([entryUserIndivFieldLog_Id], [entryUserIndivFieldLog_Date], [entryUserIndivFieldLog_Operation], [entryUserId], [entryUserIndivFieldLog_Field], [entryUserIndivFieldLog_DataBefore], [entryUserIndivFieldLog_DataLater], [entryUserIndivFieldLog_UpdatedBy]) VALUES (5, N'29/12/2014 02:13:37 PM', N'Update', 4, N'entryUserDesignation', N'Kidney MD specialist1', N'Kidney MD specialist', 4)
INSERT [dbo].[Log_EntryUserIndivField] ([entryUserIndivFieldLog_Id], [entryUserIndivFieldLog_Date], [entryUserIndivFieldLog_Operation], [entryUserId], [entryUserIndivFieldLog_Field], [entryUserIndivFieldLog_DataBefore], [entryUserIndivFieldLog_DataLater], [entryUserIndivFieldLog_UpdatedBy]) VALUES (6, N'29/12/2014 02:14:59 PM', N'Update', 4, N'entryUserDesignation', N'Kidney MD specialist', N'Kidney MD specialist1', 4)
INSERT [dbo].[Log_EntryUserIndivField] ([entryUserIndivFieldLog_Id], [entryUserIndivFieldLog_Date], [entryUserIndivFieldLog_Operation], [entryUserId], [entryUserIndivFieldLog_Field], [entryUserIndivFieldLog_DataBefore], [entryUserIndivFieldLog_DataLater], [entryUserIndivFieldLog_UpdatedBy]) VALUES (7, N'29/12/2014 02:18:32 PM', N'Update', 4, N'entryUserAddress', N'; Bagmati; Kathmandu; Nepal', N'Balaju, Vanasthali 16; Bagmati; Kathmandu; Nepal', 4)
INSERT [dbo].[Log_EntryUserIndivField] ([entryUserIndivFieldLog_Id], [entryUserIndivFieldLog_Date], [entryUserIndivFieldLog_Operation], [entryUserId], [entryUserIndivFieldLog_Field], [entryUserIndivFieldLog_DataBefore], [entryUserIndivFieldLog_DataLater], [entryUserIndivFieldLog_UpdatedBy]) VALUES (8, N'29/12/2014 02:18:52 PM', N'Update', 4, N'entryUserDesignation', N'Kidney MD specialist1', N'Kidney MD specialist', 4)
INSERT [dbo].[Log_EntryUserIndivField] ([entryUserIndivFieldLog_Id], [entryUserIndivFieldLog_Date], [entryUserIndivFieldLog_Operation], [entryUserId], [entryUserIndivFieldLog_Field], [entryUserIndivFieldLog_DataBefore], [entryUserIndivFieldLog_DataLater], [entryUserIndivFieldLog_UpdatedBy]) VALUES (9, N'29/12/2014 02:26:41 PM', N'Update', 4, N'entryUserDesignation', N'Kidney MD specialist', N'Kidney MD specialist', 4)
INSERT [dbo].[Log_EntryUserIndivField] ([entryUserIndivFieldLog_Id], [entryUserIndivFieldLog_Date], [entryUserIndivFieldLog_Operation], [entryUserId], [entryUserIndivFieldLog_Field], [entryUserIndivFieldLog_DataBefore], [entryUserIndivFieldLog_DataLater], [entryUserIndivFieldLog_UpdatedBy]) VALUES (10, N'29/12/2014 02:26:56 PM', N'Update', 4, N'entryUserDob', N'11-11-1991', N'11/11/1991', 4)
INSERT [dbo].[Log_EntryUserIndivField] ([entryUserIndivFieldLog_Id], [entryUserIndivFieldLog_Date], [entryUserIndivFieldLog_Operation], [entryUserId], [entryUserIndivFieldLog_Field], [entryUserIndivFieldLog_DataBefore], [entryUserIndivFieldLog_DataLater], [entryUserIndivFieldLog_UpdatedBy]) VALUES (11, N'09/01/2015 11:24:42 AM', N'Update', 4, N'entryUserContact', N'2222221122', N'2222222222', 4)
INSERT [dbo].[Log_EntryUserIndivField] ([entryUserIndivFieldLog_Id], [entryUserIndivFieldLog_Date], [entryUserIndivFieldLog_Operation], [entryUserId], [entryUserIndivFieldLog_Field], [entryUserIndivFieldLog_DataBefore], [entryUserIndivFieldLog_DataLater], [entryUserIndivFieldLog_UpdatedBy]) VALUES (12, N'09/01/2015 11:26:48 AM', N'Update', 4, N'entryUserInactiveOrActive', N'Active', N'Inactive', 3)
INSERT [dbo].[Log_EntryUserIndivField] ([entryUserIndivFieldLog_Id], [entryUserIndivFieldLog_Date], [entryUserIndivFieldLog_Operation], [entryUserId], [entryUserIndivFieldLog_Field], [entryUserIndivFieldLog_DataBefore], [entryUserIndivFieldLog_DataLater], [entryUserIndivFieldLog_UpdatedBy]) VALUES (13, N'09/01/2015 11:28:01 AM', N'Update', 4, N'entryUserInactiveOrActive', N'Inactive', N'Active', 3)
INSERT [dbo].[Log_EntryUserIndivField] ([entryUserIndivFieldLog_Id], [entryUserIndivFieldLog_Date], [entryUserIndivFieldLog_Operation], [entryUserId], [entryUserIndivFieldLog_Field], [entryUserIndivFieldLog_DataBefore], [entryUserIndivFieldLog_DataLater], [entryUserIndivFieldLog_UpdatedBy]) VALUES (14, N'09/01/2015 11:53:16 AM', N'Update', 4, N'entryUserContact', N'Kathmandu Kidney Hospital', N'Kathmandu Kidney Hospital1', 3)
INSERT [dbo].[Log_EntryUserIndivField] ([entryUserIndivFieldLog_Id], [entryUserIndivFieldLog_Date], [entryUserIndivFieldLog_Operation], [entryUserId], [entryUserIndivFieldLog_Field], [entryUserIndivFieldLog_DataBefore], [entryUserIndivFieldLog_DataLater], [entryUserIndivFieldLog_UpdatedBy]) VALUES (15, N'09/01/2015 12:12:39 PM', N'Update', 4, N'entryUserInactiveOrActive', N'Active', N'Inactive', 3)
INSERT [dbo].[Log_EntryUserIndivField] ([entryUserIndivFieldLog_Id], [entryUserIndivFieldLog_Date], [entryUserIndivFieldLog_Operation], [entryUserId], [entryUserIndivFieldLog_Field], [entryUserIndivFieldLog_DataBefore], [entryUserIndivFieldLog_DataLater], [entryUserIndivFieldLog_UpdatedBy]) VALUES (16, N'09/01/2015 12:12:48 PM', N'Update', 4, N'entryUserInactiveOrActive', N'Inactive', N'Active', 3)
INSERT [dbo].[Log_EntryUserIndivField] ([entryUserIndivFieldLog_Id], [entryUserIndivFieldLog_Date], [entryUserIndivFieldLog_Operation], [entryUserId], [entryUserIndivFieldLog_Field], [entryUserIndivFieldLog_DataBefore], [entryUserIndivFieldLog_DataLater], [entryUserIndivFieldLog_UpdatedBy]) VALUES (17, N'09/01/2015 12:13:58 PM', N'Update', 4, N'entryUserContact', N'Kathmandu Kidney Hospital1', N'Bir Hospital', 3)
INSERT [dbo].[Log_EntryUserIndivField] ([entryUserIndivFieldLog_Id], [entryUserIndivFieldLog_Date], [entryUserIndivFieldLog_Operation], [entryUserId], [entryUserIndivFieldLog_Field], [entryUserIndivFieldLog_DataBefore], [entryUserIndivFieldLog_DataLater], [entryUserIndivFieldLog_UpdatedBy]) VALUES (18, N'10/01/2015 06:36:10 PM', N'Update', 4, N'entryUserInactiveOrActive', N'Active', N'Inactive', 3)
INSERT [dbo].[Log_EntryUserIndivField] ([entryUserIndivFieldLog_Id], [entryUserIndivFieldLog_Date], [entryUserIndivFieldLog_Operation], [entryUserId], [entryUserIndivFieldLog_Field], [entryUserIndivFieldLog_DataBefore], [entryUserIndivFieldLog_DataLater], [entryUserIndivFieldLog_UpdatedBy]) VALUES (19, N'10/01/2015 06:36:45 PM', N'Update', 4, N'entryUserInactiveOrActive', N'Inactive', N'Active', 3)
INSERT [dbo].[Log_EntryUserIndivField] ([entryUserIndivFieldLog_Id], [entryUserIndivFieldLog_Date], [entryUserIndivFieldLog_Operation], [entryUserId], [entryUserIndivFieldLog_Field], [entryUserIndivFieldLog_DataBefore], [entryUserIndivFieldLog_DataLater], [entryUserIndivFieldLog_UpdatedBy]) VALUES (20, N'10/01/2015 09:42:44 PM', N'Update', 4, N'entryUserInactiveOrActive', N'Active', N'Inactive', 3)
INSERT [dbo].[Log_EntryUserIndivField] ([entryUserIndivFieldLog_Id], [entryUserIndivFieldLog_Date], [entryUserIndivFieldLog_Operation], [entryUserId], [entryUserIndivFieldLog_Field], [entryUserIndivFieldLog_DataBefore], [entryUserIndivFieldLog_DataLater], [entryUserIndivFieldLog_UpdatedBy]) VALUES (21, N'10/01/2015 09:43:20 PM', N'Update', 4, N'entryUserInactiveOrActive', N'Inactive', N'Active', 3)
INSERT [dbo].[Log_EntryUserIndivField] ([entryUserIndivFieldLog_Id], [entryUserIndivFieldLog_Date], [entryUserIndivFieldLog_Operation], [entryUserId], [entryUserIndivFieldLog_Field], [entryUserIndivFieldLog_DataBefore], [entryUserIndivFieldLog_DataLater], [entryUserIndivFieldLog_UpdatedBy]) VALUES (22, N'13/01/2015 07:39:03 PM', N'Update', 4, N'entryUserFullName', N'Kriss  Kriss', N'Kriss  Kriss', 4)
SET IDENTITY_INSERT [dbo].[Log_EntryUserIndivField] OFF
/****** Object:  Table [dbo].[Log_DiseaseWholeField]    Script Date: 01/16/2015 12:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_DiseaseWholeField](
	[diseaseWholeFieldLog_Id] [int] IDENTITY(1,1) NOT NULL,
	[diseaseWholeFieldLog_Date] [varchar](25) NOT NULL,
	[diseaseWholeFieldLog_Operation] [varchar](10) NOT NULL,
	[diseaseId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[diseaseWholeFieldLog_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Log_DiseaseWholeField] ON
INSERT [dbo].[Log_DiseaseWholeField] ([diseaseWholeFieldLog_Id], [diseaseWholeFieldLog_Date], [diseaseWholeFieldLog_Operation], [diseaseId]) VALUES (1, N'29/11/2014 16:44:59 PM', N'Insert', 2)
SET IDENTITY_INSERT [dbo].[Log_DiseaseWholeField] OFF
/****** Object:  Table [dbo].[Log_DiseaseIndivField]    Script Date: 01/16/2015 12:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_DiseaseIndivField](
	[diseaseIndivFieldLog_Id] [int] IDENTITY(1,1) NOT NULL,
	[diseaseIndivFieldLog_Date] [varchar](25) NOT NULL,
	[diseaseIndivFieldLog_Operation] [varchar](10) NOT NULL,
	[diseaseId] [int] NOT NULL,
	[diseaseIndivFieldLog_Field] [varchar](50) NOT NULL,
	[diseaseIndivFieldLog_DataBefore] [varchar](400) NOT NULL,
	[diseaseIndivFieldLog_DataLater] [varchar](400) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[diseaseIndivFieldLog_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Log_DiseaseIndivField] ON
INSERT [dbo].[Log_DiseaseIndivField] ([diseaseIndivFieldLog_Id], [diseaseIndivFieldLog_Date], [diseaseIndivFieldLog_Operation], [diseaseId], [diseaseIndivFieldLog_Field], [diseaseIndivFieldLog_DataBefore], [diseaseIndivFieldLog_DataLater]) VALUES (1, N'23/12/2014 07:04:59 PM', N'Update', 2, N'diseaseName', N'Tuberculosis', N'Tuberculosis (TV)')
SET IDENTITY_INSERT [dbo].[Log_DiseaseIndivField] OFF
/****** Object:  Table [dbo].[Log_CheckedPatWholeField]    Script Date: 01/16/2015 12:05:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_CheckedPatWholeField](
	[checkedPatWholeFieldLog_Id] [int] IDENTITY(1,1) NOT NULL,
	[checkedPatWholeFieldLog_Date] [varchar](25) NOT NULL,
	[checkedPatWholeFieldLog_Operation] [varchar](10) NOT NULL,
	[checkedPatId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[checkedPatWholeFieldLog_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Log_CheckedPatWholeField] ON
INSERT [dbo].[Log_CheckedPatWholeField] ([checkedPatWholeFieldLog_Id], [checkedPatWholeFieldLog_Date], [checkedPatWholeFieldLog_Operation], [checkedPatId]) VALUES (1, N'29/11/2014 04:44:59 PM', N'Insert', 2)
INSERT [dbo].[Log_CheckedPatWholeField] ([checkedPatWholeFieldLog_Id], [checkedPatWholeFieldLog_Date], [checkedPatWholeFieldLog_Operation], [checkedPatId]) VALUES (2, N'11/01/2015 06:31:53 PM', N'Insert', 3)
INSERT [dbo].[Log_CheckedPatWholeField] ([checkedPatWholeFieldLog_Id], [checkedPatWholeFieldLog_Date], [checkedPatWholeFieldLog_Operation], [checkedPatId]) VALUES (3, N'11/01/2015 06:46:02 PM', N'Insert', 6)
INSERT [dbo].[Log_CheckedPatWholeField] ([checkedPatWholeFieldLog_Id], [checkedPatWholeFieldLog_Date], [checkedPatWholeFieldLog_Operation], [checkedPatId]) VALUES (4, N'11/01/2015 06:47:10 PM', N'Insert', 7)
INSERT [dbo].[Log_CheckedPatWholeField] ([checkedPatWholeFieldLog_Id], [checkedPatWholeFieldLog_Date], [checkedPatWholeFieldLog_Operation], [checkedPatId]) VALUES (5, N'11/01/2015 06:49:39 PM', N'Insert', 8)
INSERT [dbo].[Log_CheckedPatWholeField] ([checkedPatWholeFieldLog_Id], [checkedPatWholeFieldLog_Date], [checkedPatWholeFieldLog_Operation], [checkedPatId]) VALUES (6, N'11/01/2015 07:01:01 PM', N'Insert', 9)
INSERT [dbo].[Log_CheckedPatWholeField] ([checkedPatWholeFieldLog_Id], [checkedPatWholeFieldLog_Date], [checkedPatWholeFieldLog_Operation], [checkedPatId]) VALUES (7, N'11/01/2015 07:01:17 PM', N'Insert', 10)
INSERT [dbo].[Log_CheckedPatWholeField] ([checkedPatWholeFieldLog_Id], [checkedPatWholeFieldLog_Date], [checkedPatWholeFieldLog_Operation], [checkedPatId]) VALUES (8, N'11/01/2015 07:01:53 PM', N'Insert', 11)
SET IDENTITY_INSERT [dbo].[Log_CheckedPatWholeField] OFF
/****** Object:  Table [dbo].[Log_CheckedPatIndivField]    Script Date: 01/16/2015 12:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_CheckedPatIndivField](
	[checkedPatIndivFieldLog_Id] [int] IDENTITY(1,1) NOT NULL,
	[checkedPatIndivFieldLog_Date] [varchar](25) NOT NULL,
	[checkedPatIndivFieldLog_Operation] [varchar](10) NOT NULL,
	[checkedPatId] [int] NOT NULL,
	[checkedPatIndivFieldLog_Field] [varchar](50) NOT NULL,
	[checkedPatIndivFieldLog_DataBefore] [varchar](400) NOT NULL,
	[checkedPatIndivFieldLog_DataLater] [varchar](400) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[checkedPatIndivFieldLog_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Log_CheckedPatIndivField] ON
INSERT [dbo].[Log_CheckedPatIndivField] ([checkedPatIndivFieldLog_Id], [checkedPatIndivFieldLog_Date], [checkedPatIndivFieldLog_Operation], [checkedPatId], [checkedPatIndivFieldLog_Field], [checkedPatIndivFieldLog_DataBefore], [checkedPatIndivFieldLog_DataLater]) VALUES (1, N'23/12/2014 07:04:59 PM', N'Update', 2, N'checkedPatDiseaseName', N'Tuberculosis', N'Tuberculosis (TV)')
SET IDENTITY_INSERT [dbo].[Log_CheckedPatIndivField] OFF
/****** Object:  Table [dbo].[Hospital]    Script Date: 01/16/2015 12:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hospital](
	[hospitalId] [int] IDENTITY(1,1) NOT NULL,
	[hospitalType] [varchar](50) NOT NULL,
	[hospitalFullName] [varchar](50) NOT NULL,
	[hospitalHouseAdd] [varchar](40) NULL,
	[hospitalCity] [varchar](20) NOT NULL,
	[hospitalDistrict] [varchar](20) NOT NULL,
	[hospitalDescription] [varchar](300) NULL,
	[hospitalRegdBy] [int] NULL,
	[hospitalRegdDate] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[hospitalId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[hospitalFullName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[hospitalFullName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Hospital] ON
INSERT [dbo].[Hospital] ([hospitalId], [hospitalType], [hospitalFullName], [hospitalHouseAdd], [hospitalCity], [hospitalDistrict], [hospitalDescription], [hospitalRegdBy], [hospitalRegdDate]) VALUES (1, N'Public Hospital', N'Bir Hospital', N'near to NAC', N'Kathmandu', N'Bagmati', N'', 3, N'29/11/2014 02:41:59 PM')
INSERT [dbo].[Hospital] ([hospitalId], [hospitalType], [hospitalFullName], [hospitalHouseAdd], [hospitalCity], [hospitalDistrict], [hospitalDescription], [hospitalRegdBy], [hospitalRegdDate]) VALUES (5, N'Public Hospital', N'hospTest1', N'', N'Kathmandu', N'Bagmati', N'edit testing', 3, N'29/12/2014 08:54:01 PM')
INSERT [dbo].[Hospital] ([hospitalId], [hospitalType], [hospitalFullName], [hospitalHouseAdd], [hospitalCity], [hospitalDistrict], [hospitalDescription], [hospitalRegdBy], [hospitalRegdDate]) VALUES (6, N'Public Hospital', N'Kanti Children Hospital', N'', N'Kathmandu', N'Bagmati', N'Kanti Children Hospital', 3, N'29/12/2014 08:59:16 PM')
INSERT [dbo].[Hospital] ([hospitalId], [hospitalType], [hospitalFullName], [hospitalHouseAdd], [hospitalCity], [hospitalDistrict], [hospitalDescription], [hospitalRegdBy], [hospitalRegdDate]) VALUES (9, N'Female Community Health  Service', N'hospTest6', N'', N'hospTest6', N'hospTest6', N'', 3, N'29/12/2014 09:44:35 PM')
INSERT [dbo].[Hospital] ([hospitalId], [hospitalType], [hospitalFullName], [hospitalHouseAdd], [hospitalCity], [hospitalDistrict], [hospitalDescription], [hospitalRegdBy], [hospitalRegdDate]) VALUES (11, N'Female Community Health  Service', N'hospTest7', N'', N'hospTest7', N'hospTest7', N'EditingTesting', 3, N'30/12/2014 03:53:48 PM')
INSERT [dbo].[Hospital] ([hospitalId], [hospitalType], [hospitalFullName], [hospitalHouseAdd], [hospitalCity], [hospitalDistrict], [hospitalDescription], [hospitalRegdBy], [hospitalRegdDate]) VALUES (12, N'Public Hospital', N'Lumbini Zonal Hospital', N'', N'Butwal', N'Rupandehi', N'', 3, N'02/01/2015 10:27:59 AM')
INSERT [dbo].[Hospital] ([hospitalId], [hospitalType], [hospitalFullName], [hospitalHouseAdd], [hospitalCity], [hospitalDistrict], [hospitalDescription], [hospitalRegdBy], [hospitalRegdDate]) VALUES (13, N'Primary Health Care Centre', N'hospTest8_EditTest1', N'', N'hospTest8', N'hospTest8', N'hospTest8_EditTesting', 3, N'03/01/2015 11:26:48 AM')
INSERT [dbo].[Hospital] ([hospitalId], [hospitalType], [hospitalFullName], [hospitalHouseAdd], [hospitalCity], [hospitalDistrict], [hospitalDescription], [hospitalRegdBy], [hospitalRegdDate]) VALUES (14, N'Extended Program of Immunization', N'hospTest9', N'hospTest9', N'hospTest9', N'hospTest9', N'hospTest9_testingLogNow', 3, N'04/01/2015 12:20:19 PM')
SET IDENTITY_INSERT [dbo].[Hospital] OFF
/****** Object:  Table [dbo].[HISUsedDate]    Script Date: 01/16/2015 12:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HISUsedDate](
	[hISUsedDate_Id] [int] IDENTITY(1,1) NOT NULL,
	[hISUsedDate_Date] [varchar](25) NOT NULL,
	[hISUsedDate_Table] [varchar](60) NOT NULL,
	[hISUsedDate_TableKey] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[hISUsedDate_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[HISUsedDate] ON
INSERT [dbo].[HISUsedDate] ([hISUsedDate_Id], [hISUsedDate_Date], [hISUsedDate_Table], [hISUsedDate_TableKey]) VALUES (1, N'04/01/2015 01:59:05 PM', N'Log_UsersWholeFieldWithName', 5)
INSERT [dbo].[HISUsedDate] ([hISUsedDate_Id], [hISUsedDate_Date], [hISUsedDate_Table], [hISUsedDate_TableKey]) VALUES (2, N'04/01/2015 01:59:05 PM', N'Log_PatientWholeFieldWithName', 2)
INSERT [dbo].[HISUsedDate] ([hISUsedDate_Id], [hISUsedDate_Date], [hISUsedDate_Table], [hISUsedDate_TableKey]) VALUES (3, N'03/01/2015 10:45:23 PM', N'Log_HospitalWholeFieldWithName', 2)
INSERT [dbo].[HISUsedDate] ([hISUsedDate_Id], [hISUsedDate_Date], [hISUsedDate_Table], [hISUsedDate_TableKey]) VALUES (4, N'03/01/2015 02:24:49 PM', N'Log_HospitalIndivField', 2)
INSERT [dbo].[HISUsedDate] ([hISUsedDate_Id], [hISUsedDate_Date], [hISUsedDate_Table], [hISUsedDate_TableKey]) VALUES (5, N'29/12/2014 08:54:01 PM', N'Log_HospitalWholeField', 2)
INSERT [dbo].[HISUsedDate] ([hISUsedDate_Id], [hISUsedDate_Date], [hISUsedDate_Table], [hISUsedDate_TableKey]) VALUES (6, N'29/12/2014 11:15:07 AM', N'Log_UsersIndivField', 40)
INSERT [dbo].[HISUsedDate] ([hISUsedDate_Id], [hISUsedDate_Date], [hISUsedDate_Table], [hISUsedDate_TableKey]) VALUES (7, N'27/12/2014 07:35:31 PM', N'Log_OtherUserIndivField', 6)
SET IDENTITY_INSERT [dbo].[HISUsedDate] OFF
/****** Object:  Table [dbo].[GuestUser]    Script Date: 01/16/2015 12:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GuestUser](
	[guestUserId] [int] IDENTITY(1,1) NOT NULL,
	[guestUserName] [varchar](20) NOT NULL,
	[guestUserHitDate] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[guestUserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[GuestUser] ON
INSERT [dbo].[GuestUser] ([guestUserId], [guestUserName], [guestUserHitDate]) VALUES (1, N'69.89.31.226', N'29-11-2014')
INSERT [dbo].[GuestUser] ([guestUserId], [guestUserName], [guestUserHitDate]) VALUES (2, N'F', N'Josephs')
INSERT [dbo].[GuestUser] ([guestUserId], [guestUserName], [guestUserHitDate]) VALUES (3, N'Fdf', N'Josephs')
INSERT [dbo].[GuestUser] ([guestUserId], [guestUserName], [guestUserHitDate]) VALUES (4, N'Fdf', N'Josephs')
INSERT [dbo].[GuestUser] ([guestUserId], [guestUserName], [guestUserHitDate]) VALUES (5, N'Fdf', N'Josephs')
INSERT [dbo].[GuestUser] ([guestUserId], [guestUserName], [guestUserHitDate]) VALUES (6, N'69.89.31.226', N'29-11-2014')
SET IDENTITY_INSERT [dbo].[GuestUser] OFF
/****** Object:  Table [dbo].[Feedback]    Script Date: 01/16/2015 12:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feedback](
	[feedbackId] [int] IDENTITY(1,1) NOT NULL,
	[feedbackDate] [varchar](25) NOT NULL,
	[feedbackByUserId] [int] NULL,
	[feedbackToUserId] [int] NULL,
	[feedbackSubject] [varchar](100) NULL,
	[feedbackDescription] [varchar](400) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[feedbackId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON
INSERT [dbo].[Feedback] ([feedbackId], [feedbackDate], [feedbackByUserId], [feedbackToUserId], [feedbackSubject], [feedbackDescription]) VALUES (2, N'29/11/2014 18:08:59 PM', 4, 5, N'Appointment: Date and Time', N'Please come on 6.12.2014 at 9:00 in the morning')
INSERT [dbo].[Feedback] ([feedbackId], [feedbackDate], [feedbackByUserId], [feedbackToUserId], [feedbackSubject], [feedbackDescription]) VALUES (3, N'30/12/2014 07:12:43 PM', 3, 5, N'test message', N'test message')
INSERT [dbo].[Feedback] ([feedbackId], [feedbackDate], [feedbackByUserId], [feedbackToUserId], [feedbackSubject], [feedbackDescription]) VALUES (4, N'30/12/2014 07:23:27 PM', 3, 7, N'testMessage1', N'testMessage1')
INSERT [dbo].[Feedback] ([feedbackId], [feedbackDate], [feedbackByUserId], [feedbackToUserId], [feedbackSubject], [feedbackDescription]) VALUES (5, N'30/12/2014 07:36:31 PM', 3, 7, N'testMessage1', N'testMessage1')
INSERT [dbo].[Feedback] ([feedbackId], [feedbackDate], [feedbackByUserId], [feedbackToUserId], [feedbackSubject], [feedbackDescription]) VALUES (7, N'30/12/2014 08:01:33 PM', 3, 10, N'', N'test3 testing')
INSERT [dbo].[Feedback] ([feedbackId], [feedbackDate], [feedbackByUserId], [feedbackToUserId], [feedbackSubject], [feedbackDescription]) VALUES (8, N'31/12/2014 10:17:29 AM', 4, 5, N'', N'from kriss to krishna testing')
INSERT [dbo].[Feedback] ([feedbackId], [feedbackDate], [feedbackByUserId], [feedbackToUserId], [feedbackSubject], [feedbackDescription]) VALUES (9, N'31/12/2014 10:24:25 AM', 4, 5, N'', N'from kriss to test1 testing')
INSERT [dbo].[Feedback] ([feedbackId], [feedbackDate], [feedbackByUserId], [feedbackToUserId], [feedbackSubject], [feedbackDescription]) VALUES (10, N'31/12/2014 10:25:44 AM', 4, 5, N'', N'from kriss to test2 testing')
INSERT [dbo].[Feedback] ([feedbackId], [feedbackDate], [feedbackByUserId], [feedbackToUserId], [feedbackSubject], [feedbackDescription]) VALUES (11, N'31/12/2014 10:40:47 AM', 4, 10, N'', N'kriss testing msg to test3')
INSERT [dbo].[Feedback] ([feedbackId], [feedbackDate], [feedbackByUserId], [feedbackToUserId], [feedbackSubject], [feedbackDescription]) VALUES (12, N'31/12/2014 10:43:40 AM', 3, 4, N'', N'hari testing msg to kriss')
INSERT [dbo].[Feedback] ([feedbackId], [feedbackDate], [feedbackByUserId], [feedbackToUserId], [feedbackSubject], [feedbackDescription]) VALUES (13, N'10/01/2015 05:49:59 PM', 4, 22, N'', N'testing from kriss to test15')
INSERT [dbo].[Feedback] ([feedbackId], [feedbackDate], [feedbackByUserId], [feedbackToUserId], [feedbackSubject], [feedbackDescription]) VALUES (14, N'10/01/2015 05:53:55 PM', 4, 19, N'', N'testing message from kriss to test12')
INSERT [dbo].[Feedback] ([feedbackId], [feedbackDate], [feedbackByUserId], [feedbackToUserId], [feedbackSubject], [feedbackDescription]) VALUES (15, N'10/01/2015 06:13:32 PM', 3, 47, N'', N'testing message to entryUser_test1 from hari')
INSERT [dbo].[Feedback] ([feedbackId], [feedbackDate], [feedbackByUserId], [feedbackToUserId], [feedbackSubject], [feedbackDescription]) VALUES (16, N'10/01/2015 09:41:08 PM', 3, 47, N'testing', N'message to entryUser_test1 from hari')
INSERT [dbo].[Feedback] ([feedbackId], [feedbackDate], [feedbackByUserId], [feedbackToUserId], [feedbackSubject], [feedbackDescription]) VALUES (17, N'12/01/2015 08:09:36 PM', 4, 5, N'', N'message testing')
SET IDENTITY_INSERT [dbo].[Feedback] OFF
/****** Object:  Table [dbo].[EntryUser]    Script Date: 01/16/2015 12:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EntryUser](
	[entryUserId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[entryUserFirstName] [varchar](20) NOT NULL,
	[entryUserMiddleName] [varchar](20) NULL,
	[entryUserLastName] [varchar](20) NOT NULL,
	[entryUserDob] [varchar](15) NOT NULL,
	[entryUserGender] [varchar](1) NOT NULL,
	[entryUserContact] [varchar](20) NOT NULL,
	[entryUserSecContact] [varchar](50) NULL,
	[entryUserHouseAdd] [varchar](40) NULL,
	[entryUserCity] [varchar](20) NOT NULL,
	[entryUserDistrict] [varchar](20) NOT NULL,
	[entryUserCountry] [varchar](25) NULL,
	[entryUserDesignation] [varchar](30) NOT NULL,
	[entryUserHospital] [varchar](50) NOT NULL,
	[entryUserRegisteredby] [int] NOT NULL,
	[entryUserInactiveOrActive] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[entryUserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[EntryUser] ON
INSERT [dbo].[EntryUser] ([entryUserId], [userId], [entryUserFirstName], [entryUserMiddleName], [entryUserLastName], [entryUserDob], [entryUserGender], [entryUserContact], [entryUserSecContact], [entryUserHouseAdd], [entryUserCity], [entryUserDistrict], [entryUserCountry], [entryUserDesignation], [entryUserHospital], [entryUserRegisteredby], [entryUserInactiveOrActive]) VALUES (1, 4, N'Kriss', N'', N'Kriss', N'11/11/1991', N'M', N'2222222222', N'', N'', N'Kathmandu', N'Bagmati', N'Nepal', N'Kidney MD specialist', N'Bir Hospital', 3, N'Active')
INSERT [dbo].[EntryUser] ([entryUserId], [userId], [entryUserFirstName], [entryUserMiddleName], [entryUserLastName], [entryUserDob], [entryUserGender], [entryUserContact], [entryUserSecContact], [entryUserHouseAdd], [entryUserCity], [entryUserDistrict], [entryUserCountry], [entryUserDesignation], [entryUserHospital], [entryUserRegisteredby], [entryUserInactiveOrActive]) VALUES (3, 46, N'entryUser_test', N'', N'entryUser_test', N'04/04/1989', N'F', N'1989198999', N'', N'entryUser_test', N'entryUser_test', N'entryUser_test', N'Nepal', N'entryUser_test', N'hospTest7', 3, N'Active')
INSERT [dbo].[EntryUser] ([entryUserId], [userId], [entryUserFirstName], [entryUserMiddleName], [entryUserLastName], [entryUserDob], [entryUserGender], [entryUserContact], [entryUserSecContact], [entryUserHouseAdd], [entryUserCity], [entryUserDistrict], [entryUserCountry], [entryUserDesignation], [entryUserHospital], [entryUserRegisteredby], [entryUserInactiveOrActive]) VALUES (4, 47, N'entryUser_test1', N'', N'entryUser_test1', N'11/11/1980', N'M', N'1111111980', N'', N'entryUser_test1', N'entryUser_test1', N'entryUser_test1', N'Nepal', N'entryUser_test1', N'hospTest7', 3, N'Active')
INSERT [dbo].[EntryUser] ([entryUserId], [userId], [entryUserFirstName], [entryUserMiddleName], [entryUserLastName], [entryUserDob], [entryUserGender], [entryUserContact], [entryUserSecContact], [entryUserHouseAdd], [entryUserCity], [entryUserDistrict], [entryUserCountry], [entryUserDesignation], [entryUserHospital], [entryUserRegisteredby], [entryUserInactiveOrActive]) VALUES (5, 48, N'entryUserHospital2', N'', N'entryUserHospital2', N'06/11/1979', N'M', N'2222221979', N'', N'', N'entryUserHospital2', N'entryUserHospital2', N'Nepal', N'entryUserHospital2', N'hospTest7', 3, N'Active')
INSERT [dbo].[EntryUser] ([entryUserId], [userId], [entryUserFirstName], [entryUserMiddleName], [entryUserLastName], [entryUserDob], [entryUserGender], [entryUserContact], [entryUserSecContact], [entryUserHouseAdd], [entryUserCity], [entryUserDistrict], [entryUserCountry], [entryUserDesignation], [entryUserHospital], [entryUserRegisteredby], [entryUserInactiveOrActive]) VALUES (6, 49, N'entryUser_test3', N'', N'entryUser_test3', N'07/07/1989', N'M', N'0707198907', N'', N'', N'entryUser_test3', N'entryUser_test3', N'Nepal', N'entryUser_test3', N'hospTest7', 3, N'Active')
SET IDENTITY_INSERT [dbo].[EntryUser] OFF
/****** Object:  Table [dbo].[Disease]    Script Date: 01/16/2015 12:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Disease](
	[diseaseId] [int] IDENTITY(1,1) NOT NULL,
	[diseaseName] [varchar](50) NOT NULL,
	[diseaseDescription] [varchar](400) NULL,
	[diseaseRegdBy] [int] NULL,
	[diseaseRegdDate] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[diseaseId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Disease] ON
INSERT [dbo].[Disease] ([diseaseId], [diseaseName], [diseaseDescription], [diseaseRegdBy], [diseaseRegdDate]) VALUES (2, N'Tuberculosis (TV)', N'an infectious bacterial disease caused by Mycobacterium tuberculosis, affecting the lungs.', 4, N'29/11/2014 16:44:59 PM')
INSERT [dbo].[Disease] ([diseaseId], [diseaseName], [diseaseDescription], [diseaseRegdBy], [diseaseRegdDate]) VALUES (3, N'testDisease', N'testDisease', 4, N'11/01/2015 06:31:53 PM')
INSERT [dbo].[Disease] ([diseaseId], [diseaseName], [diseaseDescription], [diseaseRegdBy], [diseaseRegdDate]) VALUES (4, N'testDisease1', N'testDisease1', 4, N'11/01/2015 06:46:02 PM')
INSERT [dbo].[Disease] ([diseaseId], [diseaseName], [diseaseDescription], [diseaseRegdBy], [diseaseRegdDate]) VALUES (5, N'testDisease1', N'testDisease1', 4, N'11/01/2015 06:47:10 PM')
INSERT [dbo].[Disease] ([diseaseId], [diseaseName], [diseaseDescription], [diseaseRegdBy], [diseaseRegdDate]) VALUES (6, N'testDisease2', N'', 4, N'11/01/2015 06:49:39 PM')
INSERT [dbo].[Disease] ([diseaseId], [diseaseName], [diseaseDescription], [diseaseRegdBy], [diseaseRegdDate]) VALUES (7, N'testDisease3', N'', 4, N'11/01/2015 07:01:01 PM')
INSERT [dbo].[Disease] ([diseaseId], [diseaseName], [diseaseDescription], [diseaseRegdBy], [diseaseRegdDate]) VALUES (8, N'testDisease4', N'', 4, N'11/01/2015 07:01:17 PM')
INSERT [dbo].[Disease] ([diseaseId], [diseaseName], [diseaseDescription], [diseaseRegdBy], [diseaseRegdDate]) VALUES (9, N'testDisease', N'', 4, N'11/01/2015 07:01:53 PM')
INSERT [dbo].[Disease] ([diseaseId], [diseaseName], [diseaseDescription], [diseaseRegdBy], [diseaseRegdDate]) VALUES (10, N'testDisease5', N'testDisease5', 4, N'14/01/2015 03:07:14 PM')
SET IDENTITY_INSERT [dbo].[Disease] OFF
/****** Object:  Table [dbo].[CheckedPat]    Script Date: 01/16/2015 12:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CheckedPat](
	[checkedPatId] [int] IDENTITY(1,1) NOT NULL,
	[patientId] [int] NULL,
	[checkedPatDate] [varchar](25) NOT NULL,
	[checkedPatDiseaseName] [varchar](50) NOT NULL,
	[checkedPatRemarks] [varchar](400) NULL,
	[checkedPatHospital] [varchar](50) NOT NULL,
	[checkedPatBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[checkedPatId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CheckedPat] ON
INSERT [dbo].[CheckedPat] ([checkedPatId], [patientId], [checkedPatDate], [checkedPatDiseaseName], [checkedPatRemarks], [checkedPatHospital], [checkedPatBy]) VALUES (2, 1, N'29/11/2014 04:44:59 PM', N'Tuberculosis (TV)', N'an infectious bacterial disease caused by Mycobacterium tuberculosis, affecting the lungs.', N'Bir Hospital', 4)
INSERT [dbo].[CheckedPat] ([checkedPatId], [patientId], [checkedPatDate], [checkedPatDiseaseName], [checkedPatRemarks], [checkedPatHospital], [checkedPatBy]) VALUES (3, 1, N'11/01/2015 06:31:53 PM', N'testDisease', N'testDisease', N'Bir Hospital', 4)
INSERT [dbo].[CheckedPat] ([checkedPatId], [patientId], [checkedPatDate], [checkedPatDiseaseName], [checkedPatRemarks], [checkedPatHospital], [checkedPatBy]) VALUES (6, 1, N'11/01/2015 06:46:02 PM', N'testDisease1', N'testDisease1', N'Bir Hospital', 4)
INSERT [dbo].[CheckedPat] ([checkedPatId], [patientId], [checkedPatDate], [checkedPatDiseaseName], [checkedPatRemarks], [checkedPatHospital], [checkedPatBy]) VALUES (7, 1, N'11/01/2015 06:47:10 PM', N'testDisease1', N'testDisease1', N'Bir Hospital', 4)
INSERT [dbo].[CheckedPat] ([checkedPatId], [patientId], [checkedPatDate], [checkedPatDiseaseName], [checkedPatRemarks], [checkedPatHospital], [checkedPatBy]) VALUES (8, 1, N'11/01/2015 06:49:39 PM', N'testDisease2', N'', N'Bir Hospital', 4)
INSERT [dbo].[CheckedPat] ([checkedPatId], [patientId], [checkedPatDate], [checkedPatDiseaseName], [checkedPatRemarks], [checkedPatHospital], [checkedPatBy]) VALUES (9, 1, N'11/01/2015 07:01:01 PM', N'testDisease3', N'', N'Bir Hospital', 4)
INSERT [dbo].[CheckedPat] ([checkedPatId], [patientId], [checkedPatDate], [checkedPatDiseaseName], [checkedPatRemarks], [checkedPatHospital], [checkedPatBy]) VALUES (10, 1, N'11/01/2015 07:01:17 PM', N'testDisease4', N'', N'Bir Hospital', 4)
INSERT [dbo].[CheckedPat] ([checkedPatId], [patientId], [checkedPatDate], [checkedPatDiseaseName], [checkedPatRemarks], [checkedPatHospital], [checkedPatBy]) VALUES (11, 34, N'11/01/2015 07:01:53 PM', N'testDisease', N'', N'Bir Hospital', 4)
INSERT [dbo].[CheckedPat] ([checkedPatId], [patientId], [checkedPatDate], [checkedPatDiseaseName], [checkedPatRemarks], [checkedPatHospital], [checkedPatBy]) VALUES (12, 1, N'14/01/2015 03:07:14 PM', N'testDisease5', N'testDisease5', N'Bir Hospital', 4)
SET IDENTITY_INSERT [dbo].[CheckedPat] OFF
/****** Object:  Table [dbo].[Viewer]    Script Date: 01/16/2015 12:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Viewer](
	[viewerId] [int] IDENTITY(1,1) NOT NULL,
	[viewerName] [varchar](20) NOT NULL,
	[viewerType] [varchar](20) NOT NULL,
	[viewDate] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[viewerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Viewer] ON
INSERT [dbo].[Viewer] ([viewerId], [viewerName], [viewerType], [viewDate]) VALUES (1, N'guest1', N'Guest', N'29-11-2014/17:15:59')
SET IDENTITY_INSERT [dbo].[Viewer] OFF
/****** Object:  Table [dbo].[Users]    Script Date: 01/16/2015 12:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[userRegisteredDate] [varchar](25) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[userPasswd] [varchar](20) NOT NULL,
	[userEmail] [varchar](50) NOT NULL,
	[userSecEmail] [varchar](50) NULL,
	[userType] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'Case Sensitive', @value=N'SQL_Latin1_General_CP1_CS_AS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'username'
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (1, N'29/11/2014 01:34:59 PM', N'sita', N'sita', N'sita@live.com', N'', N'Other')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (2, N'29/11/2014 01:39:59 PM', N'ram', N'ram', N'ram@live.com', N'', N'Other')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (3, N'29/11/2014 01:41:59 PM', N'hari', N'hari', N'hari@live.com', N'hari@hotmail.com', N'Other')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (4, N'29/11/2014 03:42:59 PM', N'kriss', N'kriss', N'kriss@live.com', N'kriss@hotmail.com', N'Entry')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (5, N'29/11/2014 03:43:59 PM', N'krishna', N'krishna', N'krishna@live.com', N'krishna@hotmail.com', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (7, N'17/12/2014 07:21:59 PM', N'test', N'test', N'test@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (8, N'17/12/2014 07:22:59 PM', N'test1', N'test1', N'test1@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (9, N'17/12/2014 07:23:59 PM', N'test2', N'test2', N'test2@live.com', N'test2@hotmail.com', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (10, N'17/12/2014 07:24:59 PM', N'test3', N'test3', N'test3@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (11, N'17/12/2014 07:25:59 PM', N'test4', N'test4', N'test4@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (12, N'17/12/2014 07:26:59 PM', N'test5', N'test5', N'test5@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (13, N'18/12/2014 08:00:00 AM', N'test6', N'test6', N'test6@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (14, N'18/12/2014 08:01:00 AM', N'test7', N'test7', N'test7@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (15, N'18/12/2014 01:36:29 PM', N'test8', N'test8', N'test8@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (18, N'18/12/2014 02:14:40 PM', N'test11', N'test11', N'test11@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (19, N'18/12/2014 02:19:02 PM', N'test12', N'test12', N'test12@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (20, N'18/12/2014 02:21:10 PM', N'test13', N'test13', N'test13@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (21, N'18/12/2014 02:43:17 PM', N'test14', N'test14', N'test14@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (22, N'18/12/2014 02:53:41 PM', N'test15', N'test15', N'test15@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (23, N'18/12/2014 02:58:05 PM', N'test16', N'test16', N'test16@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (24, N'18/12/2014 03:06:20 PM', N'test17', N'test17', N'test17@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (25, N'18/12/2014 05:40:13 PM', N'test18', N'test18', N'test18@live.com', N'test18@hotmail.com.com', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (26, N'18/12/2014 05:42:03 PM', N'test19', N'test19', N'test19@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (28, N'23/12/2014 01:16:56 PM', N'test20', N'test20', N'test20@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (29, N'28/12/2014 03:04:41 PM', N'test21', N'test21', N'test21@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (30, N'28/12/2014 03:26:08 PM', N'test22', N'test22', N'test22@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (32, N'28/12/2014 03:27:43 PM', N'test23', N'test23', N'test23@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (33, N'28/12/2014 03:34:00 PM', N'test24', N'test24', N'test24@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (34, N'29/12/2014 06:01:53 PM', N'test25', N'test25', N'test25@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (35, N'30/12/2014 03:48:02 PM', N'test26', N'test26', N'test26@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (36, N'30/12/2014 03:51:51 PM', N'test27', N'test27', N'test27@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (41, N'04/01/2015 12:17:18 PM', N'test28', N'test28', N'test28@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (42, N'04/01/2015 12:49:42 PM', N'test29', N'test29', N'test29@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (43, N'05/01/2015 11:04:36 AM', N'test30', N'test30', N'test30@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (45, N'09/01/2015 01:46:27 PM', N'test31', N'test31', N'test31@live.com', N'', N'Patient')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (46, N'09/01/2015 01:54:15 PM', N'entryUser_test', N'entryUser_test', N'entryUser_test@live.com', N'', N'Entry')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (47, N'09/01/2015 02:01:30 PM', N'entryUser_test1', N'entryUser_test1', N'entryUser_test1@live.com', N'', N'Entry')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (48, N'09/01/2015 02:13:30 PM', N'entryUserHospital2', N'entryUserHospital2', N'entryUserHospital2@live.com', N'', N'Entry')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (49, N'09/01/2015 02:20:17 PM', N'entryUser_test3', N'entryUser_test3', N'entryUser_test3@live.com', N'', N'Entry')
INSERT [dbo].[Users] ([userId], [userRegisteredDate], [username], [userPasswd], [userEmail], [userSecEmail], [userType]) VALUES (50, N'09/01/2015 05:46:10 PM', N'test32', N'test32', N'test32@live.com', N'', N'Patient')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[tempHISUsedDate]    Script Date: 01/16/2015 12:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tempHISUsedDate](
	[hISUsedDate_Id] [int] IDENTITY(1,1) NOT NULL,
	[hISUsedDate_Date] [varchar](25) NOT NULL,
	[hISUsedDate_Table] [varchar](60) NOT NULL,
	[hISUsedDate_TableKey] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[hISUsedDate_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tempHISUsedDate] ON
INSERT [dbo].[tempHISUsedDate] ([hISUsedDate_Id], [hISUsedDate_Date], [hISUsedDate_Table], [hISUsedDate_TableKey]) VALUES (1, N'04/01/2015 01:59:05 PM', N'Log_UsersWholeFieldWithName', 5)
INSERT [dbo].[tempHISUsedDate] ([hISUsedDate_Id], [hISUsedDate_Date], [hISUsedDate_Table], [hISUsedDate_TableKey]) VALUES (2, N'04/01/2015 01:59:05 PM', N'Log_PatientWholeFieldWithName', 2)
INSERT [dbo].[tempHISUsedDate] ([hISUsedDate_Id], [hISUsedDate_Date], [hISUsedDate_Table], [hISUsedDate_TableKey]) VALUES (3, N'03/01/2015 10:45:23 PM', N'Log_HospitalWholeFieldWithName', 2)
INSERT [dbo].[tempHISUsedDate] ([hISUsedDate_Id], [hISUsedDate_Date], [hISUsedDate_Table], [hISUsedDate_TableKey]) VALUES (4, N'03/01/2015 02:24:49 PM', N'Log_HospitalIndivField', 2)
INSERT [dbo].[tempHISUsedDate] ([hISUsedDate_Id], [hISUsedDate_Date], [hISUsedDate_Table], [hISUsedDate_TableKey]) VALUES (5, N'29/12/2014 08:54:01 PM', N'Log_HospitalWholeField', 2)
INSERT [dbo].[tempHISUsedDate] ([hISUsedDate_Id], [hISUsedDate_Date], [hISUsedDate_Table], [hISUsedDate_TableKey]) VALUES (6, N'29/12/2014 11:15:07 AM', N'Log_UsersIndivField', 40)
INSERT [dbo].[tempHISUsedDate] ([hISUsedDate_Id], [hISUsedDate_Date], [hISUsedDate_Table], [hISUsedDate_TableKey]) VALUES (7, N'27/12/2014 07:35:31 PM', N'Log_OtherUserIndivField', 6)
SET IDENTITY_INSERT [dbo].[tempHISUsedDate] OFF
/****** Object:  Table [dbo].[Patient]    Script Date: 01/16/2015 12:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Patient](
	[patientId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[patientFirstName] [varchar](20) NOT NULL,
	[patientMiddleName] [varchar](20) NULL,
	[patientLastName] [varchar](20) NOT NULL,
	[patientDob] [varchar](15) NOT NULL,
	[patientAgeGrp] [varchar](10) NOT NULL,
	[patientGender] [varchar](1) NOT NULL,
	[patientContact] [varchar](20) NOT NULL,
	[patientSecContact] [varchar](50) NULL,
	[patientHouseAdd] [varchar](40) NULL,
	[patientCity] [varchar](20) NOT NULL,
	[patientDistrict] [varchar](20) NOT NULL,
	[patientCountry] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[patientId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Patient] ON
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (1, 5, N'Krishna', N'Prasad', N'Pantha', N'11/11/1990', N'20-29', N'M', N'1111011110', N'', N'', N'Kathmandu', N'Bagmati', N'Nepal')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (2, 7, N'test', N'', N'test', N'01-12-1998', N'15-19', N'F', N'2323232323', N'', N'', N'test', N'test', N'')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (3, 8, N'test1', N'', N'test1', N'1-11-1999', N'15-19', N'F', N'1212121212', N'', N'', N'test1', N'test1', N'')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (4, 9, N'test2', N'test2', N'test2', N'01-10-1998', N'15-19', N'M', N'1323232323', N'1434343433', N'test2', N'test2', N'test2', N'test2')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (5, 10, N'test3', N'Prasad', N'test3', N'02-12-1998', N'15-19', N'M', N'1212121211', N'', N'', N'test3', N'test3', N'')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (6, 11, N'test4', N'', N'test4', N'03-12-1998', N'15-19', N'M', N'1212121222', N'', N'', N'test4', N'test4', N'')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (7, 12, N'test5', N'', N'test5', N'04-12-1998', N'15-19', N'M', N'1212121112', N'', N'', N'test5', N'test5', N'')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (8, 13, N'test6', N'', N'test6', N'05-12-1998', N'15-19', N'M', N'1323232323', N'', N'', N'test6', N'test6', N'')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (9, 14, N'test7', N'', N'test7', N'04-11-1998', N'15-19', N'M', N'1212121211', N'', N'', N'test7', N'test7', N'')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (10, 15, N'test8', N'', N'test8', N'04-10-1998', N'15-19', N'M', N'1123232323', N'', N'', N'test8', N'test8', N'')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (13, 18, N'test11', N'', N'test11', N'01/12/1998', N'error valu', N'M', N'1323232321', N'', N'', N'test11', N'test11', N'')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (14, 19, N'test12', N'', N'test12', N'02/12/1998', N'15-19', N'M', N'2323232322', N'', N'', N'test12', N'test12', N'')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (15, 20, N'test13', N'', N'test13', N'01/11/1998', N'15-19', N'M', N'2323233523', N'', N'', N'test13', N'test13', N'')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (16, 21, N'test14', N'', N'test14', N'1/1/1988', N'20-29', N'F', N'1212121216', N'', N'', N'test14', N'test14', N'')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (17, 22, N'test15', N'', N'test15', N'1/1/2015', N'error valu', N'M', N'2344232323', N'', N'', N'test15', N'test15', N'')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (18, 23, N'test16', N'', N'test16', N'01/11/2013', N'1-4', N'M', N'2323235523', N'', N'', N'test16', N'test16', N'')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (19, 24, N'test17', N'', N'test17', N'01/10/2011', N'1-4', N'M', N'2323435523', N'', N'', N'test17', N'test17', N'')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (20, 25, N'test18', N'test18', N'test18', N'11/11/1984', N'30-39', N'M', N'1212121111', N'1434343633', N'test18', N'test18', N'test18', N'test18')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (21, 26, N'test19', N'', N'test19', N'08/10/2011', N'1-4', N'F', N'2323239923', N'', N'', N'test19', N'test19', N'')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (22, 28, N'test20', N'', N'test20', N'01/12/1999', N'15-19', N'F', N'3333333323', N'', N'', N'test20', N'test20', N'')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (23, 29, N'test21', N'', N'test21', N'11/10/1999', N'15-19', N'F', N'2333333332', N'', N'', N'test21', N'test21', N'')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (25, 32, N'test23', N'', N'test23', N'01/11/2001', N'5-14', N'F', N'3332233333', N'', N'', N'test23', N'test23', N'')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (26, 33, N'test24', N'', N'test24', N'11/11/1979', N'30-39', N'F', N'3339933333', N'', N'', N'test24', N'test24', N'')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (27, 34, N'test25', N'', N'test25', N'11/12/2009', N'5-14', N'F', N'2525252525', N'', N'', N'test25', N'test25', N'Nepal')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (28, 35, N'test26', N'', N'test26', N'11/11/1979', N'30-39', N'F', N'262626262626', N'', N'', N'test26', N'test26', N'Nepal')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (29, 36, N'test27', N'', N'test27', N'11/09/1989', N'20-29', N'F', N'2727272727', N'', N'', N'test27', N'test27', N'Nepal')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (31, 41, N'test28', N'', N'test28', N'28/08/1998', N'15-19', N'F', N'2828282828', N'', N'', N'test28', N'test28', N'Nepal')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (32, 42, N'test29', N'', N'test29', N'29/09/1998', N'15-19', N'M', N'2929292929', N'', N'', N'test29', N'test29', N'Nepal')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (33, 43, N'test30', N'', N'test30', N'30/03/1992', N'20-29', N'M', N'3030303030', N'', N'test30', N'test30', N'test30', N'Nepal')
INSERT [dbo].[Patient] ([patientId], [userId], [patientFirstName], [patientMiddleName], [patientLastName], [patientDob], [patientAgeGrp], [patientGender], [patientContact], [patientSecContact], [patientHouseAdd], [patientCity], [patientDistrict], [patientCountry]) VALUES (34, 45, N'test31', N'', N'test31', N'11/11/1969', N'40-49', N'F', N'3131313131', N'', N'test31', N'test31', N'test31', N'Nepal')
SET IDENTITY_INSERT [dbo].[Patient] OFF
/****** Object:  View [dbo].[OtherUser_Home]    Script Date: 01/16/2015 12:05:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[OtherUser_Home] AS
SELECT Log_HospitalIndivField.hospitalIndivFieldLog_Date As Dates, Log_HospitalIndivField.hospitalIndivFieldLog_Operation As Operation, Hospital.hospitalFullName As Name, Log_HospitalIndivField.hospitalIndivFieldLog_Field As FieldChanged, Log_HospitalIndivField.hospitalIndivFieldLog_DataBefore As DataBefore, Log_HospitalIndivField.hospitalIndivFieldLog_DataLater As DataLater
FROM Log_HospitalIndivField INNER JOIN Hospital ON Log_HospitalIndivField.hospitalId = Hospital.hospitalId
UNION
SELECT Log_HospitalWholeField.hospitalWholeFieldLog_Date, Log_HospitalWholeField.hospitalWholeFieldLog_Operation, NULL, NULL, NULL, NULL
FROM Log_HospitalWholeField
UNION
SELECT hospitalWholeFieldLogWithName_Date As Dates, hospitalWholeFieldLogWithName_Operation, hospitalFullName, NULL, NULL, NULL
FROM Log_HospitalWholeFieldWithName 
UNION
SELECT patientWholeFieldLogWithName_Date As Dates, patientWholeFieldLogWithName_Operation, patientFullName, NULL, NULL, NULL
FROM Log_PatientWholeFieldWithName
UNION
SELECT Log_UsersIndivField.userIndivFieldLog_Date As Dates, Log_UsersIndivField.userIndivFieldLog_Operation, Users.username, Log_UsersIndivField.userIndivFieldLog_Field, Log_UsersIndivField.userIndivFieldLog_DataBefore, Log_UsersIndivField.userIndivFieldLog_DataLater
FROM Log_UsersIndivField INNER JOIN Users ON Log_UsersIndivField.userId = Users.userId 
Where Log_UsersIndivField.userId = 3
AND Log_UsersIndivField.userIndivFieldLog_Field <> 'userPasswd'
UNION
SELECT Log_OtherUserIndivField.otherUserIndivFieldLog_Date As Dates, Log_OtherUserIndivField.otherUserIndivFieldLog_Operation, OtherUser.otherUserFirstName + ' ' + OtherUser.otherUserMiddleName + ' ' + OtherUser.otherUserLastName As OtherUserFullName, Log_OtherUserIndivField.otherUserIndivFieldLog_Field, Log_OtherUserIndivField.otherUserIndivFieldLog_DataBefore, Log_OtherUserIndivField.otherUserIndivFieldLog_DataLater
FROM Log_OtherUserIndivField INNER JOIN OtherUser ON Log_OtherUserIndivField.otherUserId = OtherUser.otherUserId
UNION
SELECT Log_EntryUserWholeField.entryUserWholeFieldLog_Date As Dates, Log_EntryUserWholeField.entryUserWholeFieldLog_Operation, EntryUser.entryUserFirstName + ' ' + EntryUser.entryUserMiddleName + ' ' + EntryUser.entryUserLastName As EntryUserFullName, NULL, NULL, NULL
FROM Log_EntryUserWholeField INNER JOIN EntryUser ON Log_EntryUserWholeField.entryUserId = EntryUser.entryUserId
UNION
SELECT Log_EntryUserIndivField.entryUserIndivFieldLog_Date As Dates, Log_EntryUserIndivField.entryUserIndivFieldLog_Operation, EntryUser.entryUserFirstName + ' ' + EntryUser.entryUserMiddleName + ' ' + EntryUser.entryUserLastName As EntryUserFullName, Log_EntryUserIndivField.entryUserIndivFieldLog_Field, Log_EntryUserIndivField.entryUserIndivFieldLog_DataBefore, Log_EntryUserIndivField.entryUserIndivFieldLog_DataLater
FROM Log_EntryUserIndivField INNER JOIN EntryUser ON Log_EntryUserIndivField.entryUserId = EntryUser.entryUserId
Where Log_EntryUserIndivField.entryUserIndivFieldLog_UpdatedBy = 3
GO
/****** Object:  StoredProcedure [dbo].[sp_viewViewer]    Script Date: 01/16/2015 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_viewViewer]
As
Select * from Viewer
GO
/****** Object:  StoredProcedure [dbo].[sp_viewUsers_Login]    Script Date: 01/16/2015 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_viewUsers_Login]
	@username varchar(50),
	@userPasswd varchar(20)
As 
Select * from Users 
where username = @username AND userPasswd = @userPasswd
GO
/****** Object:  StoredProcedure [dbo].[sp_viewUsers]    Script Date: 01/16/2015 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_viewUsers]
As
Select * from Users
GO
/****** Object:  StoredProcedure [dbo].[sp_viewPatient]    Script Date: 01/16/2015 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_viewPatient]
As
Select * from Patient
GO
/****** Object:  StoredProcedure [dbo].[sp_viewOtherUser]    Script Date: 01/16/2015 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_viewOtherUser]
As
Select * from OtherUser
GO
/****** Object:  StoredProcedure [dbo].[sp_viewHospital]    Script Date: 01/16/2015 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_viewHospital]
As
Select * from Hospital
GO
/****** Object:  StoredProcedure [dbo].[sp_viewHISUsedDate]    Script Date: 01/16/2015 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_viewHISUsedDate]
As
Select * from HISUsedDate
GO
/****** Object:  StoredProcedure [dbo].[sp_viewGuestUser]    Script Date: 01/16/2015 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_viewGuestUser]
As
Select * from GuestUser
GO
/****** Object:  StoredProcedure [dbo].[sp_viewFeedback]    Script Date: 01/16/2015 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_viewFeedback]
As
Select * from Feedback
GO
/****** Object:  StoredProcedure [dbo].[sp_viewer]    Script Date: 01/16/2015 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_viewer]
	@viewerName varchar(20),
	@viewerType varchar(20),
	@viewDate varchar(25)
As
Insert into Viewer(
	viewerName,
	viewerType,
	viewDate)
values(
	@viewerName,
	@viewerType,
	@viewDate)
GO
/****** Object:  StoredProcedure [dbo].[sp_viewEntryUser]    Script Date: 01/16/2015 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_viewEntryUser]
As
Select * from EntryUser
GO
/****** Object:  StoredProcedure [dbo].[sp_viewDisease]    Script Date: 01/16/2015 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_viewDisease]
As
Select * from Disease
GO
/****** Object:  StoredProcedure [dbo].[sp_viewCheckedPat]    Script Date: 01/16/2015 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_viewCheckedPat]
As
Select * from CheckedPat
GO
/****** Object:  StoredProcedure [dbo].[sp_view_Log_UsersWholeFieldWithName]    Script Date: 01/16/2015 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_view_Log_UsersWholeFieldWithName]
As
Select * from Log_UsersWholeFieldWithName
GO
/****** Object:  StoredProcedure [dbo].[sp_view_Log_UsersWholeField]    Script Date: 01/16/2015 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_view_Log_UsersWholeField]
As
Select * from Log_UsersWholeField
GO
/****** Object:  StoredProcedure [dbo].[sp_view_Log_UsersIndivField]    Script Date: 01/16/2015 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_view_Log_UsersIndivField]
As
Select * from Log_UsersIndivField
GO
/****** Object:  StoredProcedure [dbo].[sp_view_Log_PatientWholeFieldWithName]    Script Date: 01/16/2015 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_view_Log_PatientWholeFieldWithName]
As
Select * from Log_PatientWholeFieldWithName
GO
/****** Object:  StoredProcedure [dbo].[sp_view_Log_PatientWholeField]    Script Date: 01/16/2015 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_view_Log_PatientWholeField]
As
Select * from Log_PatientWholeField
GO
/****** Object:  StoredProcedure [dbo].[sp_view_Log_PatientIndivField]    Script Date: 01/16/2015 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_view_Log_PatientIndivField]
As
Select * from Log_PatientIndivField
GO
/****** Object:  StoredProcedure [dbo].[sp_view_Log_OtherUserWholeFieldWithName]    Script Date: 01/16/2015 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_view_Log_OtherUserWholeFieldWithName]
As
Select * from Log_OtherUserWholeFieldWithName
GO
/****** Object:  StoredProcedure [dbo].[sp_view_Log_OtherUserWholeField]    Script Date: 01/16/2015 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_view_Log_OtherUserWholeField]
As
Select * from Log_OtherUserWholeField
GO
/****** Object:  StoredProcedure [dbo].[sp_view_Log_OtherUserIndivField]    Script Date: 01/16/2015 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_view_Log_OtherUserIndivField]
As
Select * from Log_OtherUserIndivField
GO
/****** Object:  StoredProcedure [dbo].[sp_view_Log_HospitalWholeFieldWithName]    Script Date: 01/16/2015 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_view_Log_HospitalWholeFieldWithName]
As
Select * from Log_HospitalWholeFieldWithName
GO
/****** Object:  StoredProcedure [dbo].[sp_view_Log_HospitalWholeField]    Script Date: 01/16/2015 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_view_Log_HospitalWholeField]
As
Select * from Log_HospitalWholeField
GO
/****** Object:  StoredProcedure [dbo].[sp_view_Log_HospitalIndivField]    Script Date: 01/16/2015 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_view_Log_HospitalIndivField]
As
Select * from Log_HospitalIndivField
GO
/****** Object:  StoredProcedure [dbo].[sp_view_Log_FeedbackWholeFieldWithDateToFrom]    Script Date: 01/16/2015 12:05:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_view_Log_FeedbackWholeFieldWithDateToFrom]
As
Select * from Log_FeedbackWholeFieldWithDateToFrom
GO
/****** Object:  StoredProcedure [dbo].[sp_view_Log_FeedbackWholeField]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_view_Log_FeedbackWholeField]
As
Select * from Log_FeedbackWholeField
GO
/****** Object:  StoredProcedure [dbo].[sp_view_Log_FeedbackIndivField]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_view_Log_FeedbackIndivField]
As
Select * from Log_FeedbackIndivField
GO
/****** Object:  StoredProcedure [dbo].[sp_view_Log_EntryUserWholeFieldWithName]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_view_Log_EntryUserWholeFieldWithName]
As
Select * from Log_EntryUserWholeFieldWithName
GO
/****** Object:  StoredProcedure [dbo].[sp_view_Log_EntryUserWholeField]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_view_Log_EntryUserWholeField]
As
Select * from Log_EntryUserWholeField
GO
/****** Object:  StoredProcedure [dbo].[sp_view_Log_EntryUserIndivField]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_view_Log_EntryUserIndivField]
As
Select * from Log_EntryUserIndivField
GO
/****** Object:  StoredProcedure [dbo].[sp_view_Log_DiseaseWholeField]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_view_Log_DiseaseWholeField]
As
Select * from Log_DiseaseWholeField
GO
/****** Object:  StoredProcedure [dbo].[sp_view_Log_DiseaseIndivField]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_view_Log_DiseaseIndivField]
As
Select * from Log_DiseaseIndivField
GO
/****** Object:  StoredProcedure [dbo].[sp_view_Log_CheckedPatWholeField]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_view_Log_CheckedPatWholeField]
As
Select * from Log_CheckedPatWholeField
GO
/****** Object:  StoredProcedure [dbo].[sp_view_Log_CheckedPatIndivField]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_view_Log_CheckedPatIndivField]
As
Select * from Log_CheckedPatIndivField
GO
/****** Object:  StoredProcedure [dbo].[sp_users]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_users]
	@userRegisteredDate varchar(25),
	@username varchar(50),
	@userPasswd varchar(20),
	@userEmail varchar(50),
	@userSecEmail varchar(50),
	@userType varchar(20)
As
Insert into Users(
	userRegisteredDate,
	username,
	userPasswd,
	userEmail,
	userSecEmail,
	userType)
values(
	@userRegisteredDate,
	@username,
	@userPasswd,
	@userEmail,
	@userSecEmail,
	@userType)
GO
/****** Object:  StoredProcedure [dbo].[sp_update_users_userSecEmail]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_users_userSecEmail]
	@userId int,
	@userSecEmail varchar(50)
As
Update Users set
	userSecEmail = @userSecEmail
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_users_userRegisteredDate]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_users_userRegisteredDate]
	@userId int,
	@userRegisteredDate varchar(25)
As
Update Users set
	userRegisteredDate = @userRegisteredDate
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_users_userPasswd]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_users_userPasswd]
	@userId int,
	@userPasswd varchar(20)
As
Update Users set
	userPasswd = @userPasswd
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_users_username]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_users_username]
	@userId int,
	@username varchar(50)
As
Update Users set
	username = @username
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_users_userEmail]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_users_userEmail]
	@userId int,
	@userEmail varchar(20)
As
Update Users set
	userEmail = @userEmail
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_users]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_users]
	@userId int,
	@userRegisteredDate varchar(25),
	@username varchar(50),
	@userPasswd varchar(20),
	@userEmail varchar(50),
	@userSecEmail varchar(50),
	@userType varchar(20)
As
Update Users set
	userRegisteredDate = @userRegisteredDate,
	username = @username,
	userPasswd = @userPasswd,
	userEmail = @userEmail,
	userSecEmail = @userSecEmail,
	userType = @userType
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_patient_patientSecContact]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_patient_patientSecContact]
	@userId int,

	@patientSecContact varchar(20)
As
Update Patient set
	userId = @userId,

	patientSecContact = @patientSecContact
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_patient_patientGender]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_patient_patientGender]
	@userId int,

	@patientGender varchar(1)
As
Update Patient set
	userId = @userId,

	patientGender = @patientGender
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_patient_patientDob]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_patient_patientDob]
	@userId int,

	@patientDob varchar(15),
	@patientAgeGrp varchar(10)
As
Update Patient set
	userId = @userId,

	patientDob = @patientDob,
	patientAgeGrp = @patientAgeGrp
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_patient_patientContact]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_patient_patientContact]
	@userId int,

	@patientContact varchar(20)
As
Update Patient set
	userId = @userId,

	patientContact = @patientContact
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_patient_patientAddress]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_patient_patientAddress]
	@userId int,

	@patientHouseAdd varchar(40),
	@patientCity varchar(20),
	@patientDistrict varchar(20),
	@patientCountry varchar(25)
As
Update Patient set
	userId = @userId,

	patientHouseAdd = @patientHouseAdd,
	patientCity = @patientCity,
	patientDistrict = @patientDistrict,
	patientCountry = @patientCountry
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_patient_fullName]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_patient_fullName]
	@userId int,

	@patientFirstName varchar(20),
	@patientMiddleName varchar(20),
	@patientLastName varchar(20)
As
Update Patient set
	userId = @userId,

	patientFirstName = @patientFirstName,
	patientMiddleName = @patientMiddleName,
	patientLastName = @patientLastName
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_patient]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_patient]
	@patientId int,
	@userId int,

	@patientFirstName varchar(20),
	@patientMiddleName varchar(20),
	@patientLastName varchar(20),

	@patientDob varchar(15),
	@patientAgeGrp varchar(10),

	@patientGender varchar(1), 
	@patientContact varchar(20),
	@patientSecContact varchar(50),

	@patientHouseAdd varchar(40),
	@patientCity varchar(20),
	@patientDistrict varchar(20),
	@patientCountry varchar(25)
As
Update Patient set
	userId = @userId,

	patientFirstName = @patientFirstName,
	patientMiddleName = @patientMiddleName,
	patientLastName = @patientLastName,

	patientDob = @patientDob,
	patientAgeGrp = @patientAgeGrp,

	patientGender = @patientGender, 
	patientContact = @patientContact,
	patientSecContact = @patientSecContact,

	patientHouseAdd = @patientHouseAdd,
	patientCity = @patientCity,
	patientDistrict = @patientDistrict,
	patientCountry = @patientCountry
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_otherUser_otherUserSecContact]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_otherUser_otherUserSecContact]
	@userId int,

	@otherUserSecContact varchar(20)
As
Update otherUser set
	userId = @userId,

	otherUserSecContact = @otherUserSecContact
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_otherUser_otherUserGender]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_otherUser_otherUserGender]
	@userId int,

	@otherUserGender varchar(1)
As
Update otherUser set
	userId = @userId,

	otherUserGender = @otherUserGender
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_otherUser_otherUserDob]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_otherUser_otherUserDob]
	@userId int,

	@otherUserDob varchar(15)
As
Update otherUser set
	userId = @userId,

	otherUserDob = @otherUserDob
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_otherUser_otherUserContact]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_otherUser_otherUserContact]
	@userId int,

	@otherUserContact varchar(20)
As
Update otherUser set
	userId = @userId,

	otherUserContact = @otherUserContact
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_otherUser_otherUserAddress]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_otherUser_otherUserAddress]
	@userId int,

	@otherUserHouseAdd varchar(40),
	@otherUserCity varchar(20),
	@otherUserDistrict varchar(20),
	@otherUserCountry varchar(25)
As
Update otherUser set
	userId = @userId,

	otherUserHouseAdd = @otherUserHouseAdd,
	otherUserCity = @otherUserCity,
	otherUserDistrict = @otherUserDistrict,
	otherUserCountry = @otherUserCountry
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_otherUser_fullName]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_otherUser_fullName]
	@userId int,

	@otherUserFirstName varchar(20),
	@otherUserMiddleName varchar(20),
	@otherUserLastName varchar(20)
As
Update otherUser set
	userId = @userId,

	otherUserFirstName = @otherUserFirstName,
	otherUserMiddleName = @otherUserMiddleName,
	otherUserLastName = @otherUserLastName
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_otherUser]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_otherUser]
	@userId int,
	@otherUserType varchar(20),
	@otherUserOtherPassword varchar(20),

	@otherUserFirstName varchar(20),
	@otherUserMiddleName varchar(20),
	@otherUserLastName varchar(20),

	@otherUserDob varchar(15), 
	@otherUserGender varchar(1),
	@otherUserContact varchar(20), 
	@otherUserSecContact varchar(50),

	@otherUserHouseAdd varchar(40),
	@otherUserCity varchar(20),
	@otherUserDistrict varchar(20),
	@otherUserCountry varchar(25)
As
Update OtherUser set
	userId = @userId,
	otherUserType = @otherUserType,
	otherUserOtherPassword = @otherUserOtherPassword,

		otherUserFirstName = @otherUserFirstName,
	otherUserMiddleName = @otherUserMiddleName,
	otherUserLastName = @otherUserLastName,

	otherUserDob = @otherUserDob,
	otherUserGender = @otherUserGender,
	otherUserContact = @otherUserContact,
	otherUserSecContact = @otherUserSecContact,

	otherUserHouseAdd = @otherUserHouseAdd,
	otherUserCity = @otherUserCity,
	otherUserDistrict = @otherUserDistrict,
	otherUserCountry = @otherUserCountry
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_hospital_hospitalType]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_hospital_hospitalType]
	@hospitalId int,
	@hospitalType varchar(50)
As
Update Hospital set
	hospitalType = @hospitalType
where hospitalId = @hospitalId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_hospital_hospitalFullName]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_hospital_hospitalFullName]
	@hospitalId int,
	@hospitalFullName varchar(50)
As
Update Hospital set
	hospitalFullName = @hospitalFullName
where hospitalId = @hospitalId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_hospital_hospitalDescription]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_hospital_hospitalDescription]
	@hospitalId int,
	@hospitalDescription varchar(50)
As
Update Hospital set
	hospitalDescription = @hospitalDescription
where hospitalId = @hospitalId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_hospital_hospitalAddress]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_hospital_hospitalAddress]
	@hospitalId int,
	@hospitalHouseAdd varchar(40),
	@hospitalCity varchar(20),
	@hospitalDistrict varchar(20)
As
Update Hospital set
	hospitalHouseAdd = @hospitalHouseAdd,
	hospitalCity = @hospitalCity,
	hospitalDistrict = @hospitalDistrict
where hospitalId = @hospitalId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_hospital]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_hospital]
	@hospitalId int,
	@hospitalType varchar(50),
	@hospitalFullName varchar(50),

	@hospitalHouseAdd varchar(40),
	@hospitalCity varchar(20),
	@hospitalDistrict varchar(20),
	@hospitalDescription varchar(300)
As
Update Hospital set
	hospitalType = @hospitalType,
	hospitalFullName = @hospitalFullName,

	hospitalHouseAdd = @hospitalHouseAdd,
	hospitalCity = @hospitalCity,
	hospitalDistrict = @hospitalDistrict,
	hospitalDescription = @hospitalDescription
where hospitalId = @hospitalId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_entryUser_fullName]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_entryUser_fullName]
	@userId int,

	@entryUserFirstName varchar(20),
	@entryUserMiddleName varchar(20),
	@entryUserLastName varchar(20)
As
Update entryUser set
	userId = @userId,

	entryUserFirstName = @entryUserFirstName,
	entryUserMiddleName = @entryUserMiddleName,
	entryUserLastName = @entryUserLastName
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_entryUser_entryUserSecContact]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_entryUser_entryUserSecContact]
	@userId int,

	@entryUserSecContact varchar(20)
As
Update entryUser set
	userId = @userId,

	entryUserSecContact = @entryUserSecContact
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_entryUser_entryUserInactiveOrActive]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_entryUser_entryUserInactiveOrActive]
	@userId int,

	@entryUserInactiveOrActive varchar(10)
As
Update entryUser set
	userId = @userId,

	entryUserInactiveOrActive = @entryUserInactiveOrActive
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_entryUser_entryUserHospital]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_entryUser_entryUserHospital]
	@userId int,

	@entryUserHospital varchar(30)
As
Update entryUser set
	userId = @userId,

	entryUserHospital = @entryUserHospital
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_entryUser_entryUserGender]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_entryUser_entryUserGender]
	@userId int,

	@entryUserGender varchar(1)
As
Update entryUser set
	userId = @userId,

	entryUserGender = @entryUserGender
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_entryUser_entryUserDob]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_entryUser_entryUserDob]
	@userId int,

	@entryUserDob varchar(15)
As
Update entryUser set
	userId = @userId,

	entryUserDob = @entryUserDob
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_entryUser_entryUserDesignation]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_entryUser_entryUserDesignation]
	@userId int,

	@entryUserDesignation varchar(30)
As
Update entryUser set
	userId = @userId,

	entryUserDesignation = @entryUserDesignation
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_entryUser_entryUserContact]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_entryUser_entryUserContact]
	@userId int,

	@entryUserContact varchar(20)
As
Update entryUser set
	userId = @userId,

	entryUserContact = @entryUserContact
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_entryUser_entryUserAddress]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_entryUser_entryUserAddress]
	@userId int,

	@entryUserHouseAdd varchar(40),
	@entryUserCity varchar(20),
	@entryUserDistrict varchar(20),
	@entryUserCountry varchar(25)
As
Update entryUser set
	userId = @userId,

	entryUserHouseAdd = @entryUserHouseAdd,
	entryUserCity = @entryUserCity,
	entryUserDistrict = @entryUserDistrict,
	entryUserCountry = @entryUserCountry
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_update_entryUser]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_update_entryUser]
	@userId int,

	@entryUserFirstName varchar(20),
	@entryUserMiddleName varchar(20),
	@entryUserLastName varchar(20),

	@entryUserDob varchar(15), 
	@entryUserGender varchar(1),
	@entryUserContact varchar(20), 
	@entryUserSecContact varchar(50),

	@entryUserHouseAdd varchar(40),
	@entryUserCity varchar(20),
	@entryUserDistrict varchar(20),
	@entryUserCountry varchar(25),

	@entryUserDesignation varchar(30),
	@entryUserHospital varchar(50),
	@entryUserRegisteredby int,
	@entryUserInactiveOrActive varchar(10)
As
Update EntryUser set
	userId = @userId,

	entryUserFirstName = @entryUserFirstName,
	entryUserMiddleName = @entryUserMiddleName,
	entryUserLastName = @entryUserLastName,

	entryUserDob = @entryUserDob,
	entryUserGender = @entryUserGender,
	entryUserContact = @entryUserContact,
	entryUserSecContact = @entryUserSecContact,

	entryUserHouseAdd = @entryUserHouseAdd,
	entryUserCity = @entryUserCity,
	entryUserDistrict = @entryUserDistrict,
	entryUserCountry = @entryUserCountry,

	entryUserDesignation = @entryUserDesignation,
	entryUserHospital = @entryUserHospital,
	entryUserRegisteredby = @entryUserRegisteredby,
	entryUserInactiveOrActive = @entryUserInactiveOrActive
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_patient]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_patient]
	@userId int,

	@patientFirstName varchar(20),
	@patientMiddleName varchar(20),
	@patientLastName varchar(20),

	@patientDob varchar(15),
	@patientAgeGrp varchar(10),

	@patientGender varchar(1), 
	@patientContact varchar(20),
	@patientSecContact varchar(50),

	@patientHouseAdd varchar(40),
	@patientCity varchar(20),
	@patientDistrict varchar(20),
	@patientCountry varchar(25)
As
Insert into Patient(
	userId,

	patientFirstName,
	patientMiddleName,
	patientLastName,

	patientDob,
	patientAgeGrp,

	patientGender, 
	patientContact,
	patientSecContact,

	patientHouseAdd,
	patientCity,
	patientDistrict,
	patientCountry)
values(
	@userId,

	@patientFirstName,
	@patientMiddleName,
	@patientLastName,

	@patientDob,
	@patientAgeGrp,

	@patientGender, 
	@patientContact,
	@patientSecContact,

	@patientHouseAdd,
	@patientCity,
	@patientDistrict,
	@patientCountry)
GO
/****** Object:  StoredProcedure [dbo].[sp_otherUser]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_otherUser]
	@userId int,
	@otherUserType varchar(20),
	@otherUserOtherPassword varchar(20),

	@otherUserFirstName varchar(20),
	@otherUserMiddleName varchar(20),
	@otherUserLastName varchar(20),

	@otherUserDob varchar(15), 
	@otherUserGender varchar(1),
	@otherUserContact varchar(20), 
	@otherUserSecContact varchar(50),

	@otherUserHouseAdd varchar(40),
	@otherUserCity varchar(20),
	@otherUserDistrict varchar(20),
	@otherUserCountry varchar(25)
As
Insert into OtherUser(
	userId,
	otherUserType,
	otherUserOtherPassword,

	otherUserFirstName,
	otherUserMiddleName,
	otherUserLastName,

	otherUserDob, 
	otherUserGender,
	otherUserContact, 
	otherUserSecContact,

	otherUserHouseAdd,
	otherUserCity,
	otherUserDistrict,
	otherUserCountry)
values(
	@userId,
	@otherUserType,
	@otherUserOtherPassword,

	@otherUserFirstName,
	@otherUserMiddleName,
	@otherUserLastName,
	@otherUserDob, 
	@otherUserGender,
	@otherUserContact, 
	@otherUserSecContact,

	@otherUserHouseAdd,
	@otherUserCity,
	@otherUserDistrict,
	@otherUserCountry)
GO
/****** Object:  StoredProcedure [dbo].[sp_Log_usersWholeFieldWithName]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Log_usersWholeFieldWithName]
	@userWholeFieldLogWithName_Date varchar(25),
	@userWholeFieldLogWithName_Operation varchar(10),
	@userId int,
	@username varchar(50)
As
Insert into Log_UsersWholeFieldWithName(
	userWholeFieldLogWithName_Date,
	userWholeFieldLogWithName_Operation,
	userId,
	username)
values(
	@userWholeFieldLogWithName_Date,
	@userWholeFieldLogWithName_Operation,
	@userId,
	@username)
GO
/****** Object:  StoredProcedure [dbo].[sp_Log_usersWholeField]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Log_usersWholeField]
	@userWholeFieldLog_Date varchar(25),
	@userWholeFieldLog_Operation varchar(10),
	@userId int
As
Insert into Log_UsersWholeField(
	userWholeFieldLog_Date,
	userWholeFieldLog_Operation,
	userId)
values(
	@userWholeFieldLog_Date,
	@userWholeFieldLog_Operation,
	@userId)
GO
/****** Object:  StoredProcedure [dbo].[sp_Log_usersIndivField]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Log_usersIndivField]
	@userIndivFieldLog_Date varchar(25),
	@userIndivFieldLog_Operation varchar(10),
	@userId int,
	@userIndivFieldLog_Field varchar(50),
	@userIndivFieldLog_DataBefore varchar(50),
	@userIndivFieldLog_DataLater varchar(50)
As
Insert into Log_UsersIndivField(
	userIndivFieldLog_Date,
	userIndivFieldLog_Operation,
	userId,
	userIndivFieldLog_Field,
	userIndivFieldLog_DataBefore,
	userIndivFieldLog_DataLater)
values(
	@userIndivFieldLog_Date,
	@userIndivFieldLog_Operation,
	@userId,
	@userIndivFieldLog_Field,
	@userIndivFieldLog_DataBefore,
	@userIndivFieldLog_DataLater)
GO
/****** Object:  StoredProcedure [dbo].[sp_Log_patientWholeFieldWithName]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Log_patientWholeFieldWithName]
	@patientWholeFieldLogWithName_Date varchar(25),
	@patientWholeFieldLogWithName_Operation varchar(10),
	@userId int,
	@patientId int,
	@patientFullName varchar(65)
As
Insert into Log_PatientWholeFieldWithName(
	patientWholeFieldLogWithName_Date,
	patientWholeFieldLogWithName_Operation,
	userId,
	patientId,
	patientFullName)
values(
	@patientWholeFieldLogWithName_Date,
	@patientWholeFieldLogWithName_Operation,
	@userId,
	@patientId,
	@patientFullName)
GO
/****** Object:  StoredProcedure [dbo].[sp_Log_patientWholeField]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Log_patientWholeField]
	@patientWholeFieldLog_Date varchar(25),
	@patientWholeFieldLog_Operation varchar(10),
	@userId int,
	@patientId int
As
Insert into Log_PatientWholeField(
	patientWholeFieldLog_Date,
	patientWholeFieldLog_Operation,
	userId,
	patientId)
values(
	@patientWholeFieldLog_Date,
	@patientWholeFieldLog_Operation,
	@userId,
	@patientId)
GO
/****** Object:  StoredProcedure [dbo].[sp_Log_patientIndivField]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Log_patientIndivField]
	@patientIndivFieldLog_Date varchar(25),
	@patientIndivFieldLog_Operation varchar(10),
	@patientId int,
	@patientIndivFieldLog_Field varchar(50),
	@patientIndivFieldLog_DataBefore varchar(150),
	@patientIndivFieldLog_DataLater varchar(150)
As
Insert into Log_PatientIndivField(
	patientIndivFieldLog_Date,
	patientIndivFieldLog_Operation,
	patientId,
	patientIndivFieldLog_Field,
	patientIndivFieldLog_DataBefore,
	patientIndivFieldLog_DataLater)
values(
	@patientIndivFieldLog_Date,
	@patientIndivFieldLog_Operation,
	@patientId,
	@patientIndivFieldLog_Field,
	@patientIndivFieldLog_DataBefore,
	@patientIndivFieldLog_DataLater)
GO
/****** Object:  StoredProcedure [dbo].[sp_Log_otherUserWholeFieldWithName]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Log_otherUserWholeFieldWithName]
	@otherUserWholeFieldLogWithName_Date varchar(25),
	@otherUserWholeFieldLogWithName_Operation varchar(10),
	@userId int,
	@otherUserId int,
	@otherUserFullName varchar(65)
As
Insert into Log_OtherUserWholeFieldWithName(
	otherUserWholeFieldLogWithName_Date,
	otherUserWholeFieldLogWithName_Operation,
	userId,
	otherUserId,
	otherUserFullName)
values(
	@otherUserWholeFieldLogWithName_Date,
	@otherUserWholeFieldLogWithName_Operation,
	@userId,
	@otherUserId,
	@otherUserFullName)
GO
/****** Object:  StoredProcedure [dbo].[sp_Log_otherUserWholeField]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Log_otherUserWholeField]
	@otherUserWholeFieldLog_Date varchar(25),
	@otherUserWholeFieldLog_Operation varchar(10),
	@userId int,
	@otherUserId int
As
Insert into Log_OtherUserWholeField(
	otherUserWholeFieldLog_Date,
	otherUserWholeFieldLog_Operation,
	userId,
	otherUserId)
values(
	@otherUserWholeFieldLog_Date,
	@otherUserWholeFieldLog_Operation,
	@userId,
	@otherUserId)
GO
/****** Object:  StoredProcedure [dbo].[sp_Log_otherUserIndivField]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Log_otherUserIndivField]
	@otherUserIndivFieldLog_Date varchar(25),
	@otherUserIndivFieldLog_Operation varchar(10),
	@otherUserId int,
	@otherUserIndivFieldLog_Field varchar(50),
	@otherUserIndivFieldLog_DataBefore varchar(150),
	@otherUserIndivFieldLog_DataLater varchar(150)
As
Insert into Log_OtherUserIndivField(
	otherUserIndivFieldLog_Date,
	otherUserIndivFieldLog_Operation,
	otherUserId,
	otherUserIndivFieldLog_Field,
	otherUserIndivFieldLog_DataBefore,
	otherUserIndivFieldLog_DataLater)
values(
	@otherUserIndivFieldLog_Date,
	@otherUserIndivFieldLog_Operation,
	@otherUserId,
	@otherUserIndivFieldLog_Field,
	@otherUserIndivFieldLog_DataBefore,
	@otherUserIndivFieldLog_DataLater)
GO
/****** Object:  StoredProcedure [dbo].[sp_Log_hospitalWholeFieldWithName]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Log_hospitalWholeFieldWithName]
	@hospitalWholeFieldLogWithName_Date varchar(25),
	@hospitalWholeFieldLogWithName_Operation varchar(10),
	@hospitalId int,
	@hospitalFullName varchar(50)
As
Insert into Log_HospitalWholeFieldWithName(
	hospitalWholeFieldLogWithName_Date,
	hospitalWholeFieldLogWithName_Operation,
	hospitalId,
	hospitalFullName)
values(
	@hospitalWholeFieldLogWithName_Date,
	@hospitalWholeFieldLogWithName_Operation,
	@hospitalId,
	@hospitalFullName)
GO
/****** Object:  StoredProcedure [dbo].[sp_Log_hospitalWholeField]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Log_hospitalWholeField]
	@hospitalWholeFieldLog_Date varchar(25),
	@hospitalWholeFieldLog_Operation varchar(10),
	@hospitalId int
As
Insert into Log_HospitalWholeField(
	hospitalWholeFieldLog_Date,
	hospitalWholeFieldLog_Operation,
	hospitalId)
values(
	@hospitalWholeFieldLog_Date,
	@hospitalWholeFieldLog_Operation,
	@hospitalId)
GO
/****** Object:  StoredProcedure [dbo].[sp_Log_hospitalIndivField]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Log_hospitalIndivField]
	@hospitalIndivFieldLog_Date varchar(25),
	@hospitalIndivFieldLog_Operation varchar(10),
	@hospitalId int,
	@hospitalIndivFieldLog_Field varchar(50),
	@hospitalIndivFieldLog_DataBefore varchar(300),
	@hospitalIndivFieldLog_DataLater varchar(300)
As
Insert into Log_HospitalIndivField(
	hospitalIndivFieldLog_Date,
	hospitalIndivFieldLog_Operation,
	hospitalId,
	hospitalIndivFieldLog_Field,
	hospitalIndivFieldLog_DataBefore,
	hospitalIndivFieldLog_DataLater)
values(
	@hospitalIndivFieldLog_Date,
	@hospitalIndivFieldLog_Operation,
	@hospitalId,
	@hospitalIndivFieldLog_Field,
	@hospitalIndivFieldLog_DataBefore,
	@hospitalIndivFieldLog_DataLater)
GO
/****** Object:  StoredProcedure [dbo].[sp_Log_feedbackWholeFieldWithDateToFrom]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Log_feedbackWholeFieldWithDateToFrom]
	@feedbackWholeFieldLogWithDateToFrom_Date varchar(25),
	@feedbackWholeFieldLogWithDateToFrom_Operation varchar(10),
	@feedbackId int,
	@feedbackDate varchar(25),
	@feedbackByUserId int,
	@feedbackToUserId int
As
Insert into Log_FeedbackWholeFieldWithDateToFrom(
	feedbackWholeFieldLogWithDateToFrom_Date,
	feedbackWholeFieldLogWithDateToFrom_Operation,
	feedbackId,
	feedbackDate,
	feedbackByUserId,
	feedbackToUserId)
values(
	@feedbackWholeFieldLogWithDateToFrom_Date,
	@feedbackWholeFieldLogWithDateToFrom_Operation,
	@feedbackId,
	@feedbackDate,
	@feedbackByUserId,
	@feedbackToUserId)
GO
/****** Object:  StoredProcedure [dbo].[sp_Log_feedbackWholeField]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Log_feedbackWholeField]
	@feedbackWholeFieldLog_Date varchar(25),
	@feedbackWholeFieldLog_Operation varchar(10),
	@feedbackId int
As
Insert into Log_FeedbackWholeField(
	feedbackWholeFieldLog_Date,
	feedbackWholeFieldLog_Operation,
	feedbackId)
values(
	@feedbackWholeFieldLog_Date,
	@feedbackWholeFieldLog_Operation,
	@feedbackId)
GO
/****** Object:  StoredProcedure [dbo].[sp_Log_feedbackIndivField]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Log_feedbackIndivField]
	@feedbackIndivFieldLog_Date varchar(25),
	@feedbackIndivFieldLog_Operation varchar(10),
	@feedbackId int,
	@feedbackIndivFieldLog_Field varchar(50),
	@feedbackIndivFieldLog_DataBefore varchar(400),
	@feedbackIndivFieldLog_DataLater varchar(400)
As
Insert into Log_FeedbackIndivField(
	feedbackIndivFieldLog_Date,
	feedbackIndivFieldLog_Operation,
	feedbackId,
	feedbackIndivFieldLog_Field,
	feedbackIndivFieldLog_DataBefore,
	feedbackIndivFieldLog_DataLater)
values(
	@feedbackIndivFieldLog_Date,
	@feedbackIndivFieldLog_Operation,
	@feedbackId,
	@feedbackIndivFieldLog_Field,
	@feedbackIndivFieldLog_DataBefore,
	@feedbackIndivFieldLog_DataLater)
GO
/****** Object:  StoredProcedure [dbo].[sp_Log_entryUserWholeFieldWithName]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Log_entryUserWholeFieldWithName]
	@entryUserWholeFieldLogWithName_Date varchar(25),
	@entryUserWholeFieldLogWithName_Operation varchar(10),
	@userId int,
	@entryUserId int,
	@entryUserFullName varchar(65)
As
Insert into Log_EntryUserWholeFieldWithName(
	entryUserWholeFieldLogWithName_Date,
	entryUserWholeFieldLogWithName_Operation,
	userId,
	entryUserId,
	entryUserFullName)
values(
	@entryUserWholeFieldLogWithName_Date,
	@entryUserWholeFieldLogWithName_Operation,
	@userId,
	@entryUserId,
	@entryUserFullName)
GO
/****** Object:  StoredProcedure [dbo].[sp_Log_entryUserWholeField]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Log_entryUserWholeField]
	@entryUserWholeFieldLog_Date varchar(25),
	@entryUserWholeFieldLog_Operation varchar(10),
	@userId int,
	@entryUserId int
As
Insert into Log_EntryUserWholeField(
	entryUserWholeFieldLog_Date,
	entryUserWholeFieldLog_Operation,
	userId,
	entryUserId)
values(
	@entryUserWholeFieldLog_Date,
	@entryUserWholeFieldLog_Operation,
	@userId,
	@entryUserId)
GO
/****** Object:  StoredProcedure [dbo].[sp_Log_entryUserIndivField]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Log_entryUserIndivField]
	@entryUserIndivFieldLog_Date varchar(25),
	@entryUserIndivFieldLog_Operation varchar(10),
	@entryUserId int,
	@entryUserIndivFieldLog_Field varchar(50),
	@entryUserIndivFieldLog_DataBefore varchar(150),
	@entryUserIndivFieldLog_DataLater varchar(150),
	@entryUserIndivFieldLog_UpdatedBy int
As
Insert into Log_EntryUserIndivField(
	entryUserIndivFieldLog_Date,
	entryUserIndivFieldLog_Operation,
	entryUserId,
	entryUserIndivFieldLog_Field,
	entryUserIndivFieldLog_DataBefore,
	entryUserIndivFieldLog_DataLater,
	entryUserIndivFieldLog_UpdatedBy)
values(
	@entryUserIndivFieldLog_Date,
	@entryUserIndivFieldLog_Operation,
	@entryUserId,
	@entryUserIndivFieldLog_Field,
	@entryUserIndivFieldLog_DataBefore,
	@entryUserIndivFieldLog_DataLater,
	@entryUserIndivFieldLog_UpdatedBy)
GO
/****** Object:  StoredProcedure [dbo].[sp_Log_diseaseWholeField]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Log_diseaseWholeField]
	@diseaseWholeFieldLog_Date varchar(25),
	@diseaseWholeFieldLog_Operation varchar(10),
	@diseaseId int
As
Insert into Log_DiseaseWholeField(
	diseaseWholeFieldLog_Date,
	diseaseWholeFieldLog_Operation,
	diseaseId)
values(
	@diseaseWholeFieldLog_Date,
	@diseaseWholeFieldLog_Operation,
	@diseaseId)
GO
/****** Object:  StoredProcedure [dbo].[sp_Log_diseaseIndivField]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Log_diseaseIndivField]
	@diseaseIndivFieldLog_Date varchar(25),
	@diseaseIndivFieldLog_Operation varchar(10),
	@diseaseId int,
	@diseaseIndivFieldLog_Field varchar(50),
	@diseaseIndivFieldLog_DataBefore varchar(400),
	@diseaseIndivFieldLog_DataLater varchar(400)
As
Insert into Log_DiseaseIndivField(
	diseaseIndivFieldLog_Date,
	diseaseIndivFieldLog_Operation,
	diseaseId,
	diseaseIndivFieldLog_Field,
	diseaseIndivFieldLog_DataBefore,
	diseaseIndivFieldLog_DataLater)
values(
	@diseaseIndivFieldLog_Date,
	@diseaseIndivFieldLog_Operation,
	@diseaseId,
	@diseaseIndivFieldLog_Field,
	@diseaseIndivFieldLog_DataBefore,
	@diseaseIndivFieldLog_DataLater)
GO
/****** Object:  StoredProcedure [dbo].[sp_Log_checkedPatWholeField]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Log_checkedPatWholeField]
	@checkedPatWholeFieldLog_Date varchar(25),
	@checkedPatWholeFieldLog_Operation varchar(10),
	@checkedPatId int
As
Insert into Log_CheckedPatWholeField(
	checkedPatWholeFieldLog_Date,
	checkedPatWholeFieldLog_Operation,
	checkedPatId)
values(
	@checkedPatWholeFieldLog_Date,
	@checkedPatWholeFieldLog_Operation,
	@checkedPatId)
GO
/****** Object:  StoredProcedure [dbo].[sp_Log_checkedPatIndivField]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Log_checkedPatIndivField]
	@checkedPatIndivFieldLog_Date varchar(25),
	@checkedPatIndivFieldLog_Operation varchar(10),
	@checkedPatId int,
	@checkedPatIndivFieldLog_Field varchar(50),
	@checkedPatIndivFieldLog_DataBefore varchar(400),
	@checkedPatIndivFieldLog_DataLater varchar(400)
As
Insert into Log_CheckedPatIndivField(
	checkedPatIndivFieldLog_Date,
	checkedPatIndivFieldLog_Operation,
	checkedPatId,
	checkedPatIndivFieldLog_Field,
	checkedPatIndivFieldLog_DataBefore,
	checkedPatIndivFieldLog_DataLater)
values(
	@checkedPatIndivFieldLog_Date,
	@checkedPatIndivFieldLog_Operation,
	@checkedPatId,
	@checkedPatIndivFieldLog_Field,
	@checkedPatIndivFieldLog_DataBefore,
	@checkedPatIndivFieldLog_DataLater)
GO
/****** Object:  StoredProcedure [dbo].[sp_hospital]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_hospital]
	@hospitalType varchar(50),
	@hospitalFullName varchar(50),

	@hospitalHouseAdd varchar(40),
	@hospitalCity varchar(20),
	@hospitalDistrict varchar(20),
	@hospitalDescription varchar(300),
	
	@hospitalRegdBy int,
	@hospitalRegdDate varchar(25) 
As
Insert into Hospital(
	hospitalType,
	hospitalFullName,

	hospitalHouseAdd,
	hospitalCity,
	hospitalDistrict,
	hospitalDescription,

	hospitalRegdBy,
	hospitalRegdDate)
values(
	@hospitalType,
	@hospitalFullName,

	@hospitalHouseAdd,
	@hospitalCity,
	@hospitalDistrict,
	@hospitalDescription,
	
	@hospitalRegdBy,
	@hospitalRegdDate)
GO
/****** Object:  StoredProcedure [dbo].[sp_HISUsedDate]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_HISUsedDate]
	@hISUsedDate_Date varchar(25),
	@hISUsedDate_Table varchar(60),
	@hISUsedDate_TableKey int
As
Insert into HISUsedDate(
	hISUsedDate_Date,
	hISUsedDate_Table,
	hISUsedDate_TableKey)
values(
	@hISUsedDate_Date,
	@hISUsedDate_Table,
	@hISUsedDate_TableKey)
GO
/****** Object:  StoredProcedure [dbo].[sp_guestUser]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_guestUser]
	@guestUserName varchar(20),
	@guestUserHitDate varchar(25)
As
Insert into GuestUser(
	guestUserName,
	guestUserHitDate)
values(
	@guestUserName,
	@guestUserHitDate)
GO
/****** Object:  StoredProcedure [dbo].[sp_feedback]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_feedback]
	@feedbackDate varchar(25),
	@feedbackByUserId int,
	@feedbackToUserId int,
	@feedbackSubject varchar(100), 
	@feedbackDescription varchar(400)
As
Insert into Feedback(
	feedbackDate,
	feedbackByUserId,
	feedbackToUserId,
	feedbackSubject,
	feedbackDescription)
values(
	@feedbackDate,
	@feedbackByUserId,
	@feedbackToUserId,
	@feedbackSubject,
	@feedbackDescription)
GO
/****** Object:  StoredProcedure [dbo].[sp_entryUser]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_entryUser]
	@userId int,

	@entryUserFirstName varchar(20),
	@entryUserMiddleName varchar(20),
	@entryUserLastName varchar(20),

	@entryUserDob varchar(15), 
	@entryUserGender varchar(1),
	@entryUserContact varchar(20), 
	@entryUserSecContact varchar(50),

	@entryUserHouseAdd varchar(40),
	@entryUserCity varchar(20),
	@entryUserDistrict varchar(20),
	@entryUserCountry varchar(25),

	@entryUserDesignation varchar(30),
	@entryUserHospital varchar(50),
	@entryUserRegisteredby int,
	@entryUserInactiveOrActive varchar(10)
As
Insert into EntryUser(
	userId,

	entryUserFirstName,
	entryUserMiddleName,
	entryUserLastName,

	entryUserDob, 
	entryUserGender,
	entryUserContact, 
	entryUserSecContact,

	entryUserHouseAdd,
	entryUserCity,
	entryUserDistrict,
	entryUserCountry,

	entryUserDesignation,
	entryUserHospital,
	entryUserRegisteredby,
	entryUserInactiveOrActive)
values(
	@userId,

	@entryUserFirstName,
	@entryUserMiddleName,
	@entryUserLastName,

	@entryUserDob, 
	@entryUserGender,
	@entryUserContact, 
	@entryUserSecContact,

	@entryUserHouseAdd,
	@entryUserCity,
	@entryUserDistrict,
	@entryUserCountry,

	@entryUserDesignation,
	@entryUserHospital,
	@entryUserRegisteredby,
	@entryUserInactiveOrActive)
GO
/****** Object:  StoredProcedure [dbo].[sp_disease]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_disease]
	@diseaseName varchar(50),
	@diseaseDescription varchar(400),
	@diseaseRegdBy int,
	@diseaseRegdDate varchar(25) 
As
Insert into Disease(
	diseaseName,
	diseaseDescription,
	diseaseRegdBy,
	diseaseRegdDate)
values(
	@diseaseName,
	@diseaseDescription,
	@diseaseRegdBy,
	@diseaseRegdDate)
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_users]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_delete_users]
	@userId int
As
Delete From Users
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_patient]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_delete_patient]
	@userId int
As
Delete From Patient
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_otherUser]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_delete_otherUser]
	@userId int
As
Delete From OtherUser
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_Hospital]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_delete_Hospital]    
	@hospitalId int
As
Delete From Hospital
where hospitalId = @hospitalId
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_Feedback]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_delete_Feedback]    
	@feedbackId int
As
Delete From Feedback
where feedbackId = @feedbackId
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_entryUser]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_delete_entryUser]
	@userId int
As
Delete From EntryUser
where userId = @userId
GO
/****** Object:  StoredProcedure [dbo].[sp_checkedPat]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_checkedPat]
	@patientId int,

	@checkedPatDate varchar(25),
	@checkedPatDiseaseName varchar(50),
	@checkedPatRemarks varchar(400),
	@checkedPatHospital varchar(50),

	@checkedPatBy int
As
Insert into CheckedPat(
	patientId,

	checkedPatDate,
	checkedPatDiseaseName,
	checkedPatRemarks,
	checkedPatHospital,

	checkedPatBy)
values(
	@patientId,

	@checkedPatDate,
	@checkedPatDiseaseName,
	@checkedPatRemarks,
	@checkedPatHospital,

	@checkedPatBy)
GO
/****** Object:  View [dbo].[Chart_DateUnhealthyPeople]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateUnhealthyPeople] As
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0) AS Dates, 
COUNT(patientId) As CountPatient
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0)
GO
/****** Object:  View [dbo].[Chart_DateUnhealthyMale]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateUnhealthyMale] As
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0) AS Dates, 
COUNT(patientId) As CountMale
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
WHERE Patient.patientGender = 'M'
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0)
GO
/****** Object:  View [dbo].[Chart_DateUnhealthyFemale]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateUnhealthyFemale] As
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0) AS Dates, 
COUNT(patientId) As CountFemale
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
WHERE Patient.patientGender = 'F'
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0)
GO
/****** Object:  View [dbo].[Chart_DatePeopleDistrict]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DatePeopleDistrict] AS
SELECT CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE) AS Dates, 
Patient.patientId, Patient.patientDistrict
FROM Patient INNER JOIN Users
ON Patient.userId = Users.userId
GO
/****** Object:  View [dbo].[Chart_DatePeopleCity]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DatePeopleCity] AS
SELECT CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE) AS Dates, 
Patient.patientId, Patient.patientCity
FROM Patient INNER JOIN Users
ON Patient.userId = Users.userId
GO
/****** Object:  View [dbo].[Chart_DatePeopleAgeGrp]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DatePeopleAgeGrp] AS
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0) AS Dates, 
COUNT(patientId) As CountPeople, NULL As patientAgeGrp, NULL as patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0)
UNION
SELECT DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE)), 0) AS Dates, 
NULL AS CountPeople, patientAgeGrp, Patient.patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
GROUP BY patientId, patientAgeGrp, DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) As DATE)), 0)
GO
/****** Object:  View [dbo].[Chart_DateMaleDistrict]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateMaleDistrict] AS
SELECT CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE) AS Dates, 
Patient.patientId, Patient.patientDistrict
FROM Patient INNER JOIN Users
ON Patient.userId = Users.userId
WHERE Patient.patientGender = 'M'
GO
/****** Object:  View [dbo].[Chart_DateMaleCity]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateMaleCity] AS
SELECT CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE) AS Dates, 
Patient.patientId, Patient.patientCity
FROM Patient INNER JOIN Users
ON Patient.userId = Users.userId
WHERE Patient.patientGender = 'M'
GO
/****** Object:  View [dbo].[Chart_DateMaleAgeGrp]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateMaleAgeGrp] AS
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0) AS Dates, 
COUNT(patientId) As CountMale, NULL As patientAgeGrp, NULL As patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
WHERE Patient.patientGender = 'M'
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0)
UNION
SELECT DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE)), 0) AS Dates, 
NULL AS CountMale, patientAgeGrp, Patient.patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
GROUP BY patientId, patientAgeGrp, DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) As DATE)), 0)
GO
/****** Object:  View [dbo].[Chart_DateFemaleDistrict]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateFemaleDistrict] AS
SELECT CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE) AS Dates, 
Patient.patientId, Patient.patientDistrict
FROM Patient INNER JOIN Users
ON Patient.userId = Users.userId
WHERE Patient.patientGender = 'F'
GO
/****** Object:  View [dbo].[Chart_DateFemaleCity]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateFemaleCity] AS
SELECT CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE) AS Dates, 
Patient.patientId, Patient.patientCity
FROM Patient INNER JOIN Users
ON Patient.userId = Users.userId
WHERE Patient.patientGender = 'F'
GO
/****** Object:  View [dbo].[Chart_DateFemaleAgeGrp]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateFemaleAgeGrp] AS
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0) AS Dates, 
COUNT(patientId) As CountFemale, NULL As patientAgeGrp, NULL As patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
WHERE Patient.patientGender = 'F'
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0)
UNION
SELECT DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE)), 0) AS Dates, 
NULL AS CountFemale, patientAgeGrp, Patient.patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
GROUP BY patientId, patientAgeGrp, DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) As DATE)), 0)
GO
/****** Object:  View [dbo].[Chart_DateDiseasePeopleDistrict]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateDiseasePeopleDistrict] AS
SELECT DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, diseaseRegdDate, 103) AS DATE)), 0) AS Dates, 
COUNT(diseaseId) As CountDisease, NULL As patientId, NULL As patientDistrict
FROM Disease
GROUP BY DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, diseaseRegdDate, 103) AS DATE)), 0)
UNION
SELECT CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE) AS Dates, 
NULL As CountDisease, Patient.patientId, Patient.patientDistrict
FROM Patient INNER JOIN Users
ON Patient.userId = Users.userId
GO
/****** Object:  View [dbo].[Chart_DateDiseasePeopleCity]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateDiseasePeopleCity] AS
SELECT DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, diseaseRegdDate, 103) AS DATE)), 0) AS Dates, 
COUNT(diseaseId) As CountDisease, NULL As patientId, NULL As patientCity
FROM Disease
GROUP BY DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, diseaseRegdDate, 103) AS DATE)), 0)
UNION
SELECT CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE) AS Dates, 
NULL As CountDisease, Patient.patientId, Patient.patientCity
FROM Patient INNER JOIN Users
ON Patient.userId = Users.userId
GO
/****** Object:  View [dbo].[Chart_DateDiseasePeopleAgeGrpDistrict]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateDiseasePeopleAgeGrpDistrict] AS
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0) AS Dates, 
COUNT(diseaseId) As CountDisease, NULL As CountPatient, NULL As patientAgeGrp, NULL As patientDistrict, NULL As patientId
FROM Disease
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0)
UNION
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0) AS Dates, 
NULL As CountDisease, COUNT(patientId) As CountPatient, NULL As patientAgeGrp, NULL As patientDistrict, NULL As patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0)
UNION
SELECT CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE) AS Dates, 
NULL As CountDisease, NULL AS CountPatient, patientAgeGrp, patientDistrict, Patient.patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
GO
/****** Object:  View [dbo].[Chart_DateDiseasePeopleAgeGrpCity]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateDiseasePeopleAgeGrpCity] AS
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0) AS Dates, 
COUNT(diseaseId) As CountDisease, NULL As CountPatient, NULL As patientAgeGrp, NULL As patientCity, NULL As patientId
FROM Disease
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0)
UNION
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0) AS Dates, 
NULL As CountDisease, COUNT(patientId) As CountPatient, NULL As patientAgeGrp, NULL As patientCity, NULL As patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0)
UNION
SELECT CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE) AS Dates, 
NULL As CountDisease, NULL As CountPatient, patientAgeGrp, patientCity, Patient.patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
GO
/****** Object:  View [dbo].[Chart_DateDiseasePeopleAgeGrp]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateDiseasePeopleAgeGrp] AS
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0) AS Dates, 
COUNT(diseaseId) As CountDisease, NULL As CountPeople, NULL As patientAgeGrp, NULL As patientId
FROM Disease
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0)
UNION
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0) AS Dates, 
NULL As CountDisease, COUNT(patientId) As CountPeople, NULL As patientAgeGrp, NULL as patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0)
UNION
SELECT DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE)), 0) AS Dates, 
NULL As CountDisease, NULL AS CountPeople, patientAgeGrp, Patient.patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
GROUP BY patientId, patientAgeGrp, DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) As DATE)), 0)
GO
/****** Object:  View [dbo].[Chart_DateDiseasePeople]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateDiseasePeople] AS
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0) AS Dates, 
COUNT(diseaseId) As CountDisease, NULL As CountPatient
FROM Disease
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0)
UNION
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0) AS Dates, 
NULL As CountDisease, COUNT(patientId) As CountPatient
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0)
GO
/****** Object:  View [dbo].[Chart_DateDiseaseMaleDistrict]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateDiseaseMaleDistrict] AS
SELECT DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, diseaseRegdDate, 103) AS DATE)), 0) AS Dates, 
COUNT(diseaseId) As CountDisease, NULL As patientId, NULL As patientDistrict
FROM Disease
GROUP BY DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, diseaseRegdDate, 103) AS DATE)), 0)
UNION
SELECT CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE) AS Dates, 
NULL As CountDisease, Patient.patientId, Patient.patientDistrict
FROM Patient INNER JOIN Users
ON Patient.userId = Users.userId
WHERE Patient.patientGender = 'M'
GO
/****** Object:  View [dbo].[Chart_DateDiseaseMaleCity]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateDiseaseMaleCity] AS
SELECT DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, diseaseRegdDate, 103) AS DATE)), 0) AS Dates, 
COUNT(diseaseId) As CountDisease, NULL As patientId, NULL As patientCity
FROM Disease
GROUP BY DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, diseaseRegdDate, 103) AS DATE)), 0)
UNION
SELECT CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE) AS Dates, 
NULL As CountDisease, Patient.patientId, Patient.patientCity
FROM Patient INNER JOIN Users
ON Patient.userId = Users.userId
WHERE Patient.patientGender = 'M'
GO
/****** Object:  View [dbo].[Chart_DateDiseaseMaleAgeGrpDistrict]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateDiseaseMaleAgeGrpDistrict] AS
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0) AS Dates, 
COUNT(diseaseId) As CountDisease, NULL As CountMale, NULL As patientAgeGrp, NULL As patientDistrict, NULL As patientId
FROM Disease
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0)
UNION
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0) AS Dates, 
NULL As CountDisease, COUNT(patientId) As CountMale, NULL As patientAgeGrp, NULL As patientDistrict, NULL As patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
WHERE Patient.patientGender = 'M'
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0)
UNION
SELECT CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE) AS Dates, 
NULL As CountDisease, NULL As CountMale, patientAgeGrp, patientDistrict, Patient.patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
GO
/****** Object:  View [dbo].[Chart_DateDiseaseMaleAgeGrpCity]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateDiseaseMaleAgeGrpCity] AS
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0) AS Dates, 
COUNT(diseaseId) As CountDisease, NULL As CountMale, NULL As patientAgeGrp, NULL As patientCity, NULL As patientId
FROM Disease
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0)
UNION
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0) AS Dates, 
NULL As CountDisease, COUNT(patientId) As CountMale, NULL As patientAgeGrp, NULL As patientCity, NULL As patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
WHERE Patient.patientGender = 'M'
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0)
UNION
SELECT CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE) AS Dates, 
NULL As CountDisease, NULL As CountMale, patientAgeGrp, patientCity, Patient.patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
GO
/****** Object:  View [dbo].[Chart_DateDiseaseMaleAgeGrp]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateDiseaseMaleAgeGrp] AS
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0) AS Dates, 
COUNT(diseaseId) As CountDisease, NULL As CountMale, NULL As patientAgeGrp, NULL As patientId
FROM Disease
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0)
UNION
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0) AS Dates, 
NULL As CountDisease, COUNT(patientId) As CountMale, NULL As patientAgeGrp, NULL As patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
WHERE Patient.patientGender = 'M'
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0)
UNION
SELECT DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE)), 0) AS Dates, 
NULL As CountDisease, NULL AS CountMale, patientAgeGrp, Patient.patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
GROUP BY patientId, patientAgeGrp, DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) As DATE)), 0)
GO
/****** Object:  View [dbo].[Chart_DateDiseaseMale]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateDiseaseMale] AS
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0) AS Dates, 
COUNT(diseaseId) As CountDisease, NULL As CountMale
FROM Disease
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0)
UNION
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0) AS Dates, 
NULL As CountDisease, COUNT(patientId) As CountMale
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
WHERE Patient.patientGender = 'M'
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0)
GO
/****** Object:  View [dbo].[Chart_DateDiseaseFemaleDistrict]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateDiseaseFemaleDistrict] AS
SELECT DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, diseaseRegdDate, 103) AS DATE)), 0) AS Dates, 
COUNT(diseaseId) As CountDisease, NULL As patientId, NULL As patientDistrict
FROM Disease
GROUP BY DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, diseaseRegdDate, 103) AS DATE)), 0)
UNION
SELECT CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE) AS Dates, 
NULL As CountDisease, Patient.patientId, Patient.patientDistrict
FROM Patient INNER JOIN Users
ON Patient.userId = Users.userId
WHERE Patient.patientGender = 'F'
GO
/****** Object:  View [dbo].[Chart_DateDiseaseFemaleCity]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateDiseaseFemaleCity] AS
SELECT DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, diseaseRegdDate, 103) AS DATE)), 0) AS Dates, 
COUNT(diseaseId) As CountDisease, NULL As patientId, NULL As patientCity
FROM Disease
GROUP BY DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, diseaseRegdDate, 103) AS DATE)), 0)
UNION
SELECT CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE) AS Dates, 
NULL As CountDisease, Patient.patientId, Patient.patientCity
FROM Patient INNER JOIN Users
ON Patient.userId = Users.userId
WHERE Patient.patientGender = 'F'
GO
/****** Object:  View [dbo].[Chart_DateDiseaseFemaleAgeGrpDistrict]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateDiseaseFemaleAgeGrpDistrict] AS
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0) AS Dates, 
COUNT(diseaseId) As CountDisease, NULL As CountFemale, NULL As patientAgeGrp, NULL As patientDistrict, NULL As patientId
FROM Disease
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0)
UNION
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0) AS Dates, 
NULL As CountDisease, COUNT(patientId) As CountFemale, NULL As patientAgeGrp, NULL As patientDistrict, NULL As patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
WHERE Patient.patientGender = 'F'
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0)
UNION
SELECT CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE) AS Dates, 
NULL As CountDisease, NULL As CountFemale, patientAgeGrp, patientDistrict, Patient.patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
GO
/****** Object:  View [dbo].[Chart_DateDiseaseFemaleAgeGrpCity]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateDiseaseFemaleAgeGrpCity] AS
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0) AS Dates, 
COUNT(diseaseId) As CountDisease, NULL As CountFemale, NULL As patientAgeGrp, NULL As patientCity, NULL As patientId
FROM Disease
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0)
UNION
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0) AS Dates, 
NULL As CountDisease, COUNT(patientId) As CountFemale, NULL As patientAgeGrp, NULL As patientCity, NULL As patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
WHERE Patient.patientGender = 'F'
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0)
UNION
SELECT CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE) AS Dates, 
NULL As CountDisease, NULL As CountFemale, patientAgeGrp, patientCity, Patient.patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
GO
/****** Object:  View [dbo].[Chart_DateDiseaseFemaleAgeGrp]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateDiseaseFemaleAgeGrp] AS
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0) AS Dates, 
COUNT(diseaseId) As CountDisease, NULL As CountFemale, NULL As patientAgeGrp, NULL As patientId
FROM Disease
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0)
UNION
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0) AS Dates, 
NULL As CountDisease, COUNT(patientId) As CountFemale, NULL As patientAgeGrp, NULL As patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
WHERE Patient.patientGender = 'F'
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0)
UNION
SELECT DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE)), 0) AS Dates, 
NULL As CountDisease, NULL AS CountFemale, patientAgeGrp, Patient.patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
GROUP BY patientId, patientAgeGrp, DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) As DATE)), 0)
GO
/****** Object:  View [dbo].[Chart_DateDiseaseFemale]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateDiseaseFemale] AS
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0) AS Dates, 
COUNT(diseaseId) As CountDisease, NULL As CountFemale
FROM Disease
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0)
UNION
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0) AS Dates, 
NULL As CountDisease, COUNT(patientId) As CountFemale
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
WHERE Patient.patientGender = 'F'
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, Users.userRegisteredDate, 103)), 0)
GO
/****** Object:  View [dbo].[Chart_DateDiseaseDistrictAgeGrp]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateDiseaseDistrictAgeGrp] AS
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0) AS Dates, 
COUNT(diseaseId) As CountDisease, NULL As patientAgeGrp, NULL As patientDistrict, NULL As patientId
FROM Disease
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0)
UNION
SELECT CONVERT(DATETIME, Users.userRegisteredDate, 103) AS Dates, 
NULL As CountDisease, patientAgeGrp, patientDistrict, Patient.patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
GO
/****** Object:  View [dbo].[Chart_DateDiseaseDistrict]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateDiseaseDistrict] AS
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0) AS Dates, 
COUNT(diseaseId) As CountDisease, NULL As patientDistrict, NULL As patientId
FROM Disease
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0)
UNION
SELECT DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE)), 0) AS Dates, 
NULL AS CountDisease, patientDistrict, Patient.patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
GROUP BY patientId, patientDistrict, DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) As DATE)), 0)
GO
/****** Object:  View [dbo].[Chart_DateDiseaseCityAgeGrp]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateDiseaseCityAgeGrp] AS
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0) AS Dates, 
COUNT(diseaseId) As CountDisease, NULL As patientAgeGrp, NULL As patientCity, NULL As patientId
FROM Disease
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0)
UNION
SELECT CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE) AS Dates, 
NULL As CountDisease, patientAgeGrp, patientCity, Patient.patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
GO
/****** Object:  View [dbo].[Chart_DateDiseaseCity]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateDiseaseCity] AS
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0) AS Dates, 
COUNT(diseaseId) As CountDisease, NULL As patientCity, NULL As patientId
FROM Disease
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0)
UNION
SELECT DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE)), 0) AS Dates, 
NULL AS CountDisease, patientCity, Patient.patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
GROUP BY patientId, patientCity, DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) As DATE)), 0)
GO
/****** Object:  View [dbo].[Chart_DateDiseaseAgeGrp]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateDiseaseAgeGrp] AS
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0) AS Dates, 
COUNT(diseaseId) As CountDisease, NULL As patientAgeGrp, NULL As patientId
FROM Disease
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0)
UNION
SELECT DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE)), 0) AS Dates, 
NULL AS CountDisease, patientAgeGrp, Patient.patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
GROUP BY patientId, patientAgeGrp, DATEADD(day, DATEDIFF(day, 0, CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) As DATE)), 0)
GO
/****** Object:  View [dbo].[Chart_DateDisease]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateDisease] As
SELECT DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0) AS Dates, 
COUNT(diseaseId) As CountDisease
FROM Disease
GROUP BY DATEADD(day, DATEDIFF(day, 0, CONVERT(DATETIME, diseaseRegdDate, 103)), 0)
GO
/****** Object:  View [dbo].[Chart_DateAgeGrpDistrict]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateAgeGrpDistrict] AS
SELECT CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE) AS Dates, 
patientAgeGrp, patientDistrict, Patient.patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
GO
/****** Object:  View [dbo].[Chart_DateAgeGrpCity]    Script Date: 01/16/2015 12:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Chart_DateAgeGrpCity] AS
SELECT CAST(CONVERT(DATETIME, Users.userRegisteredDate, 103) AS DATE) AS Dates, 
patientAgeGrp, patientCity, Patient.patientId
FROM Patient INNER JOIN Users 
ON Patient.userId = Users.userId
GO
/****** Object:  Default [patientCountry_withDefaultValue]    Script Date: 01/16/2015 12:05:25 ******/
ALTER TABLE [dbo].[Patient] ADD  CONSTRAINT [patientCountry_withDefaultValue]  DEFAULT ('Nepal') FOR [patientCountry]
GO
