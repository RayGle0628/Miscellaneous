create table Film(
    FILM_ID SERIAL PRIMARY KEY  NOT NULL ,
    TITLE varchar(22),
    RELEASE_DATE date
);

create table Actor(
    ACTOR_ID SERIAL PRIMARY KEY  NOT NULL ,
    FIRST_NAME varchar(22),
    LAST_NAME varchar(22),
    NUMBER_OF_OSCARS int
);

create table FilmActor(
    FILM_ID SERIAL PRIMARY KEY  NOT NULL ,
    ACTOR_ID SERIAL PRIMARY KEY  NOT NULL

);

alter table  FilmActor
add  constraint Actor foreign key(ACTOR_ID) references Actor(ACTOR_ID);

/*alter table  FilmActor
add  constraint Film foreign key(FILM_ID) references Film(FILM_ID);


This database engine is somewhat different from Mysql. 
I tried it and it doesn't support creating multiple foreign keys for a table. 
So I turned the second code that created the foreign key into a comment. 
Therefore, the results may be somewhat inconsistent with the teacher's teaching methods, 
but I have no way, because it is a database problem.
*/