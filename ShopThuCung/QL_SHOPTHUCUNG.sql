create database QL_SHOPTHUCUNG
go
use QL_SHOPTHUCUNG
go

create table LOAICHO
(
	MALOAICHO nchar(20) not null primary key,
	TENLOAICHO nvarchar(60)
)
create table LOAIMEO
(
	MALOAIMEO nchar(20) not null primary key,
	TENLOAIMEO nvarchar(60)
)

create table CHO
(
	MACHO int primary key identity,
	TENCHO nvarchar(60),
	GIA int,
	HINH varchar(100),
	TINHTRANG bit,
	MALOAICHO nchar(20) not null
	constraint fk_macho foreign key (MALOAICHO) references LOAICHO(MALOAICHO)
)
create table MEO
(
	MAMEO int primary key identity,
	TENMEO nvarchar(60),
	GIA int,
	HINH varchar(100),
	TINHTRANG bit,
	MALOAIMEO nchar(20) not null
	constraint fk_mameo foreign key (MALOAIMEO) references LOAIMEO(MALOAIMEO)
)
create table CTCHO
(
	MACTC nchar(20) not null primary key,
	MALOAICHO nchar(20),
	MAC int ,
	NICKNAME nchar(60),
	GIOITINH nvarchar(10),
	TUOI nvarchar(50),
	MAU nvarchar(20)
	constraint fk_ctcho1 foreign key (MALOAICHO) references LOAICHO(MALOAICHO),
	
)
create table CTMEO
(
	MACTM nchar(20) not null primary key,
	MALOAIMEO nchar(20),
	MAM int ,
	NICKNAME nchar(60),
	GIOITINH nvarchar(10),
	TUOI nvarchar(50),
	MAU nvarchar(20)
	constraint fk_ctmeo1 foreign key (MALOAIMEO) references LOAIMEO(MALOAIMEO),
	
)
create table TAIKHOAN
(
	HOTEN nvarchar(50),
	TENTK nchar(20) not null primary key,
	MATKHAU nchar(30),
	EMAIL nchar(30),
	GIOITINH nvarchar(5),
	NOICHON nvarchar(30)
)
create table LOAIPK
(
	MALOAIPK nchar(20) not null primary key,
	TENLOAIPK nchar(60)
)
create table PHUKIEN
(
	MAPK int primary key identity,
	TENPK nvarchar(60),
	GIA int,
	HINH varchar(30),
	MALOAIPK nchar(20) not null
	constraint fk_mapk foreign key (MALOAIPK) references LOAIPK(MALOAIPK)
)
create table HOADON
(
	MAHD int primary key identity,
	MASP int,
	NGAYHD date
)
create table TONGSANPHAM
(
	TONGCHO int,
	TONGMEO int
)
insert into LOAICHO(MALOAICHO, TENLOAICHO)
values ('MLC001', N'HUSKY'),
	('MLC002', N'ALASKA'),
	('MLC003', N'SHIBA'),
	('MLC004', N'CORGI'),
	('MLC005', N'CHIHUAHUA'),
	('MLC006', N'POODLE')

insert into LOAIMEO(MALOAIMEO, TENLOAIMEO)
values ('MLM001', N'MÈO ANH LÔNG NGẮN'),
	('MLM002', N'MÈO ANH LÔNG DÀI'),
	('MLM004', N'MÈO SCOTTISH TAI CỤP'),
	('MLM003', N'MÈO MUNCHKIN')

insert into LOAIPK(MALOAIPK, TENLOAIPK)
values ('PKC001', N'Thức ăn cho chó'),
	('PKM001', N'Thức ăn cho mèo'),
	('PKM002', N'Cát Mèo'),
	('PKCM001', N'Vòng cổ, dây dắt')

