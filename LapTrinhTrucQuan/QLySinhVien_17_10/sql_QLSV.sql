﻿CREATE TABLE [dbo].[tblSinhvien]
(
	[MaSV] NVARCHAR(10) NOT NULL PRIMARY KEY, 
    [Hoten] NVARCHAR(50) NOT NULL, 
    [Ngaysinh] DATETIME NOT NULL, 
    [Khoa] NVARCHAR(20) NOT NULL, 
    [Lop] NVARCHAR(20) NOT NULL, 
    [Diachi] NVARCHAR(100) NULL

)
