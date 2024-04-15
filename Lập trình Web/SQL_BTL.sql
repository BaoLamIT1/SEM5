﻿CREATE DATABASE LAP_TRINH_WEB	
USE LAP_TRINH_WEB

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
    [name] [nvarchar](50) NOT NULL,
    [id] [nvarchar](50) NOT NULL,
    [price] [float] NULL,
    [mota] [nvarchar] (max) -- Nếu bạn muốn lưu trữ văn bản dài hơn 4000 ký tự.
CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[ChiTietHDB](
    [SoHDB] [nvarchar](50) NOT NULL,
    [MaSanPham] [nvarchar](50) NOT NULL,
    [SoLuongBan] [float] NULL,
CONSTRAINT [PK_ChiTietHDB] PRIMARY KEY CLUSTERED 
(
	[SoHDB] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO 
CREATE TABLE [dbo].[HoaDonBan](
    [SoHDB] [nvarchar](50) NOT NULL,
    [NgayBan] [date] NOT NULL,
    [MaKH] [nvarchar](50) NOT NULL,
	[HinhThucThanhToan][nvarchar](50) NOT NULL
CONSTRAINT [PK_HoaDonBan] PRIMARY KEY CLUSTERED 
(
	[SoHDB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[KhachHang](
    [MaKH] [nvarchar](50) NOT NULL,
    [TenKH] [date] NOT NULL,
    [DiaChi] [nvarchar](255) NULL,
	[SoDT][nvarchar](15) NULL,
	[PhuongThucLL] [nvarchar](255) NULL
CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[TaiKhoan](
    [TenKH] [nvarchar](50) NOT NULL,
    [TenTK] [date] NOT NULL,
    [MatKhau] [nvarchar](15) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[PhuongThucLL] [nvarchar](255) NOT NULL
CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[PhuongThucLL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
