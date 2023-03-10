USE [master]
GO
/****** Object:  Database [BookStore]    Script Date: 2/27/2023 9:55:26 AM ******/
CREATE DATABASE [BookStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BookStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BookStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BookStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BookStore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BookStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BookStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BookStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BookStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BookStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BookStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [BookStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BookStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BookStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BookStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BookStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BookStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BookStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BookStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BookStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BookStore] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BookStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BookStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BookStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BookStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BookStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BookStore] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BookStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BookStore] SET RECOVERY FULL 
GO
ALTER DATABASE [BookStore] SET  MULTI_USER 
GO
ALTER DATABASE [BookStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BookStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BookStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BookStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BookStore] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BookStore', N'ON'
GO
ALTER DATABASE [BookStore] SET QUERY_STORE = ON
GO
ALTER DATABASE [BookStore] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BookStore]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2/27/2023 9:55:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2/27/2023 9:55:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2/27/2023 9:55:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2/27/2023 9:55:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2/27/2023 9:55:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2/27/2023 9:55:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2/27/2023 9:55:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2/27/2023 9:55:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 2/27/2023 9:55:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Customer] [nvarchar](max) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[OrderQuantity] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[OrderPrice] [float] NOT NULL,
	[OrderName] [nvarchar](max) NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2/27/2023 9:55:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Author] [nvarchar](max) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Description] [nvarchar](3000) NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 2/27/2023 9:55:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Role] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230220175712_IntitalCreate', N'6.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230221141450_User', N'6.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230223083202_BuildCart', N'6.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230223093634_newCart', N'6.0.14')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230227021833_remove-status', N'6.0.14')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'05ed9eaa-6b95-4fed-b6c4-02aec0191caf', N'Quan@gmail.com', N'QUAN@GMAIL.COM', N'Quan@gmail.com', N'QUAN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEK/3baAq6z1R607tbw2cJf/z8qAagzScehxEl32KReHwilBhaGAAinQvoA/dp9crAA==', N'BSWR5ZFUQNYPZTUEMSM3NSGKP3NM4GJA', N'0d0eb10e-87c4-4888-8b11-26877b5f1311', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([Id], [Customer], [OrderDate], [OrderQuantity], [Price], [OrderPrice], [OrderName], [ProductId]) VALUES (12, N'Quan@gmail.com', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, 3456000, 3456000, N'Bo Yeu Me', 3)
INSERT [dbo].[Carts] ([Id], [Customer], [OrderDate], [OrderQuantity], [Price], [OrderPrice], [OrderName], [ProductId]) VALUES (13, N'Quan@gmail.com', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 2, 3456000, 6912000, N'Bo Yeu Me', 3)
INSERT [dbo].[Carts] ([Id], [Customer], [OrderDate], [OrderQuantity], [Price], [OrderPrice], [OrderName], [ProductId]) VALUES (19, N'Quan@gmail.com', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, 36700, 36700, N'Anime', 2)
INSERT [dbo].[Carts] ([Id], [Customer], [OrderDate], [OrderQuantity], [Price], [OrderPrice], [OrderName], [ProductId]) VALUES (27, N'Quan@gmail.com', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, 3456000, 3456000, N'Bo Yeu Me', 3)
INSERT [dbo].[Carts] ([Id], [Customer], [OrderDate], [OrderQuantity], [Price], [OrderPrice], [OrderName], [ProductId]) VALUES (28, N'Quan@gmail.com', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, 345000, 345000, N'Hello World', 4)
INSERT [dbo].[Carts] ([Id], [Customer], [OrderDate], [OrderQuantity], [Price], [OrderPrice], [OrderName], [ProductId]) VALUES (32, N'Quan@gmail.com', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, 36700, 36700, N'Anime', 2)
INSERT [dbo].[Carts] ([Id], [Customer], [OrderDate], [OrderQuantity], [Price], [OrderPrice], [OrderName], [ProductId]) VALUES (33, N'Quan@gmail.com', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, 36700, 36700, N'Anime', 2)
INSERT [dbo].[Carts] ([Id], [Customer], [OrderDate], [OrderQuantity], [Price], [OrderPrice], [OrderName], [ProductId]) VALUES (34, N'Quan@gmail.com', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, 36700, 36700, N'Anime', 2)
INSERT [dbo].[Carts] ([Id], [Customer], [OrderDate], [OrderQuantity], [Price], [OrderPrice], [OrderName], [ProductId]) VALUES (35, N'Quan@gmail.com', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, 36700, 36700, N'Anime', 2)
INSERT [dbo].[Carts] ([Id], [Customer], [OrderDate], [OrderQuantity], [Price], [OrderPrice], [OrderName], [ProductId]) VALUES (36, N'Quan@gmail.com', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, 3456000, 3456000, N'Bo Yeu Me', 3)
INSERT [dbo].[Carts] ([Id], [Customer], [OrderDate], [OrderQuantity], [Price], [OrderPrice], [OrderName], [ProductId]) VALUES (39, N'Quan@gmail.com', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, 36700, 36700, N'Anime', 2)
INSERT [dbo].[Carts] ([Id], [Customer], [OrderDate], [OrderQuantity], [Price], [OrderPrice], [OrderName], [ProductId]) VALUES (40, N'Quan@gmail.com', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, 36700, 36700, N'Anime', 2)
SET IDENTITY_INSERT [dbo].[Carts] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Title], [Image], [Author], [Quantity], [Description], [Price]) VALUES (1, N'Anh yeu em', N'gallery_phpoLkONo1635946583.jpg', N'BMW', 2, N'Em là BMW M5 Competition', 25000)
INSERT [dbo].[Product] ([Id], [Title], [Image], [Author], [Quantity], [Description], [Price]) VALUES (2, N'Anime', N'gallery_phpr6DoUR1635946582.jpg', N'BMW', 4, N'Em là anh ruột BMW M5 trên kia', 36700)
INSERT [dbo].[Product] ([Id], [Title], [Image], [Author], [Quantity], [Description], [Price]) VALUES (3, N'Bo Yeu Me', N'gallery_php0W8aFl1635946581.jpg', N'Merc', 4, N'Tao là Tài Xe Ôm', 3456000)
INSERT [dbo].[Product] ([Id], [Title], [Image], [Author], [Quantity], [Description], [Price]) VALUES (4, N'Hello World', N'gallery_phpS6qKQk1635946580.jpg', N'Audi', 4, N'Hello World phiên bản Audi', 345000)
INSERT [dbo].[Product] ([Id], [Title], [Image], [Author], [Quantity], [Description], [Price]) VALUES (5, N'911 I Do', N'gallery_phpoLkONo1635946583.jpg', N'BMW', 4, N'Hello World BMW', 2000)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 2/27/2023 9:55:27 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2/27/2023 9:55:27 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 2/27/2023 9:55:27 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 2/27/2023 9:55:27 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 2/27/2023 9:55:27 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 2/27/2023 9:55:27 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2/27/2023 9:55:27 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Carts_ProductId]    Script Date: 2/27/2023 9:55:27 AM ******/
CREATE NONCLUSTERED INDEX [IX_Carts_ProductId] ON [dbo].[Carts]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Product_ProductId]
GO
USE [master]
GO
ALTER DATABASE [BookStore] SET  READ_WRITE 
GO
