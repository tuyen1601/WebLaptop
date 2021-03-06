USE [master]
GO
/****** Object:  Database [WebsiteLaptop]    Script Date: 19/05/2021 6:10:18 CH ******/
CREATE DATABASE [WebsiteLaptop]

GO
ALTER DATABASE [WebsiteLaptop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebsiteLaptop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebsiteLaptop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebsiteLaptop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebsiteLaptop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebsiteLaptop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebsiteLaptop] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebsiteLaptop] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [WebsiteLaptop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebsiteLaptop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebsiteLaptop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebsiteLaptop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebsiteLaptop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebsiteLaptop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebsiteLaptop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebsiteLaptop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebsiteLaptop] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WebsiteLaptop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebsiteLaptop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebsiteLaptop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebsiteLaptop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebsiteLaptop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebsiteLaptop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebsiteLaptop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebsiteLaptop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebsiteLaptop] SET  MULTI_USER 
GO
ALTER DATABASE [WebsiteLaptop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebsiteLaptop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebsiteLaptop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebsiteLaptop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebsiteLaptop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebsiteLaptop] SET QUERY_STORE = OFF
GO
USE [WebsiteLaptop]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 19/05/2021 6:10:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaLap] [int] NOT NULL,
	[MaDonHang] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLap] ASC,
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 19/05/2021 6:10:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[DaThanhToan] [int] NULL,
	[TinhTrangGiaoHang] [int] NULL,
	[NgayDat] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
	[MaKH] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangSX]    Script Date: 19/05/2021 6:10:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangSX](
	[MaHangSX] [int] IDENTITY(1,1) NOT NULL,
	[TenHangSX] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DienThoai] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHangSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 19/05/2021 6:10:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[TaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DienThoai] [varchar](30) NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[NgaySinh] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 19/05/2021 6:10:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaLap] [int] IDENTITY(1,1) NOT NULL,
	[TenLap] [nvarchar](100) NULL,
	[GiaBan] [decimal](18, 0) NULL,
	[MoTa] [nvarchar](max) NULL,
	[AnhBia] [nvarchar](50) NULL,
	[NgayCapNhat] [datetime] NULL,
	[SoLuongTon] [int] NULL,
	[MaHangSX] [int] NULL,
	[MaLoai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 19/05/2021 6:10:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[US]    Script Date: 19/05/2021 6:10:19 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[US](
	[username] [varchar](100) NOT NULL,
	[password] [varchar](100) NULL,
	[fullname] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HangSX] ON 

INSERT [dbo].[HangSX] ([MaHangSX], [TenHangSX], [DiaChi], [DienThoai]) VALUES (1, N'Dell', N'HaNoi', N'0122')
INSERT [dbo].[HangSX] ([MaHangSX], [TenHangSX], [DiaChi], [DienThoai]) VALUES (2, N'HP', N'Hà Nội', N'123')
INSERT [dbo].[HangSX] ([MaHangSX], [TenHangSX], [DiaChi], [DienThoai]) VALUES (3, N'ASUS', N'Hà nội', N'456')
SET IDENTITY_INSERT [dbo].[HangSX] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (1, N'Dell xps 13', CAST(40000 AS Decimal(18, 0)), N'Laptop cho doanh nhân', N'anh1.jpg', NULL, 50, 1, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (2, N'Hp508', CAST(39000 AS Decimal(18, 0)), N'laptop cá nhân', N'images (2).jpg', NULL, 12, 2, 2)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (3, N'Dell 21', CAST(50000 AS Decimal(18, 0)), N'ram 4g, ssd 550', N'images.jpg', NULL, 20, 1, 2)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (9, N'Dellxps', CAST(10000 AS Decimal(18, 0)), N'Laptop cho doanh nhân', N'anh1.jpg', NULL, 50, 1, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (10, N'HP 113', CAST(21000 AS Decimal(18, 0)), N'ram 5g , i7, ssd 990', N'anh1.jpg', NULL, 45, 2, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (11, N'HP 113', CAST(49000 AS Decimal(18, 0)), N'ram 5g , i7, ssd 990', N'images.jpg', NULL, 45, 2, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (12, N'Dellxps', CAST(40000 AS Decimal(18, 0)), N'Laptop cho doanh nhân', N'images (2).jpg', NULL, 50, 1, 1)
INSERT [dbo].[SanPham] ([MaLap], [TenLap], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaHangSX], [MaLoai]) VALUES (14, N'HP 15s', CAST(35000 AS Decimal(18, 0)), NULL, N'anh2.jpg', NULL, 23, 2, 2)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[TheLoai] ON 

INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai]) VALUES (1, N'Doanh Nhân')
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai]) VALUES (2, N'Cá Nhân ')
SET IDENTITY_INSERT [dbo].[TheLoai] OFF
GO
INSERT [dbo].[US] ([username], [password], [fullname]) VALUES (N'dao', N'1', N'quangdao')
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([MaLap])
REFERENCES [dbo].[SanPham] ([MaLap])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaHangSX])
REFERENCES [dbo].[HangSX] ([MaHangSX])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaLoai])
REFERENCES [dbo].[TheLoai] ([MaLoai])
GO
USE [master]
GO
ALTER DATABASE [WebsiteLaptop] SET  READ_WRITE 
GO
