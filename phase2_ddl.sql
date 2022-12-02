drop table if exists ingredient;
drop table if exists nutritional_value;
drop table if exists recipe;
drop table if exists recipe_category;
drop table if exists step;
create table ingredient(
    ingredient_id int not null auto_increment,
    ingredient_name varchar(255),
    food_type varchar(255),
    amount int,
    unit varchar(255),
    ingredient_step_id int not null references step(step_id),
    primary key (ingredient_id)
);
drop table if exists nutritional_value;
create table nutritional_value(
    nutrition_ID int not null auto_increment,
    calories_g int,
    carbs_g int,
    fat_g int,
    fiber_g int,
    protein_g int,
    sodium_mg int,
    nv_recipe_id int not null references recipe(recipe_id),
    primary key (nutrition_ID)
);
drop table if exists step;
create table step(
    step_id int not null auto_increment,
    step_number int not null,
    step_content varchar(255),
    step_recipe_id int not null references recipe(recipe_id),
    primary key (step_id)
);
drop table if exists recipe;
create table recipe(
    recipe_id int not null auto_increment,
    recipe_name varchar(255),
    recipe_serves int,
    recipe_cook_time int,
    primary key (recipe_id)
);
drop table if exists recipe_category;
create table recipe_category(
    recipe_category_id int not null auto_increment,
    meal_type varchar(255),
    rc_recipe_id int not null references recipe(recipe_id),
    primary key (recipe_category_id)
);
insert into ingredient ()
values ();