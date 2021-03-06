USE [master]
GO
/****** Object:  Database [QLKS]    Script Date: 4/26/2018 9:01:13 PM ******/
CREATE DATABASE [QLKS]
GO
USE [QLKS]
GO
/****** Object:  Table [dbo].[ChiTietDichVuThuePhong]    Script Date: 4/26/2018 9:01:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDichVuThuePhong](
	[MaCTDVTP] [int] IDENTITY(1,1) NOT NULL,
	[MaTP] [int] NULL,
	[MaDV] [int] NULL,
	[Gia] [float] NULL,
	[SoLuong] [int] NULL,
	[ThanhTien] [float] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [int] NULL,
	[NgaySua] [datetime] NULL,
	[NguoiSua] [int] NULL,
 CONSTRAINT [PK_ChiTietDichVu] PRIMARY KEY CLUSTERED 
(
	[MaCTDVTP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietTienThuePhong]    Script Date: 4/26/2018 9:01:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietTienThuePhong](
	[MaCTTTP] [int] IDENTITY(1,1) NOT NULL,
	[MaTP] [int] NULL,
	[LoaiTienPhong] [nvarchar](50) NULL,
	[Gia] [float] NULL,
	[SoLuong] [int] NULL,
	[ThanhTien] [float] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [int] NULL,
	[NgaySua] [datetime] NULL,
	[NguoiSua] [int] NULL,
 CONSTRAINT [PK_ChiTietTienThuePhong] PRIMARY KEY CLUSTERED 
(
	[MaCTTTP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 4/26/2018 9:01:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[MaDV] [int] IDENTITY(1,1) NOT NULL,
	[TenDV] [nvarchar](250) NULL,
	[Gia] [decimal](18, 0) NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [int] NULL,
	[NgaySua] [datetime] NULL,
	[NguoiSua] [int] NULL,
 CONSTRAINT [PK_DichVu] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/26/2018 9:01:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[SDT] [nvarchar](20) NULL,
	[CMND] [nvarchar](20) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [int] NULL,
	[NgaySua] [datetime] NULL,
	[NguoiSua] [int] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 4/26/2018 9:01:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[MaLoaiPH] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiPH] [nvarchar](50) NULL,
	[GiaGioDau] [float] NULL,
	[GiaGioHai] [float] NULL,
	[GiaGioTiepTheo] [float] NULL,
	[GiaTheoNgay] [float] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [int] NULL,
	[NgaySua] [datetime] NULL,
	[NguoiSua] [int] NULL,
 CONSTRAINT [PK_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[MaLoaiPH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 4/26/2018 9:01:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaND] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [int] NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[IsAdmin] [bit] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [int] NULL,
	[NgaySua] [datetime] NULL,
	[NguoiSua] [int] NULL,
 CONSTRAINT [PK_NguoiDung_1] PRIMARY KEY CLUSTERED 
(
	[MaND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/26/2018 9:01:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[SDT] [nvarchar](20) NULL,
	[CMND] [nvarchar](20) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [int] NULL,
	[NgaySua] [datetime] NULL,
	[NguoiSua] [int] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phong]    Script Date: 4/26/2018 9:01:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPH] [int] NOT NULL,
	[MaLoaiPH] [int] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [int] NULL,
	[NgaySua] [datetime] NULL,
	[NguoiSua] [int] NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[MaPH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThuePhong]    Script Date: 4/26/2018 9:01:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuePhong](
	[MaTP] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[MaPH] [int] NULL,
	[NgayNhanPH] [datetime] NULL,
	[NgayTraPH] [datetime] NULL,
	[TongTien] [float] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [int] NULL,
	[NgaySua] [datetime] NULL,
	[NguoiSua] [int] NULL,
 CONSTRAINT [PK_ThuePhong] PRIMARY KEY CLUSTERED 
(
	[MaTP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[DichVu] ON 

INSERT [dbo].[DichVu] ([MaDV], [TenDV], [Gia], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (1, N'Cafe đá', CAST(20000 AS Decimal(18, 0)), CAST(N'2018-04-26T20:37:20.177' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [Gia], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (2, N'Cafe sữa', CAST(25000 AS Decimal(18, 0)), CAST(N'2018-04-26T20:37:57.660' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [Gia], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (3, N'Bia tiger', CAST(25000 AS Decimal(18, 0)), CAST(N'2018-04-26T20:38:14.700' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [Gia], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (4, N'Bia heniken', CAST(30000 AS Decimal(18, 0)), CAST(N'2018-04-26T20:38:30.960' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [Gia], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (5, N'Sinh tố bơ', CAST(50000 AS Decimal(18, 0)), CAST(N'2018-04-26T20:39:40.583' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [Gia], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (6, N'Cơm phần', CAST(40000 AS Decimal(18, 0)), CAST(N'2018-04-26T20:39:57.563' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [Gia], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (7, N'Lẩu Thái', CAST(150000 AS Decimal(18, 0)), CAST(N'2018-04-26T20:40:11.527' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[DichVu] ([MaDV], [TenDV], [Gia], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (8, N'Khăn lạnh', CAST(5000 AS Decimal(18, 0)), CAST(N'2018-04-26T20:40:24.287' AS DateTime), 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[DichVu] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [SDT], [CMND], [DiaChi], [GioiTinh], [Email], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (1, N'Trần Văn Bình', CAST(N'1990-01-01' AS Date), N'0983702373', N'261116481
', N'HCM', N'Nam', NULL, CAST(N'2018-04-26T20:54:35.083' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [SDT], [CMND], [DiaChi], [GioiTinh], [Email], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (2, N'Nguyễn Nam Em', CAST(N'1989-01-01' AS Date), N'0983702373', N'261116482
', N'HCM', N'Nữ', NULL, CAST(N'2018-04-26T20:54:46.507' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [SDT], [CMND], [DiaChi], [GioiTinh], [Email], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (3, N'Trấn Thành', CAST(N'1987-01-01' AS Date), N'0983702373', N'261116483
', N'HCM', N'Nam', NULL, CAST(N'2018-04-26T20:55:02.997' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [SDT], [CMND], [DiaChi], [GioiTinh], [Email], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (4, N'Trường Giang', CAST(N'1984-05-05' AS Date), N'0983702373', N'261116484
', N'Nam Định', N'Nam', NULL, CAST(N'2018-04-26T20:55:06.967' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [SDT], [CMND], [DiaChi], [GioiTinh], [Email], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (5, N'Giáng Son', CAST(N'1970-02-02' AS Date), N'0983702373', N'261116485
', N'Hà Nội', N'Nữ', NULL, CAST(N'2018-04-26T20:55:11.630' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [SDT], [CMND], [DiaChi], [GioiTinh], [Email], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (6, N'Đức Trí', CAST(N'1965-03-03' AS Date), N'0983702373', N'261116486
', N'HCM', N'Nam', NULL, CAST(N'2018-04-26T20:55:21.317' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [SDT], [CMND], [DiaChi], [GioiTinh], [Email], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (7, N'Lê Minh Sơn', CAST(N'1969-04-04' AS Date), N'0983702373', N'261116487
', N'Hà Nội', N'Nam', NULL, CAST(N'2018-04-26T20:55:27.503' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [SDT], [CMND], [DiaChi], [GioiTinh], [Email], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (8, N'Hồ Hoài Anh', CAST(N'1975-06-06' AS Date), N'0983702373', N'261116488
', N'Hà Nội', N'Nam', NULL, CAST(N'2018-04-26T20:55:34.123' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [NgaySinh], [SDT], [CMND], [DiaChi], [GioiTinh], [Email], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (9, N'Hari', NULL, N'0983702373', N'261116489
', N'HCM', N'Nữ', NULL, CAST(N'2018-04-26T20:55:44.457' AS DateTime), 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LoaiPhong] ON 

INSERT [dbo].[LoaiPhong] ([MaLoaiPH], [TenLoaiPH], [GiaGioDau], [GiaGioHai], [GiaGioTiepTheo], [GiaTheoNgay], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (1, N'Phòng đơn', 100000, 50000, 30000, 250000, CAST(N'2018-04-26T20:41:20.900' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[LoaiPhong] ([MaLoaiPH], [TenLoaiPH], [GiaGioDau], [GiaGioHai], [GiaGioTiepTheo], [GiaTheoNgay], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (2, N'Phòng đôi', 120000, 50000, 30000, 300000, CAST(N'2018-04-26T20:43:08.583' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[LoaiPhong] ([MaLoaiPH], [TenLoaiPH], [GiaGioDau], [GiaGioHai], [GiaGioTiepTheo], [GiaTheoNgay], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (3, N'Phòng Vip', 200000, 100000, 50000, 500000, CAST(N'2018-04-26T20:43:54.500' AS DateTime), 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[LoaiPhong] OFF
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([MaND], [MaNV], [UserName], [Password], [IsAdmin], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (1, 2, N'nhannguyen', N'cUHzG49xibw=', 1, CAST(N'2018-04-25T17:40:07.857' AS DateTime), NULL, CAST(N'2018-04-25T17:40:07.857' AS DateTime), NULL)
INSERT [dbo].[NguoiDung] ([MaND], [MaNV], [UserName], [Password], [IsAdmin], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (3, 4, N'lanhuong', N'cUHzG49xibw=', 0, CAST(N'2018-04-25T22:30:24.627' AS DateTime), NULL, CAST(N'2018-04-25T22:30:24.627' AS DateTime), NULL)
INSERT [dbo].[NguoiDung] ([MaND], [MaNV], [UserName], [Password], [IsAdmin], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (4, 3, N'thonguyen', N'cUHzG49xibw=', 1, CAST(N'2018-04-25T22:59:43.580' AS DateTime), NULL, CAST(N'2018-04-25T22:59:43.580' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [SDT], [CMND], [DiaChi], [GioiTinh], [Email], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (2, N'Nguyễn Quý Nhân', CAST(N'1990-03-18' AS Date), N'0983702372', N'261116487', N'80 Tân Trang', N'Nam', N'nguyenquynhan18@gmail.com', CAST(N'2018-04-25T17:39:39.010' AS DateTime), NULL, CAST(N'2018-04-25T17:39:39.010' AS DateTime), NULL)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [SDT], [CMND], [DiaChi], [GioiTinh], [Email], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (3, N'Nguyễn Văn Thọ', CAST(N'1988-01-01' AS Date), NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-25T22:08:27.250' AS DateTime), NULL, CAST(N'2018-04-25T22:08:27.250' AS DateTime), NULL)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [SDT], [CMND], [DiaChi], [GioiTinh], [Email], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (4, N'Nguyễn Lan Hương', CAST(N'1992-01-01' AS Date), NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-25T22:09:50.477' AS DateTime), NULL, CAST(N'2018-04-25T22:09:50.477' AS DateTime), NULL)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [SDT], [CMND], [DiaChi], [GioiTinh], [Email], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (5, N'Nguyễn Văn Phước', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-04-25T22:10:02.100' AS DateTime), NULL, CAST(N'2018-04-25T22:10:02.100' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
INSERT [dbo].[Phong] ([MaPH], [MaLoaiPH], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (101, 1, CAST(N'2018-04-26T20:51:00.457' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Phong] ([MaPH], [MaLoaiPH], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (102, 1, CAST(N'2018-04-26T20:51:07.547' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Phong] ([MaPH], [MaLoaiPH], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (103, 1, CAST(N'2018-04-26T20:51:15.853' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Phong] ([MaPH], [MaLoaiPH], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (104, 1, CAST(N'2018-04-26T20:51:30.007' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Phong] ([MaPH], [MaLoaiPH], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (105, 1, CAST(N'2018-04-26T20:51:37.083' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Phong] ([MaPH], [MaLoaiPH], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (106, 1, CAST(N'2018-04-26T20:51:47.220' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Phong] ([MaPH], [MaLoaiPH], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (107, 1, CAST(N'2018-04-26T20:51:53.400' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Phong] ([MaPH], [MaLoaiPH], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (108, 1, CAST(N'2018-04-26T20:51:57.883' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Phong] ([MaPH], [MaLoaiPH], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (109, 1, CAST(N'2018-04-26T20:52:02.460' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Phong] ([MaPH], [MaLoaiPH], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (200, 2, CAST(N'2018-04-26T20:52:09.987' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Phong] ([MaPH], [MaLoaiPH], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (201, 2, CAST(N'2018-04-26T20:52:16.217' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Phong] ([MaPH], [MaLoaiPH], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (202, 2, CAST(N'2018-04-26T20:52:33.380' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Phong] ([MaPH], [MaLoaiPH], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (203, 2, CAST(N'2018-04-26T20:52:41.747' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Phong] ([MaPH], [MaLoaiPH], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (204, 2, CAST(N'2018-04-26T20:52:46.977' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Phong] ([MaPH], [MaLoaiPH], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (205, 2, CAST(N'2018-04-26T20:53:01.877' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Phong] ([MaPH], [MaLoaiPH], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (300, 3, CAST(N'2018-04-26T20:53:07.293' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Phong] ([MaPH], [MaLoaiPH], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (301, 3, CAST(N'2018-04-26T20:53:21.733' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Phong] ([MaPH], [MaLoaiPH], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (302, 3, CAST(N'2018-04-26T20:53:25.570' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Phong] ([MaPH], [MaLoaiPH], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (303, 3, CAST(N'2018-04-26T20:53:30.037' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Phong] ([MaPH], [MaLoaiPH], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (304, 3, CAST(N'2018-04-26T20:53:34.830' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Phong] ([MaPH], [MaLoaiPH], [NgayTao], [NguoiTao], [NgaySua], [NguoiSua]) VALUES (305, 3, CAST(N'2018-04-26T20:53:47.827' AS DateTime), 1, NULL, NULL)
ALTER TABLE [dbo].[ChiTietDichVuThuePhong] ADD  CONSTRAINT [DF_ChiTietDichVuThuePhong_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[ChiTietTienThuePhong] ADD  CONSTRAINT [DF_ChiTietTienThuePhong_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[DichVu] ADD  CONSTRAINT [DF_DichVu_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [DF_KhachHang_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[LoaiPhong] ADD  CONSTRAINT [DF_LoaiPhong_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[NguoiDung] ADD  CONSTRAINT [DF_NguoiDung_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [DF_NhanVien_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[Phong] ADD  CONSTRAINT [DF_Phong_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[ThuePhong] ADD  CONSTRAINT [DF_ThuePhong_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[ChiTietDichVuThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDichVuThuePhong_DichVu] FOREIGN KEY([MaDV])
REFERENCES [dbo].[DichVu] ([MaDV])
GO
ALTER TABLE [dbo].[ChiTietDichVuThuePhong] CHECK CONSTRAINT [FK_ChiTietDichVuThuePhong_DichVu]
GO
ALTER TABLE [dbo].[ChiTietDichVuThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDichVuThuePhong_ThuePhong] FOREIGN KEY([MaTP])
REFERENCES [dbo].[ThuePhong] ([MaTP])
GO
ALTER TABLE [dbo].[ChiTietDichVuThuePhong] CHECK CONSTRAINT [FK_ChiTietDichVuThuePhong_ThuePhong]
GO
ALTER TABLE [dbo].[ChiTietTienThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietTienThuePhong_ThuePhong] FOREIGN KEY([MaTP])
REFERENCES [dbo].[ThuePhong] ([MaTP])
GO
ALTER TABLE [dbo].[ChiTietTienThuePhong] CHECK CONSTRAINT [FK_ChiTietTienThuePhong_ThuePhong]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_NhanVien]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_LoaiPhong] FOREIGN KEY([MaLoaiPH])
REFERENCES [dbo].[LoaiPhong] ([MaLoaiPH])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_LoaiPhong]
GO
ALTER TABLE [dbo].[ThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_ThuePhong_KhachHang] FOREIGN KEY([MaPH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[ThuePhong] CHECK CONSTRAINT [FK_ThuePhong_KhachHang]
GO
ALTER TABLE [dbo].[ThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_ThuePhong_Phong] FOREIGN KEY([MaPH])
REFERENCES [dbo].[Phong] ([MaPH])
GO
ALTER TABLE [dbo].[ThuePhong] CHECK CONSTRAINT [FK_ThuePhong_Phong]
GO
USE [master]
GO
ALTER DATABASE [QLKS] SET  READ_WRITE 
GO
