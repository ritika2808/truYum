create database truyum;

use truyum;

create table menu_items(
	menu_id int primary key,
    menu_name varchar(50) not null,
    menu_price decimal(7,2) not null,
    menu_Active varchar(3) not null,
    menu_dateoflaunch date not null,
    menu_category varchar(50) not null, 
    menu_free_delivery varchar(10) not null
);

create table user(
	user_id int primary key,
    user_name varchar(50) not null
);

create table cart(
	ct_id int primary key AUTO INCREMENT,
    ct_userid int references user(user_id),
    ct_menuid int references menu_items(menu_id)
);
