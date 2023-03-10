USE [master]
GO
/****** Object:  Database [9AralikFilmSitesiORM]    Script Date: 5.02.2023 01:48:59 ******/
CREATE DATABASE [9AralikFilmSitesiORM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'9AralikFilmSitesiORM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\9AralikFilmSitesiORM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'9AralikFilmSitesiORM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\9AralikFilmSitesiORM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [9AralikFilmSitesiORM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET ARITHABORT OFF 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET  ENABLE_BROKER 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET  MULTI_USER 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET QUERY_STORE = OFF
GO
USE [9AralikFilmSitesiORM]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5.02.2023 01:48:59 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Adminlers]    Script Date: 5.02.2023 01:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adminlers](
	[AdminNo] [int] IDENTITY(1,1) NOT NULL,
	[AdminAdi] [nvarchar](30) NOT NULL,
	[AdminSifre] [nvarchar](20) NOT NULL,
	[AdminTel] [nvarchar](15) NOT NULL,
	[AdminMail] [nvarchar](40) NOT NULL,
 CONSTRAINT [PK_Adminlers] PRIMARY KEY CLUSTERED 
(
	[AdminNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Elemans]    Script Date: 5.02.2023 01:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Elemans](
	[islemNo] [int] IDENTITY(1,1) NOT NULL,
	[OyuncuNo] [int] NULL,
	[filmekibiEkipNo] [int] NULL,
 CONSTRAINT [PK_Elemans] PRIMARY KEY CLUSTERED 
(
	[islemNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmEkibis]    Script Date: 5.02.2023 01:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmEkibis](
	[EkipNo] [int] IDENTITY(1,1) NOT NULL,
	[OyuncuNo] [int] NOT NULL,
	[FilmNo] [int] NOT NULL,
	[FilmlersFilmNo] [int] NULL,
	[YonetmenNo] [int] NOT NULL,
	[YonetmensYonetmenNo] [int] NULL,
 CONSTRAINT [PK_FilmEkibis] PRIMARY KEY CLUSTERED 
(
	[EkipNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Filmlers]    Script Date: 5.02.2023 01:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filmlers](
	[FilmNo] [int] IDENTITY(1,1) NOT NULL,
	[FilmAdi] [nvarchar](50) NOT NULL,
	[FilmTur] [nvarchar](20) NOT NULL,
	[FilmYayinlamaTarih] [nvarchar](15) NOT NULL,
	[FilmSuresi] [int] NOT NULL,
	[YonetmenNo] [int] NOT NULL,
	[YonetmensYonetmenNo] [int] NULL,
 CONSTRAINT [PK_Filmlers] PRIMARY KEY CLUSTERED 
(
	[FilmNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanicilars]    Script Date: 5.02.2023 01:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilars](
	[KullaniciNo] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](30) NOT NULL,
	[Sifre] [nvarchar](20) NOT NULL,
	[KullaniciTel] [nvarchar](15) NOT NULL,
	[KullaniciMail] [nvarchar](40) NOT NULL,
 CONSTRAINT [PK_Kullanicilars] PRIMARY KEY CLUSTERED 
(
	[KullaniciNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oyunculars]    Script Date: 5.02.2023 01:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oyunculars](
	[OyuncuNo] [int] IDENTITY(1,1) NOT NULL,
	[OyuncuAdiSoyadi] [nvarchar](50) NOT NULL,
	[OyuncuDogumTarihi] [nvarchar](10) NOT NULL,
	[OyuncuDogumYeri] [nvarchar](30) NOT NULL,
	[OyuncuCinsiyet] [nvarchar](30) NOT NULL,
	[OynadigiFilmSayisi] [int] NOT NULL,
 CONSTRAINT [PK_Oyunculars] PRIMARY KEY CLUSTERED 
(
	[OyuncuNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sinemalars]    Script Date: 5.02.2023 01:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sinemalars](
	[SinemaNo] [int] IDENTITY(1,1) NOT NULL,
	[SinemaAdi] [nvarchar](50) NOT NULL,
	[Sehri] [nvarchar](20) NOT NULL,
	[Adres] [nvarchar](15) NOT NULL,
	[FilmNo] [int] NOT NULL,
	[FilmlersFilmNo] [int] NULL,
 CONSTRAINT [PK_Sinemalars] PRIMARY KEY CLUSTERED 
(
	[SinemaNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yonetmens]    Script Date: 5.02.2023 01:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yonetmens](
	[YonetmenNo] [int] IDENTITY(1,1) NOT NULL,
	[YonetmenAdiSoyadi] [nvarchar](50) NOT NULL,
	[YonetmenDogumTarihi] [nvarchar](10) NOT NULL,
	[YonetmenDogumYeri] [nvarchar](30) NOT NULL,
	[YonetmenCinsiyet] [nvarchar](30) NOT NULL,
	[YonetmenTel] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Yonetmens] PRIMARY KEY CLUSTERED 
(
	[YonetmenNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yorumlars]    Script Date: 5.02.2023 01:48:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yorumlars](
	[YorumNo] [nvarchar](450) NOT NULL,
	[KullaniciNo] [int] NOT NULL,
	[KullanicilarsKullaniciNo] [int] NULL,
	[FilmNo] [int] NOT NULL,
	[FilmlersFilmNo] [int] NULL,
	[Aciklama] [nvarchar](100) NOT NULL,
	[YildizSayisi] [int] NOT NULL,
 CONSTRAINT [PK_Yorumlars] PRIMARY KEY CLUSTERED 
(
	[YorumNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221210233712_CreateDb', N'3.1.14')
GO
SET IDENTITY_INSERT [dbo].[FilmEkibis] ON 

INSERT [dbo].[FilmEkibis] ([EkipNo], [OyuncuNo], [FilmNo], [FilmlersFilmNo], [YonetmenNo], [YonetmensYonetmenNo]) VALUES (2, 1, 1, NULL, 1, NULL)
INSERT [dbo].[FilmEkibis] ([EkipNo], [OyuncuNo], [FilmNo], [FilmlersFilmNo], [YonetmenNo], [YonetmensYonetmenNo]) VALUES (5, 3, 1, NULL, 7, NULL)
INSERT [dbo].[FilmEkibis] ([EkipNo], [OyuncuNo], [FilmNo], [FilmlersFilmNo], [YonetmenNo], [YonetmensYonetmenNo]) VALUES (6, 6, 4, NULL, 1, NULL)
INSERT [dbo].[FilmEkibis] ([EkipNo], [OyuncuNo], [FilmNo], [FilmlersFilmNo], [YonetmenNo], [YonetmensYonetmenNo]) VALUES (7, 10, 8, NULL, 3, NULL)
INSERT [dbo].[FilmEkibis] ([EkipNo], [OyuncuNo], [FilmNo], [FilmlersFilmNo], [YonetmenNo], [YonetmensYonetmenNo]) VALUES (8, 8, 5, NULL, 6, NULL)
SET IDENTITY_INSERT [dbo].[FilmEkibis] OFF
GO
SET IDENTITY_INSERT [dbo].[Filmlers] ON 

INSERT [dbo].[Filmlers] ([FilmNo], [FilmAdi], [FilmTur], [FilmYayinlamaTarih], [FilmSuresi], [YonetmenNo], [YonetmensYonetmenNo]) VALUES (1, N'Cennetin Çocukları', N'Gerilim', N'10.04.1977', 88, 7, 7)
INSERT [dbo].[Filmlers] ([FilmNo], [FilmAdi], [FilmTur], [FilmYayinlamaTarih], [FilmSuresi], [YonetmenNo], [YonetmensYonetmenNo]) VALUES (3, N'Ahlat Ağacı', N'Dram', N'18.05.2018', 188, 1, 1)
INSERT [dbo].[Filmlers] ([FilmNo], [FilmAdi], [FilmTur], [FilmYayinlamaTarih], [FilmSuresi], [YonetmenNo], [YonetmensYonetmenNo]) VALUES (4, N'Kış Uykusu', N'Dram', N'16.05.2014', 196, 1, 1)
INSERT [dbo].[Filmlers] ([FilmNo], [FilmAdi], [FilmTur], [FilmYayinlamaTarih], [FilmSuresi], [YonetmenNo], [YonetmensYonetmenNo]) VALUES (5, N'Babam ve Oğlum', N'Dram', N'18.11.2005', 108, 6, 6)
INSERT [dbo].[Filmlers] ([FilmNo], [FilmAdi], [FilmTur], [FilmYayinlamaTarih], [FilmSuresi], [YonetmenNo], [YonetmensYonetmenNo]) VALUES (7, N'Prestij', N'Bilim Kurgu', N'22.12.2006', 128, 3, 3)
INSERT [dbo].[Filmlers] ([FilmNo], [FilmAdi], [FilmTur], [FilmYayinlamaTarih], [FilmSuresi], [YonetmenNo], [YonetmensYonetmenNo]) VALUES (8, N'Kara Şövalye', N'Aksiyon', N'25.07.2008', 152, 3, 3)
INSERT [dbo].[Filmlers] ([FilmNo], [FilmAdi], [FilmTur], [FilmYayinlamaTarih], [FilmSuresi], [YonetmenNo], [YonetmensYonetmenNo]) VALUES (9, N'Yüzüklerin Efendisi: Yüzük Kardeşliği', N'Bilim Kurgu', N'10.10.2001', 178, 5, 5)
SET IDENTITY_INSERT [dbo].[Filmlers] OFF
GO
SET IDENTITY_INSERT [dbo].[Kullanicilars] ON 

INSERT [dbo].[Kullanicilars] ([KullaniciNo], [KullaniciAdi], [Sifre], [KullaniciTel], [KullaniciMail]) VALUES (1, N'ilayda erdem', N'1234', N'05437899876', N'ier@gmail.com')
SET IDENTITY_INSERT [dbo].[Kullanicilars] OFF
GO
SET IDENTITY_INSERT [dbo].[Oyunculars] ON 

INSERT [dbo].[Oyunculars] ([OyuncuNo], [OyuncuAdiSoyadi], [OyuncuDogumTarihi], [OyuncuDogumYeri], [OyuncuCinsiyet], [OynadigiFilmSayisi]) VALUES (1, N'Doğu Demirkol', N'06.09.1988', N'Ankara', N'Erkek', 3)
INSERT [dbo].[Oyunculars] ([OyuncuNo], [OyuncuAdiSoyadi], [OyuncuDogumTarihi], [OyuncuDogumYeri], [OyuncuCinsiyet], [OynadigiFilmSayisi]) VALUES (2, N'Bennu Yıldırımlar', N'22.11.1969', N'İstanbul', N'Kadın', 3)
INSERT [dbo].[Oyunculars] ([OyuncuNo], [OyuncuAdiSoyadi], [OyuncuDogumTarihi], [OyuncuDogumYeri], [OyuncuCinsiyet], [OynadigiFilmSayisi]) VALUES (3, N'Münir Özkul', N'15.08.1925', N'İstanbul', N'Erkek', 1)
INSERT [dbo].[Oyunculars] ([OyuncuNo], [OyuncuAdiSoyadi], [OyuncuDogumTarihi], [OyuncuDogumYeri], [OyuncuCinsiyet], [OynadigiFilmSayisi]) VALUES (4, N'Itır Esen', N'17.12.1956', N'İstanbul', N'Kadın', 1)
INSERT [dbo].[Oyunculars] ([OyuncuNo], [OyuncuAdiSoyadi], [OyuncuDogumTarihi], [OyuncuDogumYeri], [OyuncuCinsiyet], [OynadigiFilmSayisi]) VALUES (5, N'Haluk Bilginer', N'05.06.1954', N'İzmir', N'Erkek', 4)
INSERT [dbo].[Oyunculars] ([OyuncuNo], [OyuncuAdiSoyadi], [OyuncuDogumTarihi], [OyuncuDogumYeri], [OyuncuCinsiyet], [OynadigiFilmSayisi]) VALUES (6, N'Melisa Sözen', N'06.07.1985', N'İstanbul', N'Kadın', 4)
INSERT [dbo].[Oyunculars] ([OyuncuNo], [OyuncuAdiSoyadi], [OyuncuDogumTarihi], [OyuncuDogumYeri], [OyuncuCinsiyet], [OynadigiFilmSayisi]) VALUES (7, N'Çetin Tekindor', N'16.07.1945', N'Sivas', N'Erkek', 5)
INSERT [dbo].[Oyunculars] ([OyuncuNo], [OyuncuAdiSoyadi], [OyuncuDogumTarihi], [OyuncuDogumYeri], [OyuncuCinsiyet], [OynadigiFilmSayisi]) VALUES (8, N'Hümeyra', N'15.10.1947', N'İstanbul', N'Kadın', 5)
INSERT [dbo].[Oyunculars] ([OyuncuNo], [OyuncuAdiSoyadi], [OyuncuDogumTarihi], [OyuncuDogumYeri], [OyuncuCinsiyet], [OynadigiFilmSayisi]) VALUES (9, N'Hugh Jackman', N'12.10.1968', N'Sidney', N'Erkek', 7)
INSERT [dbo].[Oyunculars] ([OyuncuNo], [OyuncuAdiSoyadi], [OyuncuDogumTarihi], [OyuncuDogumYeri], [OyuncuCinsiyet], [OynadigiFilmSayisi]) VALUES (10, N'Cristian Bale', N'30.01.1974', N'Galler', N'Erkek', 8)
INSERT [dbo].[Oyunculars] ([OyuncuNo], [OyuncuAdiSoyadi], [OyuncuDogumTarihi], [OyuncuDogumYeri], [OyuncuCinsiyet], [OynadigiFilmSayisi]) VALUES (11, N'Elijah Wood', N'28.01.1981', N'Lowa', N'Erkek', 9)
INSERT [dbo].[Oyunculars] ([OyuncuNo], [OyuncuAdiSoyadi], [OyuncuDogumTarihi], [OyuncuDogumYeri], [OyuncuCinsiyet], [OynadigiFilmSayisi]) VALUES (13, N'Liv Tyler', N'01.07.1977', N'New York', N'Kadın', 9)
SET IDENTITY_INSERT [dbo].[Oyunculars] OFF
GO
SET IDENTITY_INSERT [dbo].[Sinemalars] ON 

INSERT [dbo].[Sinemalars] ([SinemaNo], [SinemaAdi], [Sehri], [Adres], [FilmNo], [FilmlersFilmNo]) VALUES (1, N'Akaretler', N'İstanbul', N'İstanbul', 1, NULL)
INSERT [dbo].[Sinemalars] ([SinemaNo], [SinemaAdi], [Sehri], [Adres], [FilmNo], [FilmlersFilmNo]) VALUES (4, N'Akyaka Sinema', N'istanbul', N'Ümraniye', 3, NULL)
INSERT [dbo].[Sinemalars] ([SinemaNo], [SinemaAdi], [Sehri], [Adres], [FilmNo], [FilmlersFilmNo]) VALUES (5, N'Afium Sinema', N'Afyon', N'Afyon', 8, NULL)
INSERT [dbo].[Sinemalars] ([SinemaNo], [SinemaAdi], [Sehri], [Adres], [FilmNo], [FilmlersFilmNo]) VALUES (6, N'Canpark Sinema', N'İstanbul', N'İstanbul', 9, NULL)
SET IDENTITY_INSERT [dbo].[Sinemalars] OFF
GO
SET IDENTITY_INSERT [dbo].[Yonetmens] ON 

INSERT [dbo].[Yonetmens] ([YonetmenNo], [YonetmenAdiSoyadi], [YonetmenDogumTarihi], [YonetmenDogumYeri], [YonetmenCinsiyet], [YonetmenTel]) VALUES (1, N'Nuri Bilge Ceylan', N'10.10.1959', N'İstanbul', N'Erkek', N'05067899898')
INSERT [dbo].[Yonetmens] ([YonetmenNo], [YonetmenAdiSoyadi], [YonetmenDogumTarihi], [YonetmenDogumYeri], [YonetmenCinsiyet], [YonetmenTel]) VALUES (3, N'Christopher Nolan', N'23.05.1950', N'Londra', N'Erkek', N'05084545265')
INSERT [dbo].[Yonetmens] ([YonetmenNo], [YonetmenAdiSoyadi], [YonetmenDogumTarihi], [YonetmenDogumYeri], [YonetmenCinsiyet], [YonetmenTel]) VALUES (5, N'Peter Jackson', N'31.10.1961', N'Pukerua Bay', N'Erkek', N'05078933156')
INSERT [dbo].[Yonetmens] ([YonetmenNo], [YonetmenAdiSoyadi], [YonetmenDogumTarihi], [YonetmenDogumYeri], [YonetmenCinsiyet], [YonetmenTel]) VALUES (6, N'Çağan Irmak', N'04.04.1970', N'İzmir', N'Erkek', N'05052435277')
INSERT [dbo].[Yonetmens] ([YonetmenNo], [YonetmenAdiSoyadi], [YonetmenDogumTarihi], [YonetmenDogumYeri], [YonetmenCinsiyet], [YonetmenTel]) VALUES (7, N'Kartal Tibet', N'27.03.1939', N'Ankara', N'Erkek', N'05416754217')
SET IDENTITY_INSERT [dbo].[Yonetmens] OFF
GO
INSERT [dbo].[Yorumlars] ([YorumNo], [KullaniciNo], [KullanicilarsKullaniciNo], [FilmNo], [FilmlersFilmNo], [Aciklama], [YildizSayisi]) VALUES (N'1', 1, NULL, 1, NULL, N'Aile dizisi', 4)
INSERT [dbo].[Yorumlars] ([YorumNo], [KullaniciNo], [KullanicilarsKullaniciNo], [FilmNo], [FilmlersFilmNo], [Aciklama], [YildizSayisi]) VALUES (N'2', 2, NULL, 3, NULL, N'Çok güzeldi', 5)
INSERT [dbo].[Yorumlars] ([YorumNo], [KullaniciNo], [KullanicilarsKullaniciNo], [FilmNo], [FilmlersFilmNo], [Aciklama], [YildizSayisi]) VALUES (N'3', 3, NULL, 5, NULL, N'Çok ağladım', 5)
INSERT [dbo].[Yorumlars] ([YorumNo], [KullaniciNo], [KullanicilarsKullaniciNo], [FilmNo], [FilmlersFilmNo], [Aciklama], [YildizSayisi]) VALUES (N'4', 4, NULL, 8, NULL, N'Çok sürükleyiciydi', 5)
GO
/****** Object:  Index [IX_Elemans_filmekibiEkipNo]    Script Date: 5.02.2023 01:49:00 ******/
CREATE NONCLUSTERED INDEX [IX_Elemans_filmekibiEkipNo] ON [dbo].[Elemans]
(
	[filmekibiEkipNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Elemans_OyuncuNo]    Script Date: 5.02.2023 01:49:00 ******/
CREATE NONCLUSTERED INDEX [IX_Elemans_OyuncuNo] ON [dbo].[Elemans]
(
	[OyuncuNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FilmEkibis_FilmlersFilmNo]    Script Date: 5.02.2023 01:49:00 ******/
CREATE NONCLUSTERED INDEX [IX_FilmEkibis_FilmlersFilmNo] ON [dbo].[FilmEkibis]
(
	[FilmlersFilmNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FilmEkibis_OyuncuNo]    Script Date: 5.02.2023 01:49:00 ******/
CREATE NONCLUSTERED INDEX [IX_FilmEkibis_OyuncuNo] ON [dbo].[FilmEkibis]
(
	[OyuncuNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FilmEkibis_YonetmensYonetmenNo]    Script Date: 5.02.2023 01:49:00 ******/
CREATE NONCLUSTERED INDEX [IX_FilmEkibis_YonetmensYonetmenNo] ON [dbo].[FilmEkibis]
(
	[YonetmensYonetmenNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Filmlers_YonetmensYonetmenNo]    Script Date: 5.02.2023 01:49:00 ******/
CREATE NONCLUSTERED INDEX [IX_Filmlers_YonetmensYonetmenNo] ON [dbo].[Filmlers]
(
	[YonetmensYonetmenNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sinemalars_FilmlersFilmNo]    Script Date: 5.02.2023 01:49:00 ******/
CREATE NONCLUSTERED INDEX [IX_Sinemalars_FilmlersFilmNo] ON [dbo].[Sinemalars]
(
	[FilmlersFilmNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Yorumlars_FilmlersFilmNo]    Script Date: 5.02.2023 01:49:00 ******/
CREATE NONCLUSTERED INDEX [IX_Yorumlars_FilmlersFilmNo] ON [dbo].[Yorumlars]
(
	[FilmlersFilmNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Yorumlars_KullanicilarsKullaniciNo]    Script Date: 5.02.2023 01:49:00 ******/
CREATE NONCLUSTERED INDEX [IX_Yorumlars_KullanicilarsKullaniciNo] ON [dbo].[Yorumlars]
(
	[KullanicilarsKullaniciNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Elemans]  WITH CHECK ADD  CONSTRAINT [FK_Elemans_FilmEkibis_filmekibiEkipNo] FOREIGN KEY([filmekibiEkipNo])
REFERENCES [dbo].[FilmEkibis] ([EkipNo])
GO
ALTER TABLE [dbo].[Elemans] CHECK CONSTRAINT [FK_Elemans_FilmEkibis_filmekibiEkipNo]
GO
ALTER TABLE [dbo].[Elemans]  WITH CHECK ADD  CONSTRAINT [FK_Elemans_Oyunculars_OyuncuNo] FOREIGN KEY([OyuncuNo])
REFERENCES [dbo].[Oyunculars] ([OyuncuNo])
GO
ALTER TABLE [dbo].[Elemans] CHECK CONSTRAINT [FK_Elemans_Oyunculars_OyuncuNo]
GO
ALTER TABLE [dbo].[FilmEkibis]  WITH CHECK ADD  CONSTRAINT [FK_FilmEkibis_Filmlers_FilmlersFilmNo] FOREIGN KEY([FilmlersFilmNo])
REFERENCES [dbo].[Filmlers] ([FilmNo])
GO
ALTER TABLE [dbo].[FilmEkibis] CHECK CONSTRAINT [FK_FilmEkibis_Filmlers_FilmlersFilmNo]
GO
ALTER TABLE [dbo].[FilmEkibis]  WITH CHECK ADD  CONSTRAINT [FK_FilmEkibis_Oyunculars_OyuncuNo] FOREIGN KEY([OyuncuNo])
REFERENCES [dbo].[Oyunculars] ([OyuncuNo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FilmEkibis] CHECK CONSTRAINT [FK_FilmEkibis_Oyunculars_OyuncuNo]
GO
ALTER TABLE [dbo].[FilmEkibis]  WITH CHECK ADD  CONSTRAINT [FK_FilmEkibis_Yonetmens_YonetmensYonetmenNo] FOREIGN KEY([YonetmensYonetmenNo])
REFERENCES [dbo].[Yonetmens] ([YonetmenNo])
GO
ALTER TABLE [dbo].[FilmEkibis] CHECK CONSTRAINT [FK_FilmEkibis_Yonetmens_YonetmensYonetmenNo]
GO
ALTER TABLE [dbo].[Filmlers]  WITH CHECK ADD  CONSTRAINT [FK_Filmlers_Yonetmens_YonetmensYonetmenNo] FOREIGN KEY([YonetmensYonetmenNo])
REFERENCES [dbo].[Yonetmens] ([YonetmenNo])
GO
ALTER TABLE [dbo].[Filmlers] CHECK CONSTRAINT [FK_Filmlers_Yonetmens_YonetmensYonetmenNo]
GO
ALTER TABLE [dbo].[Sinemalars]  WITH CHECK ADD  CONSTRAINT [FK_Sinemalars_Filmlers_FilmlersFilmNo] FOREIGN KEY([FilmlersFilmNo])
REFERENCES [dbo].[Filmlers] ([FilmNo])
GO
ALTER TABLE [dbo].[Sinemalars] CHECK CONSTRAINT [FK_Sinemalars_Filmlers_FilmlersFilmNo]
GO
ALTER TABLE [dbo].[Yorumlars]  WITH CHECK ADD  CONSTRAINT [FK_Yorumlars_Filmlers_FilmlersFilmNo] FOREIGN KEY([FilmlersFilmNo])
REFERENCES [dbo].[Filmlers] ([FilmNo])
GO
ALTER TABLE [dbo].[Yorumlars] CHECK CONSTRAINT [FK_Yorumlars_Filmlers_FilmlersFilmNo]
GO
ALTER TABLE [dbo].[Yorumlars]  WITH CHECK ADD  CONSTRAINT [FK_Yorumlars_Kullanicilars_KullanicilarsKullaniciNo] FOREIGN KEY([KullanicilarsKullaniciNo])
REFERENCES [dbo].[Kullanicilars] ([KullaniciNo])
GO
ALTER TABLE [dbo].[Yorumlars] CHECK CONSTRAINT [FK_Yorumlars_Kullanicilars_KullanicilarsKullaniciNo]
GO
USE [master]
GO
ALTER DATABASE [9AralikFilmSitesiORM] SET  READ_WRITE 
GO
