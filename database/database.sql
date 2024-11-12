CREATE DATABASE asm_java5
USE asm_java5

create table KhachHang
(
    id        int identity
        primary key,
    ten       nvarchar(50),
    maKH      varchar(10),
    sdt       varchar(13),
    trangThai bit
)
go

create table KichThuoc
(
    id        int identity
        primary key,
    ma        varchar(10),
    ten       nvarchar(50) not null,
    trangThai bit
)
go

create table MauSac
(
    id        int identity
        primary key,
    ma        varchar(10),
    ten       nvarchar(50) not null,
    trangThai bit
)
go

create table NhanVien
(
    id          int identity
        primary key,
    maNV        varchar(20),
    ten         nvarchar(50) not null,
    tenDangNhap nvarchar(50) not null,
    matKhau     varchar(33)  not null,
    trangThai   bit
)
go

create table HoaDon
(
    id          int identity
        primary key,
    idNV        int
        references NhanVien,
    idKH        int
        references KhachHang,
    ngayMuaHang date,
    trangThai   bit
)
go

create table SanPham
(
    id        int identity
        primary key,
    maSP      varchar(20),
    tenSP     nvarchar(50) not null,
    trangThai bit
)
go

create table SanPhamCT
(
    id          int identity
        primary key,
    maSPCT      varchar(20),
    idSanPham   int
        references SanPham,
    idMauSac    int
        references MauSac,
    idKichThuoc int
        references KichThuoc,
    hinhAnh     varchar(50),
    soLuong     int,
    gia         float,
    trangThai   bit
)
go

create table HoaDonChiTiet
(
    id        int identity
        primary key,
    idSPCT    int
        references SanPhamCT,
    idHoaDon  int
        references HoaDon,
    soLuong   int not null,
    gia       float,
    trangThai bit
)
go