insert into CHO(TENCHO, GIA, HINH,TINHTRANG, MALOAICHO)--// Husky
values (N'Husky thuần chủng', 5999000, '/husky/husky.jpg','1', 'MLC001'),
(N'Husky Màu Nâu', 6999000, '/husky/husky_brown.jpg','1', 'MLC001'),
(N'Husky Lai', 4500000, '/husky/husky_lai.jpg','1', 'MLC001'),
(N'Husky Lai Alaska', 5500000, '/husky/husky_lai_alaska.jpg','1', 'MLC001'),
(N'Husky Lai Nâu Đỏ', 7500000, '/husky/husky_lai_naudo.jpg','1', 'MLC001'),
(N'Husky Mắt Xanh', 3999999, '/husky/husky_matxanh.jpg','1', 'MLC001'),
(N'Husky Sibir Thuần Chủng', 10000000, '/husky/husky_thuanchung.jpg','1', 'MLC001'),
(N'Husky Husky Lai Phú Quốc', 15000000, '/husky/huskylai_phuquoc.jpg','1', 'MLC001'),
(N'Brown siberian husky', 15000000, '/husky/reddish_brown_siberian_husky.jpg','1', 'MLC001'),
(N'Seberian husky', 20000000, '/husky/seberian_husky.jpg','1', 'MLC001')
insert into CHO(TENCHO, GIA, HINH,TINHTRANG, MALOAICHO)--// Alaska
Values (N'Alaska Đực màu đen', 9000000, '/alaska/A00.jpg','1', 'MLC002'),
(N'Alaska Đực màu nâu đỏ', 29000000, '/alaska/a0.jpg','1', 'MLC002'),
(N'Alaska Đực màu trắng', 5000000, '/alaska/a1.jpg','1', 'MLC002'),
(N'Alaska Đực màu xám', 35000000, '/alaska/a2.jpg','1', 'MLC002'),
(N'Alaska Đực màu Trắng Xám', 49000000, '/alaska/a3.jpg','1', 'MLC002'),
(N'Alaska Cái màu đen', 9000000, '/alaska/a4.jpg','1', 'MLC002'),
(N'Alaska Cái trắng', 30000000, '/alaska/a5.jpg','1', 'MLC002'),
(N'Alaska Cái nâu đỏ', 19000000, '/alaska/a6.jpg','1', 'MLC002'),
(N'Alaska Cái màu xám', 10000000, '/alaska/a7.jpg','1', 'MLC002'),
(N'Alaska Cái màu trắng xám', 13000000, '/alaska/a8.jpg','1', 'MLC002')
insert into CHO(TENCHO, GIA, HINH,TINHTRANG, MALOAICHO)--//Chihuahua
Values (N'Chihuahua trắng', 2000000, '/Chihuahua.jpg/C001.jpg','1', 'MLC005'),
(N'Chihuahua thuần chủng', 5000000, '/Chihuahua.jpg/C002.jpg','1', 'MLC005'),
(N'Chihuahua Lông Dài', 7000000, '/Chihuahua.jpg/C003.jpg','1', 'MLC005')
insert into CHO(TENCHO, GIA, HINH,TINHTRANG, MALOAICHO)--//Shiba
Values (N'Shiba thuần chủng', 80000000, '/Shiba.jpg/S001.jpg','1', 'MLC003'),
(N'Shiba Đen', 80000000, '/Shiba.jpg/S002.jpg','1', 'MLC003'),
(N'Shiba trắng', 80000000, '/Shiba.jpg/S003.jpg','1', 'MLC003')
insert into CHO(TENCHO, GIA, HINH,TINHTRANG, MALOAICHO)--// Corgi
Values (N'Corgi Thuần Chủng Đực', 29000000, '/Corgi.jpg/Corgi01.jpg','1', 'MLC004'),
(N'Corgi Đen Trắng', 35000000, '/Corgi.jpg/Corgi02.jpg','1', 'MLC004'),
(N'Corgi Thuần Chủng Cái', 29000000, '/Corgi.jpg/Corgi03.jpg','1', 'MLC004'),
(N'Corgi Lai', 45000000, '/Corgi.jpg/Corgi04.jpg','1', 'MLC004'),
(N'Corgi Tam Thể', 29000000, '/Corgi.jpg/Corgi05.jpg','1', 'MLC004')
insert into CHO(TENCHO, GIA, HINH,TINHTRANG, MALOAICHO)--// Poodle
Values (N'Poodle Thuần Chủng Đực Nâu', 5000000, '/Poodle.jpg/P001.jpg','1', 'MLC006'),
(N'Poodle Thuần Chủng Trắng Đực', 7000000, '/Poodle.jpg/P002.jpg','1', 'MLC006'),
(N'Poodle Thuần Chủng Cái Nâu', 5000000, '/Poodle.jpg/P003.jpg','1', 'MLC006'),
(N'Poodle Thuần Chủng Đực Đen', 4000000, '/Poodle.jpg/P004.jpg','1', 'MLC006'),
(N'Poodle Thuần Chủng Trắng Cái', 7000000, '/Poodle.jpg/P005.jpg','1', 'MLC006')


