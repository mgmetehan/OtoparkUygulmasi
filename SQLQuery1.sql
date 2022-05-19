/*
Create Database db_otopark;
use db_otopark;

Create Table kisiler(
kisiId int IDENTITY(1,1) Not Null Primary Key,
kisiTc nVarchar(11) Not Null,
kisiAd nVarchar(30) Not Null,
kisiSoyad nVarchar(30) Not Null,
kisiTelNo nVarchar(11) Not Null,
Adres nVarchar(180) Not Null
);

Create Table araclar(
aracId int IDENTITY(1,1) Not Null Primary Key,
aracPlaka nVarchar(20) Not Null,
aracMarka nVarchar(20) Not Null,
aracRenk nVarchar(15) Not Null,
kisiId int Not Null
);

Create Table parkYeri(
parkId int IDENTITY(1,1) Not Null Primary Key,
parkYeri nVarchar(20) Not Null,
aracId int Not Null,
);

Create Table otoparklar(
otoparkId int IDENTITY(1,1) Not Null Primary Key,
otoparkAd nVarchar(30) Not Null,
otoparkSehir nVarchar(30) Not Null,
);

Create Table giris(
kullaniciId int IDENTITY(1,1) Not Null Primary Key,
kullaniciAd nVarchar(20) Not Null,
kullaniciSifre nVarchar(15) Not Null
);
*/