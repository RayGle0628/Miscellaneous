create table Buliding (
    BUILDING_NO  SERIAL PRIMARY KEY  NOT NULL ,
    CODE varchar(5),
    LOCATION varchar(50)
);

create table Room(
    ROOM_NO serial primary key not null ,
    CAPACITY int,
    EQUIPMENT varchar(22)
);

alter table  Room
add constraint Room foreign key (ROOM_NO) references Buliding(BUILDING_NO);