insert into MEO(TENMEO, GIA, HINH,TINHTRANG, MALOAIMEO)--// Mèo ALN
values (N'Mèo ALN golden', 10000000, '/MeoAnhLongNgan.jpg/golden.jpg','1', 'MLM001'),
(N'Mèo ALN chocolate', 15000000, '/MeoAnhLongNgan.jpg/chocolate.jpg','1', 'MLM001'),
(N'Mèo ALN silver', 20000000, '/MeoAnhLongNgan.jpg/silver.jpg','1', 'MLM001'),
(N'Mèo ALN trắng', 12000000, '/MeoAnhLongNgan.jpg/trang.jpg','1', 'MLM001'),
(N'Mèo ALN xám xanh', 14000000, '/MeoAnhLongNgan.jpg/xamxanh.jpg','1', 'MLM001')
insert into MEO(TENMEO, GIA, HINH,TINHTRANG, MALOAIMEO)--// Mèo ALD
values (N'Mèo ALD Trắng', 20000000, '/MeoAnhLongDai.jpg/ALD01.jpg','1', 'MLM002'),
(N'Mèo ALD Nâu', 25000000, '/MeoAnhLongDai.jpg/ALD02.jpg','1', 'MLM002'),
(N'Mèo ALD Đen', 10000000, '/MeoAnhLongDai.jpg/ALD03.jpg','1', 'MLM002')
insert into MEO(TENMEO, GIA, HINH,TINHTRANG, MALOAIMEO)--// Mèo Munchkin
values (N'Mèo Munchkin Trắng-Xám', 10000000, '/Munchkin.jpg/M001.jpg','1', 'MLM003'),
(N'Mèo Munchkin Trắng-Nâu', 25000000, '/Munchkin.jpg/M002.jpg','1', 'MLM003'),
(N'Mèo Munchkin Xám', 15000000, '/Munchkin.jpg/M003.jpg','1', 'MLM003'),
(N'Mèo Munchkin Vằn', 26000000, '/Munchkin.jpg/M004.jpg','1', 'MLM003'),
(N'Mèo Munchkin Lông Dài', 30000000, '/Munchkin.jpg/M005.jpg','1', 'MLM003')
insert into MEO(TENMEO, GIA,TINHTRANG, HINH, MALOAIMEO)--// Mèo Scottish
values (N'Mèo Scottish Vằn Đực', 15000000, '/MeoScottish.jpg/S001.jpg','1', 'MLM004')




insert into PHUKIEN(TENPK, GIA, HINH, MALOAIPK)
values (N'Thức ăn cho chó lớn Pedigree', 200000, '/ThucAnCho.jpg/pedigree.jpg', 'PKC001'),
(N'Thức ăn chó nhỏ Royal Canin', 500000, '/ThucAnCho.jpg/royalcanin.jpg', 'PKC001'),
(N'Thức ăn cho chó con Zenith', 600000, '/ThucAnCho.jpg/zenith.jpg', 'PKC001'),
(N'Thức ăn cho mèo Cat Eye', 880000, '/ThucAnMeo.jpg/cateye.jpg', 'PKM001'),
(N'Thức ăn cho mèo ME-O', 880000, '/ThucAnMeo.jpg/meo.jpg', 'PKM001'),
(N'Pate cho mèo lớn Zenith', 15000, '/ThucAnMeo.jpg/patewhiskas.jpg', 'PKM001'),
(N'Vòng cổ vải', 20000, '/Vongco/vongco1.png', 'PKCM001'),
(N'Vòng cổ da', 50000, '/Vongco/vongco2.jpg', 'PKCM001')
insert into PHUKIEN(TENPK, GIA, HINH, MALOAIPK)
values (N'Cát Vệ Sinh Cho Mèo CatLike', 100000, '/CatMeo.jpg/catlike.jpg', 'PKM002'),
(N'Cát Vệ Sinh Cho Mèo 8L', 60000, '/CatMeo.jpg/catnhat.jpg', 'PKM002'),
(N'Cát Vệ Sinh Cho Mèo PetLand', 150000, '/CatMeo.jpg/petland.jpg', 'PKM002')






