use DBProject


create table Students(
รหัสนิสิต varchar(50) not null,
ชื่อนามสกุล varchar(100)

primary key(รหัสนิสิต)
)

create table Stores(
IDร้านอาหาร varchar(10) not null,
ร้านอาหาร varchar(100)

primary key(IDร้านอาหาร)
)


create table Meals(
รหัสนิสิต varchar(50) not null,
วันที่ซื้ออาหาร date not null,
ช่วงเวลา varchar(50) not null,
อาหาร varchar(100),
ราคาต่อมื้อ int,
IDร้านอาหาร varchar(10),
ภาชนะ varchar(50),
ราคาน้ำดื่ม int,
primary key (รหัสนิสิต,วันที่ซื้ออาหาร,ช่วงเวลา),

constraint fk_รหัสนิสิต
foreign key (รหัสนิสิต)
references Students(รหัสนิสิต),

foreign key(IDร้านอาหาร)
references Stores(IDร้านอาหาร)
)
