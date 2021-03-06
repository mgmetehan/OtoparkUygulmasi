USE [master]
GO
/****** Object:  Database [db_otopark]    Script Date: 29.05.2022 12:09:44 ******/
CREATE DATABASE [db_otopark]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_otopark', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\db_otopark.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_otopark_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\db_otopark_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [db_otopark] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_otopark].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_otopark] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_otopark] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_otopark] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_otopark] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_otopark] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_otopark] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [db_otopark] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_otopark] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_otopark] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_otopark] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_otopark] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_otopark] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_otopark] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_otopark] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_otopark] SET  ENABLE_BROKER 
GO
ALTER DATABASE [db_otopark] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_otopark] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_otopark] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_otopark] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_otopark] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_otopark] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_otopark] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_otopark] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [db_otopark] SET  MULTI_USER 
GO
ALTER DATABASE [db_otopark] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_otopark] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_otopark] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_otopark] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_otopark] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db_otopark] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [db_otopark] SET QUERY_STORE = OFF
GO
USE [db_otopark]
GO
/****** Object:  Table [dbo].[araclar]    Script Date: 29.05.2022 12:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[araclar](
	[aracId] [int] IDENTITY(1,1) NOT NULL,
	[aracPlaka] [nvarchar](20) NOT NULL,
	[aracMarka] [nvarchar](20) NOT NULL,
	[aracRenk] [nvarchar](15) NOT NULL,
	[kisiId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[aracId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[giris]    Script Date: 29.05.2022 12:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giris](
	[kullaniciId] [int] IDENTITY(1,1) NOT NULL,
	[kullaniciAd] [nvarchar](20) NOT NULL,
	[kullaniciSifre] [nvarchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[kullaniciId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kisiler]    Script Date: 29.05.2022 12:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kisiler](
	[kisiId] [int] IDENTITY(1,1) NOT NULL,
	[kisiTc] [nvarchar](11) NOT NULL,
	[kisiAd] [nvarchar](30) NOT NULL,
	[kisiSoyad] [nvarchar](30) NOT NULL,
	[kisiTelNo] [nvarchar](11) NOT NULL,
	[Adres] [nvarchar](180) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[kisiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[otoparklar]    Script Date: 29.05.2022 12:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[otoparklar](
	[otoparkId] [int] IDENTITY(1,1) NOT NULL,
	[otoparkAd] [nvarchar](30) NOT NULL,
	[otoparkSehir] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[otoparkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[parkYeri]    Script Date: 29.05.2022 12:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[parkYeri](
	[parkId] [int] IDENTITY(1,1) NOT NULL,
	[parkYeri] [nvarchar](20) NOT NULL,
	[aracId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[parkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
Insert Into giris(kullaniciAd,kullaniciSifre) Values('admin','1234');
Insert Into giris(kullaniciAd,kullaniciSifre) Values('Metehan','toor');
Insert Into kisiler(kisiTc,kisiAd,kisiSoyad,kisiTelNo,Adres) Values ('11111111111','Metehan','Gultekin','0531','Daire 8');
Insert Into kisiler(kisiTc,kisiAd,kisiSoyad,kisiTelNo,Adres) Values ('22222222222','Ýlayda','Tan','0540','Daire 3');
Insert Into kisiler(kisiTc,kisiAd,kisiSoyad,kisiTelNo,Adres) Values ('33333333333','Hilal','Ayþe','0565','Daire 2');
Insert Into otoparklar(otoparkAd,otoparkSehir) Values ('Kaplan','Mersin');
Insert Into otoparklar(otoparkAd,otoparkSehir) Values ('Yavuz','Ankara');
Insert Into otoparklar(otoparkAd,otoparkSehir) Values ('Kýlýc','Istanbul');
Insert Into araclar(aracPlaka,aracMarka,aracRenk,kisiId) Values ('34EF60','BMW','Mavi',1);
Insert Into araclar(aracPlaka,aracMarka,aracRenk,kisiId) Values ('06TY24','Audi','Mavi',2);
Insert Into araclar(aracPlaka,aracMarka,aracRenk,kisiId) Values ('70ZX08','BMW','Siyah',3);
Insert Into parkYeri(parkYeri,aracId) Values ('1',1);
Insert Into parkYeri(parkYeri,aracId) Values ('2',3);
Insert Into parkYeri(parkYeri,aracId) Values ('3',2);
GO
ALTER TABLE [dbo].[araclar]  WITH CHECK ADD  CONSTRAINT [FK_araclar_kisiler] FOREIGN KEY([kisiId])
REFERENCES [dbo].[kisiler] ([kisiId])
GO
ALTER TABLE [dbo].[araclar] CHECK CONSTRAINT [FK_araclar_kisiler]
GO
ALTER TABLE [dbo].[parkYeri]  WITH CHECK ADD  CONSTRAINT [FK_parkYeri_araclar] FOREIGN KEY([aracId])
REFERENCES [dbo].[araclar] ([aracId])
GO
ALTER TABLE [dbo].[parkYeri] CHECK CONSTRAINT [FK_parkYeri_araclar]
GO
USE [master]
GO
ALTER DATABASE [db_otopark] SET  READ_WRITE 
GO