insert into CTCHO(MACTC,MALOAICHO, MAC, NICKNAME, GIOITINH, TUOI, MAU)--// Husky
values ('CTC001','MLC001',1, 'KaKa', N'Đực', N'Hơn 2 tháng', N'Trắng-Đen'),
	('CTC002','MLC001',2, 'KiKi', N'Đực', N'Hơn 1 tháng tuổi', N'Nâu-Trắng'),
	('CTC003','MLC001',3, 'Mon', N'Cái', N'2 tháng tuổi', N'Trắng-Đen'),
	('CTC004','MLC001',4, 'MoMo', N'Cái', N'2 tháng tuổi', N'Xám-Trắng'),
	('CTC005','MLC001',5, 'MaMa', N'Đực', N'3 tháng tuổi', N'Nâu-Đỏ'),
	('CTC006','MLC001',6, 'Bi', N'Đực', N'3 tháng tuổi', N'Đen-Trắng'),
	('CTC007','MLC001',7, 'Bo', N'Đực-Cái', N'1 tháng tuổi', N'Đen-Trắng-Nâu'),
	('CTC008','MLC001',8, 'Chick', N'Đực-Cái', N'1 tháng tuổi', N'Xám-trắng'),
	('CTC009','MLC001',9, 'Mi', N'Đực', N'1 tuổi', N'Nâu-Trắng'),
	('CTC0010','MLC001',10, 'Ti', N'Đực', N'2 tuổi', N'Nâu-Trắng')
insert into CTCHO(MACTC,MALOAICHO, MAC, NICKNAME, GIOITINH, TUOI, MAU)--// Husky
values ('CTC011','MLC002',11, '??', N'Đực', N'Hơn 2 tháng', N'Đen'),
	('CTC012','MLC002',12, N'Nho', N'Đực', N'Hơn 1 tháng tuổi', N'Nâu-Đỏ'),
	('CTC013','MLC002',13, N'Táo', N'Đực', N'2 tháng tuổi', N'Trắng'),
	('CTC014','MLC002',14, N'Mít', N'Đực', N'2 tháng tuổi', N'Xám'),
	('CTC015','MLC002',15, N'Mận', N'Đực', N'3 tháng tuổi', N'Trắng-Xám'),
	('CTC016','MLC002',16, '??', N'Cái', N'3 tháng tuổi', N'Đen'),
	('CTC017','MLC002',17, '??', N'Cái', N'1 tháng tuổi', N'Trắng'),
	('CTC018','MLC002',18, 'Bu', N'Cái', N'1 tháng tuổi', N'Đỏ'),
	('CTC019','MLC002',19, '??', N'Cái', N'1 tuổi', N'Xám'),
	('CTC0020','MLC002',20, '??', N'Cái', N'2 tuổi', N'Trắng-Xám')
insert into CTCHO(MACTC,MALOAICHO, MAC, NICKNAME, GIOITINH, TUOI, MAU)--//Chihuahua
values ('CTC021','MLC002',21, '??', N'Đực', N'Hơn 2 tháng', N'Trắng'),
	('CTC022','MLC002',22, N'??', N'Cái', N'Hơn 1 tháng tuổi', N'Nâu'),
	('CTC023','MLC002',23, N'??', N'Đực', N'2 tháng tuổi', N'Trắng')
insert into CTCHO(MACTC,MALOAICHO, MAC, NICKNAME, GIOITINH, TUOI, MAU)--//Shiba
values ('CTC024','MLC002',24, '??', N'Đực', N'Hơn 2 tháng', N'Nâu'),
	('CTC025','MLC002',25, N'??', N'Cái', N'Hơn 1 tháng tuổi', N'Đen'),
	('CTC026','MLC002',26, N'??', N'Đực', N'2 tháng tuổi', N'Trắng')
