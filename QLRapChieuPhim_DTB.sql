Create database QLRapChieuPhim

use QLRapChieuPhim

create table [dbo].[tbNhanVien] (
 [MaNV] [varchar](10) not null,
 [TenNV] [nvarchar](20) null,
 [GioiTinh] [bit] null,
 [NgaySinh] [datetime] null,
 [SDT] [varchar](10) null,
 [Luong] [money] null,
 [CaLam] [time] null,
 CONSTRAINT [PK_tbNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

)

create table [dbo].[tbTaiKhoan] (
[TenDN] [varchar](50) not null,
[MatKhau] [varchar](50) not null,
[MaNV] [varchar](10)  null,
CONSTRAINT [PK_tbTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TenDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],

FOREIGN KEY([MaNV]) REFERENCES [dbo].[tbNhanVien] ([MaNV])

)

create table [dbo].[tbVe] (
 [MaVe] [varchar](10) not null,
 [MaKH] [varchar](10) null,
 [MaLoaiVe] [varchar](10) null,
 [MaNV] [varchar](10) null,
 [SoGhe] [varchar](5) null,
 [NgayBanVe] [datetime] null,
 
 CONSTRAINT [PK_tbVe] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],

FOREIGN KEY([MaNV]) REFERENCES [dbo].[tbNhanVien] ([MaNV]),
FOREIGN KEY([MaKH]) REFERENCES [dbo].[tbKhachHang] ([TenTKKH]),

FOREIGN KEY([MaLoaiVe]) REFERENCES [dbo].[tbLoaiVe] ([MaLoaiVe]),

)
create table [dbo].[tbLoaiVe] (
 [MaLoaiVe] [varchar](10) not null,
 [TenLoaiVe] [nvarchar](10) null,
 [DonGia] [money] null,
 
 
 CONSTRAINT [PK_tbLoaiVe] PRIMARY KEY CLUSTERED 
(
	[MaLoaiVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

)
create table [dbo].[tbChiTietVe] (
 [MaVe] [varchar](10) not null,
 [MaPhim] [varchar](10) null,
 [MaXuatChieu] [varchar](10) null,
 [MaPhong] [varchar](10) null,
 
 
 
FOREIGN KEY([MaVe]) REFERENCES [dbo].[tbVe] ([MaVe]),
FOREIGN KEY([MaPhim]) REFERENCES [dbo].[tbPhim] ([MaPhim]),

FOREIGN KEY([MaXuatChieu]) REFERENCES [dbo].[tbXuatChieu] ([MaXuatChieu]),

FOREIGN KEY([MaPhong]) REFERENCES [dbo].[tbPhongChieu] ([MaPhong]),


)

create table [dbo].[tbPhongChieu] (
 [MaPhong] [varchar](10) not null,
 [TenPhong] [nvarchar](5) null,
 [Trangthai] [nvarchar](10) null,
 
 
 CONSTRAINT [PK_tbPhongChieu] PRIMARY KEY CLUSTERED 
(
	[Maphong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

)

create table [dbo].[tbPhim] (
 [MaPhim] [varchar](10) not null,
 [TenPhim] [nvarchar](50) null,
 [MaTheLoai] [varchar](10) null,
 [TenDD] [nvarchar](50) null,
 [TenDV] [nvarchar](50) null,
 [ThoiLuongPhim] [nvarchar](10) null,
 [NamSX] [datetime] null,
 
 CONSTRAINT [PK_tbPhim] PRIMARY KEY CLUSTERED 
(
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
FOREIGN KEY([MaTheLoai]) REFERENCES [dbo].[tbTheLoaiPhim] ([MaTheLoai]),

)

create table [dbo].[tbTheLoaiPhim] (
 [MaTheLoai] [varchar](10) not null,
 [LoaiPhim] [nvarchar](5) null,
 [DinhDang] [nvarchar](10) null,
 
 
 CONSTRAINT [PK_tbTheLoaiPhim] PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

)

create table [dbo].[tbXuatChieu] (
 [MaXuatChieu] [varchar](10) not null,
 [NgayChieu] [datetime] null,
 [CaChieu] [varchar](10) null,
 [TenPhongChieu] [nvarchar](10) null,
 [TienVe] [money] null,
 [MaPhim] [varchar](10) null,
 
 CONSTRAINT [PK_tbXuatChieu] PRIMARY KEY CLUSTERED 
(
	[MaXuatChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
FOREIGN KEY([MaPhim]) REFERENCES [dbo].[tbPhim] ([MaPhim]),

)

create table [dbo].[tbKhachHang] (
 [TenTKKH] [varchar](10) not null,
 [TenKH] [nvarchar](20) null,
 [GioiTinh] [bit] null,
 [NTNS] [datetime] null,
 [SDT] [varchar](10) null,
 CONSTRAINT [PK_tbKhachHang] PRIMARY KEY CLUSTERED 
(
	[TenTKKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

)
create table [dbo].[tbSanPham] (
 [MaSP] [varchar](10) not null,
 [TenSP] [nvarchar](20) null,
 [Loai] [nvarchar](10) null,
 [NgayNhap] [datetime] null,
 [Soluong] [varchar](10) null,
 [DonGiaBan] [money]
 CONSTRAINT [PK_tbSanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

)

alter table tbPhim drop column QuocGia

alter table tbPhim add MoTa nvarchar(max)

alter table tbPhim add QuocGia nvarchar(20)

alter table tbPhim add Poster varchar(50)


alter table tbTheLoaiPhim drop column LoaiPhim

alter table tbTheLoaiPhim add TheLoai nvarchar(50)

