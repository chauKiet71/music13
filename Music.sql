create database Music
go

use Music
go

create table TaiKhoan(
	TenTK nchar(30) not null primary key,
	MatKhau varchar(30) not null,
	VaiTro bit not null,
	TrangThai bit not null
)
go

create table NguoiDung(
	MaND int identity(1,1) not null primary key,
	HoTen nvarchar(100) not null,
	email varchar(100) not null,
	avatar varchar(255) not null,
	TenTK nchar(30) not null,
	foreign key (TenTK) references TaiKhoan(TenTK)
)
go

create table TheLoai(
	MaTheLoai nchar(10) not null primary key,
	TenTheLoai nvarchar(100) not null
)
go

create table BaiHat(
	MaBH nchar(10) not null primary key,
	TenBH nvarchar(255) not null,
	CaSi nvarchar(255) not null,
	NhacSi nvarchar(255) not null,
	AmThanh varchar(100) not null,
	Anh varchar(300) not null,
	LoiBH varchar(100) not null,
	ThoiGian varchar(10) not null,
	SoLuotThich int not null,
	SoLuotNghe int not null,
	MaTheLoai nchar(10) not null
	foreign key (MaTheLoai) references TheLoai(MaTheLoai)
)
go

create table BinhLuan(
	MaBL int identity(1,1) not null primary key,
	NoiDung nvarchar(300) not null,
	NgayTao date not null,
	MaBH nchar(10) not null,
	MaND int not null,
	foreign key (MaBH) references BaiHat(MaBH),
	foreign key (MaND) references NguoiDung(MaND)
)
go

create table Playlist(
	MaPlaylist nchar(10) not null primary key,
	TenPlaylist nvarchar(255) not null,
	MaBH nchar(10) not null,
	MaND int not null,
	foreign key (MaBH) references BaiHat(MaBH),
	foreign key (MaND) references NguoiDung(MaND)
)
drop table Playlist;
drop table BinhLuan;
drop table BaiHat;
drop table TheLoai;
drop table NguoiDung;
drop table TaiKhoan;

