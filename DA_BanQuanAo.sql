USE [DUAN11]
GO
/****** Object:  User [sa1]    Script Date: 12/14/2023 7:18:48 AM ******/
CREATE USER [sa1] FOR LOGIN [sa1] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[ChatLieu]    Script Date: 12/14/2023 7:18:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatLieu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaChatLieu] [varchar](20) NULL,
	[TenChatLieu] [nvarchar](50) NOT NULL,
	[MoTa] [text] NULL,
	[TrangThai] [bit] NOT NULL,
	[CreateAt] [date] NOT NULL,
	[CreateBy] [varchar](20) NOT NULL,
	[UpdateAt] [date] NOT NULL,
	[UpdateBy] [varchar](20) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CoAo]    Script Date: 12/14/2023 7:18:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoAo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaCoAo] [varchar](20) NULL,
	[TenCoAo] [nvarchar](50) NOT NULL,
	[MoTa] [text] NULL,
	[TrangThai] [bit] NOT NULL,
	[CreateAt] [date] NOT NULL,
	[CreateBy] [varchar](20) NOT NULL,
	[UpdateAt] [date] NOT NULL,
	[UpdateBy] [varchar](20) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DangAo]    Script Date: 12/14/2023 7:18:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangAo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaDangAo] [varchar](20) NULL,
	[TenDangAo] [nvarchar](50) NOT NULL,
	[Mota] [text] NULL,
	[TrangThai] [bit] NOT NULL,
	[CreateAt] [date] NOT NULL,
	[CreateBy] [varchar](20) NOT NULL,
	[UpdateAt] [date] NOT NULL,
	[UpdateBy] [varchar](20) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhThucThanhToan]    Script Date: 12/14/2023 7:18:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhThucThanhToan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaHinhThucThanhToan] [varchar](20) NULL,
	[TenHinhThucThanhToan] [nvarchar](50) NOT NULL,
	[MoTa] [text] NULL,
	[TrangThai] [bit] NOT NULL,
	[CreateAt] [date] NOT NULL,
	[CreateBy] [varchar](20) NOT NULL,
	[UpdateAt] [date] NOT NULL,
	[UpdateBy] [varchar](20) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/14/2023 7:18:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [varchar](20) NULL,
	[LoaiKhachHang] [bit] NULL,
	[TongTien] [decimal](20, 0) NULL,
	[TrangThai] [bit] NOT NULL,
	[TenNguoiNhan] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Sdt] [varchar](30) NULL,
	[Email] [varchar](50) NULL,
	[PhiShip] [decimal](20, 0) NULL,
	[NgayShip] [date] NULL,
	[NgayNhan] [date] NULL,
	[NgayThanhToan] [date] NULL,
	[GhiChu] [text] NULL,
	[CreateAt] [date] NULL,
	[CreateBy] [varchar](20) NULL,
	[UpdateAt] [date] NULL,
	[UpdateBy] [varchar](20) NULL,
	[deleted] [bit] NULL,
	[IdNhanVien] [int] NULL,
	[IdKhachHang] [int] NULL,
	[IdHinhThucThanhToan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 12/14/2023 7:18:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [decimal](20, 0) NULL,
	[IdHoaDon] [int] NOT NULL,
	[IdSanPhamCt] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/14/2023 7:18:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaKhachHang] [varchar](20) NULL,
	[Hoten] [nvarchar](50) NULL,
	[SoDT] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[DiaChi] [text] NULL,
	[TrangThai] [bit] NOT NULL,
	[CreateAt] [date] NOT NULL,
	[CreateBy] [varchar](20) NOT NULL,
	[UpdateAt] [date] NOT NULL,
	[UpdateBy] [varchar](20) NOT NULL,
	[deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KichThuoc]    Script Date: 12/14/2023 7:18:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KichThuoc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaKichThuoc] [varchar](20) NULL,
	[TenKichThuoc] [nvarchar](50) NOT NULL,
	[MoTa] [text] NULL,
	[TrangThai] [bit] NOT NULL,
	[CreateAt] [date] NOT NULL,
	[CreateBy] [varchar](20) NOT NULL,
	[UpdateAt] [date] NOT NULL,
	[UpdateBy] [varchar](20) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MauSac]    Script Date: 12/14/2023 7:18:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MauSac](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaMauSac] [varchar](20) NULL,
	[TenMauSac] [nvarchar](50) NOT NULL,
	[MoTa] [text] NULL,
	[TrangThai] [bit] NOT NULL,
	[CreateAt] [date] NOT NULL,
	[CreateBy] [varchar](20) NOT NULL,
	[UpdateAt] [date] NOT NULL,
	[UpdateBy] [varchar](20) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanHieu]    Script Date: 12/14/2023 7:18:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanHieu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanHieu] [varchar](20) NULL,
	[TenNhanHieu] [nvarchar](50) NOT NULL,
	[MoTa] [text] NULL,
	[TrangThai] [bit] NOT NULL,
	[CreateAt] [date] NOT NULL,
	[CreateBy] [varchar](20) NOT NULL,
	[UpdateAt] [date] NOT NULL,
	[UpdateBy] [varchar](20) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/14/2023 7:18:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [varchar](20) NULL,
	[MatKhau] [varchar](20) NOT NULL,
	[ChucVu] [bit] NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[GioiTinh] [bit] NOT NULL,
	[CCCD] [varchar](20) NULL,
	[SoDT] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[DiaChi] [text] NULL,
	[TrangThai] [bit] NOT NULL,
	[CreateAt] [date] NOT NULL,
	[CreateBy] [varchar](20) NOT NULL,
	[UpdateAt] [date] NOT NULL,
	[UpdateBy] [varchar](20) NOT NULL,
	[deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 12/14/2023 7:18:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [varchar](20) NULL,
	[TenSanPham] [nvarchar](50) NOT NULL,
	[CreateAt] [date] NULL,
	[CreateBY] [varchar](20) NULL,
	[trangthai] [bit] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAMCHITIET]    Script Date: 12/14/2023 7:18:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAMCHITIET](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPhamCT] [varchar](20) NULL,
	[TenSanPhamCT] [nvarchar](50) NOT NULL,
	[SoLuongTon] [int] NOT NULL,
	[GiaBan] [decimal](20, 0) NULL,
	[TrangThai] [bit] NOT NULL,
	[CreateAt] [date] NOT NULL,
	[CreateBy] [varchar](20) NOT NULL,
	[UpdateAt] [date] NOT NULL,
	[UpdateBy] [varchar](20) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[IdXuatXu] [int] NOT NULL,
	[IdSanPham] [int] NOT NULL,
	[IdMauSac] [int] NOT NULL,
	[IdKichThuoc] [int] NOT NULL,
	[IdCoAo] [int] NOT NULL,
	[IdDangAo] [int] NOT NULL,
	[IdNhanHieu] [int] NOT NULL,
	[IdChatLieu] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XuatXu]    Script Date: 12/14/2023 7:18:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XuatXu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaXuatXu] [varchar](20) NULL,
	[NoiXuatXu] [nvarchar](50) NOT NULL,
	[Mota] [text] NULL,
	[TrangThai] [bit] NOT NULL,
	[CreateAt] [date] NOT NULL,
	[CreateBy] [varchar](20) NOT NULL,
	[UpdateAt] [date] NOT NULL,
	[UpdateBy] [varchar](20) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChatLieu] ON 