insert into CTCHO(MACTC,MALOAICHO, MAC, NICKNAME, GIOITINH, TUOI, MAU)--//Corgi
values ('CTC027','MLC002',27, '??', N'Đực', N'Hơn 2 tháng', N'Nâu'),
	('CTC028','MLC002',28, N'??', N'Cái', N'Hơn 1 tháng tuổi', N'Đen-Trắng'),
	('CTC029','MLC002',29, N'??', N'Cái', N'2 tháng tuổi', N'Nâu'),
	('CTC030','MLC002',30, N'??', N'Đực', N'2 tháng tuổi', N'Trắng-Đen'),
	('CTC031','MLC002',31, N'??', N'Đực', N'2 tháng tuổi', N'Trắng-Đen-Nâu')
insert into CTCHO(MACTC,MALOAICHO, MAC, NICKNAME, GIOITINH, TUOI, MAU)--//Poodle
values ('CTC032','MLC002',32, '??', N'Đực', N'Hơn 2 tháng', N'Nâu'),
	('CTC033','MLC002',33, N'??', N'Đực', N'Hơn 1 tháng tuổi', N'Trắng'),
	('CTC034','MLC002',34, N'??', N'Cái', N'2 tháng tuổi', N'Đen'),
	('CTC035','MLC002',35, N'??', N'Đực', N'2 tháng tuổi', N'Nâu'),
	('CTC036','MLC002',36, N'??', N'Cái', N'2 tháng tuổi', N'Trắng')


insert into CTMEO(MACTM,MALOAIMEO, MAM, NICKNAME, GIOITINH, TUOI, MAU)
values ('CTM001','MLM001',1, 'Hugo', N'Đực', N'Hơn 2 tháng', N'Golden'),
	('CTM002','MLM001',2, N'Hutao', N'Đực', N'Hơn 1 tháng tuổi', N'Nâu chocolate'),
	('CTM003','MLM001',3, N'Beneth', N'Đực', N'2 tháng tuổi', N'Silver'),
	('CTM004','MLM001',4, N'Ara', N'Đực', N'2 tháng tuổi', N'Trắng'),
	('CTM005','MLM001',5, N'??', N'Đực', N'3 tháng tuổi', N'Xám-xanh'),
	('CTM006','MLM002',6, '??', N'Cái', N'3 tháng tuổi', N'Trắng'),
	('CTM007','MLM002',7, '??', N'Cái', N'1 tháng tuổi', N'Nâu'),
	('CTM008','MLM002',8, 'Bơ', N'Cái', N'1 tháng tuổi', N'Đen')
insert into CTMEO(MACTM,MALOAIMEO, MAM, NICKNAME, GIOITINH, TUOI, MAU)
values ('CTM009','MLM003',9, '??', N'Đực', N'Hơn 2 tháng', N'Trắng-Xám'),
	('CTM010','MLM003',10, N'obuon', N'Đực', N'Hơn 1 tháng tuổi', N'Trắng-Nâu'),
	('CTM011','MLM003',11, N'??', N'Đực', N'2 tháng tuổi', N'Xám'),
	('CTM012','MLM003',12, N'Araka', N'Đực', N'2 tháng tuổi', N'Vằn'),
	('CTM013','MLM003',13, N'??', N'Đực', N'3 tháng tuổi', N'Nâu-Xám')
insert into CTMEO(MACTM,MALOAIMEO, MAM, NICKNAME, GIOITINH, TUOI, MAU)
values ('CTM014','MLM004',14, '??', N'Đực', N'Hơn 2 tháng', N'Trắng-Xám'),
	('CTM015','MLM004',15, N'??', N'Đực', N'Hơn 1 tháng tuổi', N'Trắng'),
	('CTM016','MLM004',16, N'??', N'Cái', N'2 tháng tuổi', N'Trắng-Xám')
insert into TONGSANPHAM
values (0,0)
	select * from cho
	delete from CHO where MACHO = 42
	select * From TONGSANPHAM
	UPDATE TONGSANPHAM
	set TONGCHO = (select count(*) from CHO where TINHTRANG = 1)
	UPDATE TONGSANPHAM
	set TONGMEO = (select count(*) from MEO where TINHTRANG = 1)
	