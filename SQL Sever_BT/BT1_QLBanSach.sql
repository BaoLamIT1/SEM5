CREATE DATABASE BT1CSDL
USE [BT1CSDL]
GO
/****** Object:  Table [dbo].[tChiTietHDB]    Script Date: 11/10/2021 9:51:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChiTietHDB](
	[SoHDB] [nvarchar](10) NOT NULL,
	[MaSach] [nvarchar](10) NOT NULL,
	[SLBan] [int] NULL,
	[KhuyenMai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tChiTietHDB] PRIMARY KEY CLUSTERED 
(
	[SoHDB] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tChiTietHDN]    Script Date: 11/10/2021 9:51:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChiTietHDN](
	[SoHDN] [nvarchar](10) NOT NULL,
	[MaSach] [nvarchar](10) NOT NULL,
	[SLNhap] [int] NULL,
	[KhuyenMai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tChiTietHDN] PRIMARY KEY CLUSTERED 
(
	[SoHDN] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tHoaDonBan]    Script Date: 11/10/2021 9:51:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tHoaDonBan](
	[SoHDB] [nvarchar](10) NOT NULL,
	[MaNV] [nvarchar](10) NULL,
	[NgayBan] [datetime] NULL,
	[MaKH] [nvarchar](10) NULL,
 CONSTRAINT [PK_tHoaDonBan] PRIMARY KEY CLUSTERED 
(
	[SoHDB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tHoaDonNhap]    Script Date: 11/10/2021 9:51:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tHoaDonNhap](
	[SoHDN] [nvarchar](10) NOT NULL,
	[MaNV] [nvarchar](10) NULL,
	[NgayNhap] [datetime] NULL,
	[MaNCC] [nvarchar](10) NULL,
 CONSTRAINT [PK_tHoaDonNhap] PRIMARY KEY CLUSTERED 
(
	[SoHDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tKhachHang]    Script Date: 11/10/2021 9:51:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tKhachHang](
	[MaKH] [nvarchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[DienThoai] [nvarchar](15) NULL,
	[GioiTinh] [bit] NULL,
 CONSTRAINT [PK_tKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tNhaCungCap]    Script Date: 11/10/2021 9:51:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tNhaCungCap](
	[MaNCC] [nvarchar](10) NOT NULL,
	[TenNCC] [nvarchar](200) NULL,
 CONSTRAINT [PK_tNhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tNhanVien]    Script Date: 11/10/2021 9:51:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tNhanVien](
	[MaNV] [nvarchar](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [nvarchar](150) NULL,
	[DienThoai] [nvarchar](15) NULL,
 CONSTRAINT [PK_tNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tNhaXuatBan]    Script Date: 11/10/2021 9:51:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tNhaXuatBan](
	[MaNXB] [nvarchar](10) NOT NULL,
	[TenNXB] [nvarchar](100) NULL,
 CONSTRAINT [PK_tNhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tSach]    Script Date: 11/10/2021 9:51:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tSach](
	[MaSach] [nvarchar](10) NOT NULL,
	[TenSach] [nvarchar](200) NULL,
	[TacGia] [nvarchar](150) NULL,
	[MaTheLoai] [nvarchar](10) NULL,
	[MaNXB] [nvarchar](10) NULL,
	[DonGiaNhap] [money] NULL,
	[DonGiaBan] [money] NULL,
	[SoLuong] [int] NULL,
	[SoTrang] [int] NULL,
	[TrongLuong] [nvarchar](50) NULL,
	[Anh] [image] NULL,
 CONSTRAINT [PK_tSach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tTheLoai]    Script Date: 11/10/2021 9:51:36 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tTheLoai](
	[MaTheLoai] [nvarchar](10) NOT NULL,
	[TenTheLoai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tTheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB01', N'S01', 7, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB01', N'S02', 10, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB01', N'S04', 10, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB02', N'S04', 9, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB02', N'S05', 3, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB03', N'S02', 3, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB03', N'S06', 7, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB03', N'S08', 11, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB04', N'S03', 2, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB04', N'S04', 2, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB04', N'S10', 9, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB05', N'S05', 3, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB05', N'S07', 3, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB05', N'S08', 14, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB06', N'S02', 13, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB06', N'S05', 1, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB06', N'S10', 4, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB06', N'S11', 4, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB07', N'S01', 10, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB07', N'S06', 4, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB07', N'S08', 2, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB08', N'S01', 2, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB08', N'S06', 3, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB08', N'S07', 2, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB09', N'S03', 5, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB09', N'S06', 1, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB09', N'S09', 6, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB10', N'S07', 3, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB10', N'S11', 6, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB10', N'S13', 6, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB11', N'S04', 2, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB11', N'S08', 5, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB11', N'S11', 5, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB12', N'S05', 3, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB12', N'S09', 4, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB12', N'S12', 5, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB13', N'S02', 3, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB13', N'S03', 5, NULL)
INSERT [dbo].[tChiTietHDB] ([SoHDB], [MaSach], [SLBan], [KhuyenMai]) VALUES (N'HDB13', N'S04', 2, NULL)
GO
INSERT [dbo].[tChiTietHDN] ([SoHDN], [MaSach], [SLNhap], [KhuyenMai]) VALUES (N'HDN01', N'S01', 20, NULL)
INSERT [dbo].[tChiTietHDN] ([SoHDN], [MaSach], [SLNhap], [KhuyenMai]) VALUES (N'HDN02', N'S06', 10, NULL)
INSERT [dbo].[tChiTietHDN] ([SoHDN], [MaSach], [SLNhap], [KhuyenMai]) VALUES (N'HDN03', N'S03', 20, NULL)
INSERT [dbo].[tChiTietHDN] ([SoHDN], [MaSach], [SLNhap], [KhuyenMai]) VALUES (N'HDN04', N'S09', 10, NULL)
INSERT [dbo].[tChiTietHDN] ([SoHDN], [MaSach], [SLNhap], [KhuyenMai]) VALUES (N'HDN05', N'S06', 15, NULL)
GO
INSERT [dbo].[tHoaDonBan] ([SoHDB], [MaNV], [NgayBan], [MaKH]) VALUES (N'HDB01', N'NV01', CAST(N'2014-08-11T00:00:00.000' AS DateTime), N'KH01')
INSERT [dbo].[tHoaDonBan] ([SoHDB], [MaNV], [NgayBan], [MaKH]) VALUES (N'HDB02', N'NV02', CAST(N'2014-05-03T00:00:00.000' AS DateTime), N'KH02')
INSERT [dbo].[tHoaDonBan] ([SoHDB], [MaNV], [NgayBan], [MaKH]) VALUES (N'HDB03', N'NV03', CAST(N'2013-12-01T00:00:00.000' AS DateTime), N'KH03')
INSERT [dbo].[tHoaDonBan] ([SoHDB], [MaNV], [NgayBan], [MaKH]) VALUES (N'HDB04', N'NV04', CAST(N'2013-11-12T00:00:00.000' AS DateTime), N'KH01')
INSERT [dbo].[tHoaDonBan] ([SoHDB], [MaNV], [NgayBan], [MaKH]) VALUES (N'HDB05', N'NV04', CAST(N'2014-05-14T00:00:00.000' AS DateTime), N'KH04')
INSERT [dbo].[tHoaDonBan] ([SoHDB], [MaNV], [NgayBan], [MaKH]) VALUES (N'HDB06', N'NV05', CAST(N'2014-06-30T00:00:00.000' AS DateTime), N'KH02')
INSERT [dbo].[tHoaDonBan] ([SoHDB], [MaNV], [NgayBan], [MaKH]) VALUES (N'HDB07', N'NV06', CAST(N'2014-05-10T00:00:00.000' AS DateTime), N'KH01')
INSERT [dbo].[tHoaDonBan] ([SoHDB], [MaNV], [NgayBan], [MaKH]) VALUES (N'HDB08', N'NV01', CAST(N'2013-01-01T00:00:00.000' AS DateTime), N'KH02')
INSERT [dbo].[tHoaDonBan] ([SoHDB], [MaNV], [NgayBan], [MaKH]) VALUES (N'HDB09', N'NV01', CAST(N'2013-02-10T00:00:00.000' AS DateTime), N'KH02')
INSERT [dbo].[tHoaDonBan] ([SoHDB], [MaNV], [NgayBan], [MaKH]) VALUES (N'HDB10', N'NV02', CAST(N'2014-04-10T00:00:00.000' AS DateTime), N'KH04')
INSERT [dbo].[tHoaDonBan] ([SoHDB], [MaNV], [NgayBan], [MaKH]) VALUES (N'HDB11', N'NV03', CAST(N'2014-03-11T00:00:00.000' AS DateTime), N'KH04')
INSERT [dbo].[tHoaDonBan] ([SoHDB], [MaNV], [NgayBan], [MaKH]) VALUES (N'HDB12', N'NV03', CAST(N'2014-07-10T00:00:00.000' AS DateTime), N'KH03')
INSERT [dbo].[tHoaDonBan] ([SoHDB], [MaNV], [NgayBan], [MaKH]) VALUES (N'HDB13', N'NV05', CAST(N'2014-04-12T00:00:00.000' AS DateTime), N'KH04')
GO
INSERT [dbo].[tHoaDonNhap] ([SoHDN], [MaNV], [NgayNhap], [MaNCC]) VALUES (N'HDN01', N'NV02', CAST(N'2014-04-13T00:00:00.000' AS DateTime), N'NCC01')
INSERT [dbo].[tHoaDonNhap] ([SoHDN], [MaNV], [NgayNhap], [MaNCC]) VALUES (N'HDN02', N'NV01', CAST(N'2014-06-28T00:00:00.000' AS DateTime), N'NCC03')
INSERT [dbo].[tHoaDonNhap] ([SoHDN], [MaNV], [NgayNhap], [MaNCC]) VALUES (N'HDN03', N'NV04', CAST(N'2014-01-01T00:00:00.000' AS DateTime), N'NCC06')
INSERT [dbo].[tHoaDonNhap] ([SoHDN], [MaNV], [NgayNhap], [MaNCC]) VALUES (N'HDN04', N'NV05', CAST(N'2014-03-05T00:00:00.000' AS DateTime), N'NCC04')
INSERT [dbo].[tHoaDonNhap] ([SoHDN], [MaNV], [NgayNhap], [MaNCC]) VALUES (N'HDN05', N'NV03', CAST(N'2014-04-10T00:00:00.000' AS DateTime), N'NCC05')
GO
INSERT [dbo].[tKhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [GioiTinh]) VALUES (N'KH01', N'Nguyễn Đình Sơn', N'Bắc Ninh', N'0968686868', 1)
INSERT [dbo].[tKhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [GioiTinh]) VALUES (N'KH02', N'Đỗ Văn Bắc', N'Hải Dương', N'0905883993', 1)
INSERT [dbo].[tKhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [GioiTinh]) VALUES (N'KH03', N'Mạnh Thường Quân', N'Hải Phòng', N'0918688685', 1)
INSERT [dbo].[tKhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [GioiTinh]) VALUES (N'KH04', N'Mai Phương Lan', N'Hà Nội', N'0978656790', 0)
INSERT [dbo].[tKhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [GioiTinh]) VALUES (N'KH05', N'Nguyễn Thị Phương', N'Hà Nội', NULL, 0)
INSERT [dbo].[tKhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [GioiTinh]) VALUES (N'KH06', N'Trần Đăng Hưng', N'Ninh Bình', NULL, 1)
INSERT [dbo].[tKhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [GioiTinh]) VALUES (N'KH07', N'Hoàng Thị Hồng', N'Thái Nguyên', NULL, 0)
INSERT [dbo].[tKhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [GioiTinh]) VALUES (N'KH08', N'Cẩm Thị Hương', N'TP HCM', NULL, 0)
INSERT [dbo].[tKhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [GioiTinh]) VALUES (N'Kh09', N'Mai Văn Hùng', N'Phú Thọ', NULL, 1)
GO
INSERT [dbo].[tNhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'NCC01', N'Bách Việt')
INSERT [dbo].[tNhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'NCC02', N'NXB Trẻ')
INSERT [dbo].[tNhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'NCC03', N'Phú Hà book')
INSERT [dbo].[tNhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'NCC04', N'Alphabooks')
INSERT [dbo].[tNhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'NCC05', N'TGM Books')
INSERT [dbo].[tNhaCungCap] ([MaNCC], [TenNCC]) VALUES (N'NCC06', N'Thái Hà')
GO
INSERT [dbo].[tNhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'NV01', N'Trần Huy', N'Nam', CAST(N'1990-09-11T00:00:00.000' AS DateTime), N'Hà Nội', N'0986868686')
INSERT [dbo].[tNhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'NV02', N'Thanh Tâm', N'Nữ', CAST(N'1986-01-12T00:00:00.000' AS DateTime), N'Bắc Ninh', N'0979657676')
INSERT [dbo].[tNhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'NV03', N'Nguyễn Minh', N'Nam', CAST(N'1989-07-05T00:00:00.000' AS DateTime), N'Hải Dương', N'0968145689')
INSERT [dbo].[tNhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'NV04', N'Phan Cao', N'Nam', CAST(N'1991-08-12T00:00:00.000' AS DateTime), N'Ninh Bình', N'0985143235')
INSERT [dbo].[tNhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'NV05', N'Bùi Ngọc', N'Nữ', CAST(N'1987-03-01T00:00:00.000' AS DateTime), N'Thái Bình', N'0918167892')
INSERT [dbo].[tNhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'NV06', N'Nguyễn Hoàng', N'Nam', CAST(N'1990-04-04T00:00:00.000' AS DateTime), N'Nam Định', N'0962091660')
INSERT [dbo].[tNhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'NV07', N'Nguyễn Hải', N'Nam', CAST(N'1994-05-05T00:00:00.000' AS DateTime), N'Hà Nội', N'0962091666')
INSERT [dbo].[tNhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'NV08', N'Đỗ Thảo', N'Nữ', CAST(N'1990-06-06T00:00:00.000' AS DateTime), N'Hà Nội', N'0962099666')
INSERT [dbo].[tNhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'NV09', N'Đỗ Thảo Phương', N'Nữ', CAST(N'1990-07-07T00:00:00.000' AS DateTime), N'Hà Nội', N'0966666666')
INSERT [dbo].[tNhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai]) VALUES (N'NV10', N'Đỗ Huy Long', N'Nam', CAST(N'1995-08-08T00:00:00.000' AS DateTime), N'Nam Định', N'0983646585')
GO
INSERT [dbo].[tNhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'NXB01', N'NXB Kim Đồng')
INSERT [dbo].[tNhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'NXB02', N'NXB Trẻ')
INSERT [dbo].[tNhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'NXB03', N'NXB Thăng Long')
INSERT [dbo].[tNhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'NXB04', N'NXB Nhã Nam')
INSERT [dbo].[tNhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'NXB05', N'NXB Giáo Dục')
INSERT [dbo].[tNhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'NXB06', N'NXB Fahasa')
INSERT [dbo].[tNhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'NXB07', N'NXB Phương Nam')
INSERT [dbo].[tNhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'NXB08', N'NXB ĐH GTVT')
INSERT [dbo].[tNhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'NXB09', N'NXB ĐH QGHN')
INSERT [dbo].[tNhaXuatBan] ([MaNXB], [TenNXB]) VALUES (N'NXB10', N'NXB Thủ Đô')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S01', N'Sống và khát vọng', N'Trần Đăng Khoa', N'TL01', N'NXB01', 100000.0000, 108000.0000, 120, 365, N'638 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S02', N'Cha Nên Dạy Con Như Thế Nào?', N'Vương Ba, Vương Trí Diễm', N'TL01', N'NXB04', 60000.0000, 69000.0000, 70, 264, N'440 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S03', N'Trốn chạy và yêu thương', N'Maya banks', N'TL06', N'NXB02', 105000.0000, 115000.0000, 45, 508, N'450 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S04', N'Anh sẽ yêu em mãi chứ', N'Gào', N'TL06', N'NXB05', 65000.0000, 89000.0000, 78, 320, N'374 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S05', N'Thế giới phẳng ( Tái bản năm 2014)', N'Thomas L.Friedman', N'TL05', N'NXB03', 245000.0000, 272000.0000, 56, 818, N'902 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S06', N'Giáo trình C++ & lập trình hướng đối tượng', N'GS. Phạm Văn Ất', N'TL05', N'NXB06', 64000.0000, 78000.0000, 89, 496, N'650 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S07', N'Manchester United - Thiên sử về quỷ đỏ', N'Jim White', N'TL03', N'NXB07', 135000.0000, 149000.0000, 68, 639, N'720 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S08', N'Cát bụi thời gian', N'Sidney Sheldon', N'TL04', N'NXB05', 80000.0000, 92000.0000, 45, 482, N'500 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S09', N'Tự học bảo mật và quản trị mạng', N'Mai Hương', N'TL02', N'NXB08', 41000.0000, 48000.0000, 79, 344, N'480 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S10', N'Triệu phú khởi nghiệp từ hai bàn tay trắng', N'Triệu Phàm Vũ', N'TL05', N'NXB09', 115000.0000, 130000.0000, 43, 452, N'506 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S11', N'Cấu trúc dữ liệu và giải thuật', N'Hồ Đắc Phương', N'TL02', N'NXB10', 110000.0000, 150000.0000, 80, 300, N'500 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S12', N'Lập Trình C', N'Phạm Văn Ất', N'TL02', N'NXB10', 100000.0000, 130000.0000, 80, 440, N'400 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S13', N'Không ai qua sông', N'Lữ Ngọc Tư', N'TL01', N'NXB10', 100000.0000, 140000.0000, 80, 330, N'330 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S14', N'Đón đầu xu hướng', N'Rohit Bhargava', N'TL01', N'NXB10', 200000.0000, 250000.0000, 60, 220, N'200 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S15', N'Để con được ốm', N'Nguyễn Thị Đoan', N'TL01', N'NXB10', 200000.0000, 300000.0000, 40, 400, N'500 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S16', N'Búc xúc làm ta vô cảm', N'Đặng Hoàng Giang', N'TL01', N'NXB10', 200000.0000, 300000.0000, 50, 400, N'300 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S17', N'Tony buổi sáng - trên đường băng', N'Tony Buổi Sáng', N'TL01', N'NXB09', 250000.0000, 300000.0000, 30, 300, N'400 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S18', N'Đừng bao giờ đi ăn một mình', N'Keith Ferrazzi', N'TL01', N'NXB09', 300000.0000, 400000.0000, 60, 555, N'500 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S19', N'Ngày xưa có một con bò', N'Camilo Cruz', N'TL01', N'NXB09', 300000.0000, 450000.0000, 60, 400, N'400 gram', NULL)
INSERT [dbo].[tSach] ([MaSach], [TenSach], [TacGia], [MaTheLoai], [MaNXB], [DonGiaNhap], [DonGiaBan], [SoLuong], [SoTrang], [TrongLuong], [Anh]) VALUES (N'S20', N'Tôi thấy hoa vàng trên cỏ xanh', N'Nguyễn nhật ánh', N'TL01', N'NXB09', 300000.0000, 400000.0000, 80, 550, N'300 gram', NULL)
GO
INSERT [dbo].[tTheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL01', N'Bí quyết Cuộc sống')
INSERT [dbo].[tTheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL02', N'Sách Tin học')
INSERT [dbo].[tTheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL03', N'Thể Thao, Du lịch')
INSERT [dbo].[tTheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL04', N'Văn hóa, Nghệ thuật')
INSERT [dbo].[tTheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL05', N'Sách Kinh doanh')
INSERT [dbo].[tTheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL06', N'Sách Khuyến mại, Sách mới phát hành')
GO
ALTER TABLE [dbo].[tChiTietHDB]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietHDB_tHoaDonBan] FOREIGN KEY([SoHDB])
REFERENCES [dbo].[tHoaDonBan] ([SoHDB])
GO
ALTER TABLE [dbo].[tChiTietHDB] CHECK CONSTRAINT [FK_tChiTietHDB_tHoaDonBan]
GO
ALTER TABLE [dbo].[tChiTietHDB]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietHDB_tSach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[tSach] ([MaSach])
GO
ALTER TABLE [dbo].[tChiTietHDB] CHECK CONSTRAINT [FK_tChiTietHDB_tSach]
GO
ALTER TABLE [dbo].[tChiTietHDN]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietHDN_tHoaDonNhap] FOREIGN KEY([SoHDN])
REFERENCES [dbo].[tHoaDonNhap] ([SoHDN])
GO
ALTER TABLE [dbo].[tChiTietHDN] CHECK CONSTRAINT [FK_tChiTietHDN_tHoaDonNhap]
GO
ALTER TABLE [dbo].[tChiTietHDN]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietHDN_tSach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[tSach] ([MaSach])
GO
ALTER TABLE [dbo].[tChiTietHDN] CHECK CONSTRAINT [FK_tChiTietHDN_tSach]
GO
ALTER TABLE [dbo].[tHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_tHoaDonBan_tKhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[tKhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[tHoaDonBan] CHECK CONSTRAINT [FK_tHoaDonBan_tKhachHang]
GO
ALTER TABLE [dbo].[tHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_tHoaDonBan_tNhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tHoaDonBan] CHECK CONSTRAINT [FK_tHoaDonBan_tNhanVien]
GO
ALTER TABLE [dbo].[tHoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_tHoaDonNhap_tNhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[tNhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[tHoaDonNhap] CHECK CONSTRAINT [FK_tHoaDonNhap_tNhaCungCap]
GO
ALTER TABLE [dbo].[tHoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_tHoaDonNhap_tNhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tHoaDonNhap] CHECK CONSTRAINT [FK_tHoaDonNhap_tNhanVien]
GO
ALTER TABLE [dbo].[tSach]  WITH CHECK ADD  CONSTRAINT [FK_tSach_tNhaXuatBan] FOREIGN KEY([MaNXB])
REFERENCES [dbo].[tNhaXuatBan] ([MaNXB])
GO
ALTER TABLE [dbo].[tSach] CHECK CONSTRAINT [FK_tSach_tNhaXuatBan]
GO
ALTER TABLE [dbo].[tSach]  WITH CHECK ADD  CONSTRAINT [FK_tSach_tTheLoai] FOREIGN KEY([MaTheLoai])
REFERENCES [dbo].[tTheLoai] ([MaTheLoai])
GO
ALTER TABLE [dbo].[tSach] CHECK CONSTRAINT [FK_tSach_tTheLoai]
GO

--1. In ra danh sách các sách chỉ lấy (MaSach,TenSach) do Nhà xuất bản Giáo Dục xuất bản.
select tSach.MaSach , tSach.TenSach
from tSach join tNhaXuatBan on(tSach.MaNXB= tNhaXuatBan.MaNXB)
where tNhaXuatBan.TenNXB = N'NXB Giáo Dục'
--2. In ra danh sách các sách có tên bắt đầu là “Ngày”.
select *
from tSach
where tSach.TenSach like  N'Ngày%'
--BAI TAP 
-- 3. In ra danh sách các sách (MaSach,TenSach) do Nhà xuất bản Giáo Dục có giá từ 100.000 đến 150.000.
SELECT 
	tSach.MaSach,
	tSach.TenSach
FROM 
	tSach
	INNER JOIN 
	tNhaXuatBan ON tNhaXuatBan.MaNXB = tSach.MaNXB
WHERE 
	tNhaXuatBan.TenNXB = N'NXB Giáo dục'
AND 
	tSach.DonGiaBan BETWEEN 100000 AND 150000 


--4. In ra danh sách các các sách (MaSach,TenSach) do Nhà xuất bản Giáo Dục hoặc Nhà Xuất Bản Trẻ sản xuất có giá từ 90.000 đến 140.000.
SELECT 
	tsach.MaSach,
	tsach.TenSach, TenNXB, DonGiaBan
FROM  
	tsach  INNER JOIN tNhaXuatBan ON tNhaXuatBan.MaNXB = tSach.MaNXB
WHERE 
	(tNhaXuatBan.TenNXB = N'NXB Giáo dục'or tNhaXuatBan.TenNXB = N'NXB Trẻ')
AND
	tsach.DonGiaBan BETWEEN 90000 AND 140000 

--5. In ra các số hóa đơn, trị giá hóa đơn bán ra từ ngày 1/1/2014 đến 31/12/2014.
SELECT
	b.SoHDB ,(b.SLBan * a.DonGiaBan) as TriGiaHoaDon
FROM 
	tSach a INNER JOIN tChiTietHDB b ON a.MaSach=b.MaSach INNER JOIN tHoaDonBan c ON b.SoHDB = c.SoHDB
WHERE
	c.NgayBan >= '2014-01-01' AND c.NgayBan <= '2014-12-31'

--6. In ra các số hóa đơn, trị giá hóa đơn trong tháng 4/2014, sắp xếp theo ngày (tăng dần) và trị giá của hóa đơn (giảm dần).

SELECT 
	tChiTietHDB.SoHDB, sum( tChiTietHDB.SLBan * tSach.DonGiaBan) as TriGiaHDB
FROM 
	tChiTietHDB  join tSach on tChiTietHDB.MaSach = tSach.MaSach
	join tHoaDonBan  on tHoaDonBan.SoHDB = tChiTietHDB.SoHDB
	where MONTH( tHoaDonBan.NgayBan) = 4 and YEAR( tHoaDonBan.NgayBan) =2014
	group by tChiTietHDB.SoHDB,tHoaDonBan.NgayBan
	order by TriGiaHDB desc, tHoaDonBan.NgayBan asc

--7. In ra danh sách các khách hàng (MaKH, TenKH) đã mua hàng trong ngày 10/4/2014.
select tKhachHang.MaKH, tKhachHang.TenKH
from tKhachHang join tHoaDonBan on tKhachHang.MaKH = tHoaDonBan.MaKH
where tHoaDonBan.NgayBan = '2014-04-10'

--8. In ra số hóa đơn, trị giá các hóa đơn do nhân viên có tên “Trần Huy” lập trong ngày “11/8/2014”
SELECT 
	tHoaDonBan.SoHDB, sum( tChiTietHDB.SLBan * tSach.DonGiaBan) as N'Giá Trị Hóa Đơn'
FROM
	((tChiTietHDB join tSach on tChiTietHDB.MaSach =tSach.MaSach) join tHoaDonBan on
	tChiTietHDB.SoHDB = tHoaDonBan.SoHDB) join tNhanVien on tHoaDonBan.MaNV = tNhanVien.MaNV
WHERE 
	tHoaDonBan.NgayBan = '2014-08-11' and tNhanVien.TenNV = N'Trần Huy'
GROUP BY tChiTietHDB.SoHDB , tHoaDonBan.SoHDB

--9. In ra danh sách các sách (MaSach,TenSach) được khách hàng có tên “Nguyễn Đình Sơn” mua trong tháng 8/2014.

SELECT tSach.MaSach, tSach.TenSach
from tSach join tChiTietHDB on tsach.MaSach =tChiTietHDB.MaSach join tHoaDonBan on tChiTietHDB.SoHDB= tHoaDonBan.SoHDB join tKhachHang on tKhachHang.MaKH=tHoaDonBan.MaKH
where tKhachHang.TenKH = N'Nguyễn Đình Sơn' and MONTH( tHoaDonBan.NgayBan) = 8 and YEAR( tHoaDonBan.NgayBan) = 2014

	
--10. Tìm các số hóa đơn đã mua sách “Cấu trúc dữ liệu và giải thuật”

SELECT 
	tChiTietHDB.SoHDB
FROM 
	tChiTietHDB inner join tSach on tChiTietHDB.MaSach = tSach.MaSach
WHERE 
	tSach.TenSach = N'Cấu trúc dữ liệu và giải thuật'

--11. Tìm các số hóa đơn đã mua sản phẩm có mã số “S01” hoặc “S02”, mỗi sản phẩm mua với số lượng từ 10 đến 20.
SELECT DISTINCT SoHDB from tChiTietHDB
where MaSach = 'S01' or MaSach ='S02'
and (tChiTietHDB.SLBan >=10 and tChiTietHDB.SLBan<=20)

--12. Tìm các số hóa đơn mua cùng lúc 2 sản phẩm có mã số “S10” và “S11”, mỗi sản phẩm mua với số lượng từ 5 đến 10.
SELECT SoHDB 
FROM tChiTietHDB
WHERE (tChiTietHDB.SLBan BETWEEN 5 AND 10) and Masach = 'S01' and SoHDB IN (
			SELECT SoHDB
			FROM tChiTietHDB
			WHERE (SLBan BETWEEN 5 AND 10) AND MaSach ='S02')

--13. In ra danh sách các sách không bán được.
 select tSach.MaSach, tSach.TenSach as TenSachKhongBanDuoc
 from tSach
 where tSach.MaSach not in (select MaSach from tChiTietHDB)

--14. In ra danh sách các sách không bán được trong năm 2014.

select tSach.MaSach, tSach.TenSach as SachChuaBanDuoc2014
from tSach
where tSach.MaSach not in ( select distinct tChiTietHDB.MaSach from tChiTietHDB join tHoaDonBan on tChiTietHDB.SoHDB = tHoaDonBan.SoHDB
where YEAR( tHoaDonBan.NgayBan) = 2014 )
--15. In ra danh sách các sách của NXB Giáo Dục không bán được trong năm 2014. // 
select distinct MaSach
from tSach join tNhaXuatBan on tSach.MaNXB = tNhaXuatBan.MaNXB
where tNhaXuatBan.TenNXB = N'NXB Giáo Dục'
	and tSach.MaSach not in 
	( select tSach.MaSach from tSach join tChiTietHDB on tSach.MaSach= tChiTietHDB.MaSach
		join tHoaDonBan on tChiTietHDB.SoHDB = tHoaDonBan.SoHDB 
		where YEAR(tHoaDonBan.NgayBan) =2014 )
								
--16. Tìm số hóa đơn đã mua tất cả các sách của NXB Giáo Dục.



--17. Có bao nhiêu đầu sách khác nhau được bán ra trong năm 2014.
select count( distinct tChiTietHDB.MaSach) as SoDauSachBanRa2014
from tChiTietHDB join tHoaDonBan on tChiTietHDB.SoHDB = tHoaDonBan.SoHDB
where year( tHoaDonBan.NgayBan) =2014

--18. Cho biết trị giá hóa đơn cao nhất, thấp nhất là bao nhiêu?
select tChiTietHDB.SoHDB, sum( tChiTietHDB.SLBan * tSach.DonGiaBan) as TongHD
into GTHĐ
from tChiTietHDB join tsach on tChiTietHDB.MaSach = tSach.MaSach
group by tChiTietHDB.SoHDB

select MAX(GTHĐ.TongHD) as N'Giá trị lớn nhất của hóa đơn' , 
       MIN(GTHĐ.TongHD) as N'Giá trị nhỏ nhất của hóa đơn' 
from GTHĐ

--C2:
select 'Trị giá HD lớn nhất' = MAX(Trigiahoadon) , ' Trị giá hoá đơn nhỏ nhất' = MIN(Trigiahoadon)
from ( select SOHDB, sum(SLBan*DonGiaBan) as Trigiahoadon 
		from tChiTietHDB a join tSach b on a.MaSach= b.MaSach
		group by SoHDB) BangHD
--19. Trị giá trung bình của tất cả các hóa đơn được bán ra trong năm 2014 là bao nhiêu?

select tChiTietHDB.SoHDB, sum( tChiTietHDB.SLBan * tSach.DonGiaBan) as TongHD
into GTTB
from ( tChiTietHDB join tSach on tChiTietHDB.MaSach = tSach.MaSach) join tHoaDonBan on tChiTietHDB.SoHDB= tHoaDonBan.SoHDB
where YEAR( tHoaDonBan.NgayBan)= 2014
group by tChiTietHDB.SoHDB

select AVG(GTTB.TongHD) as N'trị giá trung bình hóa đơn bán 2014' 
from GTTB

--C2:
Select sum( SLBan * DonGiaBan)/ count(distinct tChiTietHDB.SoHDB) as TB_2014
from tHoaDonBan join tChiTietHDB on tHoaDonBan.SoHDB= tChiTietHDB.SoHDB
join tSach on tSach.MaSach = tChiTietHDB.MaSach
where YEAR(tHoaDonBan.NgayBan) = 2014

--20. Tính doanh thu bán hàng trong năm 2014.
select sum(TongHd) as Doanhthu
from 
(select sum(	tChiTietHDB.SLBan* tSach.DonGiaBan) as TongHd
from tSach	
	join tChiTietHDB on tSach.MaSach = tChiTietHDB.MaSach
	join tHoaDonBan on tHoaDonBan.SoHDB = tChiTietHDB.SoHDB
where year( tHoaDonBan.NgayBan) =2014
group by tChiTietHDB.SoHDB) as hoadon

--21. Tìm số hóa đơn có trị giá cao nhất trong năm 2014.

select tChiTietHDB.SoHDB, sum( tChiTietHDB.SLBan * tSach.DonGiaBan) as GTB
into GTHDMax2014
from tChiTietHDB join tsach on tChiTietHDB.MaSach = tSach.MaSach
group by tChiTietHDB.SoHDB

select * 
from GTHDMax2014 
where GTHDMax2014.GTB = (select max(GTHDMax2014.GTB) from GTHDMax2014)

--22. Tìm họ tên khách hàng đã mua hóa đơn có trị giá cao nhất trong năm 2014.
select tKhachHang.TenKH
from ( GTHDMax2014 join tHoaDonBan on GTHDMax2014.SoHDB = tHoaDonBan.SoHDB) join tKhachHang on tKhachHang.MaKH = tHoaDonBan.MaKH

--c2:
select tHoaDonBan.SoHDB,
--23. In ra danh sách 3 khách hàng (MaKH, TenKH) có doanh số cao nhất.
select top 3 tHoaDonBan.MaKH, tKhachHang.MaKH, tKhachHang.TenKH,
sum( tChiTietHDB.SLBan * tSach.DonGiaBan) as TongDoanhSo
from tHoaDonBan		
join tChiTietHDB on tHoaDonBan.SoHDB = tChiTietHDB.SoHDB
join tKhachHang on tHoaDonBan.MaKH = tKhachHang.MaKH

--24. In ra danh sách các sách có giá bán bằng 1 trong 3 mức giá cao nhất.
select * from tSach where tSach.DonGiaBan in (
select distinct top 3 tSach.DonGiaBan
from tSach order by tSach.DonGiaBan desc)
--25. In ra danh sách các sách do NXB Giáo Dục sản xuất có giá bằng 1 trong 3 mức giá cao

--nhất (của tất cả các sản phẩm).
--26. Tính tổng số đầu sách do NXB Giáo Dục xuất bản.

select sum( tSach.SoLuong) as N'Tổng đầu sách do NXB Giáo Dục xuất bản'
from tSach join tNhaXuatBan on tSach.MaNXB = tNhaXuatBan.MaNXB
where tNhaXuatBan.TenNXB = N'NXB Giáo Dục'

--27. Tính tổng số sách của từng NXB.

Select tNhaXuatBan.MaNXB, tNhaXuatBan.TenNXB, sum(tSach.SoLuong) as N'Số lượng sách của nhà xuất bản'
From tSach join tNhaXuatBan on tSach.MaNXB = tNhaXuatBan.MaNXB
Group by tNhaXuatBan.MaNXB, tNhaXuatBan.TenNXB

--28. Với từng NXB, tìm giá bán cao nhất, thấp nhất, trung bình của các sản phẩm.

select tNhaXuatBan.MaNXB, tNhaXuatBan.TenNXB
	, MAX( tsach.DonGiaBan) as N'Giá bán cao nhất'
	, MIN( tSach.DonGiaBan) as N'Giá bán thấp nhất' 
	, AVG( tSach.DonGiaBan) as N'Giá bán trung bình'
from tSach join tNhaXuatBan on tSach.MaNXB = tNhaXuatBan.MaNXB
group by  tNhaXuatBan.TenNXB, tNhaXuatBan.MaNXB

--29. Tính doanh thu bán hàng mỗi ngày.

select tHoaDonBan.NgayBan , sum( tChiTietHDB.SLBan * tSach.DonGiaBan) as N'Doanh thu'
from (tHoaDonBan join tChiTietHDB on tChiTietHDB.SoHDB = tHoaDonBan.SoHDB) join tSach on tChiTietHDB.MaSach= tSach.MaSach
group by tHoaDonBan.NgayBan

--30. Tính tổng số lượng của từng sách bán ra trong tháng 7/2014.

select tChiTietHDB.MaSach ,sum( tChiTietHDB.SLBan) as N'Số lượng bán trong T10/2014'
from tChiTietHDB join tHoaDonBan on tChiTietHDB.SoHDB = tHoaDonBan.SoHDB
where YEAR(tHoaDonBan.NgayBan) =2014 and MONTH(tHoaDonBan.NgayBan) = 10
group by tChiTietHDB.MaSach

--31. Tính doanh thu bán hàng của từng tháng trong năm 2014 (kể cả những tháng không có doanh thu, VD: Tháng 1: 0; Tháng 2: 12000000; Tháng 3: 0; Tháng ….)

--32. Tìm hóa đơn có mua ít nhất 4 sản phẩm khác nhau.
--33. Tìm hóa đơn có mua 3 sách do NXB Giáo Dục xuất bản (3 sách khác nhau).
select tChiTietHDB.SoHDB
from tChiTietHDB
join tSach on tChiTietHDB.MaSach = tSach.MaSach
join tNhaXuatBan on tNhaXuatBan.MaNXB = tSach.MaNXB
where tNhaXuatBan.TenNXB = N'NXB Giáo Dục'
group by tChiTietHDB.SoHDB
having count( tSach.MaSach) =3
--34. Tìm khách hàng (MaKH, TenKH) có số lần mua hàng nhiều nhất.
select top 1 tKhachHang.MaKH, tKhachHang.TenKH, count(tHoaDonBan.SoHDB) as Solanmua
from tKhachHang
join tHoaDonBan on tHoaDonBan.MaKH = tKhachHang.MaKH
group by tKhachHang.MaKH,tKhachHang.TenKH
order by solanmua desc
--35. Tháng mấy trong năm 2014, doanh số bán hàng cao nhất ?
--36. Tìm sách có tổng số lượng bán ra thấp nhất trong năm 2014.
select top 1 tSach.MaSach, tSach.TenSach, sum( tChiTietHDB.SLBan) as TongSLban
from tSach 
join tChiTietHDB on tSach.MaSach = tChiTietHDB.MaSach
join tHoaDonBan on tHoaDonBan.SoHDB =tChiTietHDB.SoHDB
where YEAR(tHoaDonBan.NgayBan) =2014
group by tSach.MaSach, tSach.TenSach
order by TongSLban asc

--37. Mỗi NXB, tìm sách (MaSach,TenSach) có giá bán cao nhất.
select tNhaXuatBan.MaNXB, tNhaXuatBan.TenNXB, max( tSach.DonGiaBan) as GbanMax
from  tSach join tNhaXuatBan on tSach.MaNXB = tNhaXuatBan.MaNXB
group by tNhaXuatBan.TenNXB,tNhaXuatBan.MaNXB
--38. Giảm giá sách 10% cho các sách của NXB Giáo Dục
--39. Thêm trưởng tổng tiền cho bảng tHoaDonBan rồi cập nhật tổng tiền của hóa đơn cho trường này.
--40. Giảm 10% trên tổng hóa đơn cho các hóa đơn có trị giá trên 500.000 trong tháng 9/2014
--41. Tính tổng số lượng sách nhập trong năm 2014
select sum( tChiTietHDN.SLNhap) as N'Tổng SL sách nhập'
from tChiTietHDN join tHoaDonNhap on tChiTietHDN.SoHDN = tHoaDonNhap.SoHDN
where YEAR( tHoaDonNhap.NgayNhap) =2014

--42. Tính tổng số lượng sách bán trong năm 2014
select sum( tChiTietHDB.SLBan) as N'Tổng SL sách bán'
from tChiTietHDB join tHoaDonBan on tChiTietHDB.SoHDB = tHoaDonBan.SoHDB
where YEAR( tHoaDonBan.NgayBan) =2014

--43. Tính tổng tiền đã nhập trong năm 2014
select sum( tChiTietHDN.SLNhap * tsach.DonGiaNhap) as N'Tổng tiền sách đã nhập'
from tChiTietHDN join tHoaDonNhap on tChiTietHDN.SoHDN = tHoaDonNhap.SoHDN join tSach on tChiTietHDN.MaSach= tSach.MaSach
where YEAR( tHoaDonNhap.NgayNhap) =2014
--44. Xóa những hóa đơn do nhân viên "Trần Huy" lập (lưu ý xóa chi tiết hóa đơn trước)
--45. Đổi tên "NXB Thăng Long" thành "NXB Văn học"

--46. Đưa ra thông tin toàn bộ sách, nếu sách được bán trong năm 2014 thì đưa ra SL bán

