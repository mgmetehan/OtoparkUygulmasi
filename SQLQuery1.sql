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

Insert Into giris(kullaniciAd,kullaniciSifre) Values('admin','1234');
Insert Into giris(kullaniciAd,kullaniciSifre) Values('Metehan','toor');

Insert Into kisiler(kisiTc,kisiAd,kisiSoyad,kisiTelNo,Adres) Values ('11111111111','Metehan','Gultekin','0531','Daire 8');
Insert Into kisiler(kisiTc,kisiAd,kisiSoyad,kisiTelNo,Adres) Values ('22222222222','Ýlayda','Tan','0540','Daire 3');
Insert Into kisiler(kisiTc,kisiAd,kisiSoyad,kisiTelNo,Adres) Values ('33333333333','Hilal','Ayþe','0565','Daire 2');

Insert Into otoparklar(otoparkAd,otoparkSehir) Values ('Kaplan','Mersin');
Insert Into otoparklar(otoparkAd,otoparkSehir) Values ('Yavuz','Ankara');
Insert Into otoparklar(otoparkAd,otoparkSehir) Values ('Kýlýc','Istanbul');

Insert Into araclar(aracPlaka,aracMarka,aracRenk,kisiId) Values ('34EF60','BMW','Mavi',1);
Insert Into araclar(aracPlaka,aracMarka,aracRenk,kisiId) Values ('06TY24','Audi','Mavi',2);
Insert Into araclar(aracPlaka,aracMarka,aracRenk,kisiId) Values ('70ZX08','BMW','Siyah',3);

Insert Into parkYeri(parkYeri,aracId) Values ('1',1);
Insert Into parkYeri(parkYeri,aracId) Values ('2',3);
Insert Into parkYeri(parkYeri,aracId) Values ('3',2);
*/







