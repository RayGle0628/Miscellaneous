create table Course(
    COURSE_ID serial primary key not null ,
    COURSE_NAME varchar(22),
    DESCRIPTION varchar(22),
    CAPACITY int
);

alter table Course
add constraint CAPACITY foreign key  (CAPACITY) references Course(COURSE_ID);