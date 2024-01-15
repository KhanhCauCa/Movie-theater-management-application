Create database QLRapChieuPhim2023

use QLRapChieuPhim2023

GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

go
create table [dbo].[tbPhim] (
 [MaPhim] [varchar](10) not null,
 [TenPhim] [nvarchar](50) null,
 [MaTheLoai] [varchar](10) null,
 [TenDD] [nvarchar](50) null,
 [TenDV] [nvarchar](50) null,
 [ThoiLuongPhim] [nvarchar](10) null,
 [NamSX] [datetime] null,
 [QuocGia] [nvarchar](20) null,
 [MoTa] [nvarchar](max) null,
 [Anh] [nvarchar](50) null,
 
 CONSTRAINT [PK_tbPhim] PRIMARY KEY CLUSTERED 
(
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],

)
go

go
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
go
go
create table [dbo].[tbTaiKhoan] (
[TenDN] [varchar](50) not null,
[MatKhau] [varchar](50) not null,
[MaNV] [varchar](10)  null,
CONSTRAINT [PK_tbTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TenDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],


)
go
go
create table [dbo].[tbVe] (
 [MaVe] [varchar](10) not null,
 [MaKH] [varchar](10) null,
 [MaLoaiVe] [varchar](10) null,
 [MaNV] [varchar](10) null,
 [NgayBanVe] [datetime] null,
 [SoGhe] [nvarchar](5) null,
 
 CONSTRAINT [PK_tbVe] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],


)
go
go
create table [dbo].[tbLoaiVe] (
 [MaLoaiVe] [varchar](10) not null,
 [TenLoaiVe] [nvarchar](10) null,
 [DonGia] [money] null,
 
 
 CONSTRAINT [PK_tbLoaiVe] PRIMARY KEY CLUSTERED 
(
	[MaLoaiVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

)
go
go
create table [dbo].[tbChiTietVe] (
 [MaVe] [varchar](10) not null,
 [MaPhim] [varchar](10) null,
 [MaXuatChieu] [varchar](10) null,
 [MaPhong] [varchar](10) null,
 

)
go
create table [dbo].[tbPhongChieu] (
 [MaPhong] [varchar](10) not null,
 [TenPhong] [nvarchar](5) null,
 [Trangthai] [nvarchar](10) null,
 
 
 CONSTRAINT [PK_tbPhongChieu] PRIMARY KEY CLUSTERED 
(
	[Maphong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

)

go
go
create table [dbo].[tbTheLoaiPhim] (
 [MaTheLoai] [varchar](10) not null,
 [LoaiPhim] [nvarchar](20) null,
 [DinhDang] [nvarchar](10) null,
 
 
 CONSTRAINT [PK_tbTheLoaiPhim] PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

)
go
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

)
go
go
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
go
go
create table [dbo].[tbSanPham] (
 [MaSP] [varchar](10) not null,
 [TenSP] [nvarchar](20) null,
 [Loai] [nvarchar](10) null,
 [NgayNhap] [datetime] null,
 [Soluong] [int] null,
 [DonGiaBan] [money]
 CONSTRAINT [PK_tbSanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

)
create table [dbo].[tbGhe]
([SoGhe] [nvarchar] (5) not null,
 [TrangThai] [bit] null,
 [MaPhong] [varchar] (10) null,
  CONSTRAINT [PK_tbGhe] PRIMARY KEY CLUSTERED 
(
	[SoGhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]

)
go
ALTER TABLE [dbo].[tbTaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_tbTaiKhoan_tbNhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tbNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tbTaiKhoan] CHECK CONSTRAINT [FK_tbTaiKhoan_tbNhanVien]
GO

ALTER TABLE [dbo].[tbVe]  WITH CHECK ADD  CONSTRAINT [FK_tbVe_tbNhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tbNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tbVe] CHECK CONSTRAINT [FK_tbVe_tbNhanVien]
GO

ALTER TABLE [dbo].[tbVe]  WITH CHECK ADD  CONSTRAINT [FK_tbVe_tbKhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[tbKhachHang] ([TenTKKH])
GO
ALTER TABLE [dbo].[tbVe] CHECK CONSTRAINT [FK_tbVe_tbKhachHang]
GO

/*ALTER TABLE [dbo].[tbVe]  WITH CHECK ADD  CONSTRAINT [FK_tbVe_tbLoaiVe] FOREIGN KEY([MaLoaiVe]) 
REFERENCES [dbo].[tbLoaiVe] ([MaLoaiVe])
GO
alter table [dbo].[tbVe] drop constraint [FK_tbVe_tbLoaiVe]
drop table tbLoaiVe


alter table tbve drop column MaLoaiVe 
ALTER TABLE [dbo].[tbVe] CHECK CONSTRAINT [FK_tbVe_tbLoaiVe]
GO 

ALTER TABLE [dbo].[tbVe]  WITH CHECK ADD  CONSTRAINT [FK_tbVe_tbGhe] FOREIGN KEY([SoGhe]) 
REFERENCES [dbo].[tbGhe] ([SoGhe])
GO
ALTER TABLE [dbo].[tbGhe] CHECK CONSTRAINT [FK_tbVe_tbGhe] 
GO
alter table [dbo].[tbVe] drop constraint [FK_tbVe_tbGhe]
alter table tbve drop column SoGhe */

ALTER TABLE [dbo].[tbGhe]  WITH CHECK ADD  CONSTRAINT [FK_tbGhe_tbPhongChieu] FOREIGN KEY([MaPhong]) 
REFERENCES [dbo].[tbPhongChieu] ([MaPhong])
GO
ALTER TABLE [dbo].[tbGhe] CHECK CONSTRAINT [FK_tbGhe_tbPhongChieu]
GO

alter table [dbo].[tbGhe] drop constraint [PK_tbGhe]

alter table tbGhe drop column MaPhong
drop table tbGhe


ALTER TABLE [dbo].[tbChiTietVe]  WITH CHECK ADD  CONSTRAINT [FK_tbChiTietVe_tbVe] FOREIGN KEY([MaVe]) 
REFERENCES [dbo].[tbVe] ([MaVe])
GO
ALTER TABLE [dbo].[tbChiTietVe] CHECK CONSTRAINT [FK_tbChiTietVe_tbVe]

/*ALTER TABLE [dbo].[tbChiTietVe]  WITH CHECK ADD  CONSTRAINT [FK_tbChiTietVe_tbPhim] FOREIGN KEY([MaPhim]) 
REFERENCES [dbo].[tbPhim] ([MaPhim])
GO
ALTER TABLE [dbo].[tbChiTietVe] CHECK CONSTRAINT [[FK_tbChiTietVe_tbPhim]
GO
alter table [dbo].[tbChiTietVe] drop constraint [FK_tbChiTietVe_tbPhim]
alter table [dbo].[tbChiTietVe] drop column [MaPhim] */

ALTER TABLE [dbo].[tbVe]  WITH CHECK ADD  CONSTRAINT [FK_tbVe_tbXuatChieu] FOREIGN KEY([MaXuatChieu]) 
REFERENCES [dbo].[tbXuatChieu] ([MaXuatChieu])
GO
ALTER TABLE [dbo].[tbVe] CHECK CONSTRAINT [FK_tbVe_tbXuatChieu]
GO



/*ALTER TABLE [dbo].[tbXuatChieu]  WITH CHECK ADD  CONSTRAINT [FK_tbXuatChieu_tbPhong] FOREIGN KEY([MaPhong]) 
REFERENCES [dbo].[tbPhongChieu] ([MaPhong])
ALTER TABLE [dbo].[tbXuatChieu] CHECK CONSTRAINT [FK_tbXuatChieu_tbPhong]
GO
alter table [dbo].[tbChiTietVe] drop constraint [FK_tbChiTietVe_tbPhong]
alter table [dbo].[tbChiTietVe] drop column [MaPhong]
alter table [dbo].[tbXuatChieu] drop column [MaPhong]
alter table tbXuatChieu add MaPhong varchar(10)
GO */


ALTER TABLE [dbo].[tbPhim]  WITH CHECK ADD  CONSTRAINT [FK_tbPhim_tbTheLoaiPhim] FOREIGN KEY([MaTheLoai]) 
REFERENCES [dbo].[tbTheLoaiPhim] ([MaTheLoai])
GO
ALTER TABLE [dbo].[tbPhim] CHECK CONSTRAINT [FK_tbPhim_tbTheLoaiPhim]
GO

ALTER TABLE [dbo].[tbXuatChieu]  WITH CHECK ADD  CONSTRAINT [FK_tbXuatChieu_tbphim] FOREIGN KEY([MaPhim]) 
REFERENCES [dbo].[tbPhim] ([MaPhim])
GO
ALTER TABLE [dbo].[tbPhim] CHECK CONSTRAINT [FK_tbXuatChieu_tbphim]
GO



insert into tbTheLoaiPhim (MaTheLoai, LoaiPhim, DinhDang) values ('TL01',N'Kinh Dị','2D')
insert into tbTheLoaiPhim (MaTheLoai, LoaiPhim, DinhDang) values ('TL02',N'Hành Động','2D')
insert into tbTheLoaiPhim (MaTheLoai, LoaiPhim, DinhDang) values ('TL03',N'Hài Hước','3D')
insert into tbTheLoaiPhim (MaTheLoai, LoaiPhim, DinhDang) values ('TL04',N'Tâm Lý Xã Hội','2D')
insert into tbTheLoaiPhim (MaTheLoai, LoaiPhim, DinhDang) values ('TL05',N'Khoa Học Viễn Tưởng','2D')
insert into tbTheLoaiPhim (MaTheLoai, LoaiPhim, DinhDang) values ('TL06',N'Chinh Thám','3D')
insert into tbTheLoaiPhim (MaTheLoai, LoaiPhim, DinhDang) values ('TL07',N'Hoạt Hình','3D')


insert into tbTaiKhoan (TenDN, MatKhau) values ('dzung05','dung0501')

alter table tbSanPham add Anh nvarchar(50)

alter table tbTaiKhoan add ChucVu nvarchar(50)


alter table tbNhanVien alter column GioiTinh nvarchar(10)

alter table tbKhachHang alter column GioiTinh nvarchar(10)

alter table tbSanPham alter column DonGiaBan float

alter table tbPhongChieu alter column TenPhong nvarchar(50)

alter table tbPhongChieu alter column TrangThai nvarchar(50)

alter table tbLoaiVe alter column TenLoaiVe nvarchar(50)

alter table tbNhanVien alter column NgaySinh Date

alter table tbVe add GiaVe float 

alter table tbGhe add MaPhong varchar(10)

alter table tbVe add MaXuatChieu varchar(10)

alter table tbNhanVien alter column Luong float

alter table tbKhachHang alter column SDT varchar(20)



INSERT INTO [dbo].[tbPhim] ([MaPhim], [TenPhim], [MaTheLoai], [TenDD], [TenDV], [ThoiLuongPhim], [NamSX], [QuocGia], [MoTa], [Anh])
VALUES
('P0001', N'Inception', 'TL01', N'Christopher Nolan', N'Warner Bros.', N'148 phút', '2010-07-16', N'USA', N'Thieves enter the dreams of others', 'inception.jpg'),
('P0002', N'The Shawshank Redemption', 'TL02', N'Frank Darabont', N'Columbia Pictures', N'142 phút', '1994-09-23', N'USA', N'A story of hope and friendship', 'shawshank_redemption.jpg'),
('P0003', N'The Dark Knight', 'TL01', N'Christopher Nolan', N'Warner Bros.', N'152 phút', '2008-07-18', N'USA', N'The Jokers reign of chaos', 'dark_knight.jpg'),
('P0004', N'Pulp Fiction', 'TL03', N'Quentin Tarantino', N'Miramax Films', N'154 phút', '1994-10-14', N'USA', N'Interwoven crime stories', 'pulp_fiction.jpg'),
('P0005', N'The Godfather', 'TL03', N'Francis Ford Coppola', N'Paramount Pictures', N'175 phút', '1972-03-24', N'USA', N'The Corleone family', 'godfather.jpg');

INSERT INTO [dbo].[tbPhongChieu] ([MaPhong], [TenPhong], [Trangthai])
VALUES
('R001', N'Phòng 1', N'Hoạt động'),
('R002', N'Phòng 2', N'Hoạt động'),
('R003', N'Phòng 3', N'Hoạt động'),
('R004', N'Phòng 4', N'Đang sửa chữa'),
('R005', N'Phòng 5', N'Hoạt động');
insert into tbTheLoaiPhim (MaTheLoai, LoaiPhim, DinhDang) 
values ('TL01',N'Kinh Dị','2D'),
 ('TL02',N'Hành Động','2D'),
 ('TL03',N'Hài Hước','3D'),
 ('TL04',N'Tâm Lý Xã Hội','2D'),
 ('TL05',N'Khoa Học Viễn Tưởng','2D'),
 ('TL06',N'Chinh Thám','3D'),
 ('TL07',N'Hoạt Hình','3D');


 ALTER TABLE [dbo].[tbTheLoaiPhim]
ALTER COLUMN [TrangThai] [nvarchar](50) NULL;
-- Cập nhật giá trị MaXuatChieu để tránh trùng lặp
INSERT INTO [dbo].[tbXuatChieu] ([MaXuatChieu], [NgayChieu], [CaChieu], [TenPhongChieu], [TienVe], [MaPhim])
VALUES

('X001', '2023-10-31', '14:00', 'Phòng 1', 80000, 'P0001'),
('X002', '2023-10-31', '16:30', 'Phòng 2', 75000, 'P0002'),
('X003', '2023-10-31', '17:45', 'Phòng 3', 90000, 'P0003'),
('X004', '2023-10-31', '20:00', 'Phòng 4', 110000, 'P0004'),
('X005', '2023-10-31', '21:15', 'Phòng 5', 120000, 'P0005'),
('X006', '2023-10-31', '22:00', 'Phòng 3', 120000, 'P0001');

INSERT INTO [dbo].[tbLoaiVe] ([MaLoaiVe], [TenLoaiVe], [DonGia])
VALUES
('LV001', N'Vé thường', 80000),
('LV002', N'Vé VIP', 120000),
('LV003', N'Vé gia đình', 280000),
('LV004', N'Vé học sinh/sinh viên', 60000),
('LV005', N'Vé người cao tuổi', 70000);

 ALTER TABLE [dbo].[tbLoaiVe]
ALTER COLUMN [TenLoaiVe] [nvarchar](50) NULL;
INSERT INTO [dbo].[tbKhachHang] ([TenTKKH], [TenKH], [GioiTinh], [NTNS], [SDT])
VALUES
('KH001', N'John Doe', 1, '1990-05-15', '1234567890'),
('KH002', N'Jane Smith', 0, '1995-08-20', '9876543210'),
('KH003', N'Mike Johnson', 1, '1980-12-10', '9871234560'),
('KH004', N'Sara Wilson', 0, '1989-04-03', '1237894560'),
('KH005', N'David Brown', 1, '1985-03-25', '4561237890');

INSERT INTO [dbo].[tbNhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [SDT], [Luong], [CaLam])
VALUES
('NV001', N'Nguyen Van A', 1, '1990-05-15', '1234567890', 2000000, '08:00:00'),
('NV002', N'Tran Thi B', 0, '1995-08-20', '9876543210', 1800000, '08:00:00'),
('NV003', N'Le Van C', 1, '1980-12-10', '9871234560', 2200000, '08:00:00'),
('NV004', N'Pham Thi D', 0, '1989-04-03', '1237894560', 1900000, '08:00:00'),
('NV005', N'Huynh Van E', 1, '1985-03-25', '4561237890', 2100000, '08:00:00'),
('NV006', N'Tran Van F', 1, '1992-08-15', '7894561230', 2300000, '08:00:00'),
('NV007', N'Nguyen Van G', 1, '1988-11-20', '1231234567', 2100000, '08:00:00');

INSERT INTO [dbo].[tbGhe] ([SoGhe], [TrangThai])
VALUES 
('A1', 1),
('B3', 0),
('C2', 0),
('D5', 1),
('E1', 0);



INSERT INTO [dbo].[tbVe] ([MaVe], [MaKH], [MaLoaiVe], [MaNV], [SoGhe], [NgayBanVe])
VALUES
('V001', 'KH001', 'LV001', 'NV001', 'A1', '2023-10-30 15:30:00'),
('V002', 'KH002', 'LV002', 'NV002', 'B3', '2023-10-30 16:45:00'),
('V003', 'KH003', 'LV003', 'NV003', 'C2', '2023-10-30 14:15:00'),
('V004', 'KH004', 'LV001', 'NV004', 'D5', '2023-10-30 16:00:00'),
('V005', 'KH005', 'LV004', 'NV005', 'E1', '2023-10-30 17:30:00');


INSERT INTO [dbo].[tbChiTietVe] ([MaVe], [MaPhim], [MaXuatChieu], [MaPhong])
VALUES
('V001', 'P0001', 'X001', 'R001'),
('V002', 'P0002', 'X002', 'R002'),
('V003', 'P0003', 'X003', 'R003'),
('V004', 'P0004', 'X004', 'R004'),
('V005', 'P0005', 'X005', 'R005');

INSERT INTO [dbo].[tbSanPham] ([MaSP], [TenSP], [Loai], [NgayNhap], [Soluong], [DonGiaBan])
VALUES
('SP001', N'Laptop Dell', N'Điện tử', '2023-10-29', 50, 15000000),
('SP002', N'Smartphone iPhone', N'Điện tử', '2023-10-28', 40, 12000000),
('SP003', N'TV Samsung', N'Điện tử', '2023-10-27', 30, 9000000),
('SP004', N'Giày thể thao Nike', N'Thời trang', '2023-10-26', 60, 1500000),
('SP005', N'Áo khoác Adidas', N'Thời trang', '2023-10-25', 70, 800000);

INSERT INTO [dbo].[tbTaiKhoan] ([TenDN], [MatKhau], [MaNV])
VALUES
('user001', 'password001', 'NV001'),
('user002', 'password002', 'NV002'),
('user003', 'password003', 'NV003'),
('user004', 'password004', 'NV004'),
('user005', 'password005', 'NV005');


select MaPhim as N'Mã Phim', TenPhim as N'Tên Phim', MaTheLoai as N'Mã Thể Loại', TenDD as N'Tên Đạo Diễn', QuocGia as N'Quốc Gia', Year(NamSX) as N' Năm sản Xuất', ThoiLuongPhim as N'Thời Lượng Phim' from tbPhim

            SELECT   P.TenPhim AS [Tên Phim]  ,TL.LoaiPhim AS [Loại Phim],   P.ThoiLuongPhim AS [Thời Lượng],     XC.CaChieu AS [Giờ Chiếu] FROM tbPhim AS P INNER JOIN tbTheLoaiPhim AS TL ON P.MaTheLoai = TL.MaTheLoai INNER JOIN tbXuatChieu AS XC ON P.MaPhim = XC.MaPhim INNER JOIN tbPhongChieu AS PC on XC.MaPhong = PC.MaPhong WHERE PC.MaPhong = 'R001' and NgayChieu = '2023-10-31';
