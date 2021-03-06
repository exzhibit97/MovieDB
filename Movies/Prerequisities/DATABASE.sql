USE [master]
GO
/****** Object:  Database [MovieContext]    Script Date: 2020-01-11 17:23:56 ******/
CREATE DATABASE [MovieContext]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MovieContext', FILENAME = N'C:\Users\Patryk\MovieContext.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MovieContext_log', FILENAME = N'C:\Users\Patryk\MovieContext_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [MovieContext] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MovieContext].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MovieContext] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MovieContext] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MovieContext] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MovieContext] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MovieContext] SET ARITHABORT OFF 
GO
ALTER DATABASE [MovieContext] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MovieContext] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MovieContext] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MovieContext] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MovieContext] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MovieContext] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MovieContext] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MovieContext] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MovieContext] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MovieContext] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MovieContext] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MovieContext] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MovieContext] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MovieContext] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MovieContext] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MovieContext] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MovieContext] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MovieContext] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MovieContext] SET  MULTI_USER 
GO
ALTER DATABASE [MovieContext] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MovieContext] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MovieContext] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MovieContext] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MovieContext] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MovieContext] SET QUERY_STORE = OFF
GO
USE [MovieContext]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [MovieContext]
GO
/****** Object:  Schema [HangFire]    Script Date: 2020-01-11 17:23:56 ******/
CREATE SCHEMA [HangFire]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2020-01-11 17:23:56 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2020-01-11 17:23:56 ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2020-01-11 17:23:56 ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2020-01-11 17:23:56 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2020-01-11 17:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2020-01-11 17:23:56 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2020-01-11 17:23:56 ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2020-01-11 17:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 2020-01-11 17:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[Title] [nvarchar](max) NULL,
	[Runtime] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[PosterPath] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 2020-01-11 17:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CardNo] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rentals]    Script Date: 2020-01-11 17:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rentals](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[MovieID] [int] NOT NULL,
	[PaymentId] [int] NULL,
	[RentStartDate] [datetime2](7) NOT NULL,
	[RentEndDate] [datetime2](7) NOT NULL,
	[IsValid] [bit] NOT NULL,
 CONSTRAINT [PK_Rentals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 2020-01-11 17:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Content] [nvarchar](max) NULL,
	[Rating] [int] NOT NULL,
	[PostedOn] [datetime2](7) NOT NULL,
	[MovieId] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](450) NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[AggregatedCounter]    Script Date: 2020-01-11 17:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[AggregatedCounter](
	[Key] [nvarchar](100) NOT NULL,
	[Value] [bigint] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_CounterAggregated] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Counter]    Script Date: 2020-01-11 17:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Counter](
	[Key] [nvarchar](100) NOT NULL,
	[Value] [int] NOT NULL,
	[ExpireAt] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [CX_HangFire_Counter]    Script Date: 2020-01-11 17:23:56 ******/
CREATE CLUSTERED INDEX [CX_HangFire_Counter] ON [HangFire].[Counter]
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Hash]    Script Date: 2020-01-11 17:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Hash](
	[Key] [nvarchar](100) NOT NULL,
	[Field] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[ExpireAt] [datetime2](7) NULL,
 CONSTRAINT [PK_HangFire_Hash] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Field] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Job]    Script Date: 2020-01-11 17:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Job](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StateId] [bigint] NULL,
	[StateName] [nvarchar](20) NULL,
	[InvocationData] [nvarchar](max) NOT NULL,
	[Arguments] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[JobParameter]    Script Date: 2020-01-11 17:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[JobParameter](
	[JobId] [bigint] NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_HangFire_JobParameter] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[JobQueue]    Script Date: 2020-01-11 17:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[JobQueue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [bigint] NOT NULL,
	[Queue] [nvarchar](50) NOT NULL,
	[FetchedAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_JobQueue] PRIMARY KEY CLUSTERED 
(
	[Queue] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[List]    Script Date: 2020-01-11 17:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[List](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_List] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Schema]    Script Date: 2020-01-11 17:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Schema](
	[Version] [int] NOT NULL,
 CONSTRAINT [PK_HangFire_Schema] PRIMARY KEY CLUSTERED 
(
	[Version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Server]    Script Date: 2020-01-11 17:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Server](
	[Id] [nvarchar](100) NOT NULL,
	[Data] [nvarchar](max) NULL,
	[LastHeartbeat] [datetime] NOT NULL,
 CONSTRAINT [PK_HangFire_Server] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Set]    Script Date: 2020-01-11 17:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Set](
	[Key] [nvarchar](100) NOT NULL,
	[Score] [float] NOT NULL,
	[Value] [nvarchar](256) NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Set] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[State]    Script Date: 2020-01-11 17:23:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[State](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[JobId] [bigint] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Reason] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[Data] [nvarchar](max) NULL,
 CONSTRAINT [PK_HangFire_State] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191207124801_initialcreate', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191207134631_update', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191207223412_addidentity', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191208182953_identity2', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191213183838_reviewupdate', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191215205703_reviewsuser', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191215213856_reviewsuser2', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200105205623_rentandpayment', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200105210412_rentandpayment-update', N'3.1.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200110183401_addIsValidToRental', N'3.1.0')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1fae4487-33a5-4589-a2fe-f3cbc931c19b', N'Admin', N'ADMIN', N'ff30c521-e219-4dcd-a0ae-2ce992bae6f1')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'af6c2d77-716c-44ba-ae94-5dd023b17d23', N'user', N'USER', N'372e19ef-0930-43e5-af2b-af8b0d25209f')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'e189d439-2bf2-46d8-83bc-f43ab43ee076', N'Member', N'MEMBER', N'e4324fb0-fb74-420e-906a-3c0de45de5ba')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'72997d32-cd30-4501-8bb1-bb51e3f7634c', N'1fae4487-33a5-4589-a2fe-f3cbc931c19b')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'72997d32-cd30-4501-8bb1-bb51e3f7634c', N'admin@movies.com', N'ADMIN@MOVIES.COM', N'admin@movies.com', N'ADMIN@MOVIES.COM', 0, N'AQAAAAEAACcQAAAAECERuDz0B6ZMgqXWSuoGfL25f+LLIQLH9bsDQhFuoENEPE/48yyJmbtqfYK28uhufg==', N'NVSDYM5H7EHGRDQO6XABNF755WLDBRR4', N'69401561-0fe8-4752-884a-d2006496df4f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'814b6fe2-1924-4736-a617-ee7e7ca916ca', N'user@movies.com', N'USER@MOVIES.COM', N'user@movies.com', N'USER@MOVIES.COM', 0, N'AQAAAAEAACcQAAAAEKOVwcRBAIYP/1a15fQ/MMMFXzKOdHCiel4E6MSMbHOfwxSTe2h2X/cJZRtrRK22+Q==', N'S7JRJVXVOR6OEG7DPUOOWC2TYDIID556', N'01574c7c-1ec7-46eb-b7cc-04b5b1a31984', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bcaa11f1-ea3e-432a-a3dd-b31d164342fb', N'stefekx9@gmail.com', N'STEFEKX9@GMAIL.COM', N'stefekx9@gmail.com', N'STEFEKX9@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEB77yynPeEBNefJgvPl/JycbQ/94doT3KA/anez6EcMNqvDuBVMcrcyLBrHk1WmZ7A==', N'KCYVSV5JON6C446EFU3BM2NDZNZWLHNR', N'9d93bb09-6444-458e-b6bc-dd933593ad05', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f60589c4-9010-4e84-be29-2115eff09894', N'asd@asd.pl', N'ASD@ASD.PL', N'asd@asd.pl', N'ASD@ASD.PL', 0, N'AQAAAAEAACcQAAAAEOX42wBeYdkdh5xBhndd+jRVPHjTgo7kd3GlTF1wToha8OanQO3pM5sEARhopkKnoQ==', N'WSJY45YPBBUOKRK3MKIZ4Y7MWWUHTRCF', N'15590362-2893-4e92-a2f9-2de6de3b5024', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value]) VALUES (N'bcaa11f1-ea3e-432a-a3dd-b31d164342fb', N'[AspNetUserStore]', N'AuthenticatorKey', N'V6ZOV5QINX7FLY4AYJP6Q4WATI7S2H3G')