INSERT [dbo].[ChatLieu] ([Id], [MaChatLieu], [TenChatLieu], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (1, N'CL001', N'Cotton', N'Ch?t li?u ph? bi?n nh?t, v?i d?c tính thoáng khí, tho?i mái và d? cham sóc.', 1, CAST(N'2023-11-15' AS Date), N'NV002', CAST(N'2023-11-15' AS Date), N'NV002', 0)
INSERT [dbo].[ChatLieu] ([Id], [MaChatLieu], [TenChatLieu], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (2, N'CL002', N' Polyester', NULL, 1, CAST(N'2023-11-15' AS Date), N'NV002', CAST(N'2023-11-15' AS Date), N'NV002', 0)
INSERT [dbo].[ChatLieu] ([Id], [MaChatLieu], [TenChatLieu], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (3, N'CL003', N'Bamboo', NULL, 1, CAST(N'2023-12-12' AS Date), N'NV002', CAST(N'2023-12-12' AS Date), N'NV002', 0)
INSERT [dbo].[ChatLieu] ([Id], [MaChatLieu], [TenChatLieu], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (4, N'CL004', N'Modal', NULL, 1, CAST(N'2023-12-12' AS Date), N'NV002', CAST(N'2023-12-12' AS Date), N'NV002', 0)
INSERT [dbo].[ChatLieu] ([Id], [MaChatLieu], [TenChatLieu], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (5, N'CL005', N'Organic Cotton', NULL, 0, CAST(N'2023-12-12' AS Date), N'NV002', CAST(N'2023-12-12' AS Date), N'NV002', 0)
SET IDENTITY_INSERT [dbo].[ChatLieu] OFF
GO
SET IDENTITY_INSERT [dbo].[CoAo] ON 

INSERT [dbo].[CoAo] ([Id], [MaCoAo], [TenCoAo], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (1, N'CA001', N'Cổ Tròn', NULL, 1, CAST(N'2023-11-15' AS Date), N'NV002', CAST(N'2023-11-15' AS Date), N'NV002', 0)
INSERT [dbo].[CoAo] ([Id], [MaCoAo], [TenCoAo], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (2, N'CA002', N'Cổ Polo', NULL, 1, CAST(N'2023-11-15' AS Date), N'NV002', CAST(N'2023-11-15' AS Date), N'NV002', 0)
INSERT [dbo].[CoAo] ([Id], [MaCoAo], [TenCoAo], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (3, N'CA003', N'Cổ Henley', NULL, 1, CAST(N'2023-11-15' AS Date), N'NV002', CAST(N'2023-11-15' AS Date), N'NV002', 0)
INSERT [dbo].[CoAo] ([Id], [MaCoAo], [TenCoAo], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (4, N'CA004', N'Cổ Đức', NULL, 1, CAST(N'2023-11-15' AS Date), N'NV002', CAST(N'2023-11-15' AS Date), N'NV002', 0)
INSERT [dbo].[CoAo] ([Id], [MaCoAo], [TenCoAo], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (5, N'CA005', N'Cổ Boat ', NULL, 1, CAST(N'2023-11-15' AS Date), N'NV002', CAST(N'2023-11-15' AS Date), N'NV002', 0)
SET IDENTITY_INSERT [dbo].[CoAo] OFF
GO
SET IDENTITY_INSERT [dbo].[DangAo] ON 

INSERT [dbo].[DangAo] ([Id], [MaDangAo], [TenDangAo], [Mota], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (1, N'DA001', N'Ôm vừa', N'Mô t? v? áo dài tay', 1, CAST(N'2023-11-15' AS Date), N'NV002', CAST(N'2023-11-15' AS Date), N'NV002', 0)
INSERT [dbo].[DangAo] ([Id], [MaDangAo], [TenDangAo], [Mota], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (4, N'DA067027', N'Ôm sát', NULL, 1, CAST(N'2023-12-12' AS Date), N'NV002', CAST(N'2023-12-12' AS Date), N'NV002', 0)
INSERT [dbo].[DangAo] ([Id], [MaDangAo], [TenDangAo], [Mota], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (5, N'DA054530', N'Dài tay', NULL, 1, CAST(N'2023-12-12' AS Date), N'NV002', CAST(N'2023-12-12' AS Date), N'NV002', 0)
INSERT [dbo].[DangAo] ([Id], [MaDangAo], [TenDangAo], [Mota], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (6, N'DA059580', N'Ngắn tay', NULL, 1, CAST(N'2023-12-12' AS Date), N'NV002', CAST(N'2023-12-12' AS Date), N'NV002', 0)
SET IDENTITY_INSERT [dbo].[DangAo] OFF
GO
SET IDENTITY_INSERT [dbo].[HinhThucThanhToan] ON 

INSERT [dbo].[HinhThucThanhToan] ([Id], [MaHinhThucThanhToan], [TenHinhThucThanhToan], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (1, N'HTTT001', N'Tiền Mặt', N'Mô t?', 1, CAST(N'2023-11-15' AS Date), N'NV002', CAST(N'2023-11-15' AS Date), N'NV002', 0)
INSERT [dbo].[HinhThucThanhToan] ([Id], [MaHinhThucThanhToan], [TenHinhThucThanhToan], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (2, N'HTTT002', N'Chuyển Khoản', N'Mô t? ', 1, CAST(N'2023-11-15' AS Date), N'NV002', CAST(N'2023-11-15' AS Date), N'NV002', 0)
SET IDENTITY_INSERT [dbo].[HinhThucThanhToan] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [LoaiKhachHang], [TongTien], [TrangThai], [TenNguoiNhan], [DiaChi], [Sdt], [Email], [PhiShip], [NgayShip], [NgayNhan], [NgayThanhToan], [GhiChu], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [deleted], [IdNhanVien], [IdKhachHang], [IdHinhThucThanhToan]) VALUES (21, N'HD05969208', 0, CAST(1350000 AS Decimal(20, 0)), 1, NULL, NULL, NULL, NULL, CAST(0 AS Decimal(20, 0)), NULL, NULL, CAST(N'2023-12-14' AS Date), N'', CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 2, 4, 1)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [LoaiKhachHang], [TongTien], [TrangThai], [TenNguoiNhan], [DiaChi], [Sdt], [Email], [PhiShip], [NgayShip], [NgayNhan], [NgayThanhToan], [GhiChu], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [deleted], [IdNhanVien], [IdKhachHang], [IdHinhThucThanhToan]) VALUES (22, N'HD00619622', 0, CAST(5400000 AS Decimal(20, 0)), 1, NULL, NULL, NULL, NULL, CAST(0 AS Decimal(20, 0)), NULL, NULL, CAST(N'2023-12-14' AS Date), N'', CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 2, 4, 2)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [LoaiKhachHang], [TongTien], [TrangThai], [TenNguoiNhan], [DiaChi], [Sdt], [Email], [PhiShip], [NgayShip], [NgayNhan], [NgayThanhToan], [GhiChu], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [deleted], [IdNhanVien], [IdKhachHang], [IdHinhThucThanhToan]) VALUES (23, N'HD05021608', 1, CAST(1200000 AS Decimal(20, 0)), 1, NULL, NULL, NULL, NULL, CAST(0 AS Decimal(20, 0)), NULL, NULL, CAST(N'2023-12-14' AS Date), N'', CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 2, 2, 2)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [LoaiKhachHang], [TongTien], [TrangThai], [TenNguoiNhan], [DiaChi], [Sdt], [Email], [PhiShip], [NgayShip], [NgayNhan], [NgayThanhToan], [GhiChu], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [deleted], [IdNhanVien], [IdKhachHang], [IdHinhThucThanhToan]) VALUES (24, N'HD05707774', 0, CAST(1800000 AS Decimal(20, 0)), 1, NULL, NULL, NULL, NULL, CAST(0 AS Decimal(20, 0)), NULL, NULL, CAST(N'2023-12-14' AS Date), N'', CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 2, 4, 2)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [LoaiKhachHang], [TongTien], [TrangThai], [TenNguoiNhan], [DiaChi], [Sdt], [Email], [PhiShip], [NgayShip], [NgayNhan], [NgayThanhToan], [GhiChu], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [deleted], [IdNhanVien], [IdKhachHang], [IdHinhThucThanhToan]) VALUES (25, N'HD07578345', 0, CAST(1800000 AS Decimal(20, 0)), 1, NULL, NULL, NULL, NULL, CAST(0 AS Decimal(20, 0)), NULL, NULL, CAST(N'2023-12-14' AS Date), N'', CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 2, 4, 2)
INSERT [dbo].[HoaDon] ([Id], [MaHoaDon], [LoaiKhachHang], [TongTien], [TrangThai], [TenNguoiNhan], [DiaChi], [Sdt], [Email], [PhiShip], [NgayShip], [NgayNhan], [NgayThanhToan], [GhiChu], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [deleted], [IdNhanVien], [IdKhachHang], [IdHinhThucThanhToan]) VALUES (26, N'HD06163052', 1, CAST(2400000 AS Decimal(20, 0)), 1, NULL, NULL, NULL, NULL, CAST(0 AS Decimal(20, 0)), NULL, NULL, CAST(N'2023-12-14' AS Date), N'', CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 2, 3, 2)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDonChiTiet] ON 

INSERT [dbo].[HoaDonChiTiet] ([Id], [SoLuong], [ThanhTien], [IdHoaDon], [IdSanPhamCt]) VALUES (18, 12, CAST(1800000 AS Decimal(20, 0)), 22, 1)
INSERT [dbo].[HoaDonChiTiet] ([Id], [SoLuong], [ThanhTien], [IdHoaDon], [IdSanPhamCt]) VALUES (19, 0, CAST(0 AS Decimal(20, 0)), 22, 2)
INSERT [dbo].[HoaDonChiTiet] ([Id], [SoLuong], [ThanhTien], [IdHoaDon], [IdSanPhamCt]) VALUES (20, 22, CAST(3300000 AS Decimal(20, 0)), 22, 4)
INSERT [dbo].[HoaDonChiTiet] ([Id], [SoLuong], [ThanhTien], [IdHoaDon], [IdSanPhamCt]) VALUES (21, 1, CAST(150000 AS Decimal(20, 0)), 22, 3)
INSERT [dbo].[HoaDonChiTiet] ([Id], [SoLuong], [ThanhTien], [IdHoaDon], [IdSanPhamCt]) VALUES (22, 1, CAST(150000 AS Decimal(20, 0)), 22, 5)
INSERT [dbo].[HoaDonChiTiet] ([Id], [SoLuong], [ThanhTien], [IdHoaDon], [IdSanPhamCt]) VALUES (23, 1, CAST(150000 AS Decimal(20, 0)), 21, 2)
INSERT [dbo].[HoaDonChiTiet] ([Id], [SoLuong], [ThanhTien], [IdHoaDon], [IdSanPhamCt]) VALUES (24, 1, CAST(150000 AS Decimal(20, 0)), 21, 3)
INSERT [dbo].[HoaDonChiTiet] ([Id], [SoLuong], [ThanhTien], [IdHoaDon], [IdSanPhamCt]) VALUES (25, 2, CAST(300000 AS Decimal(20, 0)), 21, 4)
INSERT [dbo].[HoaDonChiTiet] ([Id], [SoLuong], [ThanhTien], [IdHoaDon], [IdSanPhamCt]) VALUES (26, 5, CAST(750000 AS Decimal(20, 0)), 21, 5)
INSERT [dbo].[HoaDonChiTiet] ([Id], [SoLuong], [ThanhTien], [IdHoaDon], [IdSanPhamCt]) VALUES (27, 1, CAST(200000 AS Decimal(20, 0)), 23, 7)
INSERT [dbo].[HoaDonChiTiet] ([Id], [SoLuong], [ThanhTien], [IdHoaDon], [IdSanPhamCt]) VALUES (28, 1, CAST(200000 AS Decimal(20, 0)), 23, 6)
INSERT [dbo].[HoaDonChiTiet] ([Id], [SoLuong], [ThanhTien], [IdHoaDon], [IdSanPhamCt]) VALUES (29, 1, CAST(300000 AS Decimal(20, 0)), 23, 36)
INSERT [dbo].[HoaDonChiTiet] ([Id], [SoLuong], [ThanhTien], [IdHoaDon], [IdSanPhamCt]) VALUES (30, 1, CAST(350000 AS Decimal(20, 0)), 23, 35)
INSERT [dbo].[HoaDonChiTiet] ([Id], [SoLuong], [ThanhTien], [IdHoaDon], [IdSanPhamCt]) VALUES (31, 1, CAST(350000 AS Decimal(20, 0)), 23, 34)
INSERT [dbo].[HoaDonChiTiet] ([Id], [SoLuong], [ThanhTien], [IdHoaDon], [IdSanPhamCt]) VALUES (32, 1, CAST(350000 AS Decimal(20, 0)), 23, 33)
INSERT [dbo].[HoaDonChiTiet] ([Id], [SoLuong], [ThanhTien], [IdHoaDon], [IdSanPhamCt]) VALUES (33, 3, CAST(450000 AS Decimal(20, 0)), 23, 4)
INSERT [dbo].[HoaDonChiTiet] ([Id], [SoLuong], [ThanhTien], [IdHoaDon], [IdSanPhamCt]) VALUES (34, 4, CAST(600000 AS Decimal(20, 0)), 23, 3)
INSERT [dbo].[HoaDonChiTiet] ([Id], [SoLuong], [ThanhTien], [IdHoaDon], [IdSanPhamCt]) VALUES (35, 1, CAST(150000 AS Decimal(20, 0)), 23, 2)
INSERT [dbo].[HoaDonChiTiet] ([Id], [SoLuong], [ThanhTien], [IdHoaDon], [IdSanPhamCt]) VALUES (36, 1, CAST(200000 AS Decimal(20, 0)), 24, 7)
INSERT [dbo].[HoaDonChiTiet] ([Id], [SoLuong], [ThanhTien], [IdHoaDon], [IdSanPhamCt]) VALUES (37, 12, CAST(1800000 AS Decimal(20, 0)), 24, 3)
INSERT [dbo].[HoaDonChiTiet] ([Id], [SoLuong], [ThanhTien], [IdHoaDon], [IdSanPhamCt]) VALUES (38, 11, CAST(1650000 AS Decimal(20, 0)), 25, 4)
INSERT [dbo].[HoaDonChiTiet] ([Id], [SoLuong], [ThanhTien], [IdHoaDon], [IdSanPhamCt]) VALUES (39, 12, CAST(1800000 AS Decimal(20, 0)), 25, 2)
INSERT [dbo].[HoaDonChiTiet] ([Id], [SoLuong], [ThanhTien], [IdHoaDon], [IdSanPhamCt]) VALUES (40, 12, CAST(2400000 AS Decimal(20, 0)), 26, 7)
SET IDENTITY_INSERT [dbo].[HoaDonChiTiet] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [Hoten], [SoDT], [Email], [DiaChi], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [deleted]) VALUES (1, N'KH000', N'Khách Hàng Lẻ', NULL, NULL, NULL, 1, CAST(N'2023-12-12' AS Date), N'NV002', CAST(N'2023-12-12' AS Date), N'NV002', 0)
INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [Hoten], [SoDT], [Email], [DiaChi], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [deleted]) VALUES (2, N'KH001', N'Phạm Minh Thành', N'0123456789', N'dangtPH43117@gmail.com', N'456 Kim Mã', 1, CAST(N'2023-12-13' AS Date), N'NV002', CAST(N'2023-12-13' AS Date), N'NV002', 0)
INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [Hoten], [SoDT], [Email], [DiaChi], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [deleted]) VALUES (3, N'KH002', N'Nguyễn Quốc Vượng', N'0987654123', N'chinhtt124@gmail.com', N'456 Kim Mã', 1, CAST(N'2023-12-13' AS Date), N'NV002', CAST(N'2023-12-13' AS Date), N'NV002', 0)
INSERT [dbo].[KhachHang] ([Id], [MaKhachHang], [Hoten], [SoDT], [Email], [DiaChi], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [deleted]) VALUES (4, N'KH003', N'Đỗ Trung Đăng', N'0123456788', N'dangtPH143117@gmail.com', N'456 Kim Mã', 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KichThuoc] ON 

INSERT [dbo].[KichThuoc] ([Id], [MaKichThuoc], [TenKichThuoc], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (1, N'KT001', N'S', N'Mô t?', 1, CAST(N'2023-11-15' AS Date), N'NV002', CAST(N'2023-11-15' AS Date), N'NV002', 0)
INSERT [dbo].[KichThuoc] ([Id], [MaKichThuoc], [TenKichThuoc], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (2, N'KT002', N'M', N'Mô t?', 1, CAST(N'2023-11-15' AS Date), N'NV002', CAST(N'2023-11-15' AS Date), N'NV002', 0)
INSERT [dbo].[KichThuoc] ([Id], [MaKichThuoc], [TenKichThuoc], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (3, N'KT003', N'L', N'Mô t?', 1, CAST(N'2023-11-15' AS Date), N'NV002', CAST(N'2023-11-15' AS Date), N'NV002', 0)
INSERT [dbo].[KichThuoc] ([Id], [MaKichThuoc], [TenKichThuoc], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (4, N'KT004', N'XL', N'Mô t?', 1, CAST(N'2023-11-15' AS Date), N'NV002', CAST(N'2023-11-15' AS Date), N'NV002', 0)
INSERT [dbo].[KichThuoc] ([Id], [MaKichThuoc], [TenKichThuoc], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (5, N'KT005', N'XXL', N'Mô t?', 1, CAST(N'2023-11-15' AS Date), N'NV002', CAST(N'2023-11-15' AS Date), N'NV002', 0)
SET IDENTITY_INSERT [dbo].[KichThuoc] OFF
GO
SET IDENTITY_INSERT [dbo].[MauSac] ON 

INSERT [dbo].[MauSac] ([Id], [MaMauSac], [TenMauSac], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (1, N'MS001', N'Ðen', N'Mô t?', 1, CAST(N'2023-11-15' AS Date), N'NV002', CAST(N'2023-11-15' AS Date), N'NV002', 0)
INSERT [dbo].[MauSac] ([Id], [MaMauSac], [TenMauSac], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (2, N'MS002', N'Xanh', N'Mô t?', 1, CAST(N'2023-11-15' AS Date), N'NV002', CAST(N'2023-11-15' AS Date), N'NV002', 0)
INSERT [dbo].[MauSac] ([Id], [MaMauSac], [TenMauSac], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (3, N'MS006803', N'Hồng', NULL, 1, CAST(N'2023-11-24' AS Date), N'NV002', CAST(N'2023-11-24' AS Date), N'NV002', 0)
INSERT [dbo].[MauSac] ([Id], [MaMauSac], [TenMauSac], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (4, N'MS001', N'Vàng', N'Mô t?', 1, CAST(N'2023-11-15' AS Date), N'NV002', CAST(N'2023-11-15' AS Date), N'NV002', 0)
INSERT [dbo].[MauSac] ([Id], [MaMauSac], [TenMauSac], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (5, N'MS002', N'Đỏ', N'Mô t?', 1, CAST(N'2023-11-15' AS Date), N'NV002', CAST(N'2023-11-15' AS Date), N'NV002', 0)
INSERT [dbo].[MauSac] ([Id], [MaMauSac], [TenMauSac], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (6, N'MS006803', N'Tím', NULL, 1, CAST(N'2023-11-24' AS Date), N'NV002', CAST(N'2023-11-24' AS Date), N'NV002', 0)
SET IDENTITY_INSERT [dbo].[MauSac] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanHieu] ON 

INSERT [dbo].[NhanHieu] ([Id], [MaNhanHieu], [TenNhanHieu], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (1, N'NH001', N'Adidas', N'Mô t?', 1, CAST(N'2023-11-15' AS Date), N'NV002', CAST(N'2023-11-15' AS Date), N'NV002', 0)
INSERT [dbo].[NhanHieu] ([Id], [MaNhanHieu], [TenNhanHieu], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (2, N'NH002', N'Nike', N'Mô t?', 1, CAST(N'2023-11-15' AS Date), N'NV002', CAST(N'2023-11-15' AS Date), N'NV002', 0)
INSERT [dbo].[NhanHieu] ([Id], [MaNhanHieu], [TenNhanHieu], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (3, N'XX004015', N'H&M', NULL, 1, CAST(N'2023-11-23' AS Date), N'NV002', CAST(N'2023-11-23' AS Date), N'NV002', 0)
INSERT [dbo].[NhanHieu] ([Id], [MaNhanHieu], [TenNhanHieu], [MoTa], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (4, N'NH018439', N'Uniqlo', NULL, 1, CAST(N'2023-11-23' AS Date), N'NV002', CAST(N'2023-11-23' AS Date), N'NV002', 0)
SET IDENTITY_INSERT [dbo].[NhanHieu] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([Id], [MaNhanVien], [MatKhau], [ChucVu], [Hoten], [GioiTinh], [CCCD], [SoDT], [Email], [DiaChi], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [deleted]) VALUES (1, N'NV001', N'password123', 0, N'Phạm Minh Thành', 1, N'220000000000', N'0987654321', N'thanh@gmail.com', N'789 Ðu?ng LMN', 1, CAST(N'2023-11-15' AS Date), N'NV002', CAST(N'2023-11-15' AS Date), N'NV002', 0)
INSERT [dbo].[NhanVien] ([Id], [MaNhanVien], [MatKhau], [ChucVu], [Hoten], [GioiTinh], [CCCD], [SoDT], [Email], [DiaChi], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [deleted]) VALUES (2, N'NV002', N'pass456', 0, N'Đỗ Trung Đăng', 0, N'001204041482', N'09876554321', N'dotrungdan@gmail.com', N'101 Ðu?ng UVW', 1, CAST(N'2023-11-15' AS Date), N'NV002', CAST(N'2023-11-15' AS Date), N'NV002', 0)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([Id], [MaSanPham], [TenSanPham], [CreateAt], [CreateBY], [trangthai], [deleted]) VALUES (1, N'SP077795', N'Áo phông cổ tròn', NULL, N'NV002', 1, 0)
INSERT [dbo].[SANPHAM] ([Id], [MaSanPham], [TenSanPham], [CreateAt], [CreateBY], [trangthai], [deleted]) VALUES (2, N'SP001131', N'Áo phông Compression', NULL, N'NV002', 1, 0)
INSERT [dbo].[SANPHAM] ([Id], [MaSanPham], [TenSanPham], [CreateAt], [CreateBY], [trangthai], [deleted]) VALUES (3, N'SP084722', N'Áo phông Baseball', NULL, N'NV002', 1, 0)
INSERT [dbo].[SANPHAM] ([Id], [MaSanPham], [TenSanPham], [CreateAt], [CreateBY], [trangthai], [deleted]) VALUES (4, N'SP010534', N'Áo phông Crop Top', NULL, N'NV002', 1, 0)
INSERT [dbo].[SANPHAM] ([Id], [MaSanPham], [TenSanPham], [CreateAt], [CreateBY], [trangthai], [deleted]) VALUES (5, N'SP075427', N'Áo phông Graphic', NULL, N'NV002', 1, 0)
INSERT [dbo].[SANPHAM] ([Id], [MaSanPham], [TenSanPham], [CreateAt], [CreateBY], [trangthai], [deleted]) VALUES (6, N'SP066904', N'Áo phông Oversized', NULL, N'NV002', 1, 0)
INSERT [dbo].[SANPHAM] ([Id], [MaSanPham], [TenSanPham], [CreateAt], [CreateBY], [trangthai], [deleted]) VALUES (7, N'SP075261', N'Áo phông dài tay', NULL, N'NV002', 1, 0)
INSERT [dbo].[SANPHAM] ([Id], [MaSanPham], [TenSanPham], [CreateAt], [CreateBY], [trangthai], [deleted]) VALUES (8, N'SP014456', N'Áo phông Henley', NULL, N'NV002', 1, 0)
INSERT [dbo].[SANPHAM] ([Id], [MaSanPham], [TenSanPham], [CreateAt], [CreateBY], [trangthai], [deleted]) VALUES (9, N'SP070174', N'Áo phông Raglan', NULL, N'NV002', 1, 0)
INSERT [dbo].[SANPHAM] ([Id], [MaSanPham], [TenSanPham], [CreateAt], [CreateBY], [trangthai], [deleted]) VALUES (10, N'SP041032', N'Áo phông cổ V', NULL, N'NV002', 1, 0)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
GO
SET IDENTITY_INSERT [dbo].[SANPHAMCHITIET] ON 

INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (1, N'SPCT033325', N'Áo H&M Basic ngắn tay', 57, CAST(150000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 4, 1, 1, 1, 1, 6, 3, 3)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (2, N'SPCT055087', N'Áo H&M Basic ngắn tay', 88, CAST(150000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 4, 1, 1, 2, 1, 6, 3, 3)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (3, N'SPCT092293', N'Áo H&M Basic ngắn tay', 108, CAST(150000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 4, 1, 1, 3, 1, 6, 3, 3)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (4, N'SPCT030267', N'Áo H&M Basic ngắn tay', 89, CAST(150000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 4, 1, 1, 4, 1, 6, 3, 3)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (5, N'SPCT030175', N'Áo H&M Basic ngắn tay', 120, CAST(150000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 2, 1, 3, 5, 1, 5, 1, 4)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (6, N'SPCT064848', N'Áo Adidas Trefoil ngắn', 67, CAST(200000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 1, 1, 1, 4, 1, 4, 1, 3)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (7, N'SPCT037499', N'Áo Adidas Trefoil ngắn', 63, CAST(200000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 1, 1, 5, 2, 1, 4, 1, 3)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (8, N'SPCT038902', N'Áo Adidas Trefoil ngắn', 100, CAST(200000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 1, 1, 2, 5, 1, 6, 1, 3)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (9, N'SPCT096345', N'Áo Calvin Klein cổ V', 100, CAST(200000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 2, 2, 4, 5, 2, 4, 2, 3)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (10, N'SPCT015357', N'Áo Calvin Klein cổ V', 100, CAST(200000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 2, 2, 2, 1, 2, 4, 2, 3)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (11, N'SPCT068230', N'Áo Calvin Klein cổ V', 100, CAST(200000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 3, 2, 6, 1, 3, 4, 1, 4)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (12, N'SPCT017663', N'Áo Baseball Easton M5', 130, CAST(250000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 5, 3, 1, 5, 3, 6, 4, 2)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (13, N'SPCT094342', N'Áo Baseball Easton M5', 130, CAST(250000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 5, 3, 2, 3, 3, 6, 4, 2)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (14, N'SPCT068181', N'Áo Baseball Easton M5', 130, CAST(250000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 1, 3, 4, 2, 4, 4, 4, 2)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (15, N'SPCT068432', N'Áo Crop Top Forever 21', 130, CAST(300000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 2, 4, 2, 2, 4, 4, 3, 1)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (16, N'SPCT057014', N'Áo Crop Top Forever 21', 130, CAST(300000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 2, 4, 3, 5, 4, 4, 3, 1)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (17, N'SPCT023610', N'Áo Crop Top Forever 21', 130, CAST(300000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 1, 4, 3, 5, 5, 6, 1, 5)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (18, N'SPCT077407', N'Áo Graphic Threadless', 200, CAST(150000 AS Decimal(20, 0)), 0, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 6, 5, 3, 2, 5, 1, 4, 4)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (19, N'SPCT089982', N'Áo Graphic Threadless', 200, CAST(250000 AS Decimal(20, 0)), 0, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 2, 5, 5, 4, 1, 5, 3, 3)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (20, N'SPCT001280', N'Áo Graphic Threadless', 200, CAST(250000 AS Decimal(20, 0)), 0, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 2, 5, 3, 5, 4, 6, 1, 5)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (21, N'SPCT022801', N'Áo phông Oversized:', 200, CAST(150000 AS Decimal(20, 0)), 0, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 3, 6, 2, 3, 2, 4, 3, 3)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (22, N'SPCT085857', N'Áo phông Oversized:', 200, CAST(150000 AS Decimal(20, 0)), 0, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 1, 6, 2, 5, 2, 5, 1, 5)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (23, N'SPCT034143', N'Áo phông Oversized:', 200, CAST(100000 AS Decimal(20, 0)), 0, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 5, 6, 4, 1, 3, 4, 4, 2)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (24, N'SPCT033905', N'Áo Gap Essential dài tay', 200, CAST(350000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 1, 7, 2, 5, 2, 5, 1, 5)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (25, N'SPCT036481', N'Áo Gap Essential dài tay', 200, CAST(350000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 4, 7, 5, 1, 2, 5, 2, 4)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (26, N'SPCT080020', N'Áo Gap Essential dài tay', 200, CAST(350000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 4, 7, 6, 4, 2, 1, 4, 3)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (27, N'SPCT071252', N'Áo Henley Amazon Essentials', 200, CAST(350000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 1, 8, 2, 5, 4, 1, 2, 3)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (28, N'SPCT096198', N'Áo Henley Amazon Essentials', 200, CAST(350000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 1, 8, 4, 2, 4, 5, 2, 3)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (29, N'SPCT023398', N'Áo Henley Amazon Essentials', 200, CAST(350000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 1, 8, 4, 3, 4, 4, 2, 2)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (30, N'SPCT003604', N'Áo Henley Amazon Essentials', 200, CAST(350000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 3, 8, 4, 1, 5, 4, 2, 1)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (31, N'SPCT029818', N'Áo Henley Raglan Alternative', 200, CAST(350000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 1, 9, 2, 5, 4, 1, 2, 3)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (32, N'SPCT061858', N'Áo Henley Raglan Alternative', 200, CAST(350000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 2, 9, 5, 1, 3, 5, 3, 5)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (33, N'SPCT036710', N'Áo Henley Raglan Alternative', 199, CAST(350000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 5, 9, 5, 3, 4, 4, 2, 5)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (34, N'SPCT008499', N'Áo Calvin Klein cổ V', 199, CAST(350000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 5, 10, 5, 3, 4, 4, 2, 5)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (35, N'SPCT080769', N'Áo Calvin Klein cổ V', 199, CAST(350000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 3, 10, 3, 3, 2, 5, 3, 5)
INSERT [dbo].[SANPHAMCHITIET] ([Id], [MaSanPhamCT], [TenSanPhamCT], [SoLuongTon], [GiaBan], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted], [IdXuatXu], [IdSanPham], [IdMauSac], [IdKichThuoc], [IdCoAo], [IdDangAo], [IdNhanHieu], [IdChatLieu]) VALUES (36, N'SPCT036511', N'Áo Calvin Klein cổ V', 199, CAST(300000 AS Decimal(20, 0)), 1, CAST(N'2023-12-14' AS Date), N'NV002', CAST(N'2023-12-14' AS Date), N'NV002', 0, 3, 10, 4, 5, 3, 1, 4, 5)
SET IDENTITY_INSERT [dbo].[SANPHAMCHITIET] OFF
GO
SET IDENTITY_INSERT [dbo].[XuatXu] ON 

INSERT [dbo].[XuatXu] ([Id], [MaXuatXu], [NoiXuatXu], [Mota], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (1, N'XX001', N'Việt Nam', N'Xu?t x? Vi?t Nam', 1, CAST(N'2023-11-15' AS Date), N'Admin', CAST(N'2023-11-15' AS Date), N'Admin', 0)
INSERT [dbo].[XuatXu] ([Id], [MaXuatXu], [NoiXuatXu], [Mota], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (2, N'XX002', N'Trung Quốc', N'Xu?t x? Trung Qu?c', 1, CAST(N'2023-11-15' AS Date), N'Admin', CAST(N'2023-11-15' AS Date), N'Admin', 0)
INSERT [dbo].[XuatXu] ([Id], [MaXuatXu], [NoiXuatXu], [Mota], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (3, N'XX075166', N'Mỹ', NULL, 1, CAST(N'2023-12-12' AS Date), N'NV002', CAST(N'2023-12-12' AS Date), N'NV002', 0)
INSERT [dbo].[XuatXu] ([Id], [MaXuatXu], [NoiXuatXu], [Mota], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (4, N'XX044932', N'Hàn Quốc', NULL, 0, CAST(N'2023-12-12' AS Date), N'NV002', CAST(N'2023-12-12' AS Date), N'NV002', 1)
INSERT [dbo].[XuatXu] ([Id], [MaXuatXu], [NoiXuatXu], [Mota], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (5, N'XX013827', N'Thái Lan', NULL, 0, CAST(N'2023-12-13' AS Date), N'NV002', CAST(N'2023-12-13' AS Date), N'NV002', 0)
INSERT [dbo].[XuatXu] ([Id], [MaXuatXu], [NoiXuatXu], [Mota], [TrangThai], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [Deleted]) VALUES (6, N'XX060581', N'Lào', NULL, 1, CAST(N'2023-12-13' AS Date), N'NV002', CAST(N'2023-12-13' AS Date), N'NV002', 0)
SET IDENTITY_INSERT [dbo].[XuatXu] OFF
GO
ALTER TABLE [dbo].[ChatLieu] ADD  DEFAULT (getdate()) FOR [CreateAt]
GO
ALTER TABLE [dbo].[ChatLieu] ADD  DEFAULT (getdate()) FOR [UpdateAt]
GO
ALTER TABLE [dbo].[ChatLieu] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[CoAo] ADD  DEFAULT (getdate()) FOR [CreateAt]
GO
ALTER TABLE [dbo].[CoAo] ADD  DEFAULT (getdate()) FOR [UpdateAt]
GO
ALTER TABLE [dbo].[CoAo] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[DangAo] ADD  DEFAULT (getdate()) FOR [CreateAt]
GO
ALTER TABLE [dbo].[DangAo] ADD  DEFAULT (getdate()) FOR [UpdateAt]
GO
ALTER TABLE [dbo].[DangAo] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[HinhThucThanhToan] ADD  DEFAULT (getdate()) FOR [CreateAt]
GO
ALTER TABLE [dbo].[HinhThucThanhToan] ADD  DEFAULT (getdate()) FOR [UpdateAt]
GO
ALTER TABLE [dbo].[HinhThucThanhToan] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT ((0)) FOR [TongTien]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [TenNguoiNhan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [Sdt]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT ((0)) FOR [PhiShip]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (getdate()) FOR [CreateAt]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (getdate()) FOR [UpdateAt]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[HoaDonChiTiet] ADD  DEFAULT ((0)) FOR [ThanhTien]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [Hoten]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [SoDT]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [Email]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (getdate()) FOR [CreateAt]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (getdate()) FOR [UpdateAt]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[KichThuoc] ADD  DEFAULT (getdate()) FOR [CreateAt]
GO
ALTER TABLE [dbo].[KichThuoc] ADD  DEFAULT (getdate()) FOR [UpdateAt]
GO
ALTER TABLE [dbo].[KichThuoc] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[MauSac] ADD  DEFAULT (getdate()) FOR [CreateAt]
GO
ALTER TABLE [dbo].[MauSac] ADD  DEFAULT (getdate()) FOR [UpdateAt]
GO
ALTER TABLE [dbo].[MauSac] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[NhanHieu] ADD  DEFAULT (getdate()) FOR [CreateAt]
GO
ALTER TABLE [dbo].[NhanHieu] ADD  DEFAULT (getdate()) FOR [UpdateAt]
GO
ALTER TABLE [dbo].[NhanHieu] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [Hoten]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [CCCD]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [SoDT]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [Email]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (getdate()) FOR [CreateAt]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (getdate()) FOR [UpdateAt]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[SANPHAM] ADD  DEFAULT (getdate()) FOR [CreateAt]
GO
ALTER TABLE [dbo].[SANPHAM] ADD  DEFAULT ((0)) FOR [trangthai]
GO
ALTER TABLE [dbo].[SANPHAM] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[SANPHAMCHITIET] ADD  DEFAULT ((0)) FOR [GiaBan]
GO
ALTER TABLE [dbo].[SANPHAMCHITIET] ADD  DEFAULT (getdate()) FOR [CreateAt]
GO
ALTER TABLE [dbo].[SANPHAMCHITIET] ADD  DEFAULT (getdate()) FOR [UpdateAt]
GO
ALTER TABLE [dbo].[SANPHAMCHITIET] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[XuatXu] ADD  DEFAULT (getdate()) FOR [CreateAt]
GO
ALTER TABLE [dbo].[XuatXu] ADD  DEFAULT (getdate()) FOR [UpdateAt]
GO
ALTER TABLE [dbo].[XuatXu] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([IdHinhThucThanhToan])
REFERENCES [dbo].[HinhThucThanhToan] ([Id])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([IdKhachHang])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([IdNhanVien])
REFERENCES [dbo].[NhanVien] ([Id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD FOREIGN KEY([IdHoaDon])
REFERENCES [dbo].[HoaDon] ([Id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD FOREIGN KEY([IdSanPhamCt])
REFERENCES [dbo].[SANPHAMCHITIET] ([Id])
GO
ALTER TABLE [dbo].[SANPHAMCHITIET]  WITH CHECK ADD FOREIGN KEY([IdChatLieu])
REFERENCES [dbo].[ChatLieu] ([Id])
GO
ALTER TABLE [dbo].[SANPHAMCHITIET]  WITH CHECK ADD FOREIGN KEY([IdCoAo])
REFERENCES [dbo].[CoAo] ([Id])
GO
ALTER TABLE [dbo].[SANPHAMCHITIET]  WITH CHECK ADD FOREIGN KEY([IdDangAo])
REFERENCES [dbo].[DangAo] ([Id])
GO
ALTER TABLE [dbo].[SANPHAMCHITIET]  WITH CHECK ADD FOREIGN KEY([IdKichThuoc])
REFERENCES [dbo].[KichThuoc] ([Id])
GO
ALTER TABLE [dbo].[SANPHAMCHITIET]  WITH CHECK ADD FOREIGN KEY([IdMauSac])
REFERENCES [dbo].[MauSac] ([Id])
GO
ALTER TABLE [dbo].[SANPHAMCHITIET]  WITH CHECK ADD FOREIGN KEY([IdNhanHieu])
REFERENCES [dbo].[NhanHieu] ([Id])
GO
ALTER TABLE [dbo].[SANPHAMCHITIET]  WITH CHECK ADD FOREIGN KEY([IdSanPham])
REFERENCES [dbo].[SANPHAM] ([Id])
GO
ALTER TABLE [dbo].[SANPHAMCHITIET]  WITH CHECK ADD FOREIGN KEY([IdXuatXu])
REFERENCES [dbo].[XuatXu] ([Id])
GO
/****** Object:  StoredProcedure [dbo].[FindSPCT]    Script Date: 12/14/2023 7:18:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[FindSPCT]
as
begin
	Select SANPHAM.TenSanPham
	,SANPHAMCHITIET.TenSanPhamCT
	,MauSac.TenMauSac
	from SANPHAMCHITIET
	join sanpham on SANPHAM.Id=SANPHAMCHITIET.IdSanPham
	join MauSac on MauSac.id=SANPHAMCHITIET.IdMauSac
	where SanPham.TenSanPham like N'S%' or SanPhamChiTiet.TenSanPhamCT like N'A%' or MauSac.TenMauSac like N'Đ%'
	end;
GO
/****** Object:  StoredProcedure [dbo].[GetCTSP]    Script Date: 12/14/2023 7:18:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[GetCTSP]
as
begin
	Select SANPHAM.TenSanPham
	,SANPHAMCHITIET.MaSanPhamCT
	,SANPHAMCHITIET.TenSanPhamCT
	,SANPHAMCHITIET.SoLuongTon
	,XuatXu.NoiXuatXu
	,MauSac.TenMauSac
	,NhanHieu.TenNhanHieu
	,KichThuoc.TenKichThuoc
	,CoAo.TenCoAo
	,DangAo.TenDangAo
	,ChatLieu.TenChatLieu
	,SANPHAMCHITIET.GiaBan
	,SANPHAMCHITIET.TrangThai
	from SANPHAMCHITIET
	join sanpham on SANPHAM.Id=SANPHAMCHITIET.IdSanPham
	join XuatXu on XuatXu.id= SANPHAMCHITIET.IdXuatXu
	join MauSac on MauSac.id=SANPHAMCHITIET.IdMauSac
	join  NhanHieu on NhanHieu.id= SANPHAMCHITIET.IdNhanHieu
	join KichThuoc on KichThuoc.id=SANPHAMCHITIET.IdKichThuoc
	join CoAo on CoAo.id=SANPHAMCHITIET.IdCoAo
	join DangAo on DangAo.id= SANPHAMCHITIET.IdDangAo
	join ChatLieu on ChatLieu.id= SANPHAMCHITIET.IdChatLieu
	where SANPHAM.trangthai=1
	order by SANPHAMCHITIET.id desc
	end;

GO
