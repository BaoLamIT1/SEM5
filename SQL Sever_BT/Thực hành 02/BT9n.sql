create database QLBanHang
USE QLBanHang
GO
/****** Object:  Table [dbo].[CT_HOADON]    Script Date: 21/09/2021 1:43:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_HOADON](
	[MaHD] [nvarchar](50) NOT NULL,
	[MaHH] [nvarchar](50) NOT NULL,
	[SL] [int] NULL,
 CONSTRAINT [PK_CT_HOADON] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PHIEUNHAP]    Script Date: 21/09/2021 1:43:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PHIEUNHAP](
	[MaPN] [nvarchar](50) NOT NULL,
	[MaHH] [nvarchar](50) NOT NULL,
	[GiaMua] [float] NULL,
	[SL] [int] NULL,
 CONSTRAINT [PK_CT_PHIEUNHAP] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC,
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HANGHOA]    Script Date: 21/09/2021 1:43:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANGHOA](
	[MaHH] [nvarchar](50) NOT NULL,
	[HangSX] [nvarchar](255) NULL,
	[TenHH] [nvarchar](255) NULL,
	[GiaBan] [float] NULL,
	[DacDiem] [nvarchar](max) NULL,
 CONSTRAINT [PK_HANGHOA] PRIMARY KEY CLUSTERED 
(
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 21/09/2021 1:43:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [nvarchar](50) NOT NULL,
	[MaKH] [nvarchar](50) NULL,
	[MaNV] [nvarchar](50) NULL,
	[NgayLap] [datetime] NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 21/09/2021 1:43:37 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [nvarchar](50) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](15) NULL,
	[NgaySInh] [date] NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 21/09/2021 1:43:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MaNCC] [nvarchar](50) NOT NULL,
	[TenNCC] [nvarchar](255) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[SDT] [nvarchar](15) NULL,
 CONSTRAINT [PK_NHACUNGCAP] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 21/09/2021 1:43:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[QueQuan] [nvarchar](max) NULL,
	[Gioi Tinh] [nvarchar](10) NULL,
	[SDT] [nvarchar](15) NULL,
	[NgaySinh] [datetime] NULL,
	[NgayLV] [datetime] NULL,
	[HSL] [nvarchar](50) NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 21/09/2021 1:43:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MaPN] [nvarchar](50) NOT NULL,
	[MaNV] [nvarchar](50) NULL,
	[NgayLap] [datetime] NULL,
	[MaNCC] [nvarchar](50) NULL,
 CONSTRAINT [PK_PHIEUNHAP] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0001', N'0003', 1)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0001', N'0004', 15)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0001', N'0007', 5)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0002', N'0003', 3)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0002', N'0004', 12)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0002', N'0006', 7)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0002', N'0008', 11)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0003', N'0006', 9)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0003', N'0009', 15)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0004', N'0009', 3)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0005', N'0010', 14)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0006', N'0011', 8)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0007', N'0011', 11)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0008', N'0012', 12)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0009', N'0012', 9)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0010', N'0012', 5)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0011', N'0015', 15)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0011', N'0016', 11)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0012', N'0002', 10)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0012', N'0016', 15)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0013', N'0003', 11)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0013', N'0011', 13)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0014', N'0012', 15)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0015', N'0013', 4)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0015', N'0014', 12)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0016', N'0008', 3)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0016', N'0009', 2)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0016', N'0015', 13)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0017', N'0011', 11)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0018', N'0001', 6)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0018', N'0012', 2)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0019', N'0002', 7)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0019', N'0003', 9)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0019', N'0004', 10)
INSERT [dbo].[CT_HOADON] ([MaHD], [MaHH], [SL]) VALUES (N'0019', N'0005', 11)
GO
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'1', N'0001', 20000000, 10)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'1', N'0012', 7500000, 10)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'1', N'0016', 3000000, 20)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'10', N'0010', 7000000, 10)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'10', N'0011', 8000000, 5)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'11', N'0011', 8000000, 10)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'11', N'0015', 4900000, 20)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'2', N'0002', 19000000, 5)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'2', N'0013', 5500000, 10)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'3', N'0003', 16000000, 10)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'3', N'0014', 5000000, 10)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'4', N'0004', 11000000, 10)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'4', N'0015', 4900000, 5)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'5', N'0002', 20000000, 5)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'5', N'0005', 14000000, 10)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'6', N'0001', 19500000, 5)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'6', N'0006', 11000000, 10)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'7', N'0003', 16000000, 10)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'7', N'0007', 10000000, 5)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'8', N'0004', 11000000, 10)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'8', N'0008', 10000000, 5)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'9', N'0005', 13800000, 10)
INSERT [dbo].[CT_PHIEUNHAP] ([MaPN], [MaHH], [GiaMua], [SL]) VALUES (N'9', N'0009', 7500000, 5)
GO
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0001', N'Samsung', N'Galaxy note Edge', 20990000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0002', N'Apple', N'Iphone 6 Plus 16GB', 19590000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0003', N'HTC', N'One M9', 16990000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0004', N'Sony', N'Z2', 11990000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0005', N'Sony', N'Z3', 14990000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0006', N'Sony', N'Z3 Compact', 11990000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0007', N'Nokia', N'Lumia 930', 10990000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0008', N'Oppo', N'R5', 10000000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0009', N'Oppo', N'N1 Mini', 8490000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0010', N'Oppo', N'R1K R8001', 7990000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0011', N'HTC', N'Desire 826', 8690000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0012', N'Pantech', N'Vega iron 2 A910S', 8200000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0013', N'Sony', N'C3', 6000000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0014', N'Asus', N'Zenfone 6', 5500000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0015', N'Lenovo', N'P70', 5400000, NULL)
INSERT [dbo].[HANGHOA] ([MaHH], [HangSX], [TenHH], [GiaBan], [DacDiem]) VALUES (N'0016', N'Sony', N'C3', 3500000, NULL)
GO
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0001', N'0019', N'0004', CAST(N'2015-04-02T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0002', N'0020', N'0002', CAST(N'2016-04-03T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0003', N'0003', N'0001', CAST(N'2015-03-16T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0004', N'0004', N'0001', CAST(N'2015-03-17T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0005', N'0002', N'0003', CAST(N'2015-03-24T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0006', N'0002', N'0001', CAST(N'2015-03-17T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0007', N'0004', N'0003', CAST(N'2014-03-17T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0008', N'0005', N'0002', CAST(N'2015-03-20T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0009', N'0006', N'0003', CAST(N'2015-03-21T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0010', N'0007', N'0004', CAST(N'2015-03-21T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0011', N'0005', N'0004', CAST(N'2015-03-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0012', N'0002', N'0003', CAST(N'2014-03-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0013', N'0004', N'0002', CAST(N'2015-03-24T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0014', N'0011', N'0002', CAST(N'2015-03-25T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0015', N'0003', N'0002', CAST(N'2015-03-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0016', N'0008', N'0003', CAST(N'2016-03-23T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0017', N'0009', N'0002', CAST(N'2015-03-23T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0018', N'0010', N'0001', CAST(N'2015-03-24T00:00:00.000' AS DateTime))
INSERT [dbo].[HOADON] ([MaHD], [MaKH], [MaNV], [NgayLap]) VALUES (N'0019', N'0012', N'0001', CAST(N'2015-03-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0001', N'Nguyễn Văn Hùng', N'Cầu Giấy - Hà Nội', N'0978965195', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0002', N'Bùi Minh Chí', N'Hà Đông', N'0978965236', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0003', N'Trần Chí Kiên', N'Tây Hồ - Hà Nội', N'0912559654', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0004', N'Nguyễn Hữu Minh', N'Bắc Từ Liêm - Hà Nội', N'01658256325', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0005', N'Trần Lan Anh', N'Hà Đông', N'0985621531', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0006', N'Lê Thị Quỳnh', N'Ba Vì - Hà Nội', N'0912565842', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0007', N'Nguyễn Tuấn Anh', N'Nam Từ Liêm - Hà Nội', N'0925632514', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0008', N'Lê Kim Anh', N'Hà Đông', N'01625632512', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0009', N'Trần Trung Đức', N'Cầu Giấy - Hà Nội', N'0921235236', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0010', N'Nguyễn Xuân Huy', N'Cầu Giấy - Hà Nội', N'0912584633', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0011', N'Bùi Duy Khánh', N'Cầu Giấy - HN', N'0978563256', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0012', N'Chương Văn Tài', N'Hà Đông', N'0985623652', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0013', N'Nguyễn Văn An', N'Vĩnh Phúc', N'0985632563', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0014', N'Lê Thị Hoa', N'Nam Từ Liêm - Hà Nội', N'0912355658', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0015', N'Bùi Thị Trang', N'Tây Hồ - Hà Nội', N'0912365896', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0016', N'Lê Huyền Trang', N'Nam Từ Liêm - Hà Nội', N'0987562632', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0017', N'Tăng Thanh Hà', N'Tây Hồ - Hà Nội', N'0912563259', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0018', N'Hồ Ngọc Hà', N'Tây Hồ - Hà Nội', N'0986523625', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0019', N'Bùi Minh Hằng', N'Nam Từ Liêm - Hà Nội', N'0986523652', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0020', N'Đàm Vĩnh Hương', N'Tây Hồ - Hà Nội', N'0985623652', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [NgaySInh]) VALUES (N'0021', N'Nguyễn Ánh Hồng', N'Đống Đa - Hà Nội', N'0909900999', NULL)
GO
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'0001', N'FPT', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'0002', N'Viettel', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'0003', N'Thế giới di động', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT]) VALUES (N'0004', N'Nhật Cường', NULL, NULL)
GO
INSERT [dbo].[NHANVIEN] ([MaNV], [HoTen], [QueQuan], [Gioi Tinh], [SDT], [NgaySinh], [NgayLV], [HSL]) VALUES (N'0001', N'Tăng Thanh Hà', N'Số 3, Ngõ 165,Cầu Giấy - Hà Nội', N'Nữ', N'0978652365', CAST(N'2000-09-21T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MaNV], [HoTen], [QueQuan], [Gioi Tinh], [SDT], [NgaySinh], [NgayLV], [HSL]) VALUES (N'0002', N'Nguyễn Văn Hùng', N'Số 69, Ngách 24, ngõ 23, Từ Liêm - Hà Nội', N'Nam', N'0912563215', CAST(N'2001-09-21T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MaNV], [HoTen], [QueQuan], [Gioi Tinh], [SDT], [NgaySinh], [NgayLV], [HSL]) VALUES (N'0003', N'Tạ Quang Huy', N'Số 25, Ngõ 196, Cầu Giấy -  Hà Nội', N'Nam', N'016502256523', CAST(N'2000-08-10T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MaNV], [HoTen], [QueQuan], [Gioi Tinh], [SDT], [NgaySinh], [NgayLV], [HSL]) VALUES (N'0004', N'Nguyễn Thị Ngọc Anh', N'Số 27, Ngách 49, Ngõ 165, Cầu Giấy - Hà Nội', N'Nữ', N'0978563254', CAST(N'2005-06-07T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MaNV], [HoTen], [QueQuan], [Gioi Tinh], [SDT], [NgaySinh], [NgayLV], [HSL]) VALUES (N'0005', N'Trần Quang Khải', N'Số 27, Ngách 49, Ngõ 165, Cầu Giấy - Hà Nội', N'Nam', N'09088888888', CAST(N'1999-07-07T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayLap], [MaNCC]) VALUES (N'1', N'0002', CAST(N'2015-03-01T00:00:00.000' AS DateTime), N'0001')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayLap], [MaNCC]) VALUES (N'10', N'0003', CAST(N'2015-05-19T00:00:00.000' AS DateTime), N'0002')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayLap], [MaNCC]) VALUES (N'11', N'0004', CAST(N'2015-05-31T00:00:00.000' AS DateTime), N'0003')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayLap], [MaNCC]) VALUES (N'2', N'0001', CAST(N'2015-03-02T00:00:00.000' AS DateTime), N'0004')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayLap], [MaNCC]) VALUES (N'3', N'0003', CAST(N'2015-03-04T00:00:00.000' AS DateTime), N'0001')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayLap], [MaNCC]) VALUES (N'4', N'0004', CAST(N'2015-03-05T00:00:00.000' AS DateTime), N'0001')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayLap], [MaNCC]) VALUES (N'5', N'0001', CAST(N'2015-03-06T00:00:00.000' AS DateTime), N'0002')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayLap], [MaNCC]) VALUES (N'6', N'0003', CAST(N'2015-03-06T00:00:00.000' AS DateTime), N'0004')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayLap], [MaNCC]) VALUES (N'7', N'0002', CAST(N'2015-05-19T00:00:00.000' AS DateTime), N'0003')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayLap], [MaNCC]) VALUES (N'8', N'0004', CAST(N'2015-05-19T00:00:00.000' AS DateTime), N'0002')
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [NgayLap], [MaNCC]) VALUES (N'9', N'0003', CAST(N'2015-05-19T00:00:00.000' AS DateTime), N'0003')
GO
ALTER TABLE [dbo].[CT_HOADON]  WITH CHECK ADD  CONSTRAINT [FK_CT_HOADON_HANGHOA] FOREIGN KEY([MaHH])
REFERENCES [dbo].[HANGHOA] ([MaHH])
GO
ALTER TABLE [dbo].[CT_HOADON] CHECK CONSTRAINT [FK_CT_HOADON_HANGHOA]
GO
ALTER TABLE [dbo].[CT_HOADON]  WITH CHECK ADD  CONSTRAINT [FK_CT_HOADON_HOADON] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOADON] ([MaHD])
GO
ALTER TABLE [dbo].[CT_HOADON] CHECK CONSTRAINT [FK_CT_HOADON_HOADON]
GO
ALTER TABLE [dbo].[CT_PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_CT_PHIEUNHAP_HANGHOA] FOREIGN KEY([MaHH])
REFERENCES [dbo].[HANGHOA] ([MaHH])
GO
ALTER TABLE [dbo].[CT_PHIEUNHAP] CHECK CONSTRAINT [FK_CT_PHIEUNHAP_HANGHOA]
GO
ALTER TABLE [dbo].[CT_PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_CT_PHIEUNHAP_PHIEUNHAP] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PHIEUNHAP] ([MaPN])
GO
ALTER TABLE [dbo].[CT_PHIEUNHAP] CHECK CONSTRAINT [FK_CT_PHIEUNHAP_PHIEUNHAP]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_KHACHHANG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_NHANVIEN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_NHANVIEN]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAP_NHACUNGCAP] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NHACUNGCAP] ([MaNCC])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_PHIEUNHAP_NHACUNGCAP]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAP_NHANVIEN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_PHIEUNHAP_NHANVIEN]
GO
