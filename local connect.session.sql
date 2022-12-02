drop table if exists food;
create table food(
    food_id int not null auto_increment,
    food_rating double,
    primary key (food_id)
);