INSERT [dbo].[AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value]) VALUES (N'f60589c4-9010-4e84-be29-2115eff09894', N'[AspNetUserStore]', N'AuthenticatorKey', N'5PYOB5OREFWGE3INR6NVQDLLXGDEO33N')
INSERT [dbo].[AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value]) VALUES (N'f60589c4-9010-4e84-be29-2115eff09894', N'[AspNetUserStore]', N'RecoveryCodes', N'9e8542a2;670ac2dd;3896b444;d29315b8;8fff4404')
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([Title], [Runtime], [Year], [PosterPath], [Description], [Id], [Price]) VALUES (N'The Shawshank Redemption', 142, 1994, N'83447600-24d4-4430-ae01-973899d670bc_shawshank.jpg', N'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 30, CAST(2.99 AS Decimal(18, 2)))
INSERT [dbo].[Movies] ([Title], [Runtime], [Year], [PosterPath], [Description], [Id], [Price]) VALUES (N'The Godfather', 175, 1972, N'29d1e711-41a8-4e85-a076-2a7a6fdb136a_godfather.jpg', N'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 31, CAST(2.99 AS Decimal(18, 2)))
INSERT [dbo].[Movies] ([Title], [Runtime], [Year], [PosterPath], [Description], [Id], [Price]) VALUES (N'The Lord of the Rings: The Return of the King', 201, 2003, N'33865937-dcfb-4d01-b98a-3b911a670d1f_lotrrotk.jpg', N'Gandalf and Aragorn lead the World of Men against Sauron''s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.', 32, CAST(3.99 AS Decimal(18, 2)))
INSERT [dbo].[Movies] ([Title], [Runtime], [Year], [PosterPath], [Description], [Id], [Price]) VALUES (N'The Matrix', 136, 1999, N'923259f4-c6bd-49e6-a8ff-85af0692c636_matrix.jpg', N'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', 33, CAST(2.59 AS Decimal(18, 2)))
INSERT [dbo].[Movies] ([Title], [Runtime], [Year], [PosterPath], [Description], [Id], [Price]) VALUES (N'City of God', 130, 2002, N'ac600cad-0b6e-4d26-bd99-ea11f4d13123_cityofgod.jpg', N'In the slums of Rio, two kids'' paths diverge as one struggles to become a photographer and the other a kingpin.', 34, CAST(1.99 AS Decimal(18, 2)))
INSERT [dbo].[Movies] ([Title], [Runtime], [Year], [PosterPath], [Description], [Id], [Price]) VALUES (N'The Silence of the Lambs', 118, 1991, N'42153b78-e064-4000-9566-16b9486800dd_silenceofthelambs.jpg', N'A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.', 35, CAST(2.49 AS Decimal(18, 2)))
INSERT [dbo].[Movies] ([Title], [Runtime], [Year], [PosterPath], [Description], [Id], [Price]) VALUES (N'Joker', 122, 2019, N'e990f512-53a7-45d6-a811-382ad102e9b5_joker.jpg', N'In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.', 36, CAST(4.99 AS Decimal(18, 2)))
INSERT [dbo].[Movies] ([Title], [Runtime], [Year], [PosterPath], [Description], [Id], [Price]) VALUES (N'Saving Private Ryan', 169, 1998, N'ee0ab978-ec42-465e-996c-838ebed4fd53_privateryan.jpg', N'Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.', 37, CAST(2.59 AS Decimal(18, 2)))
INSERT [dbo].[Movies] ([Title], [Runtime], [Year], [PosterPath], [Description], [Id], [Price]) VALUES (N'Parasite', 132, 2019, N'3596f958-fb8b-419d-969d-245bb76997d3_parasite.jpg', N'All unemployed, Ki-taek and his family take peculiar interest in the wealthy and glamorous Parks, as they ingratiate themselves into their lives and get entangled in an unexpected incident.', 38, CAST(4.59 AS Decimal(18, 2)))
INSERT [dbo].[Movies] ([Title], [Runtime], [Year], [PosterPath], [Description], [Id], [Price]) VALUES (N'Asd', 321, 123, NULL, NULL, 45, CAST(1.59 AS Decimal(18, 2)))
INSERT [dbo].[Movies] ([Title], [Runtime], [Year], [PosterPath], [Description], [Id], [Price]) VALUES (N'Title', 123, 1900, NULL, N'123', 46, CAST(0.99 AS Decimal(18, 2)))
INSERT [dbo].[Movies] ([Title], [Runtime], [Year], [PosterPath], [Description], [Id], [Price]) VALUES (N'NewMovie', 120, 1990, NULL, N'New movie', 47, CAST(0.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Movies] OFF
SET IDENTITY_INSERT [dbo].[Payments] ON 

INSERT [dbo].[Payments] ([Id], [CardNo], [Price]) VALUES (1, N'4771910246654551', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Payments] ([Id], [CardNo], [Price]) VALUES (2, N'4771910246654551', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Payments] ([Id], [CardNo], [Price]) VALUES (3, N'4771910246654551', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Payments] ([Id], [CardNo], [Price]) VALUES (4, N'4771910246654551', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Payments] ([Id], [CardNo], [Price]) VALUES (5, N'4771910246654551', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Payments] ([Id], [CardNo], [Price]) VALUES (6, N'4771910246654551', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Payments] ([Id], [CardNo], [Price]) VALUES (7, N'4771910246654551', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Payments] ([Id], [CardNo], [Price]) VALUES (8, N'4771910246654551', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Payments] ([Id], [CardNo], [Price]) VALUES (9, N'4771910246654551', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Payments] ([Id], [CardNo], [Price]) VALUES (10, N'4771910246654551', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Payments] ([Id], [CardNo], [Price]) VALUES (11, N'4771910246654551', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Payments] ([Id], [CardNo], [Price]) VALUES (12, N'4771910246654551', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Payments] ([Id], [CardNo], [Price]) VALUES (13, N'4771910246654551', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Payments] ([Id], [CardNo], [Price]) VALUES (14, N'4771910246654551', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Payments] ([Id], [CardNo], [Price]) VALUES (15, N'4771910246654551', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Payments] ([Id], [CardNo], [Price]) VALUES (16, N'4771910246654551', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Payments] ([Id], [CardNo], [Price]) VALUES (17, N'4771910246654551', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Payments] ([Id], [CardNo], [Price]) VALUES (18, N'4771910246654551', CAST(1.59 AS Decimal(18, 2)))
INSERT [dbo].[Payments] ([Id], [CardNo], [Price]) VALUES (19, N'4771910246654551', CAST(2.99 AS Decimal(18, 2)))
INSERT [dbo].[Payments] ([Id], [CardNo], [Price]) VALUES (20, N'4771910246654551', CAST(3.99 AS Decimal(18, 2)))
INSERT [dbo].[Payments] ([Id], [CardNo], [Price]) VALUES (21, N'4771910246654551', CAST(2.59 AS Decimal(18, 2)))
INSERT [dbo].[Payments] ([Id], [CardNo], [Price]) VALUES (22, N'4771910246654551', CAST(2.99 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Payments] OFF
SET IDENTITY_INSERT [dbo].[Rentals] ON 

INSERT [dbo].[Rentals] ([Id], [UserId], [MovieID], [PaymentId], [RentStartDate], [RentEndDate], [IsValid]) VALUES (1, N'f60589c4-9010-4e84-be29-2115eff09894', 31, 1, CAST(N'2020-01-05T22:00:51.3793713' AS DateTime2), CAST(N'2020-01-09T22:00:51.0000000' AS DateTime2), 0)
INSERT [dbo].[Rentals] ([Id], [UserId], [MovieID], [PaymentId], [RentStartDate], [RentEndDate], [IsValid]) VALUES (2, N'f60589c4-9010-4e84-be29-2115eff09894', 30, 2, CAST(N'2020-01-05T22:39:01.5316490' AS DateTime2), CAST(N'2020-01-10T22:39:01.5317605' AS DateTime2), 0)
INSERT [dbo].[Rentals] ([Id], [UserId], [MovieID], [PaymentId], [RentStartDate], [RentEndDate], [IsValid]) VALUES (3, N'f60589c4-9010-4e84-be29-2115eff09894', 30, 3, CAST(N'2020-01-06T13:24:18.3820948' AS DateTime2), CAST(N'2020-01-11T13:24:18.3822059' AS DateTime2), 0)
INSERT [dbo].[Rentals] ([Id], [UserId], [MovieID], [PaymentId], [RentStartDate], [RentEndDate], [IsValid]) VALUES (4, N'f60589c4-9010-4e84-be29-2115eff09894', 33, 4, CAST(N'2020-01-06T15:13:17.8766118' AS DateTime2), CAST(N'2020-01-11T15:13:17.8767194' AS DateTime2), 0)
INSERT [dbo].[Rentals] ([Id], [UserId], [MovieID], [PaymentId], [RentStartDate], [RentEndDate], [IsValid]) VALUES (5, N'72997d32-cd30-4501-8bb1-bb51e3f7634c', 33, 5, CAST(N'2020-01-06T15:15:51.2787799' AS DateTime2), CAST(N'2020-01-11T15:15:51.2788914' AS DateTime2), 0)
INSERT [dbo].[Rentals] ([Id], [UserId], [MovieID], [PaymentId], [RentStartDate], [RentEndDate], [IsValid]) VALUES (6, N'f60589c4-9010-4e84-be29-2115eff09894', 32, 6, CAST(N'2020-01-06T15:40:08.0960426' AS DateTime2), CAST(N'2020-01-11T15:40:08.0961872' AS DateTime2), 0)
INSERT [dbo].[Rentals] ([Id], [UserId], [MovieID], [PaymentId], [RentStartDate], [RentEndDate], [IsValid]) VALUES (7, N'f60589c4-9010-4e84-be29-2115eff09894', 34, 7, CAST(N'2020-01-06T15:50:47.4423450' AS DateTime2), CAST(N'2020-01-11T15:50:47.4424892' AS DateTime2), 0)
INSERT [dbo].[Rentals] ([Id], [UserId], [MovieID], [PaymentId], [RentStartDate], [RentEndDate], [IsValid]) VALUES (8, N'f60589c4-9010-4e84-be29-2115eff09894', 35, 8, CAST(N'2020-01-06T15:54:56.6291093' AS DateTime2), CAST(N'2020-01-11T15:54:56.6293064' AS DateTime2), 0)
INSERT [dbo].[Rentals] ([Id], [UserId], [MovieID], [PaymentId], [RentStartDate], [RentEndDate], [IsValid]) VALUES (9, N'f60589c4-9010-4e84-be29-2115eff09894', 35, 9, CAST(N'2020-01-06T15:56:05.3632693' AS DateTime2), CAST(N'2020-01-11T15:56:05.3633169' AS DateTime2), 0)
INSERT [dbo].[Rentals] ([Id], [UserId], [MovieID], [PaymentId], [RentStartDate], [RentEndDate], [IsValid]) VALUES (10, N'f60589c4-9010-4e84-be29-2115eff09894', 38, 10, CAST(N'2020-01-06T15:56:42.4869571' AS DateTime2), CAST(N'2020-01-11T15:56:42.4870751' AS DateTime2), 0)
INSERT [dbo].[Rentals] ([Id], [UserId], [MovieID], [PaymentId], [RentStartDate], [RentEndDate], [IsValid]) VALUES (11, N'f60589c4-9010-4e84-be29-2115eff09894', 38, 11, CAST(N'2020-01-06T15:56:55.1599282' AS DateTime2), CAST(N'2020-01-01T15:57:55.0000000' AS DateTime2), 0)
INSERT [dbo].[Rentals] ([Id], [UserId], [MovieID], [PaymentId], [RentStartDate], [RentEndDate], [IsValid]) VALUES (12, N'f60589c4-9010-4e84-be29-2115eff09894', 38, 12, CAST(N'2020-01-06T15:57:03.3491355' AS DateTime2), CAST(N'2020-01-11T15:57:03.3491742' AS DateTime2), 0)
INSERT [dbo].[Rentals] ([Id], [UserId], [MovieID], [PaymentId], [RentStartDate], [RentEndDate], [IsValid]) VALUES (13, N'f60589c4-9010-4e84-be29-2115eff09894', 36, 13, CAST(N'2020-01-07T09:57:53.6014165' AS DateTime2), CAST(N'2020-01-12T09:57:53.6015738' AS DateTime2), 1)
INSERT [dbo].[Rentals] ([Id], [UserId], [MovieID], [PaymentId], [RentStartDate], [RentEndDate], [IsValid]) VALUES (14, N'f60589c4-9010-4e84-be29-2115eff09894', 37, 14, CAST(N'2020-01-07T10:07:43.1831930' AS DateTime2), CAST(N'2020-01-12T10:07:43.1831930' AS DateTime2), 1)
INSERT [dbo].[Rentals] ([Id], [UserId], [MovieID], [PaymentId], [RentStartDate], [RentEndDate], [IsValid]) VALUES (15, N'72997d32-cd30-4501-8bb1-bb51e3f7634c', 32, 15, CAST(N'2020-01-07T12:27:08.5304682' AS DateTime2), CAST(N'2020-01-10T12:27:08.0000000' AS DateTime2), 0)
INSERT [dbo].[Rentals] ([Id], [UserId], [MovieID], [PaymentId], [RentStartDate], [RentEndDate], [IsValid]) VALUES (16, N'814b6fe2-1924-4736-a617-ee7e7ca916ca', 30, 16, CAST(N'2020-01-07T15:06:59.5512944' AS DateTime2), CAST(N'2020-01-12T15:06:59.5512944' AS DateTime2), 1)
INSERT [dbo].[Rentals] ([Id], [UserId], [MovieID], [PaymentId], [RentStartDate], [RentEndDate], [IsValid]) VALUES (17, N'814b6fe2-1924-4736-a617-ee7e7ca916ca', 32, 17, CAST(N'2020-01-07T16:50:40.3665652' AS DateTime2), CAST(N'2020-01-12T16:50:40.3665652' AS DateTime2), 1)
INSERT [dbo].[Rentals] ([Id], [UserId], [MovieID], [PaymentId], [RentStartDate], [RentEndDate], [IsValid]) VALUES (18, N'f60589c4-9010-4e84-be29-2115eff09894', 45, 18, CAST(N'2020-01-11T14:39:09.3621713' AS DateTime2), CAST(N'2020-01-16T14:39:09.3621713' AS DateTime2), 1)
INSERT [dbo].[Rentals] ([Id], [UserId], [MovieID], [PaymentId], [RentStartDate], [RentEndDate], [IsValid]) VALUES (19, N'f60589c4-9010-4e84-be29-2115eff09894', 30, 19, CAST(N'2020-01-11T16:16:06.5548003' AS DateTime2), CAST(N'2020-01-16T16:16:06.5548003' AS DateTime2), 1)
INSERT [dbo].[Rentals] ([Id], [UserId], [MovieID], [PaymentId], [RentStartDate], [RentEndDate], [IsValid]) VALUES (20, N'f60589c4-9010-4e84-be29-2115eff09894', 32, 20, CAST(N'2020-01-11T16:30:17.8262653' AS DateTime2), CAST(N'2020-01-16T16:30:17.8262653' AS DateTime2), 1)
INSERT [dbo].[Rentals] ([Id], [UserId], [MovieID], [PaymentId], [RentStartDate], [RentEndDate], [IsValid]) VALUES (21, N'f60589c4-9010-4e84-be29-2115eff09894', 33, 21, CAST(N'2020-01-11T16:40:27.8607072' AS DateTime2), CAST(N'2020-01-16T16:40:27.8607072' AS DateTime2), 1)
INSERT [dbo].[Rentals] ([Id], [UserId], [MovieID], [PaymentId], [RentStartDate], [RentEndDate], [IsValid]) VALUES (22, N'f60589c4-9010-4e84-be29-2115eff09894', 31, 22, CAST(N'2020-01-11T16:42:50.3685855' AS DateTime2), CAST(N'2020-01-16T16:42:50.3685855' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Rentals] OFF
SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([Content], [Rating], [PostedOn], [MovieId], [Id], [UserID]) VALUES (N'Beautiful and touching story. Really worth watching.', 10, CAST(N'2020-01-03T17:29:08.5178367' AS DateTime2), 30, 39, N'f60589c4-9010-4e84-be29-2115eff09894')
INSERT [dbo].[Reviews] ([Content], [Rating], [PostedOn], [MovieId], [Id], [UserID]) VALUES (N'Not good', 5, CAST(N'2020-01-03T17:37:14.4831386' AS DateTime2), 30, 40, N'f60589c4-9010-4e84-be29-2115eff09894')
INSERT [dbo].[Reviews] ([Content], [Rating], [PostedOn], [MovieId], [Id], [UserID]) VALUES (N'Boring!', 4, CAST(N'2020-01-03T17:41:57.5621790' AS DateTime2), 30, 41, N'f60589c4-9010-4e84-be29-2115eff09894')
INSERT [dbo].[Reviews] ([Content], [Rating], [PostedOn], [MovieId], [Id], [UserID]) VALUES (N'Quite good actually :)', 8, CAST(N'2020-01-03T17:42:06.2279578' AS DateTime2), 30, 42, N'f60589c4-9010-4e84-be29-2115eff09894')
INSERT [dbo].[Reviews] ([Content], [Rating], [PostedOn], [MovieId], [Id], [UserID]) VALUES (N'If i could pick only one movie - here it is!', 10, CAST(N'2020-01-03T17:42:27.7911844' AS DateTime2), 30, 43, N'f60589c4-9010-4e84-be29-2115eff09894')
INSERT [dbo].[Reviews] ([Content], [Rating], [PostedOn], [MovieId], [Id], [UserID]) VALUES (N'Awesome show, not a single minute wasted watching this masterpiece. Shawshank Redemption made real impact on me!', 5, CAST(N'2020-01-03T17:43:13.7929890' AS DateTime2), 30, 44, N'f60589c4-9010-4e84-be29-2115eff09894')
INSERT [dbo].[Reviews] ([Content], [Rating], [PostedOn], [MovieId], [Id], [UserID]) VALUES (NULL, 10, CAST(N'2020-01-03T17:43:22.2605322' AS DateTime2), 30, 45, N'f60589c4-9010-4e84-be29-2115eff09894')
INSERT [dbo].[Reviews] ([Content], [Rating], [PostedOn], [MovieId], [Id], [UserID]) VALUES (NULL, 10, CAST(N'2020-01-03T17:43:28.9061540' AS DateTime2), 30, 46, N'f60589c4-9010-4e84-be29-2115eff09894')
INSERT [dbo].[Reviews] ([Content], [Rating], [PostedOn], [MovieId], [Id], [UserID]) VALUES (N'Great but very long show :)', 9, CAST(N'2020-01-06T14:57:11.1969501' AS DateTime2), 32, 47, N'f60589c4-9010-4e84-be29-2115eff09894')
INSERT [dbo].[Reviews] ([Content], [Rating], [PostedOn], [MovieId], [Id], [UserID]) VALUES (N'Lots of fun', 8, CAST(N'2020-01-07T15:07:49.9761515' AS DateTime2), 33, 48, N'814b6fe2-1924-4736-a617-ee7e7ca916ca')
INSERT [dbo].[Reviews] ([Content], [Rating], [PostedOn], [MovieId], [Id], [UserID]) VALUES (N'Super', 10, CAST(N'2020-01-07T16:51:44.3734314' AS DateTime2), 30, 49, N'814b6fe2-1924-4736-a617-ee7e7ca916ca')
SET IDENTITY_INSERT [dbo].[Reviews] OFF
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:deleted', 144, NULL)
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:failed:2020-01-09', 5, CAST(N'2020-02-09T16:10:33.490' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded', 253, NULL)
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2020-01-09', 154, CAST(N'2020-02-09T20:05:07.297' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2020-01-10', 46, CAST(N'2020-02-10T19:52:55.263' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2020-01-10-17', 5, CAST(N'2020-01-11T17:59:26.163' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2020-01-10-18', 12, CAST(N'2020-01-11T18:55:07.997' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2020-01-10-19', 29, CAST(N'2020-01-11T19:52:55.263' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2020-01-11', 56, CAST(N'2020-02-11T15:27:46.203' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2020-01-11-10', 15, CAST(N'2020-01-12T10:55:13.963' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2020-01-11-11', 8, CAST(N'2020-01-12T11:30:08.517' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2020-01-11-12', 9, CAST(N'2020-01-12T12:55:46.620' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2020-01-11-13', 10, CAST(N'2020-01-12T13:55:35.893' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2020-01-11-14', 9, CAST(N'2020-01-12T14:35:10.420' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2020-01-11-15', 5, CAST(N'2020-01-12T15:27:46.203' AS DateTime))
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:HomeController.CheckMovies', N'CreatedAt', N'2020-01-10T19:06:27.0135772Z', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:HomeController.CheckMovies', N'Cron', N'0 * * * *', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:HomeController.CheckMovies', N'Job', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":"[]"}', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:HomeController.CheckMovies', N'LastExecution', N'2020-01-11T15:18:31.7919604Z', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:HomeController.CheckMovies', N'LastJobId', N'400', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:HomeController.CheckMovies', N'NextExecution', N'2020-01-11T16:00:00.0000000Z', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:HomeController.CheckMovies', N'Queue', N'default', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:HomeController.CheckMovies', N'TimeZoneId', N'UTC', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:HomeController.CheckMovies', N'V', N'2', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:HomeController.WriteToFile', N'CreatedAt', N'2020-01-10T19:36:26.2291190Z', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:HomeController.WriteToFile', N'Cron', N'59 23 * * *', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:HomeController.WriteToFile', N'Job', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"WriteToFile","ParameterTypes":"[]","Arguments":"[]"}', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:HomeController.WriteToFile', N'LastExecution', N'2020-01-11T15:27:45.0014896Z', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:HomeController.WriteToFile', N'LastJobId', N'401', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:HomeController.WriteToFile', N'NextExecution', N'2020-01-11T23:59:00.0000000Z', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:HomeController.WriteToFile', N'Queue', N'default', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:HomeController.WriteToFile', N'TimeZoneId', N'UTC', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:HomeController.WriteToFile', N'V', N'2', NULL)
SET IDENTITY_INSERT [HangFire].[Job] ON 

INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (52, NULL, NULL, N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"MoviesToPdfAsync","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-09T14:36:45.173' AS DateTime), CAST(N'2020-02-08T14:36:45.173' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (67, NULL, NULL, N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"MoviesToPdf","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-09T15:15:04.037' AS DateTime), CAST(N'2020-02-08T15:15:04.037' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (73, NULL, NULL, N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"MoviesToPdf","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-09T15:20:13.293' AS DateTime), CAST(N'2020-02-08T15:20:13.293' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (179, NULL, NULL, N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"RunInBackground","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-09T17:44:15.850' AS DateTime), CAST(N'2020-02-08T17:44:15.850' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (300, 4403, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T17:37:04.260' AS DateTime), CAST(N'2020-01-11T17:37:08.490' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (301, 4407, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T17:40:41.037' AS DateTime), CAST(N'2020-01-11T17:41:17.987' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (302, 4429, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T17:45:23.710' AS DateTime), CAST(N'2020-01-11T17:59:26.170' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (303, 4428, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T17:50:18.960' AS DateTime), CAST(N'2020-01-11T17:59:26.170' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (304, 4427, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T17:56:31.520' AS DateTime), CAST(N'2020-01-11T17:59:26.170' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (305, 4432, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T18:03:07.973' AS DateTime), CAST(N'2020-01-11T18:03:09.930' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (306, 4435, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T18:06:51.373' AS DateTime), CAST(N'2020-01-11T18:06:53.343' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (307, 4438, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T18:10:08.283' AS DateTime), CAST(N'2020-01-11T18:10:08.367' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (308, 4441, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T18:15:09.507' AS DateTime), CAST(N'2020-01-11T18:15:09.567' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (309, 4444, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T18:20:02.313' AS DateTime), CAST(N'2020-01-11T18:20:06.453' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (310, 4447, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T18:25:05.587' AS DateTime), CAST(N'2020-01-11T18:25:06.340' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (311, 4450, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T18:30:08.780' AS DateTime), CAST(N'2020-01-11T18:30:11.783' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (312, 4453, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T18:35:01.543' AS DateTime), CAST(N'2020-01-11T18:35:01.737' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (313, 4456, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T18:40:00.930' AS DateTime), CAST(N'2020-01-11T18:40:05.093' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (314, 4459, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T18:45:05.790' AS DateTime), CAST(N'2020-01-11T18:45:05.930' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (315, 4462, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T18:52:39.603' AS DateTime), CAST(N'2020-01-11T18:52:41.077' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (316, 4465, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T18:55:05.393' AS DateTime), CAST(N'2020-01-11T18:55:08.007' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (317, 4468, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:00:05.840' AS DateTime), CAST(N'2020-01-11T19:00:05.903' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (318, 4471, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:06:27.217' AS DateTime), CAST(N'2020-01-11T19:06:30.480' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (319, 4474, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:07:02.360' AS DateTime), CAST(N'2020-01-11T19:07:02.483' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (320, 4477, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:08:43.107' AS DateTime), CAST(N'2020-01-11T19:08:43.640' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (321, 4483, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:10:02.927' AS DateTime), CAST(N'2020-01-11T19:10:03.040' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (322, 4482, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:10:02.960' AS DateTime), CAST(N'2020-01-11T19:10:03.010' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (323, 4486, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:11:57.190' AS DateTime), CAST(N'2020-01-11T19:11:57.627' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (324, 4492, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:15:08.957' AS DateTime), CAST(N'2020-01-11T19:15:09.013' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (325, 4491, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:15:08.970' AS DateTime), CAST(N'2020-01-11T19:15:08.983' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (326, 4498, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:20:04.063' AS DateTime), CAST(N'2020-01-11T19:20:04.487' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (327, 4497, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:20:04.173' AS DateTime), CAST(N'2020-01-11T19:20:04.247' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (328, 4504, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:25:06.853' AS DateTime), CAST(N'2020-01-11T19:25:06.940' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (329, 4503, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:25:06.887' AS DateTime), CAST(N'2020-01-11T19:25:06.910' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (330, 4510, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:34:25.650' AS DateTime), CAST(N'2020-01-11T19:34:27.650' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (331, 4509, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:34:25.860' AS DateTime), CAST(N'2020-01-11T19:34:27.023' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (332, 4516, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:35:10.943' AS DateTime), CAST(N'2020-01-11T19:35:11.067' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (333, 4515, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:35:11.020' AS DateTime), CAST(N'2020-01-11T19:35:11.037' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (334, 4519, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"WriteToFile","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:37:09.190' AS DateTime), CAST(N'2020-01-11T19:37:09.333' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (335, 4522, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"WriteToFile","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:38:09.267' AS DateTime), CAST(N'2020-01-11T19:38:09.320' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (336, 4525, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"WriteToFile","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:39:09.310' AS DateTime), CAST(N'2020-01-11T19:39:09.370' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (337, 4534, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:40:09.357' AS DateTime), CAST(N'2020-01-11T19:40:09.580' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (338, 4532, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"WriteToFile","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:40:09.367' AS DateTime), CAST(N'2020-01-11T19:40:09.393' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (339, 4533, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:40:09.377' AS DateTime), CAST(N'2020-01-11T19:40:09.403' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (340, 4537, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"WriteToFile","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:41:08.800' AS DateTime), CAST(N'2020-01-11T19:41:08.973' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (341, 4540, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"WriteToFile","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:42:08.910' AS DateTime), CAST(N'2020-01-11T19:42:08.983' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (342, 4543, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"WriteToFile","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:43:08.963' AS DateTime), CAST(N'2020-01-11T19:43:09.000' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (343, 4551, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"WriteToFile","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:52:53.530' AS DateTime), CAST(N'2020-01-11T19:52:55.023' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (344, 4552, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:52:53.687' AS DateTime), CAST(N'2020-01-11T19:52:55.263' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (345, 4550, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-10T19:52:53.700' AS DateTime), CAST(N'2020-01-11T19:52:54.977' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (346, 4562, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T09:56:11.487' AS DateTime), CAST(N'2020-01-12T10:00:01.933' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (347, 4564, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T09:56:11.597' AS DateTime), CAST(N'2020-01-12T10:00:02.537' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (348, 4563, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"WriteToFile","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T09:56:11.603' AS DateTime), CAST(N'2020-01-12T10:00:01.947' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (349, 4570, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T10:00:11.287' AS DateTime), CAST(N'2020-01-12T10:00:11.450' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (350, 4569, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T10:00:11.343' AS DateTime), CAST(N'2020-01-12T10:00:11.430' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (351, 4573, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T10:05:11.550' AS DateTime), CAST(N'2020-01-12T10:05:11.640' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (352, 4576, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T10:15:12.050' AS DateTime), CAST(N'2020-01-12T10:16:59.023' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (353, 4579, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"WriteToFile","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T10:17:55.517' AS DateTime), CAST(N'2020-01-12T10:17:58.143' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (354, 4582, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T10:20:06.617' AS DateTime), CAST(N'2020-01-12T10:20:06.687' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (355, 4585, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T10:30:30.657' AS DateTime), CAST(N'2020-01-12T10:30:32.327' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (356, 4588, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T10:36:00.747' AS DateTime), CAST(N'2020-01-12T10:36:02.880' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (357, 4591, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T10:40:01.463' AS DateTime), CAST(N'2020-01-12T10:40:01.880' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (358, 4594, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T10:45:15.383' AS DateTime), CAST(N'2020-01-12T10:45:20.543' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (359, 4597, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T10:50:12.900' AS DateTime), CAST(N'2020-01-12T10:50:16.853' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (360, 4600, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T10:55:08.807' AS DateTime), CAST(N'2020-01-12T10:55:14.200' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (361, 4606, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T11:00:04.347' AS DateTime), CAST(N'2020-01-12T11:00:04.783' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (362, 4605, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T11:00:04.497' AS DateTime), CAST(N'2020-01-12T11:00:04.560' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (363, 4609, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T11:05:01.810' AS DateTime), CAST(N'2020-01-12T11:05:03.237' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (364, 4612, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T11:10:16.070' AS DateTime), CAST(N'2020-01-12T11:10:20.567' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (365, 4615, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T11:15:12.893' AS DateTime), CAST(N'2020-01-12T11:15:16.633' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (366, 4618, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T11:20:01.580' AS DateTime), CAST(N'2020-01-12T11:20:01.757' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (367, 4621, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T11:25:33.310' AS DateTime), CAST(N'2020-01-12T11:25:37.193' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (368, 4624, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T11:30:08.240' AS DateTime), CAST(N'2020-01-12T11:30:08.523' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (369, 4629, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T12:22:42.370' AS DateTime), CAST(N'2020-01-12T12:22:44.840' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (370, 4630, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T12:22:43.353' AS DateTime), CAST(N'2020-01-12T12:22:45.647' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (371, 4633, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T12:25:14.297' AS DateTime), CAST(N'2020-01-12T12:25:15.063' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (372, 4636, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T12:30:14.993' AS DateTime), CAST(N'2020-01-12T12:30:15.293' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (373, 4639, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T12:35:01.033' AS DateTime), CAST(N'2020-01-12T12:35:01.097' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (374, 4642, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T12:40:42.130' AS DateTime), CAST(N'2020-01-12T12:40:45.450' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (375, 4645, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T12:45:06.757' AS DateTime), CAST(N'2020-01-12T12:45:07.317' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (376, 4648, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T12:50:08.123' AS DateTime), CAST(N'2020-01-12T12:50:10.140' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (377, 4651, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T12:55:44.783' AS DateTime), CAST(N'2020-01-12T12:55:46.630' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (378, 4657, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T13:00:09.650' AS DateTime), CAST(N'2020-01-12T13:00:10.117' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (379, 4656, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T13:00:09.747' AS DateTime), CAST(N'2020-01-12T13:00:09.920' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (380, 4660, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T13:05:10.033' AS DateTime), CAST(N'2020-01-12T13:05:10.097' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (381, 4663, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T13:10:11.193' AS DateTime), CAST(N'2020-01-12T13:10:11.247' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (382, 4666, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T13:15:47.840' AS DateTime), CAST(N'2020-01-12T13:15:48.660' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (383, 4669, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T13:32:43.803' AS DateTime), CAST(N'2020-01-12T13:32:45.153' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (384, 4672, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T13:35:14.147' AS DateTime), CAST(N'2020-01-12T13:35:14.243' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (385, 4675, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"WriteToFile","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T13:39:19.977' AS DateTime), CAST(N'2020-01-12T13:39:20.047' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (386, 4678, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T13:50:13.900' AS DateTime), CAST(N'2020-01-12T13:50:15.183' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (387, 4681, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T13:55:35.827' AS DateTime), CAST(N'2020-01-12T13:55:35.893' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (388, 4687, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T14:00:06.917' AS DateTime), CAST(N'2020-01-12T14:00:07.157' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (389, 4686, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T14:00:06.923' AS DateTime), CAST(N'2020-01-12T14:00:06.953' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (390, 4690, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T14:05:11.470' AS DateTime), CAST(N'2020-01-12T14:05:11.487' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (391, 4693, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T14:10:15.410' AS DateTime), CAST(N'2020-01-12T14:10:20.157' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (392, 4696, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T14:15:05.377' AS DateTime), CAST(N'2020-01-12T14:15:07.187' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (393, 4699, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T14:20:01.087' AS DateTime), CAST(N'2020-01-12T14:20:01.140' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (394, 4702, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T14:25:04.243' AS DateTime), CAST(N'2020-01-12T14:25:06.880' AS DateTime))
GO
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (395, 4705, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T14:30:06.947' AS DateTime), CAST(N'2020-01-12T14:30:08.750' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (396, 4708, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T14:35:10.253' AS DateTime), CAST(N'2020-01-12T14:35:10.430' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (397, 4713, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T15:10:26.843' AS DateTime), CAST(N'2020-01-12T15:10:30.087' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (398, 4714, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T15:10:27.707' AS DateTime), CAST(N'2020-01-12T15:10:30.833' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (399, 4717, N'Succeeded', N'{"Type":"Movies.Web.Controllers.MoviesController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T15:15:13.877' AS DateTime), CAST(N'2020-01-12T15:15:14.297' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (400, 4720, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckMovies","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T15:18:31.793' AS DateTime), CAST(N'2020-01-12T15:18:31.910' AS DateTime))
INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (401, 4723, N'Succeeded', N'{"Type":"Movies.Controllers.HomeController, Movies.Web, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"WriteToFile","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2020-01-11T15:27:45.023' AS DateTime), CAST(N'2020-01-12T15:27:46.220' AS DateTime))
SET IDENTITY_INSERT [HangFire].[Job] OFF
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (52, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (52, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (52, N'RecurringJobId', N'"HomeController.MoviesToPdfAsync"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (52, N'Time', N'1578580605')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (67, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (67, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (67, N'RecurringJobId', N'"HomeController.MoviesToPdf"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (67, N'Time', N'1578582901')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (73, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (73, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (73, N'RecurringJobId', N'"HomeController.MoviesToPdf"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (73, N'Time', N'1578583213')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (179, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (179, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (179, N'RecurringJobId', N'"HomeController.RunInBackground"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (179, N'Time', N'1578591855')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (300, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (300, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (300, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (300, N'Time', N'1578677824')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (301, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (301, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (301, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (301, N'Time', N'1578678040')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (302, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (302, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (302, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (302, N'Time', N'1578678323')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (303, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (303, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (303, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (303, N'Time', N'1578678618')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (304, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (304, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (304, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (304, N'Time', N'1578678991')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (305, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (305, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (305, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (305, N'Time', N'1578679387')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (306, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (306, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (306, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (306, N'Time', N'1578679611')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (307, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (307, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (307, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (307, N'Time', N'1578679808')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (308, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (308, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (308, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (308, N'Time', N'1578680109')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (309, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (309, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (309, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (309, N'Time', N'1578680401')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (310, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (310, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (310, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (310, N'Time', N'1578680705')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (311, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (311, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (311, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (311, N'Time', N'1578681008')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (312, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (312, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (312, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (312, N'Time', N'1578681301')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (313, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (313, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (313, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (313, N'Time', N'1578681600')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (314, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (314, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (314, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (314, N'Time', N'1578681905')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (315, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (315, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (315, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (315, N'Time', N'1578682359')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (316, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (316, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (316, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (316, N'Time', N'1578682505')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (317, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (317, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (317, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (317, N'Time', N'1578682805')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (318, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (318, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (318, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (318, N'Time', N'1578683186')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (319, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (319, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (319, N'RecurringJobId', N'"HomeController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (319, N'Time', N'1578683222')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (320, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (320, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (320, N'RecurringJobId', N'"HomeController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (320, N'Time', N'1578683323')
GO
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (321, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (321, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (321, N'RecurringJobId', N'"HomeController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (321, N'Time', N'1578683402')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (322, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (322, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (322, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (322, N'Time', N'1578683402')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (323, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (323, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (323, N'RecurringJobId', N'"HomeController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (323, N'Time', N'1578683517')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (324, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (324, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (324, N'RecurringJobId', N'"HomeController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (324, N'Time', N'1578683708')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (325, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (325, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (325, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (325, N'Time', N'1578683708')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (326, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (326, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (326, N'RecurringJobId', N'"HomeController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (326, N'Time', N'1578684004')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (327, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (327, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (327, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (327, N'Time', N'1578684004')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (328, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (328, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (328, N'RecurringJobId', N'"HomeController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (328, N'Time', N'1578684306')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (329, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (329, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (329, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (329, N'Time', N'1578684306')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (330, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (330, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (330, N'RecurringJobId', N'"HomeController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (330, N'Time', N'1578684865')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (331, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (331, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (331, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (331, N'Time', N'1578684865')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (332, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (332, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (332, N'RecurringJobId', N'"HomeController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (332, N'Time', N'1578684910')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (333, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (333, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (333, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (333, N'Time', N'1578684910')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (334, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (334, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (334, N'RecurringJobId', N'"HomeController.WriteToFile"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (334, N'Time', N'1578685029')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (335, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (335, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (335, N'RecurringJobId', N'"HomeController.WriteToFile"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (335, N'Time', N'1578685089')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (336, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (336, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (336, N'RecurringJobId', N'"HomeController.WriteToFile"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (336, N'Time', N'1578685149')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (337, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (337, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (337, N'RecurringJobId', N'"HomeController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (337, N'Time', N'1578685209')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (338, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (338, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (338, N'RecurringJobId', N'"HomeController.WriteToFile"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (338, N'Time', N'1578685209')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (339, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (339, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (339, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (339, N'Time', N'1578685209')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (340, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (340, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (340, N'RecurringJobId', N'"HomeController.WriteToFile"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (340, N'Time', N'1578685268')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (341, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (341, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (341, N'RecurringJobId', N'"HomeController.WriteToFile"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (341, N'Time', N'1578685328')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (342, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (342, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (342, N'RecurringJobId', N'"HomeController.WriteToFile"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (342, N'Time', N'1578685388')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (343, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (343, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (343, N'RecurringJobId', N'"HomeController.WriteToFile"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (343, N'Time', N'1578685973')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (344, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (344, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (344, N'RecurringJobId', N'"HomeController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (344, N'Time', N'1578685973')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (345, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (345, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (345, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (345, N'Time', N'1578685973')
GO
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (346, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (346, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (346, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (346, N'Time', N'1578736526')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (347, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (347, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (347, N'RecurringJobId', N'"HomeController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (347, N'Time', N'1578736526')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (348, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (348, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (348, N'RecurringJobId', N'"HomeController.WriteToFile"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (348, N'Time', N'1578736526')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (349, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (349, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (349, N'RecurringJobId', N'"HomeController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (349, N'Time', N'1578736811')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (350, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (350, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (350, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (350, N'Time', N'1578736811')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (351, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (351, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (351, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (351, N'Time', N'1578737111')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (352, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (352, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (352, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (352, N'Time', N'1578737711')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (353, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (353, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (353, N'RecurringJobId', N'"HomeController.WriteToFile"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (353, N'Time', N'1578737875')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (354, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (354, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (354, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (354, N'Time', N'1578738006')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (355, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (355, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (355, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (355, N'Time', N'1578738630')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (356, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (356, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (356, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (356, N'Time', N'1578738959')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (357, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (357, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (357, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (357, N'Time', N'1578739201')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (358, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (358, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (358, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (358, N'Time', N'1578739513')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (359, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (359, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (359, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (359, N'Time', N'1578739812')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (360, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (360, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (360, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (360, N'Time', N'1578740108')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (361, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (361, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (361, N'RecurringJobId', N'"HomeController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (361, N'Time', N'1578740404')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (362, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (362, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (362, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (362, N'Time', N'1578740404')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (363, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (363, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (363, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (363, N'Time', N'1578740701')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (364, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (364, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (364, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (364, N'Time', N'1578741015')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (365, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (365, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (365, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (365, N'Time', N'1578741312')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (366, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (366, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (366, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (366, N'Time', N'1578741601')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (367, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (367, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (367, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (367, N'Time', N'1578741933')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (368, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (368, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (368, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (368, N'Time', N'1578742208')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (369, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (369, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (369, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (369, N'Time', N'1578745361')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (370, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (370, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (370, N'RecurringJobId', N'"HomeController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (370, N'Time', N'1578745361')
GO
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (371, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (371, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (371, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (371, N'Time', N'1578745514')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (372, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (372, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (372, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (372, N'Time', N'1578745814')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (373, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (373, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (373, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (373, N'Time', N'1578746101')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (374, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (374, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (374, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (374, N'Time', N'1578746440')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (375, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (375, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (375, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (375, N'Time', N'1578746706')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (376, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (376, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (376, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (376, N'Time', N'1578747007')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (377, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (377, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (377, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (377, N'Time', N'1578747344')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (378, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (378, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (378, N'RecurringJobId', N'"HomeController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (378, N'Time', N'1578747609')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (379, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (379, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (379, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (379, N'Time', N'1578747609')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (380, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (380, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (380, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (380, N'Time', N'1578747910')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (381, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (381, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (381, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (381, N'Time', N'1578748211')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (382, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (382, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (382, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (382, N'Time', N'1578748547')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (383, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (383, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (383, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (383, N'Time', N'1578749563')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (384, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (384, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (384, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (384, N'Time', N'1578749714')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (385, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (385, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (385, N'RecurringJobId', N'"HomeController.WriteToFile"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (385, N'Time', N'1578749959')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (386, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (386, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (386, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (386, N'Time', N'1578750613')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (387, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (387, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (387, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (387, N'Time', N'1578750935')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (388, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (388, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (388, N'RecurringJobId', N'"HomeController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (388, N'Time', N'1578751206')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (389, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (389, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (389, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (389, N'Time', N'1578751206')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (390, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (390, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (390, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (390, N'Time', N'1578751511')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (391, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (391, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (391, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (391, N'Time', N'1578751815')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (392, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (392, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (392, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (392, N'Time', N'1578752104')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (393, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (393, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (393, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (393, N'Time', N'1578752401')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (394, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (394, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (394, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (394, N'Time', N'1578752703')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (395, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (395, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (395, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (395, N'Time', N'1578753006')
GO
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (396, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (396, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (396, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (396, N'Time', N'1578753310')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (397, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (397, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (397, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (397, N'Time', N'1578755426')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (398, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (398, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (398, N'RecurringJobId', N'"HomeController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (398, N'Time', N'1578755426')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (399, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (399, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (399, N'RecurringJobId', N'"MoviesController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (399, N'Time', N'1578755713')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (400, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (400, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (400, N'RecurringJobId', N'"HomeController.CheckMovies"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (400, N'Time', N'1578755911')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (401, N'CurrentCulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (401, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (401, N'RecurringJobId', N'"HomeController.WriteToFile"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (401, N'Time', N'1578756465')
INSERT [HangFire].[Schema] ([Version]) VALUES (7)
INSERT [HangFire].[Server] ([Id], [Data], [LastHeartbeat]) VALUES (N'desktop-qk2o61k:1252:aca2556a-1a94-4d29-b25d-be109f634a8a', N'{"WorkerCount":20,"Queues":["default"],"StartedAt":"2020-01-11T15:41:46.1222014Z"}', CAST(N'2020-01-11T15:46:18.373' AS DateTime))
INSERT [HangFire].[Server] ([Id], [Data], [LastHeartbeat]) VALUES (N'desktop-qk2o61k:16976:e40a178c-8832-460c-9a51-ee9f6e5a6625', N'{"WorkerCount":20,"Queues":["default"],"StartedAt":"2020-01-11T15:33:27.9170325Z"}', CAST(N'2020-01-11T15:41:00.743' AS DateTime))
INSERT [HangFire].[Set] ([Key], [Score], [Value], [ExpireAt]) VALUES (N'recurring-jobs', 1578758400, N'HomeController.CheckMovies', NULL)
INSERT [HangFire].[Set] ([Key], [Score], [Value], [ExpireAt]) VALUES (N'recurring-jobs', 1578787140, N'HomeController.WriteToFile', NULL)
SET IDENTITY_INSERT [HangFire].[State] ON 

INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4401, 300, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T17:37:05.153' AS DateTime), N'{"EnqueuedAt":"2020-01-10T17:37:05.1380149Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4402, 300, N'Processing', NULL, CAST(N'2020-01-10T17:37:06.007' AS DateTime), N'{"StartedAt":"2020-01-10T17:37:05.7479216Z","ServerId":"desktop-qk2o61k:1308:a22348c8-38bb-43bb-9bf6-1c18c0768d9d","WorkerId":"a3fbaaa6-9f5d-44b3-bf0a-26e7483ab28e"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4403, 300, N'Succeeded', NULL, CAST(N'2020-01-10T17:37:08.487' AS DateTime), N'{"SucceededAt":"2020-01-10T17:37:07.9751038Z","PerformanceDuration":"1904","Latency":"1810"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4404, 301, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T17:40:41.137' AS DateTime), N'{"EnqueuedAt":"2020-01-10T17:40:41.1243376Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4405, 301, N'Processing', NULL, CAST(N'2020-01-10T17:40:41.887' AS DateTime), N'{"StartedAt":"2020-01-10T17:40:41.7314945Z","ServerId":"desktop-qk2o61k:9984:5eab7b4c-191a-4770-91cf-7978696c3e0d","WorkerId":"7cd93312-4a78-4d85-ade7-9c6a532dfbec"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4406, 301, N'Processing', NULL, CAST(N'2020-01-10T17:41:16.250' AS DateTime), N'{"StartedAt":"2020-01-10T17:41:16.1664857Z","ServerId":"desktop-qk2o61k:3136:c2357a1b-e612-460e-a10e-339ad66e7cc8","WorkerId":"644422aa-6790-4035-bbd6-a86806107cfb"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4407, 301, N'Succeeded', NULL, CAST(N'2020-01-10T17:41:17.987' AS DateTime), N'{"SucceededAt":"2020-01-10T17:41:17.8773542Z","PerformanceDuration":"1582","Latency":"35258"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4408, 302, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T17:45:23.757' AS DateTime), N'{"EnqueuedAt":"2020-01-10T17:45:23.7442675Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4409, 302, N'Processing', NULL, CAST(N'2020-01-10T17:45:23.813' AS DateTime), N'{"StartedAt":"2020-01-10T17:45:23.8052187Z","ServerId":"desktop-qk2o61k:18380:4c71339a-60c2-4f6e-b5bb-85c4bcb14ab9","WorkerId":"476fce0e-13df-46f5-8736-a964f474534d"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4410, 302, N'Processing', NULL, CAST(N'2020-01-10T17:48:15.843' AS DateTime), N'{"StartedAt":"2020-01-10T17:48:01.2725408Z","ServerId":"desktop-qk2o61k:6980:922fb843-8be7-4ace-9bf7-7c407a0e3250","WorkerId":"9e7495fc-6c8e-4124-8295-f15fa84a9ed3"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4411, 302, N'Processing', NULL, CAST(N'2020-01-10T17:50:18.960' AS DateTime), N'{"StartedAt":"2020-01-10T17:50:18.8460434Z","ServerId":"desktop-qk2o61k:19820:e21a5ee8-819a-4a79-9b13-460d1c806405","WorkerId":"ed23e26c-4067-4336-9b43-8a664e28e140"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4414, 302, N'Processing', NULL, CAST(N'2020-01-10T17:56:31.440' AS DateTime), N'{"StartedAt":"2020-01-10T17:56:31.3427470Z","ServerId":"desktop-qk2o61k:20320:245bfdb5-f735-4540-ad42-99b4fdb44519","WorkerId":"d6383a35-53bb-4d28-bb22-b6a6c6e3ff1a"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4419, 302, N'Processing', NULL, CAST(N'2020-01-10T17:56:52.170' AS DateTime), N'{"StartedAt":"2020-01-10T17:56:52.0784333Z","ServerId":"desktop-qk2o61k:19768:f9edc7d9-a572-48cc-af32-ede1a12c9542","WorkerId":"1036256e-ea61-451c-ac82-edf3fe69f7fc"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4423, 302, N'Processing', NULL, CAST(N'2020-01-10T17:59:00.643' AS DateTime), N'{"StartedAt":"2020-01-10T17:59:00.5073641Z","ServerId":"desktop-qk2o61k:19760:3b29bb40-4832-4f35-8623-dd7d1ad6ee33","WorkerId":"d5cf5432-6393-445d-a365-980450f48554"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4425, 302, N'Processing', NULL, CAST(N'2020-01-10T17:59:25.127' AS DateTime), N'{"StartedAt":"2020-01-10T17:59:25.0254281Z","ServerId":"desktop-qk2o61k:18888:6e9ea9b3-4d35-44a8-819f-63511a7f215f","WorkerId":"452885e7-4a5f-4632-ab96-37663078463c"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4429, 302, N'Succeeded', NULL, CAST(N'2020-01-10T17:59:26.167' AS DateTime), N'{"SucceededAt":"2020-01-10T17:59:26.1592349Z","PerformanceDuration":"991","Latency":"841457"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4412, 303, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T17:50:19.010' AS DateTime), N'{"EnqueuedAt":"2020-01-10T17:50:19.0101616Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4413, 303, N'Processing', NULL, CAST(N'2020-01-10T17:50:19.047' AS DateTime), N'{"StartedAt":"2020-01-10T17:50:19.0401291Z","ServerId":"desktop-qk2o61k:19820:e21a5ee8-819a-4a79-9b13-460d1c806405","WorkerId":"f47a62c3-0798-4dbb-9bab-f33ad0fa0698"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4415, 303, N'Processing', NULL, CAST(N'2020-01-10T17:56:31.440' AS DateTime), N'{"StartedAt":"2020-01-10T17:56:31.3427416Z","ServerId":"desktop-qk2o61k:20320:245bfdb5-f735-4540-ad42-99b4fdb44519","WorkerId":"e19c204d-dd48-45d9-a684-1773d38d9e26"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4420, 303, N'Processing', NULL, CAST(N'2020-01-10T17:56:52.170' AS DateTime), N'{"StartedAt":"2020-01-10T17:56:52.0784395Z","ServerId":"desktop-qk2o61k:19768:f9edc7d9-a572-48cc-af32-ede1a12c9542","WorkerId":"939ce0dc-6a9b-42bd-b1d6-b80394564591"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4422, 303, N'Processing', NULL, CAST(N'2020-01-10T17:59:00.643' AS DateTime), N'{"StartedAt":"2020-01-10T17:59:00.5065555Z","ServerId":"desktop-qk2o61k:19760:3b29bb40-4832-4f35-8623-dd7d1ad6ee33","WorkerId":"07324f00-7a85-46f4-a740-3b00c49ca814"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4424, 303, N'Processing', NULL, CAST(N'2020-01-10T17:59:25.127' AS DateTime), N'{"StartedAt":"2020-01-10T17:59:25.0253766Z","ServerId":"desktop-qk2o61k:18888:6e9ea9b3-4d35-44a8-819f-63511a7f215f","WorkerId":"c37d03d0-858f-4d66-a810-7e18d82e4c5d"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4428, 303, N'Succeeded', NULL, CAST(N'2020-01-10T17:59:26.167' AS DateTime), N'{"SucceededAt":"2020-01-10T17:59:26.1592583Z","PerformanceDuration":"991","Latency":"546207"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4416, 304, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T17:56:31.547' AS DateTime), N'{"EnqueuedAt":"2020-01-10T17:56:31.5455152Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4417, 304, N'Processing', NULL, CAST(N'2020-01-10T17:56:31.577' AS DateTime), N'{"StartedAt":"2020-01-10T17:56:31.5762136Z","ServerId":"desktop-qk2o61k:20320:245bfdb5-f735-4540-ad42-99b4fdb44519","WorkerId":"e9c3c762-ae36-47bb-bc65-94d507e88759"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4418, 304, N'Processing', NULL, CAST(N'2020-01-10T17:56:52.170' AS DateTime), N'{"StartedAt":"2020-01-10T17:56:52.0784550Z","ServerId":"desktop-qk2o61k:19768:f9edc7d9-a572-48cc-af32-ede1a12c9542","WorkerId":"66302abf-8660-4f3e-9d90-368153de85ae"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4421, 304, N'Processing', NULL, CAST(N'2020-01-10T17:59:00.643' AS DateTime), N'{"StartedAt":"2020-01-10T17:59:00.5065590Z","ServerId":"desktop-qk2o61k:19760:3b29bb40-4832-4f35-8623-dd7d1ad6ee33","WorkerId":"56951c77-455e-4dde-baad-e48e4bbe87f5"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4426, 304, N'Processing', NULL, CAST(N'2020-01-10T17:59:25.127' AS DateTime), N'{"StartedAt":"2020-01-10T17:59:25.0254474Z","ServerId":"desktop-qk2o61k:18888:6e9ea9b3-4d35-44a8-819f-63511a7f215f","WorkerId":"4647e2ac-9e4c-4b28-ac4a-7dd70d311d77"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4427, 304, N'Succeeded', NULL, CAST(N'2020-01-10T17:59:26.167' AS DateTime), N'{"SucceededAt":"2020-01-10T17:59:26.1592227Z","PerformanceDuration":"991","Latency":"173647"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4430, 305, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T18:03:08.133' AS DateTime), N'{"EnqueuedAt":"2020-01-10T18:03:08.1181515Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4431, 305, N'Processing', NULL, CAST(N'2020-01-10T18:03:08.410' AS DateTime), N'{"StartedAt":"2020-01-10T18:03:08.3893063Z","ServerId":"desktop-qk2o61k:13216:104af44d-6094-4ee7-987a-e013fd98407e","WorkerId":"e8e41065-89c0-4ea7-906d-b4045ac045f3"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4432, 305, N'Succeeded', NULL, CAST(N'2020-01-10T18:03:09.930' AS DateTime), N'{"SucceededAt":"2020-01-10T18:03:09.6462985Z","PerformanceDuration":"1212","Latency":"460"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4433, 306, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T18:06:51.453' AS DateTime), N'{"EnqueuedAt":"2020-01-10T18:06:51.4355484Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4434, 306, N'Processing', NULL, CAST(N'2020-01-10T18:06:51.590' AS DateTime), N'{"StartedAt":"2020-01-10T18:06:51.5698333Z","ServerId":"desktop-qk2o61k:20608:23c43236-9bbf-42db-a2b2-d4e5f79bdfb3","WorkerId":"0fbbce24-c66f-4f06-b148-afed9ae1c50a"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4435, 306, N'Succeeded', NULL, CAST(N'2020-01-10T18:06:53.343' AS DateTime), N'{"SucceededAt":"2020-01-10T18:06:53.3275923Z","PerformanceDuration":"1732","Latency":"221"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4436, 307, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T18:10:08.310' AS DateTime), N'{"EnqueuedAt":"2020-01-10T18:10:08.3092936Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4437, 307, N'Processing', NULL, CAST(N'2020-01-10T18:10:08.353' AS DateTime), N'{"StartedAt":"2020-01-10T18:10:08.3492889Z","ServerId":"desktop-qk2o61k:20608:23c43236-9bbf-42db-a2b2-d4e5f79bdfb3","WorkerId":"0fbbce24-c66f-4f06-b148-afed9ae1c50a"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4438, 307, N'Succeeded', NULL, CAST(N'2020-01-10T18:10:08.363' AS DateTime), N'{"SucceededAt":"2020-01-10T18:10:08.3630834Z","PerformanceDuration":"6","Latency":"73"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4439, 308, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T18:15:09.520' AS DateTime), N'{"EnqueuedAt":"2020-01-10T18:15:09.5209670Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4440, 308, N'Processing', NULL, CAST(N'2020-01-10T18:15:09.557' AS DateTime), N'{"StartedAt":"2020-01-10T18:15:09.5525618Z","ServerId":"desktop-qk2o61k:20608:23c43236-9bbf-42db-a2b2-d4e5f79bdfb3","WorkerId":"0fbbce24-c66f-4f06-b148-afed9ae1c50a"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4441, 308, N'Succeeded', NULL, CAST(N'2020-01-10T18:15:09.567' AS DateTime), N'{"SucceededAt":"2020-01-10T18:15:09.5651481Z","PerformanceDuration":"6","Latency":"51"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4442, 309, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T18:20:02.617' AS DateTime), N'{"EnqueuedAt":"2020-01-10T18:20:02.6150856Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4443, 309, N'Processing', NULL, CAST(N'2020-01-10T18:20:04.537' AS DateTime), N'{"StartedAt":"2020-01-10T18:20:04.2297399Z","ServerId":"desktop-qk2o61k:20608:23c43236-9bbf-42db-a2b2-d4e5f79bdfb3","WorkerId":"0fbbce24-c66f-4f06-b148-afed9ae1c50a"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4444, 309, N'Succeeded', NULL, CAST(N'2020-01-10T18:20:06.453' AS DateTime), N'{"SucceededAt":"2020-01-10T18:20:05.7861405Z","PerformanceDuration":"88","Latency":"3384"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4445, 310, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T18:25:05.860' AS DateTime), N'{"EnqueuedAt":"2020-01-10T18:25:05.8434377Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4446, 310, N'Processing', NULL, CAST(N'2020-01-10T18:25:06.200' AS DateTime), N'{"StartedAt":"2020-01-10T18:25:06.1749655Z","ServerId":"desktop-qk2o61k:20488:32c7d9ed-0e4d-4bed-8df6-844cc7448ea7","WorkerId":"d7d3aa51-cd72-4aa6-b9d2-b5f1aa53eb9e"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4447, 310, N'Succeeded', NULL, CAST(N'2020-01-10T18:25:06.340' AS DateTime), N'{"SucceededAt":"2020-01-10T18:25:06.3173319Z","PerformanceDuration":"95","Latency":"634"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4448, 311, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T18:30:09.377' AS DateTime), N'{"EnqueuedAt":"2020-01-10T18:30:09.3611376Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4449, 311, N'Processing', NULL, CAST(N'2020-01-10T18:30:10.807' AS DateTime), N'{"StartedAt":"2020-01-10T18:30:10.6754429Z","ServerId":"desktop-qk2o61k:12532:93bdf922-7090-4a55-ad34-f4641404abd1","WorkerId":"2fad3499-1978-485c-9edf-3259a37929d6"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4450, 311, N'Succeeded', NULL, CAST(N'2020-01-10T18:30:11.783' AS DateTime), N'{"SucceededAt":"2020-01-10T18:30:11.6916467Z","PerformanceDuration":"304","Latency":"2606"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4451, 312, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T18:35:01.603' AS DateTime), N'{"EnqueuedAt":"2020-01-10T18:35:01.5875483Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4452, 312, N'Processing', NULL, CAST(N'2020-01-10T18:35:01.667' AS DateTime), N'{"StartedAt":"2020-01-10T18:35:01.6555050Z","ServerId":"desktop-qk2o61k:23968:87d58184-8cc3-4ae0-a522-d7c362f7d2ac","WorkerId":"7e30bac3-91da-44a0-ba19-174228145bfe"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4453, 312, N'Succeeded', NULL, CAST(N'2020-01-10T18:35:01.737' AS DateTime), N'{"SucceededAt":"2020-01-10T18:35:01.7291429Z","PerformanceDuration":"58","Latency":"127"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4454, 313, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T18:40:01.600' AS DateTime), N'{"EnqueuedAt":"2020-01-10T18:40:01.5760871Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4455, 313, N'Processing', NULL, CAST(N'2020-01-10T18:40:03.760' AS DateTime), N'{"StartedAt":"2020-01-10T18:40:03.4505947Z","ServerId":"desktop-qk2o61k:12816:a1d6bc3f-8aff-4f31-ac01-4704c8bbbe6f","WorkerId":"81c7e3b4-0deb-4fe1-a405-8d20999e40b7"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4456, 313, N'Succeeded', NULL, CAST(N'2020-01-10T18:40:05.090' AS DateTime), N'{"SucceededAt":"2020-01-10T18:40:04.5619938Z","PerformanceDuration":"288","Latency":"3343"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4457, 314, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T18:45:05.837' AS DateTime), N'{"EnqueuedAt":"2020-01-10T18:45:05.8274468Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4458, 314, N'Processing', NULL, CAST(N'2020-01-10T18:45:05.897' AS DateTime), N'{"StartedAt":"2020-01-10T18:45:05.8858184Z","ServerId":"desktop-qk2o61k:21600:2169271e-403a-4594-962d-a81ddcf1bfee","WorkerId":"1c33b9d4-bcf3-4a6c-8f4b-fc5cc55a3945"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4459, 314, N'Succeeded', NULL, CAST(N'2020-01-10T18:45:05.930' AS DateTime), N'{"SucceededAt":"2020-01-10T18:45:05.9211359Z","PerformanceDuration":"17","Latency":"113"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4460, 315, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T18:52:39.673' AS DateTime), N'{"EnqueuedAt":"2020-01-10T18:52:39.6611624Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4461, 315, N'Processing', NULL, CAST(N'2020-01-10T18:52:39.750' AS DateTime), N'{"StartedAt":"2020-01-10T18:52:39.7377907Z","ServerId":"desktop-qk2o61k:17524:6679c976-6450-4d39-a857-79eaae324886","WorkerId":"3268a206-94cf-4e87-add4-b486999ea21e"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4462, 315, N'Succeeded', NULL, CAST(N'2020-01-10T18:52:41.073' AS DateTime), N'{"SucceededAt":"2020-01-10T18:52:41.0631758Z","PerformanceDuration":"1307","Latency":"152"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4463, 316, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T18:55:05.463' AS DateTime), N'{"EnqueuedAt":"2020-01-10T18:55:05.4430117Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4464, 316, N'Processing', NULL, CAST(N'2020-01-10T18:55:05.723' AS DateTime), N'{"StartedAt":"2020-01-10T18:55:05.6294652Z","ServerId":"desktop-qk2o61k:16744:b01b733d-d47a-4b65-b46f-462073db6638","WorkerId":"e06e449c-0520-4324-a2ce-a7a463aa0818"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4465, 316, N'Succeeded', NULL, CAST(N'2020-01-10T18:55:08.003' AS DateTime), N'{"SucceededAt":"2020-01-10T18:55:07.9874298Z","PerformanceDuration":"2179","Latency":"414"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4466, 317, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T19:00:05.857' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:00:05.8548704Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4467, 317, N'Processing', NULL, CAST(N'2020-01-10T19:00:05.887' AS DateTime), N'{"StartedAt":"2020-01-10T19:00:05.8828880Z","ServerId":"desktop-qk2o61k:16744:b01b733d-d47a-4b65-b46f-462073db6638","WorkerId":"e06e449c-0520-4324-a2ce-a7a463aa0818"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4468, 317, N'Succeeded', NULL, CAST(N'2020-01-10T19:00:05.903' AS DateTime), N'{"SucceededAt":"2020-01-10T19:00:05.9002075Z","PerformanceDuration":"10","Latency":"49"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4469, 318, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T19:06:27.360' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:06:27.3417071Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4470, 318, N'Processing', NULL, CAST(N'2020-01-10T19:06:27.433' AS DateTime), N'{"StartedAt":"2020-01-10T19:06:27.4171078Z","ServerId":"desktop-qk2o61k:20896:67313d6f-bdd1-47e3-85da-badcc37afaff","WorkerId":"2951c48e-4b8c-44ba-96d6-de857a06e8dc"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4471, 318, N'Succeeded', NULL, CAST(N'2020-01-10T19:06:30.477' AS DateTime), N'{"SucceededAt":"2020-01-10T19:06:30.4638924Z","PerformanceDuration":"3023","Latency":"223"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4472, 319, N'Enqueued', N'Triggered using recurring job manager', CAST(N'2020-01-10T19:07:02.370' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:07:02.3686523Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4473, 319, N'Processing', NULL, CAST(N'2020-01-10T19:07:02.400' AS DateTime), N'{"StartedAt":"2020-01-10T19:07:02.3951991Z","ServerId":"desktop-qk2o61k:20896:67313d6f-bdd1-47e3-85da-badcc37afaff","WorkerId":"2951c48e-4b8c-44ba-96d6-de857a06e8dc"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4474, 319, N'Succeeded', NULL, CAST(N'2020-01-10T19:07:02.483' AS DateTime), N'{"SucceededAt":"2020-01-10T19:07:02.4799298Z","PerformanceDuration":"75","Latency":"44"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4475, 320, N'Enqueued', N'Triggered using recurring job manager', CAST(N'2020-01-10T19:08:43.157' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:08:43.1429846Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4476, 320, N'Processing', NULL, CAST(N'2020-01-10T19:08:43.233' AS DateTime), N'{"StartedAt":"2020-01-10T19:08:43.2092274Z","ServerId":"desktop-qk2o61k:18600:816cc342-117b-4ab1-bb10-e293b3d07eb5","WorkerId":"32758eb0-1255-441f-96b6-8e236f5db130"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4477, 320, N'Succeeded', NULL, CAST(N'2020-01-10T19:08:43.637' AS DateTime), N'{"SucceededAt":"2020-01-10T19:08:43.6301954Z","PerformanceDuration":"372","Latency":"150"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4478, 321, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T19:10:02.940' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:10:02.9382715Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4480, 321, N'Processing', NULL, CAST(N'2020-01-10T19:10:02.967' AS DateTime), N'{"StartedAt":"2020-01-10T19:10:02.9625401Z","ServerId":"desktop-qk2o61k:18600:816cc342-117b-4ab1-bb10-e293b3d07eb5","WorkerId":"32758eb0-1255-441f-96b6-8e236f5db130"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4483, 321, N'Succeeded', NULL, CAST(N'2020-01-10T19:10:03.040' AS DateTime), N'{"SucceededAt":"2020-01-10T19:10:03.0369989Z","PerformanceDuration":"68","Latency":"41"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4479, 322, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T19:10:02.963' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:10:02.9630504Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4481, 322, N'Processing', NULL, CAST(N'2020-01-10T19:10:02.970' AS DateTime), N'{"StartedAt":"2020-01-10T19:10:02.9687507Z","ServerId":"desktop-qk2o61k:18600:816cc342-117b-4ab1-bb10-e293b3d07eb5","WorkerId":"a255a7ae-7df0-4c8b-b90d-0c19ee74bf4c"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4482, 322, N'Succeeded', NULL, CAST(N'2020-01-10T19:10:03.007' AS DateTime), N'{"SucceededAt":"2020-01-10T19:10:03.0065929Z","PerformanceDuration":"31","Latency":"14"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4484, 323, N'Enqueued', N'Triggered using recurring job manager', CAST(N'2020-01-10T19:11:57.233' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:11:57.2186786Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4485, 323, N'Processing', NULL, CAST(N'2020-01-10T19:11:57.293' AS DateTime), N'{"StartedAt":"2020-01-10T19:11:57.2768818Z","ServerId":"desktop-qk2o61k:25564:e5bcfb10-9810-4a11-ac29-a392012f9561","WorkerId":"3bed7aa7-e370-4da1-9eb9-ae2834a929a8"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4486, 323, N'Succeeded', NULL, CAST(N'2020-01-10T19:11:57.627' AS DateTime), N'{"SucceededAt":"2020-01-10T19:11:57.6200759Z","PerformanceDuration":"313","Latency":"116"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4487, 324, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T19:15:08.967' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:15:08.9648852Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4488, 324, N'Processing', NULL, CAST(N'2020-01-10T19:15:08.970' AS DateTime), N'{"StartedAt":"2020-01-10T19:15:08.9689564Z","ServerId":"desktop-qk2o61k:25564:e5bcfb10-9810-4a11-ac29-a392012f9561","WorkerId":"3bed7aa7-e370-4da1-9eb9-ae2834a929a8"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4492, 324, N'Succeeded', NULL, CAST(N'2020-01-10T19:15:09.013' AS DateTime), N'{"SucceededAt":"2020-01-10T19:15:09.0132400Z","PerformanceDuration":"41","Latency":"15"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4489, 325, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T19:15:08.970' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:15:08.9713845Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4490, 325, N'Processing', NULL, CAST(N'2020-01-10T19:15:08.977' AS DateTime), N'{"StartedAt":"2020-01-10T19:15:08.9757095Z","ServerId":"desktop-qk2o61k:25564:e5bcfb10-9810-4a11-ac29-a392012f9561","WorkerId":"cfd5c400-dd81-4ce0-99e6-af231c5b9c0c"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4491, 325, N'Succeeded', NULL, CAST(N'2020-01-10T19:15:08.983' AS DateTime), N'{"SucceededAt":"2020-01-10T19:15:08.9821415Z","PerformanceDuration":"3","Latency":"9"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4493, 326, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T19:20:04.123' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:20:04.0975606Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4496, 326, N'Processing', NULL, CAST(N'2020-01-10T19:20:04.197' AS DateTime), N'{"StartedAt":"2020-01-10T19:20:04.1792318Z","ServerId":"desktop-qk2o61k:26080:6691c5b6-f321-4255-aaa6-376803b7f11c","WorkerId":"6a56af87-1b78-445f-979c-4639c1b3fd41"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4498, 326, N'Succeeded', NULL, CAST(N'2020-01-10T19:20:04.487' AS DateTime), N'{"SucceededAt":"2020-01-10T19:20:04.4861023Z","PerformanceDuration":"284","Latency":"138"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4494, 327, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T19:20:04.177' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:20:04.1777146Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4495, 327, N'Processing', NULL, CAST(N'2020-01-10T19:20:04.197' AS DateTime), N'{"StartedAt":"2020-01-10T19:20:04.1819200Z","ServerId":"desktop-qk2o61k:26080:6691c5b6-f321-4255-aaa6-376803b7f11c","WorkerId":"d6daa643-f819-431f-af47-d8475f09d60f"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4497, 327, N'Succeeded', NULL, CAST(N'2020-01-10T19:20:04.247' AS DateTime), N'{"SucceededAt":"2020-01-10T19:20:04.2376531Z","PerformanceDuration":"35","Latency":"28"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4499, 328, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T19:25:06.867' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:25:06.8649205Z","Queue":"default"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4500, 328, N'Processing', NULL, CAST(N'2020-01-10T19:25:06.890' AS DateTime), N'{"StartedAt":"2020-01-10T19:25:06.8878337Z","ServerId":"desktop-qk2o61k:26080:6691c5b6-f321-4255-aaa6-376803b7f11c","WorkerId":"6a56af87-1b78-445f-979c-4639c1b3fd41"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4504, 328, N'Succeeded', NULL, CAST(N'2020-01-10T19:25:06.940' AS DateTime), N'{"SucceededAt":"2020-01-10T19:25:06.9379453Z","PerformanceDuration":"44","Latency":"40"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4501, 329, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T19:25:06.890' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:25:06.8895259Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4502, 329, N'Processing', NULL, CAST(N'2020-01-10T19:25:06.897' AS DateTime), N'{"StartedAt":"2020-01-10T19:25:06.8947226Z","ServerId":"desktop-qk2o61k:26080:6691c5b6-f321-4255-aaa6-376803b7f11c","WorkerId":"f917e4cc-c106-408b-af08-b5767f8f1e67"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4503, 329, N'Succeeded', NULL, CAST(N'2020-01-10T19:25:06.910' AS DateTime), N'{"SucceededAt":"2020-01-10T19:25:06.9078580Z","PerformanceDuration":"8","Latency":"12"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4505, 330, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T19:34:25.790' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:34:25.7794760Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4507, 330, N'Processing', NULL, CAST(N'2020-01-10T19:34:25.877' AS DateTime), N'{"StartedAt":"2020-01-10T19:34:25.8589448Z","ServerId":"desktop-qk2o61k:1892:ef76929c-5eec-4c9b-b0ef-600d4c6ad8d3","WorkerId":"aa0d35fb-7f6e-4c04-af1f-3c105c58b62d"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4510, 330, N'Succeeded', NULL, CAST(N'2020-01-10T19:34:27.650' AS DateTime), N'{"SucceededAt":"2020-01-10T19:34:27.6439442Z","PerformanceDuration":"1749","Latency":"244"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4506, 331, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T19:34:25.867' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:34:25.8679610Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4508, 331, N'Processing', NULL, CAST(N'2020-01-10T19:34:25.913' AS DateTime), N'{"StartedAt":"2020-01-10T19:34:25.9061499Z","ServerId":"desktop-qk2o61k:1892:ef76929c-5eec-4c9b-b0ef-600d4c6ad8d3","WorkerId":"5d799de2-bb46-4a8e-8c12-6a5ef8e2b230"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4509, 331, N'Succeeded', NULL, CAST(N'2020-01-10T19:34:27.020' AS DateTime), N'{"SucceededAt":"2020-01-10T19:34:27.0050522Z","PerformanceDuration":"1073","Latency":"71"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4511, 332, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T19:35:10.953' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:35:10.9515916Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4512, 332, N'Processing', NULL, CAST(N'2020-01-10T19:35:11.023' AS DateTime), N'{"StartedAt":"2020-01-10T19:35:11.0198138Z","ServerId":"desktop-qk2o61k:1892:ef76929c-5eec-4c9b-b0ef-600d4c6ad8d3","WorkerId":"aa0d35fb-7f6e-4c04-af1f-3c105c58b62d"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4516, 332, N'Succeeded', NULL, CAST(N'2020-01-10T19:35:11.067' AS DateTime), N'{"SucceededAt":"2020-01-10T19:35:11.0640269Z","PerformanceDuration":"39","Latency":"81"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4513, 333, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T19:35:11.023' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:35:11.0238021Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4514, 333, N'Processing', NULL, CAST(N'2020-01-10T19:35:11.030' AS DateTime), N'{"StartedAt":"2020-01-10T19:35:11.0282546Z","ServerId":"desktop-qk2o61k:1892:ef76929c-5eec-4c9b-b0ef-600d4c6ad8d3","WorkerId":"5d799de2-bb46-4a8e-8c12-6a5ef8e2b230"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4515, 333, N'Succeeded', NULL, CAST(N'2020-01-10T19:35:11.037' AS DateTime), N'{"SucceededAt":"2020-01-10T19:35:11.0354824Z","PerformanceDuration":"3","Latency":"12"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4517, 334, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T19:37:09.220' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:37:09.2114850Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4518, 334, N'Processing', NULL, CAST(N'2020-01-10T19:37:09.270' AS DateTime), N'{"StartedAt":"2020-01-10T19:37:09.2589543Z","ServerId":"desktop-qk2o61k:19296:fd9838d5-97ed-41e1-b24e-1d1af7e7a8e4","WorkerId":"4e39e963-c616-4705-8172-716b44b75577"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4519, 334, N'Succeeded', NULL, CAST(N'2020-01-10T19:37:09.333' AS DateTime), N'{"SucceededAt":"2020-01-10T19:37:09.3265919Z","PerformanceDuration":"52","Latency":"84"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4520, 335, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T19:38:09.277' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:38:09.2747602Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4521, 335, N'Processing', NULL, CAST(N'2020-01-10T19:38:09.297' AS DateTime), N'{"StartedAt":"2020-01-10T19:38:09.2948077Z","ServerId":"desktop-qk2o61k:19296:fd9838d5-97ed-41e1-b24e-1d1af7e7a8e4","WorkerId":"306ba7b9-defa-4244-a92c-2e7b921e2a1d"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4522, 335, N'Succeeded', NULL, CAST(N'2020-01-10T19:38:09.320' AS DateTime), N'{"SucceededAt":"2020-01-10T19:38:09.3182911Z","PerformanceDuration":"18","Latency":"32"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4523, 336, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T19:39:09.320' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:39:09.3206709Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4524, 336, N'Processing', NULL, CAST(N'2020-01-10T19:39:09.347' AS DateTime), N'{"StartedAt":"2020-01-10T19:39:09.3425854Z","ServerId":"desktop-qk2o61k:19296:fd9838d5-97ed-41e1-b24e-1d1af7e7a8e4","WorkerId":"cf4b074f-63e2-4784-b0d8-9a074e3f9acf"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4525, 336, N'Succeeded', NULL, CAST(N'2020-01-10T19:39:09.370' AS DateTime), N'{"SucceededAt":"2020-01-10T19:39:09.3640377Z","PerformanceDuration":"14","Latency":"39"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4526, 337, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T19:40:09.360' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:40:09.3589131Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4527, 337, N'Processing', NULL, CAST(N'2020-01-10T19:40:09.367' AS DateTime), N'{"StartedAt":"2020-01-10T19:40:09.3641866Z","ServerId":"desktop-qk2o61k:19296:fd9838d5-97ed-41e1-b24e-1d1af7e7a8e4","WorkerId":"4e39e963-c616-4705-8172-716b44b75577"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4534, 337, N'Succeeded', NULL, CAST(N'2020-01-10T19:40:09.580' AS DateTime), N'{"SucceededAt":"2020-01-10T19:40:09.5793194Z","PerformanceDuration":"208","Latency":"14"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4528, 338, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T19:40:09.370' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:40:09.3696100Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4529, 338, N'Processing', NULL, CAST(N'2020-01-10T19:40:09.380' AS DateTime), N'{"StartedAt":"2020-01-10T19:40:09.3757047Z","ServerId":"desktop-qk2o61k:19296:fd9838d5-97ed-41e1-b24e-1d1af7e7a8e4","WorkerId":"d28b329a-6f51-4313-9f59-a1d7715a3e19"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4532, 338, N'Succeeded', NULL, CAST(N'2020-01-10T19:40:09.393' AS DateTime), N'{"SucceededAt":"2020-01-10T19:40:09.3933268Z","PerformanceDuration":"10","Latency":"16"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4530, 339, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T19:40:09.383' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:40:09.3826828Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4531, 339, N'Processing', NULL, CAST(N'2020-01-10T19:40:09.390' AS DateTime), N'{"StartedAt":"2020-01-10T19:40:09.3891041Z","ServerId":"desktop-qk2o61k:19296:fd9838d5-97ed-41e1-b24e-1d1af7e7a8e4","WorkerId":"306ba7b9-defa-4244-a92c-2e7b921e2a1d"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4533, 339, N'Succeeded', NULL, CAST(N'2020-01-10T19:40:09.403' AS DateTime), N'{"SucceededAt":"2020-01-10T19:40:09.4031939Z","PerformanceDuration":"9","Latency":"16"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4535, 340, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T19:41:08.850' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:41:08.8391300Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4536, 340, N'Processing', NULL, CAST(N'2020-01-10T19:41:08.907' AS DateTime), N'{"StartedAt":"2020-01-10T19:41:08.8948930Z","ServerId":"desktop-qk2o61k:14296:7024a56f-fbe8-4393-934f-126aed178187","WorkerId":"4a55a02f-2966-4733-8b68-1874f377b84c"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4537, 340, N'Succeeded', NULL, CAST(N'2020-01-10T19:41:08.970' AS DateTime), N'{"SucceededAt":"2020-01-10T19:41:08.9648927Z","PerformanceDuration":"54","Latency":"110"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4538, 341, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T19:42:08.923' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:42:08.9215266Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4539, 341, N'Processing', NULL, CAST(N'2020-01-10T19:42:08.937' AS DateTime), N'{"StartedAt":"2020-01-10T19:42:08.9337600Z","ServerId":"desktop-qk2o61k:14296:7024a56f-fbe8-4393-934f-126aed178187","WorkerId":"4a55a02f-2966-4733-8b68-1874f377b84c"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4540, 341, N'Succeeded', NULL, CAST(N'2020-01-10T19:42:08.983' AS DateTime), N'{"SucceededAt":"2020-01-10T19:42:08.9804043Z","PerformanceDuration":"37","Latency":"32"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4541, 342, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T19:43:08.973' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:43:08.9711507Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4542, 342, N'Processing', NULL, CAST(N'2020-01-10T19:43:08.980' AS DateTime), N'{"StartedAt":"2020-01-10T19:43:08.9769393Z","ServerId":"desktop-qk2o61k:14296:7024a56f-fbe8-4393-934f-126aed178187","WorkerId":"d9600aeb-a214-4716-ae52-7aa175016493"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4543, 342, N'Succeeded', NULL, CAST(N'2020-01-10T19:43:09.000' AS DateTime), N'{"SucceededAt":"2020-01-10T19:43:08.9957418Z","PerformanceDuration":"12","Latency":"20"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4544, 343, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T19:52:53.623' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:52:53.6061602Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4547, 343, N'Processing', NULL, CAST(N'2020-01-10T19:52:53.707' AS DateTime), N'{"StartedAt":"2020-01-10T19:52:53.6900590Z","ServerId":"desktop-qk2o61k:19340:ff47d2d6-5ea1-4212-b00a-318d886d8514","WorkerId":"05a5df71-40af-4c61-9380-5ac48d0dc6bb"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4551, 343, N'Succeeded', NULL, CAST(N'2020-01-10T19:52:55.023' AS DateTime), N'{"SucceededAt":"2020-01-10T19:52:54.9369669Z","PerformanceDuration":"1223","Latency":"183"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4545, 344, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T19:52:53.690' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:52:53.6909031Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4546, 344, N'Processing', NULL, CAST(N'2020-01-10T19:52:53.707' AS DateTime), N'{"StartedAt":"2020-01-10T19:52:53.7009174Z","ServerId":"desktop-qk2o61k:19340:ff47d2d6-5ea1-4212-b00a-318d886d8514","WorkerId":"6ff302c7-e2da-4615-94e1-3e503f9bdebb"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4552, 344, N'Succeeded', NULL, CAST(N'2020-01-10T19:52:55.263' AS DateTime), N'{"SucceededAt":"2020-01-10T19:52:55.2609103Z","PerformanceDuration":"1547","Latency":"26"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4548, 345, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-10T19:52:53.710' AS DateTime), N'{"EnqueuedAt":"2020-01-10T19:52:53.7084101Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4549, 345, N'Processing', NULL, CAST(N'2020-01-10T19:52:53.723' AS DateTime), N'{"StartedAt":"2020-01-10T19:52:53.7208054Z","ServerId":"desktop-qk2o61k:19340:ff47d2d6-5ea1-4212-b00a-318d886d8514","WorkerId":"699ed75b-61a3-4448-9383-8f02e5fb1a8a"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4550, 345, N'Succeeded', NULL, CAST(N'2020-01-10T19:52:54.973' AS DateTime), N'{"SucceededAt":"2020-01-10T19:52:54.9078389Z","PerformanceDuration":"1178","Latency":"29"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4553, 346, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T09:56:11.533' AS DateTime), N'{"EnqueuedAt":"2020-01-11T09:56:11.5229085Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4558, 346, N'Processing', NULL, CAST(N'2020-01-11T09:56:11.610' AS DateTime), N'{"StartedAt":"2020-01-11T09:56:11.5959028Z","ServerId":"desktop-qk2o61k:5740:582944f7-a23c-463c-bfef-023759089b37","WorkerId":"c1a9a5bc-9343-4e68-b919-146422a5b290"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4561, 346, N'Processing', NULL, CAST(N'2020-01-11T09:59:56.407' AS DateTime), N'{"StartedAt":"2020-01-11T09:59:56.1637315Z","ServerId":"desktop-qk2o61k:17020:a5230bbd-8444-4d24-a14f-6d342cc86b4c","WorkerId":"bbf83e81-5ec3-4f9e-ab10-50bbb48325a5"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4562, 346, N'Succeeded', NULL, CAST(N'2020-01-11T10:00:01.930' AS DateTime), N'{"SucceededAt":"2020-01-11T10:00:01.8579614Z","PerformanceDuration":"5174","Latency":"225196"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4554, 347, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T09:56:11.600' AS DateTime), N'{"EnqueuedAt":"2020-01-11T09:56:11.5996134Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4557, 347, N'Processing', NULL, CAST(N'2020-01-11T09:56:11.613' AS DateTime), N'{"StartedAt":"2020-01-11T09:56:11.6032149Z","ServerId":"desktop-qk2o61k:5740:582944f7-a23c-463c-bfef-023759089b37","WorkerId":"edd53902-a615-4e8b-8a86-cb24f088ea41"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4559, 347, N'Processing', NULL, CAST(N'2020-01-11T09:59:56.407' AS DateTime), N'{"StartedAt":"2020-01-11T09:59:56.1724678Z","ServerId":"desktop-qk2o61k:17020:a5230bbd-8444-4d24-a14f-6d342cc86b4c","WorkerId":"3990a668-5314-4d40-b2a4-331345ecddc8"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4564, 347, N'Succeeded', NULL, CAST(N'2020-01-11T10:00:02.537' AS DateTime), N'{"SucceededAt":"2020-01-11T10:00:02.5301141Z","PerformanceDuration":"5818","Latency":"225114"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4555, 348, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T09:56:11.607' AS DateTime), N'{"EnqueuedAt":"2020-01-11T09:56:11.6062952Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4556, 348, N'Processing', NULL, CAST(N'2020-01-11T09:56:11.613' AS DateTime), N'{"StartedAt":"2020-01-11T09:56:11.6103050Z","ServerId":"desktop-qk2o61k:5740:582944f7-a23c-463c-bfef-023759089b37","WorkerId":"53605fce-8947-4fd0-b387-461839b88b95"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4560, 348, N'Processing', NULL, CAST(N'2020-01-11T09:59:56.407' AS DateTime), N'{"StartedAt":"2020-01-11T09:59:56.1637360Z","ServerId":"desktop-qk2o61k:17020:a5230bbd-8444-4d24-a14f-6d342cc86b4c","WorkerId":"26380f66-09d0-4ee7-b3c4-0afd0fd57bc0"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4563, 348, N'Succeeded', NULL, CAST(N'2020-01-11T10:00:01.947' AS DateTime), N'{"SucceededAt":"2020-01-11T10:00:01.8026800Z","PerformanceDuration":"5118","Latency":"225080"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4565, 349, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T10:00:11.303' AS DateTime), N'{"EnqueuedAt":"2020-01-11T10:00:11.3037893Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4566, 349, N'Processing', NULL, CAST(N'2020-01-11T10:00:11.343' AS DateTime), N'{"StartedAt":"2020-01-11T10:00:11.3413162Z","ServerId":"desktop-qk2o61k:17020:a5230bbd-8444-4d24-a14f-6d342cc86b4c","WorkerId":"26380f66-09d0-4ee7-b3c4-0afd0fd57bc0"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4570, 349, N'Succeeded', NULL, CAST(N'2020-01-11T10:00:11.450' AS DateTime), N'{"SucceededAt":"2020-01-11T10:00:11.4499782Z","PerformanceDuration":"93","Latency":"69"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4567, 350, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T10:00:11.353' AS DateTime), N'{"EnqueuedAt":"2020-01-11T10:00:11.3519194Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4568, 350, N'Processing', NULL, CAST(N'2020-01-11T10:00:11.413' AS DateTime), N'{"StartedAt":"2020-01-11T10:00:11.4072491Z","ServerId":"desktop-qk2o61k:17020:a5230bbd-8444-4d24-a14f-6d342cc86b4c","WorkerId":"bbf83e81-5ec3-4f9e-ab10-50bbb48325a5"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4569, 350, N'Succeeded', NULL, CAST(N'2020-01-11T10:00:11.430' AS DateTime), N'{"SucceededAt":"2020-01-11T10:00:11.4278279Z","PerformanceDuration":"3","Latency":"81"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4571, 351, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T10:05:11.560' AS DateTime), N'{"EnqueuedAt":"2020-01-11T10:05:11.5599138Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4572, 351, N'Processing', NULL, CAST(N'2020-01-11T10:05:11.603' AS DateTime), N'{"StartedAt":"2020-01-11T10:05:11.5993085Z","ServerId":"desktop-qk2o61k:17020:a5230bbd-8444-4d24-a14f-6d342cc86b4c","WorkerId":"edb0a2c2-a9d7-4489-986e-666b2d12fbd1"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4573, 351, N'Succeeded', NULL, CAST(N'2020-01-11T10:05:11.640' AS DateTime), N'{"SucceededAt":"2020-01-11T10:05:11.6330330Z","PerformanceDuration":"14","Latency":"68"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4574, 352, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T10:15:12.183' AS DateTime), N'{"EnqueuedAt":"2020-01-11T10:15:12.1588573Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4575, 352, N'Processing', NULL, CAST(N'2020-01-11T10:15:12.440' AS DateTime), N'{"StartedAt":"2020-01-11T10:15:12.4183301Z","ServerId":"desktop-qk2o61k:19524:0acad8c2-7a84-402a-8169-b3f0b3fd1405","WorkerId":"9495c117-bb64-4e6d-b2c6-e8d31be656e2"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4576, 352, N'Succeeded', NULL, CAST(N'2020-01-11T10:16:59.020' AS DateTime), N'{"SucceededAt":"2020-01-11T10:16:56.9186299Z","PerformanceDuration":"104459","Latency":"407"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4577, 353, N'Enqueued', N'Triggered using recurring job manager', CAST(N'2020-01-11T10:17:55.523' AS DateTime), N'{"EnqueuedAt":"2020-01-11T10:17:55.5236640Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4578, 353, N'Processing', NULL, CAST(N'2020-01-11T10:17:55.560' AS DateTime), N'{"StartedAt":"2020-01-11T10:17:55.5500106Z","ServerId":"desktop-qk2o61k:19524:0acad8c2-7a84-402a-8169-b3f0b3fd1405","WorkerId":"9495c117-bb64-4e6d-b2c6-e8d31be656e2"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4579, 353, N'Succeeded', NULL, CAST(N'2020-01-11T10:17:58.143' AS DateTime), N'{"SucceededAt":"2020-01-11T10:17:58.1368766Z","PerformanceDuration":"2565","Latency":"54"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4580, 354, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T10:20:06.623' AS DateTime), N'{"EnqueuedAt":"2020-01-11T10:20:06.6232186Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4581, 354, N'Processing', NULL, CAST(N'2020-01-11T10:20:06.660' AS DateTime), N'{"StartedAt":"2020-01-11T10:20:06.6533987Z","ServerId":"desktop-qk2o61k:19524:0acad8c2-7a84-402a-8169-b3f0b3fd1405","WorkerId":"9495c117-bb64-4e6d-b2c6-e8d31be656e2"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4582, 354, N'Succeeded', NULL, CAST(N'2020-01-11T10:20:06.687' AS DateTime), N'{"SucceededAt":"2020-01-11T10:20:06.6845761Z","PerformanceDuration":"8","Latency":"58"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4583, 355, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T10:30:30.733' AS DateTime), N'{"EnqueuedAt":"2020-01-11T10:30:30.7052435Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4584, 355, N'Processing', NULL, CAST(N'2020-01-11T10:30:30.813' AS DateTime), N'{"StartedAt":"2020-01-11T10:30:30.7983332Z","ServerId":"desktop-qk2o61k:20876:fc371c2f-c797-44f2-9444-3f31cea75059","WorkerId":"7b332f75-a6f1-43af-9fd2-575a3001e39f"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4585, 355, N'Succeeded', NULL, CAST(N'2020-01-11T10:30:32.323' AS DateTime), N'{"SucceededAt":"2020-01-11T10:30:32.3150659Z","PerformanceDuration":"1494","Latency":"162"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4586, 356, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T10:36:00.873' AS DateTime), N'{"EnqueuedAt":"2020-01-11T10:36:00.8501245Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4587, 356, N'Processing', NULL, CAST(N'2020-01-11T10:36:01.053' AS DateTime), N'{"StartedAt":"2020-01-11T10:36:01.0272115Z","ServerId":"desktop-qk2o61k:20868:93377a05-d8c0-40ac-a967-db262ddf71a5","WorkerId":"19b5886b-4031-49c5-8728-1ea1315716b9"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4588, 356, N'Succeeded', NULL, CAST(N'2020-01-11T10:36:02.877' AS DateTime), N'{"SucceededAt":"2020-01-11T10:36:02.8590088Z","PerformanceDuration":"1793","Latency":"318"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4589, 357, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T10:40:01.587' AS DateTime), N'{"EnqueuedAt":"2020-01-11T10:40:01.5854417Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4590, 357, N'Processing', NULL, CAST(N'2020-01-11T10:40:01.773' AS DateTime), N'{"StartedAt":"2020-01-11T10:40:01.7664484Z","ServerId":"desktop-qk2o61k:20868:93377a05-d8c0-40ac-a967-db262ddf71a5","WorkerId":"19b5886b-4031-49c5-8728-1ea1315716b9"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4591, 357, N'Succeeded', NULL, CAST(N'2020-01-11T10:40:01.880' AS DateTime), N'{"SucceededAt":"2020-01-11T10:40:01.8723003Z","PerformanceDuration":"74","Latency":"335"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4592, 358, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T10:45:15.903' AS DateTime), N'{"EnqueuedAt":"2020-01-11T10:45:15.8837851Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4593, 358, N'Processing', NULL, CAST(N'2020-01-11T10:45:19.223' AS DateTime), N'{"StartedAt":"2020-01-11T10:45:18.7857202Z","ServerId":"desktop-qk2o61k:7752:38b47e87-2692-4af3-94e9-11cc78096cce","WorkerId":"9f8a0740-4377-4cfd-b734-1afaa9196b9d"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4594, 358, N'Succeeded', NULL, CAST(N'2020-01-11T10:45:20.543' AS DateTime), N'{"SucceededAt":"2020-01-11T10:45:20.3420159Z","PerformanceDuration":"251","Latency":"4707"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4595, 359, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T10:50:13.193' AS DateTime), N'{"EnqueuedAt":"2020-01-11T10:50:13.1737648Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4596, 359, N'Processing', NULL, CAST(N'2020-01-11T10:50:15.427' AS DateTime), N'{"StartedAt":"2020-01-11T10:50:15.0733424Z","ServerId":"desktop-qk2o61k:20208:11369c52-3bb0-41bb-9a55-6680a320c739","WorkerId":"fd186196-91a8-46b2-a5b8-d08e75839920"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4597, 359, N'Succeeded', NULL, CAST(N'2020-01-11T10:50:16.853' AS DateTime), N'{"SucceededAt":"2020-01-11T10:50:16.4955548Z","PerformanceDuration":"341","Latency":"3253"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4598, 360, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T10:55:09.193' AS DateTime), N'{"EnqueuedAt":"2020-01-11T10:55:09.1770869Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4599, 360, N'Processing', NULL, CAST(N'2020-01-11T10:55:11.123' AS DateTime), N'{"StartedAt":"2020-01-11T10:55:10.5811128Z","ServerId":"desktop-qk2o61k:12640:9a8c57ff-cc4a-4691-8f67-823afc4fc37a","WorkerId":"57a5386b-c40b-459a-a5dc-c26bcf43343b"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4600, 360, N'Succeeded', NULL, CAST(N'2020-01-11T10:55:14.200' AS DateTime), N'{"SucceededAt":"2020-01-11T10:55:13.1600608Z","PerformanceDuration":"460","Latency":"3892"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4601, 361, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T11:00:04.390' AS DateTime), N'{"EnqueuedAt":"2020-01-11T11:00:04.3778456Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4602, 361, N'Processing', NULL, CAST(N'2020-01-11T11:00:04.503' AS DateTime), N'{"StartedAt":"2020-01-11T11:00:04.4482407Z","ServerId":"desktop-qk2o61k:9884:33f69523-a1ec-4660-a521-17976637a5ea","WorkerId":"65605045-a4fc-4134-b916-8b74a541e7da"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4606, 361, N'Succeeded', NULL, CAST(N'2020-01-11T11:00:04.783' AS DateTime), N'{"SucceededAt":"2020-01-11T11:00:04.7785812Z","PerformanceDuration":"254","Latency":"177"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4603, 362, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T11:00:04.510' AS DateTime), N'{"EnqueuedAt":"2020-01-11T11:00:04.5090060Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4604, 362, N'Processing', NULL, CAST(N'2020-01-11T11:00:04.537' AS DateTime), N'{"StartedAt":"2020-01-11T11:00:04.5370858Z","ServerId":"desktop-qk2o61k:9884:33f69523-a1ec-4660-a521-17976637a5ea","WorkerId":"64a29651-14c7-4ae9-b489-63755673f9ac"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4605, 362, N'Succeeded', NULL, CAST(N'2020-01-11T11:00:04.557' AS DateTime), N'{"SucceededAt":"2020-01-11T11:00:04.5510941Z","PerformanceDuration":"10","Latency":"43"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4607, 363, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T11:05:01.897' AS DateTime), N'{"EnqueuedAt":"2020-01-11T11:05:01.8789188Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4608, 363, N'Processing', NULL, CAST(N'2020-01-11T11:05:02.010' AS DateTime), N'{"StartedAt":"2020-01-11T11:05:01.9857097Z","ServerId":"desktop-qk2o61k:17712:0591cc95-d917-42c0-999e-218536da2d66","WorkerId":"8a4e2d31-87ca-49ef-b0dd-5e921c7bf346"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4609, 363, N'Succeeded', NULL, CAST(N'2020-01-11T11:05:03.233' AS DateTime), N'{"SucceededAt":"2020-01-11T11:05:03.2285363Z","PerformanceDuration":"1211","Latency":"206"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4610, 364, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T11:10:16.253' AS DateTime), N'{"EnqueuedAt":"2020-01-11T11:10:16.2288697Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4611, 364, N'Processing', NULL, CAST(N'2020-01-11T11:10:18.657' AS DateTime), N'{"StartedAt":"2020-01-11T11:10:18.1457019Z","ServerId":"desktop-qk2o61k:12816:c2210ba4-6e31-4bb2-b9fd-f78d177b45b0","WorkerId":"912d9422-979a-4c18-a5fe-eca70124c928"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4612, 364, N'Succeeded', NULL, CAST(N'2020-01-11T11:10:20.563' AS DateTime), N'{"SucceededAt":"2020-01-11T11:10:19.9298670Z","PerformanceDuration":"495","Latency":"3363"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4613, 365, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T11:15:13.107' AS DateTime), N'{"EnqueuedAt":"2020-01-11T11:15:13.0893627Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4614, 365, N'Processing', NULL, CAST(N'2020-01-11T11:15:14.640' AS DateTime), N'{"StartedAt":"2020-01-11T11:15:14.4128908Z","ServerId":"desktop-qk2o61k:7088:7e3a91f3-b140-4c4f-82fb-281c14bc0874","WorkerId":"876e697d-3e0c-470f-9b07-45efb354e3d8"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4615, 365, N'Succeeded', NULL, CAST(N'2020-01-11T11:15:16.630' AS DateTime), N'{"SucceededAt":"2020-01-11T11:15:15.8918230Z","PerformanceDuration":"531","Latency":"2467"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4616, 366, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T11:20:01.620' AS DateTime), N'{"EnqueuedAt":"2020-01-11T11:20:01.6092785Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4617, 366, N'Processing', NULL, CAST(N'2020-01-11T11:20:01.677' AS DateTime), N'{"StartedAt":"2020-01-11T11:20:01.6655389Z","ServerId":"desktop-qk2o61k:26604:d5dd82fc-df78-4a00-a8d4-3c1abbc5bb6a","WorkerId":"9b8ae983-b5ff-4cb6-a1d1-b18d4a7ee0b2"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4618, 366, N'Succeeded', NULL, CAST(N'2020-01-11T11:20:01.753' AS DateTime), N'{"SucceededAt":"2020-01-11T11:20:01.7467983Z","PerformanceDuration":"65","Latency":"101"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4619, 367, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T11:25:33.417' AS DateTime), N'{"EnqueuedAt":"2020-01-11T11:25:33.3806185Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4620, 367, N'Processing', NULL, CAST(N'2020-01-11T11:25:33.607' AS DateTime), N'{"StartedAt":"2020-01-11T11:25:33.5797281Z","ServerId":"desktop-qk2o61k:17832:0e9aebc7-49c6-4cd0-9508-271a5672d3b0","WorkerId":"3dcdb7c6-71a6-4e31-93d1-0d4dfe5aa48c"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4621, 367, N'Succeeded', NULL, CAST(N'2020-01-11T11:25:37.193' AS DateTime), N'{"SucceededAt":"2020-01-11T11:25:37.1590833Z","PerformanceDuration":"3537","Latency":"311"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4622, 368, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T11:30:08.297' AS DateTime), N'{"EnqueuedAt":"2020-01-11T11:30:08.2821996Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4623, 368, N'Processing', NULL, CAST(N'2020-01-11T11:30:08.463' AS DateTime), N'{"StartedAt":"2020-01-11T11:30:08.4421604Z","ServerId":"desktop-qk2o61k:7116:def55a64-6f2f-4246-bf08-48ea361a37f7","WorkerId":"64ee9934-fd5b-4c74-a384-8c68e29dccae"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4624, 368, N'Succeeded', NULL, CAST(N'2020-01-11T11:30:08.520' AS DateTime), N'{"SucceededAt":"2020-01-11T11:30:08.5129252Z","PerformanceDuration":"39","Latency":"233"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4625, 369, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T12:22:42.833' AS DateTime), N'{"EnqueuedAt":"2020-01-11T12:22:42.8153803Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4627, 369, N'Processing', NULL, CAST(N'2020-01-11T12:22:43.380' AS DateTime), N'{"StartedAt":"2020-01-11T12:22:43.3559749Z","ServerId":"desktop-qk2o61k:14560:4f234d4a-2f23-493c-9a23-75288fc3b7ac","WorkerId":"4adbf601-5177-46fa-8d2c-524566d843cd"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4629, 369, N'Succeeded', NULL, CAST(N'2020-01-11T12:22:44.837' AS DateTime), N'{"SucceededAt":"2020-01-11T12:22:44.8203734Z","PerformanceDuration":"1385","Latency":"1063"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4626, 370, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T12:22:43.367' AS DateTime), N'{"EnqueuedAt":"2020-01-11T12:22:43.3635427Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4628, 370, N'Processing', NULL, CAST(N'2020-01-11T12:22:43.887' AS DateTime), N'{"StartedAt":"2020-01-11T12:22:43.5452920Z","ServerId":"desktop-qk2o61k:14560:4f234d4a-2f23-493c-9a23-75288fc3b7ac","WorkerId":"4716c399-ffdb-4076-9d9d-84296c751710"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4630, 370, N'Succeeded', NULL, CAST(N'2020-01-11T12:22:45.647' AS DateTime), N'{"SucceededAt":"2020-01-11T12:22:45.6281218Z","PerformanceDuration":"1390","Latency":"884"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4631, 371, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T12:25:14.547' AS DateTime), N'{"EnqueuedAt":"2020-01-11T12:25:14.5453782Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4632, 371, N'Processing', NULL, CAST(N'2020-01-11T12:25:14.927' AS DateTime), N'{"StartedAt":"2020-01-11T12:25:14.9128886Z","ServerId":"desktop-qk2o61k:14560:4f234d4a-2f23-493c-9a23-75288fc3b7ac","WorkerId":"4adbf601-5177-46fa-8d2c-524566d843cd"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4633, 371, N'Succeeded', NULL, CAST(N'2020-01-11T12:25:15.063' AS DateTime), N'{"SucceededAt":"2020-01-11T12:25:15.0288160Z","PerformanceDuration":"34","Latency":"697"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4634, 372, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T12:30:15.050' AS DateTime), N'{"EnqueuedAt":"2020-01-11T12:30:15.0497906Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4635, 372, N'Processing', NULL, CAST(N'2020-01-11T12:30:15.100' AS DateTime), N'{"StartedAt":"2020-01-11T12:30:15.0970217Z","ServerId":"desktop-qk2o61k:14560:4f234d4a-2f23-493c-9a23-75288fc3b7ac","WorkerId":"4adbf601-5177-46fa-8d2c-524566d843cd"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4636, 372, N'Succeeded', NULL, CAST(N'2020-01-11T12:30:15.293' AS DateTime), N'{"SucceededAt":"2020-01-11T12:30:15.2879339Z","PerformanceDuration":"181","Latency":"113"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4637, 373, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T12:35:01.047' AS DateTime), N'{"EnqueuedAt":"2020-01-11T12:35:01.0475546Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4638, 373, N'Processing', NULL, CAST(N'2020-01-11T12:35:01.083' AS DateTime), N'{"StartedAt":"2020-01-11T12:35:01.0815722Z","ServerId":"desktop-qk2o61k:14560:4f234d4a-2f23-493c-9a23-75288fc3b7ac","WorkerId":"4adbf601-5177-46fa-8d2c-524566d843cd"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4639, 373, N'Succeeded', NULL, CAST(N'2020-01-11T12:35:01.097' AS DateTime), N'{"SucceededAt":"2020-01-11T12:35:01.0942201Z","PerformanceDuration":"6","Latency":"54"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4640, 374, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T12:40:43.083' AS DateTime), N'{"EnqueuedAt":"2020-01-11T12:40:43.0622370Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4641, 374, N'Processing', NULL, CAST(N'2020-01-11T12:40:44.573' AS DateTime), N'{"StartedAt":"2020-01-11T12:40:44.2556636Z","ServerId":"desktop-qk2o61k:20040:047bb7ad-413d-4e67-b275-ccf9846e70c6","WorkerId":"6265f6af-ba06-4ef9-8e7a-acf5a3266c2b"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4642, 374, N'Succeeded', NULL, CAST(N'2020-01-11T12:40:45.447' AS DateTime), N'{"SucceededAt":"2020-01-11T12:40:45.3448818Z","PerformanceDuration":"248","Latency":"2965"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4643, 375, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T12:45:06.920' AS DateTime), N'{"EnqueuedAt":"2020-01-11T12:45:06.9025181Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4644, 375, N'Processing', NULL, CAST(N'2020-01-11T12:45:07.190' AS DateTime), N'{"StartedAt":"2020-01-11T12:45:07.1696376Z","ServerId":"desktop-qk2o61k:21628:152b2008-3a52-47eb-8ea3-9b5ec32da495","WorkerId":"d3c0cb64-97ff-428c-977c-508fee2563db"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4645, 375, N'Succeeded', NULL, CAST(N'2020-01-11T12:45:07.317' AS DateTime), N'{"SucceededAt":"2020-01-11T12:45:07.3044265Z","PerformanceDuration":"86","Latency":"460"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4646, 376, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T12:50:08.837' AS DateTime), N'{"EnqueuedAt":"2020-01-11T12:50:08.8168300Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4647, 376, N'Processing', NULL, CAST(N'2020-01-11T12:50:09.560' AS DateTime), N'{"StartedAt":"2020-01-11T12:50:09.5302506Z","ServerId":"desktop-qk2o61k:19280:46848c9a-1beb-4200-bbca-35de51412c72","WorkerId":"c5508033-ac8b-4cf7-93fd-2d7a04dc99e1"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4648, 376, N'Succeeded', NULL, CAST(N'2020-01-11T12:50:10.137' AS DateTime), N'{"SucceededAt":"2020-01-11T12:50:10.0973596Z","PerformanceDuration":"313","Latency":"1660"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4649, 377, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T12:55:45.103' AS DateTime), N'{"EnqueuedAt":"2020-01-11T12:55:45.0845868Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4650, 377, N'Processing', NULL, CAST(N'2020-01-11T12:55:45.613' AS DateTime), N'{"StartedAt":"2020-01-11T12:55:45.5709750Z","ServerId":"desktop-qk2o61k:20776:ab0dc4ef-a3d6-4bd2-87aa-ed45a038da75","WorkerId":"2af9889b-7d5f-4722-aae1-bddcfff7f4b9"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4651, 377, N'Succeeded', NULL, CAST(N'2020-01-11T12:55:46.627' AS DateTime), N'{"SucceededAt":"2020-01-11T12:55:46.6137370Z","PerformanceDuration":"903","Latency":"927"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4652, 378, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T13:00:09.690' AS DateTime), N'{"EnqueuedAt":"2020-01-11T13:00:09.6797558Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4653, 378, N'Processing', NULL, CAST(N'2020-01-11T13:00:09.763' AS DateTime), N'{"StartedAt":"2020-01-11T13:00:09.7464575Z","ServerId":"desktop-qk2o61k:22780:0ff76755-9c54-4842-a4bc-0eb705c32c4f","WorkerId":"012f7fb3-5920-47be-86c1-e4ade8db8616"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4657, 378, N'Succeeded', NULL, CAST(N'2020-01-11T13:00:10.117' AS DateTime), N'{"SucceededAt":"2020-01-11T13:00:10.1125959Z","PerformanceDuration":"321","Latency":"140"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4654, 379, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T13:00:09.757' AS DateTime), N'{"EnqueuedAt":"2020-01-11T13:00:09.7554198Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4655, 379, N'Processing', NULL, CAST(N'2020-01-11T13:00:09.887' AS DateTime), N'{"StartedAt":"2020-01-11T13:00:09.8788495Z","ServerId":"desktop-qk2o61k:22780:0ff76755-9c54-4842-a4bc-0eb705c32c4f","WorkerId":"32c50a81-87c0-4172-a3ff-fb0685a2ea02"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4656, 379, N'Succeeded', NULL, CAST(N'2020-01-11T13:00:09.920' AS DateTime), N'{"SucceededAt":"2020-01-11T13:00:09.9113477Z","PerformanceDuration":"15","Latency":"148"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4658, 380, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T13:05:10.053' AS DateTime), N'{"EnqueuedAt":"2020-01-11T13:05:10.0529683Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4659, 380, N'Processing', NULL, CAST(N'2020-01-11T13:05:10.083' AS DateTime), N'{"StartedAt":"2020-01-11T13:05:10.0817766Z","ServerId":"desktop-qk2o61k:22780:0ff76755-9c54-4842-a4bc-0eb705c32c4f","WorkerId":"012f7fb3-5920-47be-86c1-e4ade8db8616"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4660, 380, N'Succeeded', NULL, CAST(N'2020-01-11T13:05:10.097' AS DateTime), N'{"SucceededAt":"2020-01-11T13:05:10.0957103Z","PerformanceDuration":"9","Latency":"53"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4661, 381, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T13:10:11.203' AS DateTime), N'{"EnqueuedAt":"2020-01-11T13:10:11.2038140Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4662, 381, N'Processing', NULL, CAST(N'2020-01-11T13:10:11.230' AS DateTime), N'{"StartedAt":"2020-01-11T13:10:11.2284999Z","ServerId":"desktop-qk2o61k:22780:0ff76755-9c54-4842-a4bc-0eb705c32c4f","WorkerId":"084bc96c-d148-4929-9857-cdcba885b698"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4663, 381, N'Succeeded', NULL, CAST(N'2020-01-11T13:10:11.247' AS DateTime), N'{"SucceededAt":"2020-01-11T13:10:11.2448862Z","PerformanceDuration":"7","Latency":"44"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4664, 382, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T13:15:47.973' AS DateTime), N'{"EnqueuedAt":"2020-01-11T13:15:47.9584435Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4665, 382, N'Processing', NULL, CAST(N'2020-01-11T13:15:48.280' AS DateTime), N'{"StartedAt":"2020-01-11T13:15:48.2633158Z","ServerId":"desktop-qk2o61k:13160:010e721b-63eb-4085-b708-2d14c91207a7","WorkerId":"c484a7b2-fe53-4991-95db-28e8f87c802c"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4666, 382, N'Succeeded', NULL, CAST(N'2020-01-11T13:15:48.660' AS DateTime), N'{"SucceededAt":"2020-01-11T13:15:48.6408494Z","PerformanceDuration":"339","Latency":"461"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4667, 383, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T13:32:43.897' AS DateTime), N'{"EnqueuedAt":"2020-01-11T13:32:43.8795146Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4668, 383, N'Processing', NULL, CAST(N'2020-01-11T13:32:44.107' AS DateTime), N'{"StartedAt":"2020-01-11T13:32:44.0911975Z","ServerId":"desktop-qk2o61k:20980:31f1a616-ea11-4757-9d81-3e48e5432ba4","WorkerId":"eea47bcd-f11a-43a7-8e67-4725e9542c6c"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4669, 383, N'Succeeded', NULL, CAST(N'2020-01-11T13:32:45.153' AS DateTime), N'{"SucceededAt":"2020-01-11T13:32:45.1181987Z","PerformanceDuration":"993","Latency":"321"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4670, 384, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T13:35:14.160' AS DateTime), N'{"EnqueuedAt":"2020-01-11T13:35:14.1592442Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4671, 384, N'Processing', NULL, CAST(N'2020-01-11T13:35:14.190' AS DateTime), N'{"StartedAt":"2020-01-11T13:35:14.1865936Z","ServerId":"desktop-qk2o61k:20980:31f1a616-ea11-4757-9d81-3e48e5432ba4","WorkerId":"eea47bcd-f11a-43a7-8e67-4725e9542c6c"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4672, 384, N'Succeeded', NULL, CAST(N'2020-01-11T13:35:14.243' AS DateTime), N'{"SucceededAt":"2020-01-11T13:35:14.2412187Z","PerformanceDuration":"47","Latency":"47"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4673, 385, N'Enqueued', N'Triggered using recurring job manager', CAST(N'2020-01-11T13:39:19.983' AS DateTime), N'{"EnqueuedAt":"2020-01-11T13:39:19.9831742Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4674, 385, N'Processing', NULL, CAST(N'2020-01-11T13:39:19.993' AS DateTime), N'{"StartedAt":"2020-01-11T13:39:19.9901898Z","ServerId":"desktop-qk2o61k:20980:31f1a616-ea11-4757-9d81-3e48e5432ba4","WorkerId":"eea47bcd-f11a-43a7-8e67-4725e9542c6c"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4675, 385, N'Succeeded', NULL, CAST(N'2020-01-11T13:39:20.047' AS DateTime), N'{"SucceededAt":"2020-01-11T13:39:20.0234282Z","PerformanceDuration":"28","Latency":"17"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4676, 386, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T13:50:13.970' AS DateTime), N'{"EnqueuedAt":"2020-01-11T13:50:13.9552413Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4677, 386, N'Processing', NULL, CAST(N'2020-01-11T13:50:14.110' AS DateTime), N'{"StartedAt":"2020-01-11T13:50:14.0893725Z","ServerId":"desktop-qk2o61k:25396:a1c39a2b-cfcc-49a4-a135-4d69556e8ec0","WorkerId":"3b79031b-3f89-4876-a31b-15573458b0bf"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4678, 386, N'Succeeded', NULL, CAST(N'2020-01-11T13:50:15.183' AS DateTime), N'{"SucceededAt":"2020-01-11T13:50:15.1713153Z","PerformanceDuration":"1052","Latency":"218"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4679, 387, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T13:55:35.837' AS DateTime), N'{"EnqueuedAt":"2020-01-11T13:55:35.8349318Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4680, 387, N'Processing', NULL, CAST(N'2020-01-11T13:55:35.860' AS DateTime), N'{"StartedAt":"2020-01-11T13:55:35.8568260Z","ServerId":"desktop-qk2o61k:25396:a1c39a2b-cfcc-49a4-a135-4d69556e8ec0","WorkerId":"3b79031b-3f89-4876-a31b-15573458b0bf"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4681, 387, N'Succeeded', NULL, CAST(N'2020-01-11T13:55:35.893' AS DateTime), N'{"SucceededAt":"2020-01-11T13:55:35.8920680Z","PerformanceDuration":"30","Latency":"34"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4682, 388, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T14:00:06.917' AS DateTime), N'{"EnqueuedAt":"2020-01-11T14:00:06.9175932Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4683, 388, N'Processing', NULL, CAST(N'2020-01-11T14:00:06.923' AS DateTime), N'{"StartedAt":"2020-01-11T14:00:06.9225076Z","ServerId":"desktop-qk2o61k:25396:a1c39a2b-cfcc-49a4-a135-4d69556e8ec0","WorkerId":"3b79031b-3f89-4876-a31b-15573458b0bf"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4687, 388, N'Succeeded', NULL, CAST(N'2020-01-11T14:00:07.157' AS DateTime), N'{"SucceededAt":"2020-01-11T14:00:07.1556509Z","PerformanceDuration":"222","Latency":"15"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4684, 389, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T14:00:06.930' AS DateTime), N'{"EnqueuedAt":"2020-01-11T14:00:06.9309795Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4685, 389, N'Processing', NULL, CAST(N'2020-01-11T14:00:06.947' AS DateTime), N'{"StartedAt":"2020-01-11T14:00:06.9446519Z","ServerId":"desktop-qk2o61k:25396:a1c39a2b-cfcc-49a4-a135-4d69556e8ec0","WorkerId":"3f453745-ee65-4662-b518-b3aac0b13a67"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4686, 389, N'Succeeded', NULL, CAST(N'2020-01-11T14:00:06.953' AS DateTime), N'{"SucceededAt":"2020-01-11T14:00:06.9514913Z","PerformanceDuration":"2","Latency":"25"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4688, 390, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T14:05:11.470' AS DateTime), N'{"EnqueuedAt":"2020-01-11T14:05:11.4707805Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4689, 390, N'Processing', NULL, CAST(N'2020-01-11T14:05:11.477' AS DateTime), N'{"StartedAt":"2020-01-11T14:05:11.4751511Z","ServerId":"desktop-qk2o61k:25396:a1c39a2b-cfcc-49a4-a135-4d69556e8ec0","WorkerId":"3b79031b-3f89-4876-a31b-15573458b0bf"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4690, 390, N'Succeeded', NULL, CAST(N'2020-01-11T14:05:11.487' AS DateTime), N'{"SucceededAt":"2020-01-11T14:05:11.4853046Z","PerformanceDuration":"6","Latency":"8"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4691, 391, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T14:10:15.943' AS DateTime), N'{"EnqueuedAt":"2020-01-11T14:10:15.9428610Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4692, 391, N'Processing', NULL, CAST(N'2020-01-11T14:10:17.953' AS DateTime), N'{"StartedAt":"2020-01-11T14:10:17.6122721Z","ServerId":"desktop-qk2o61k:25396:a1c39a2b-cfcc-49a4-a135-4d69556e8ec0","WorkerId":"3b79031b-3f89-4876-a31b-15573458b0bf"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4693, 391, N'Succeeded', NULL, CAST(N'2020-01-11T14:10:20.157' AS DateTime), N'{"SucceededAt":"2020-01-11T14:10:19.4274948Z","PerformanceDuration":"310","Latency":"3707"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4694, 392, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T14:15:05.570' AS DateTime), N'{"EnqueuedAt":"2020-01-11T14:15:05.5543828Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4695, 392, N'Processing', NULL, CAST(N'2020-01-11T14:15:06.510' AS DateTime), N'{"StartedAt":"2020-01-11T14:15:06.2012794Z","ServerId":"desktop-qk2o61k:25836:8428794c-1c32-46b1-a535-cf30c67923d9","WorkerId":"0c6eb75e-5479-478e-9c19-42d31e461836"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4696, 392, N'Succeeded', NULL, CAST(N'2020-01-11T14:15:07.183' AS DateTime), N'{"SucceededAt":"2020-01-11T14:15:06.7872722Z","PerformanceDuration":"148","Latency":"1261"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4697, 393, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T14:20:01.100' AS DateTime), N'{"EnqueuedAt":"2020-01-11T14:20:01.0982282Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4698, 393, N'Processing', NULL, CAST(N'2020-01-11T14:20:01.130' AS DateTime), N'{"StartedAt":"2020-01-11T14:20:01.1280371Z","ServerId":"desktop-qk2o61k:25836:8428794c-1c32-46b1-a535-cf30c67923d9","WorkerId":"0c6eb75e-5479-478e-9c19-42d31e461836"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4699, 393, N'Succeeded', NULL, CAST(N'2020-01-11T14:20:01.140' AS DateTime), N'{"SucceededAt":"2020-01-11T14:20:01.1393123Z","PerformanceDuration":"5","Latency":"46"}')
GO
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4700, 394, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T14:25:04.820' AS DateTime), N'{"EnqueuedAt":"2020-01-11T14:25:04.7968252Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4701, 394, N'Processing', NULL, CAST(N'2020-01-11T14:25:05.670' AS DateTime), N'{"StartedAt":"2020-01-11T14:25:05.6173872Z","ServerId":"desktop-qk2o61k:23680:e8d160d7-be6f-48b3-9aea-7858f19380ac","WorkerId":"eaa469e5-0af7-4637-b6c1-93f012794aa1"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4702, 394, N'Succeeded', NULL, CAST(N'2020-01-11T14:25:06.877' AS DateTime), N'{"SucceededAt":"2020-01-11T14:25:06.6698792Z","PerformanceDuration":"259","Latency":"2167"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4703, 395, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T14:30:07.077' AS DateTime), N'{"EnqueuedAt":"2020-01-11T14:30:07.0541778Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4704, 395, N'Processing', NULL, CAST(N'2020-01-11T14:30:07.510' AS DateTime), N'{"StartedAt":"2020-01-11T14:30:07.4642407Z","ServerId":"desktop-qk2o61k:7320:0ff92494-c2d4-4e30-9062-ff28ab81cb0b","WorkerId":"074acb59-2f68-4501-b749-7a81d11ac261"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4705, 395, N'Succeeded', NULL, CAST(N'2020-01-11T14:30:08.747' AS DateTime), N'{"SucceededAt":"2020-01-11T14:30:08.7086543Z","PerformanceDuration":"1160","Latency":"601"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4706, 396, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T14:35:10.300' AS DateTime), N'{"EnqueuedAt":"2020-01-11T14:35:10.2834126Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4707, 396, N'Processing', NULL, CAST(N'2020-01-11T14:35:10.367' AS DateTime), N'{"StartedAt":"2020-01-11T14:35:10.3542662Z","ServerId":"desktop-qk2o61k:3544:96979ced-1d15-4240-b50d-90dd0424f427","WorkerId":"0894fb3e-c1e3-45ab-ac46-e3e85c08f937"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4708, 396, N'Succeeded', NULL, CAST(N'2020-01-11T14:35:10.427' AS DateTime), N'{"SucceededAt":"2020-01-11T14:35:10.4121984Z","PerformanceDuration":"40","Latency":"118"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4709, 397, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T15:10:27.197' AS DateTime), N'{"EnqueuedAt":"2020-01-11T15:10:27.1676724Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4711, 397, N'Processing', NULL, CAST(N'2020-01-11T15:10:27.920' AS DateTime), N'{"StartedAt":"2020-01-11T15:10:27.8945449Z","ServerId":"desktop-qk2o61k:11092:f170583e-a28f-4d69-b27d-ca564e9810dc","WorkerId":"c6e07be2-2165-4d68-8774-f7625f901afd"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4713, 397, N'Succeeded', NULL, CAST(N'2020-01-11T15:10:30.073' AS DateTime), N'{"SucceededAt":"2020-01-11T15:10:29.2453767Z","PerformanceDuration":"1297","Latency":"1103"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4710, 398, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T15:10:27.827' AS DateTime), N'{"EnqueuedAt":"2020-01-11T15:10:27.8272785Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4712, 398, N'Processing', NULL, CAST(N'2020-01-11T15:10:27.920' AS DateTime), N'{"StartedAt":"2020-01-11T15:10:27.9173472Z","ServerId":"desktop-qk2o61k:11092:f170583e-a28f-4d69-b27d-ca564e9810dc","WorkerId":"83357611-3531-4cc3-9260-66d71cb78d4a"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4714, 398, N'Succeeded', NULL, CAST(N'2020-01-11T15:10:30.833' AS DateTime), N'{"SucceededAt":"2020-01-11T15:10:30.8180548Z","PerformanceDuration":"2878","Latency":"232"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4715, 399, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2020-01-11T15:15:13.987' AS DateTime), N'{"EnqueuedAt":"2020-01-11T15:15:13.9854591Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4716, 399, N'Processing', NULL, CAST(N'2020-01-11T15:15:14.233' AS DateTime), N'{"StartedAt":"2020-01-11T15:15:14.2301524Z","ServerId":"desktop-qk2o61k:11092:f170583e-a28f-4d69-b27d-ca564e9810dc","WorkerId":"c6e07be2-2165-4d68-8774-f7625f901afd"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4717, 399, N'Succeeded', NULL, CAST(N'2020-01-11T15:15:14.297' AS DateTime), N'{"SucceededAt":"2020-01-11T15:15:14.2664287Z","PerformanceDuration":"15","Latency":"373"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4718, 400, N'Enqueued', N'Triggered using recurring job manager', CAST(N'2020-01-11T15:18:31.800' AS DateTime), N'{"EnqueuedAt":"2020-01-11T15:18:31.8003408Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4719, 400, N'Processing', NULL, CAST(N'2020-01-11T15:18:31.827' AS DateTime), N'{"StartedAt":"2020-01-11T15:18:31.8207721Z","ServerId":"desktop-qk2o61k:11092:f170583e-a28f-4d69-b27d-ca564e9810dc","WorkerId":"c6e07be2-2165-4d68-8774-f7625f901afd"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4720, 400, N'Succeeded', NULL, CAST(N'2020-01-11T15:18:31.910' AS DateTime), N'{"SucceededAt":"2020-01-11T15:18:31.9087722Z","PerformanceDuration":"78","Latency":"37"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4721, 401, N'Enqueued', N'Triggered using recurring job manager', CAST(N'2020-01-11T15:27:45.157' AS DateTime), N'{"EnqueuedAt":"2020-01-11T15:27:45.1344024Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4722, 401, N'Processing', NULL, CAST(N'2020-01-11T15:27:45.500' AS DateTime), N'{"StartedAt":"2020-01-11T15:27:45.4419575Z","ServerId":"desktop-qk2o61k:3424:b73bd24e-0665-4e5d-9963-a3c798b60b2f","WorkerId":"8cb9ddf5-2f2c-4dcd-8583-4b55f00bba56"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (4723, 401, N'Succeeded', NULL, CAST(N'2020-01-11T15:27:46.220' AS DateTime), N'{"SucceededAt":"2020-01-11T15:27:46.1471792Z","PerformanceDuration":"496","Latency":"627"}')
SET IDENTITY_INSERT [HangFire].[State] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 2020-01-11 17:23:56 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2020-01-11 17:23:56 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 2020-01-11 17:23:56 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 2020-01-11 17:23:56 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 2020-01-11 17:23:56 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 2020-01-11 17:23:56 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2020-01-11 17:23:56 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Rentals_PaymentId]    Script Date: 2020-01-11 17:23:56 ******/
CREATE NONCLUSTERED INDEX [IX_Rentals_PaymentId] ON [dbo].[Rentals]
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Rentals_UserId]    Script Date: 2020-01-11 17:23:56 ******/
CREATE NONCLUSTERED INDEX [IX_Rentals_UserId] ON [dbo].[Rentals]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reviews_MovieId]    Script Date: 2020-01-11 17:23:56 ******/
CREATE NONCLUSTERED INDEX [IX_Reviews_MovieId] ON [dbo].[Reviews]
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Reviews_UserID]    Script Date: 2020-01-11 17:23:56 ******/
CREATE NONCLUSTERED INDEX [IX_Reviews_UserID] ON [dbo].[Reviews]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_AggregatedCounter_ExpireAt]    Script Date: 2020-01-11 17:23:56 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_AggregatedCounter_ExpireAt] ON [HangFire].[AggregatedCounter]
(
	[ExpireAt] ASC
)
WHERE ([ExpireAt] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Hash_ExpireAt]    Script Date: 2020-01-11 17:23:56 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Hash_ExpireAt] ON [HangFire].[Hash]
(
	[ExpireAt] ASC
)
WHERE ([ExpireAt] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Job_ExpireAt]    Script Date: 2020-01-11 17:23:56 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Job_ExpireAt] ON [HangFire].[Job]
(
	[ExpireAt] ASC
)
INCLUDE([StateName]) 
WHERE ([ExpireAt] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HangFire_Job_StateName]    Script Date: 2020-01-11 17:23:56 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Job_StateName] ON [HangFire].[Job]
(
	[StateName] ASC
)
WHERE ([StateName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_List_ExpireAt]    Script Date: 2020-01-11 17:23:56 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_List_ExpireAt] ON [HangFire].[List]
(
	[ExpireAt] ASC
)
WHERE ([ExpireAt] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Server_LastHeartbeat]    Script Date: 2020-01-11 17:23:56 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Server_LastHeartbeat] ON [HangFire].[Server]
(
	[LastHeartbeat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_HangFire_Set_ExpireAt]    Script Date: 2020-01-11 17:23:56 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Set_ExpireAt] ON [HangFire].[Set]
(
	[ExpireAt] ASC
)
WHERE ([ExpireAt] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HangFire_Set_Score]    Script Date: 2020-01-11 17:23:56 ******/
CREATE NONCLUSTERED INDEX [IX_HangFire_Set_Score] ON [HangFire].[Set]
(
	[Key] ASC,
	[Score] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Movies] ADD  DEFAULT ((0.0)) FOR [Price]
GO
ALTER TABLE [dbo].[Payments] ADD  DEFAULT ((0.0)) FOR [Price]
GO
ALTER TABLE [dbo].[Rentals] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsValid]
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
ALTER TABLE [dbo].[Rentals]  WITH CHECK ADD  CONSTRAINT [FK_Rentals_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Rentals] CHECK CONSTRAINT [FK_Rentals_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Rentals]  WITH CHECK ADD  CONSTRAINT [FK_Rentals_Payments_PaymentId] FOREIGN KEY([PaymentId])
REFERENCES [dbo].[Payments] ([Id])
GO
ALTER TABLE [dbo].[Rentals] CHECK CONSTRAINT [FK_Rentals_Payments_PaymentId]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_AspNetUsers_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_AspNetUsers_UserID]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Movies_MovieId] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movies] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Movies_MovieId]
GO
ALTER TABLE [HangFire].[JobParameter]  WITH CHECK ADD  CONSTRAINT [FK_HangFire_JobParameter_Job] FOREIGN KEY([JobId])
REFERENCES [HangFire].[Job] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [HangFire].[JobParameter] CHECK CONSTRAINT [FK_HangFire_JobParameter_Job]
GO
ALTER TABLE [HangFire].[State]  WITH CHECK ADD  CONSTRAINT [FK_HangFire_State_Job] FOREIGN KEY([JobId])
REFERENCES [HangFire].[Job] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [HangFire].[State] CHECK CONSTRAINT [FK_HangFire_State_Job]
GO
USE [master]
GO
ALTER DATABASE [MovieContext] SET  READ_WRITE 
GO
