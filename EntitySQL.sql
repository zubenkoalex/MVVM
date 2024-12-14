
create table PacageEntities
(
  Id Int Primary key,
  FuelType nvarchar(20) not null,
  EngineVolume nvarchar(6) not null,
  EnginePower int not null,
  KPPType nvarchar(20) not null,
  DriveType nvarchar(20) not null,
  CallType nvarchar(20) not null,
  CallColor nvarchar(20) not null,
  Rudder nvarchar(20) not null,
  NamePacage nvarchar(20) not null,
);


create table GenerationEntities
(
  Id Int Primary key,
  NameGeneration nvarchar(22) not null,
);


create table ModelEntities
(
  Id Int Primary key,
  NameModelCar nvarchar(22) not null,
);


create table MarkEntities
(
  Id Int Primary key,
  NameMark nvarchar(22) not null,
);


create table CarEntities
(
  Id Int Primary key,
  MarkID int,
  FOREIGN KEY (MarkID) REFERENCES MarkEntities(Id),
  ModelID int,
  FOREIGN KEY (ModelID) REFERENCES ModelEntities(Id),
  GenerationID int,
  FOREIGN KEY (GenerationID) REFERENCES GenerationEntities(Id),
  Mileage int not null,
  Price int not null,
  ReleaseYear int not null,
  PacageID int,
  FOREIGN KEY ( PacageID) REFERENCES  PacageEntities(Id),
  Picture Nvarchar(255) not null,
);
insert into CarEntities
values
(1,1,1,1,184000,2030000,2009,1,'C:\Users\���������\Desktop\�����\baleva WPF\�����\3series_chornijpg.jpeg'),
(2,1,1,3,84000,2500000,2012,2,'C:\Users\���������\Desktop\�����\baleva WPF\�����\3series_serai.jpg'),
(3,3,3,4,15000,4000000,2019,3,'C:\Users\���������\Desktop\�����\baleva WPF\�����\a5.jpeg'),
(4,4,4,3,44000,3420000,2016,4,'C:\Users\���������\Desktop\�����\baleva WPF\�����\supra.jpeg');


insert into PacageEntities
Values 
(1,'������','1.9',118,'����','������','�����','������','�����','318iMT'),
(2,'������','2.2',170,'����','������','�����','�����������','�����','320iAT'),
(3,'������','4.4',560,'�����','������','�����','�����','�����','4.4 AMT'),
(4,'������','2.0',190,'�����','������','�����','�������','�����','2.0 TDI'),
(5,'������','3.0',225,'����','������','�����','�����','������','3.0 SZ');


insert into GenerationEntities
values 
(1,'1'),
(2,'1 ����'),
(3,'2'),
(4,'2 ����'),
(5,'3'),
(6,'3 ����'),
(7,'4'),
(8,'4 ����'),
(9,'5'),
(10,'5 ����');



insert into ModelEntities
values 
(1,'3-Series'),
(2,'M5'),
(3,'A5'),
(4,'Supra');

insert into MarkEntities
values 
(1,'BMW'),
(2,'BMW'),
(3,'Audi'),
(4,'Toyota');





Create table UserEntities
(
	ID int Primary key,
	Logins nvarchar(20) not null,
	pass nvarchar(20) not null,
	roles nvarchar(20) not null
)

insert into UserEntities
values
(1,'admin','adm','admin'),
(2,'guest','1234','guest'),
(3,'user1','bebra','user');