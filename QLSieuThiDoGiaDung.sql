use QLSieuThiDoGiaDung

create table nhanvien(
manv varchar(40) primary key,
tennv nvarchar(40) not null,
gioitinh nvarchar(40) not null,
diachi nvarchar(40) not null,
sdt int ,
);
create table khachhang(
makh varchar(40) primary key,
tenkh nvarchar(40) not null,
gioitinh nvarchar(40) not null,
diachi nvarchar(40) not null,
);
create table sanpham(
masp varchar(40) primary key,
tensp nvarchar(40) not null,
sltonkho int not null,
dongia float not null,
);
create table hoadon(
mahd varchar(40) primary key,
makh varchar(40) not null,
ngaylap date not null,
giolap int not null,
tongtien float not null,
FOREIGN KEY (makh) REFERENCES khachhang(makh),
);
create table cthoadon(
mahd varchar(40) primary key,
masp varchar(40) not null,
ngaylap date not null,
soluong int not null,
dongia float not null,
FOREIGN KEY (masp) REFERENCES sanpham(masp),
);
create table taikhoan(
tendn varchar(40) primary key,
matkhau varchar(40) not null,
);
create table nhacungcap(
mancc varchar(40) primary key,
tenncc nvarchar(40) not null,
masp varchar(40) not null,
diachi nvarchar(40) not null,
sdt int ,
FOREIGN KEY (masp) REFERENCES sanpham(masp),
);


