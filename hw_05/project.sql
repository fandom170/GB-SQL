/*create database delivering_service;*/
use delivering_service;

/*create table entity_table(
entity_id int8 unsigned auto_increment not null primary key comment "unique value for whole system",
created timestamp default current_timestamp comment "time and date for entity creation",
updated timestamp default current_timestamp on update current_timestamp comment "time and date of entity update",
deleted boolean default false comment "shows status of entity"
-- created_by comment "person who created entity"
-- updated_by comment "person who updated entity"
);*/
/*alter table entity_table auto_increment= 1000000*/

create table clients (
unique_id int4 unsigned auto_increment primary key comment "own number of client",
reference_id int8 unsigned not null comment "link to entity table",
client_name varchar(100) not null,
contact_person int4 unsigned,
address int4 unsigned,
constraint fk_clients_et foreign key (reference_id) references entity_table(entity_id),

);


create table people (
unique_id int4 unsigned auto_increment primary key comment "own number of person",
reference_id int8 unsigned not null comment "link to entity table",
first_name varchar(50) not null,
middl_name varchar(50),
last_name varchar(50) not null,
address int4 unsigned,
contact_phone int4 not null,
email varchar(100) ,
date_of_birth date,
constraint fk_clients_et foreign key (reference_id) references entity_table(entity_id)
);

create trigger person_email_validation
	before insert
    on people
    for each row
	begin
		if NEW.email not like '%_@%__.__%' THEN
        SIGNAL SQLSTATE '45000'
				SET MESSAGE_TEXT = 'Entered email is not valid' ;
		END IF;
	end;



create table dictionary (
id int4 unsigned auto_increment not null primary key comment "status_id",
group_id int2 unsigned not null comment "shows type of code",  
description varchar(30) comment "description of code",
active_status boolean default false
);


create table orders (
id int8 unsigned,
order_id
order_status int4 not null,

from_id int8 unsigned not null,
to_id int8 unsigned not null,
international boolean default false,
closed boolean default false,

CONSTRAINT fk_orders_order_status FOREIGN KEY (order_status) references order_status(id),
CONSTRAINT fk_orders_address_from FOREIGN KEY (from_id) references address(id),
CONSTRAINT fk_orders_address_to FOREIGN KEY (to_id) references address(id)
);

create table order_status(
id int4 unique,
description varchar(50),
active_status boolean default false
);



create table address (
id
country
region
city
address_1
address_2
)

create table phone()

create table email()








