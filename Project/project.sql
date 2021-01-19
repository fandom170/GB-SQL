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

/*create table clients (
unique_id int4 unsigned auto_increment primary key comment "own number of client",
reference_id int8 unsigned not null comment "link to entity table",
client_status int2 unsigned comment 'link to client_status table',
client_name varchar(100) comment 'can be combination of FN and LN for individuals',
first_name varchar(50) not null comment 'FN of contact person in case of legal entity',
middle_name varchar(50),
last_name varchar(50) not null comment 'LN of contact person in case of legal entity',
address int4 unsigned comment 'link to address table',
contact_phone int8 unsigned comment 'link to phone table',
can_sms boolean default true,
email int4 comment 'link to phone table',
other_contacy_method varchar(100),
date_of_birth date,
legal_entity boolean default false comment 'True if client is legal entity',
payment_information int8 unsigned comment 'Should be populated if client is legal entity',

constraint fk_clients_et foreign key (reference_id) references entity_table(entity_id) ON DELETE restrict ON update cascade,
constraint fk_clients_clientstatus foreign key (client_status) references client_status(id) ON DELETE set null ON update cascade,
constraint fk_clients_phone foreign key (contact_phone) references phone(id) ON DELETE set null ON update cascade,
index client_names (client_name)
);*/

/*alter table clients auto_increment=10000;*/

/*delimiter $$
create trigger tg_clients_client_name 
	before insert 
	on clients
    for each row
    begin
		if (new.client_name is null) then
			set new.client_name = concat(new.first_name, ' ', new.last_name);
		end if;
    end$$
delimiter;*/

/*create table client_status (
id int2 unsigned auto_increment primary key not null,
status_description varchar(50),
is_active boolean default true
);*/
/*alter table client_status auto_increment=10*/

/*create table phone (
id int8 unsigned,
phone varchar(12) not null comment 'available format is x xxx xxx xx xx',
notes varchar(100),

constraint fk_phone_et foreign key (id) references entity_table(entity_id) ON update cascade,
constraint ch_phone_format check (length(phone) >= 7 AND length(phone) <= 12 ),

index address(phone)
);*/

/*create table order_status(
id int4 unsigned primary key,
description varchar(50),
active_status boolean default false
);*/


/*create table address (
id int4 unsigned auto_increment primary key,
entity_id int8 unsigned,
country varchar(50),
region varchar(50),
city varchar(50) not null,
address_1 varchar(50) not null,
address_2 varchar(50),
is_branch boolean,
legal_entity_address boolean default false,

index idx_branch(is_branch, city),
index idx_city(city),

constraint fk_address_et foreign key (entity_id) references entity_table(entity_id) ON update cascade
);*/

/*create table email(
id int4 unsigned auto_increment primary key,
entity_id int8 unsigned,
email varchar(255),
email_note varchar(150) comment 'comment about email',
constraint fk_email_et foreign key (entity_id) references entity_table(entity_id) ON update cascade,
constraint ch_email_format check (email NOT REGEXP '^[^@]+@[^@]+\.[^@]{2,}$'),  -- or '^[A-Z0-9._%-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$'
index email(email)
);*/


create table deliverings (
id int4 unsigned auto_increment comment 'internal id',
entity_id int8 unsigned comment 'general number in system',
order_id nvarchar(25) unique comment 'unique external id for any deliverings',
order_status int4 not null,
from_address_id int8 unsigned not null,
to_address_id int8 unsigned not null,
from_id int8 unsigned not null,
to_id int8 unsigned not null,
international boolean default false,

closed boolean default false,

constraint fk_deliverings_entity_table foreign key (entity_id) references entity_table(entity_id) on delete restrict on update cascade,
CONSTRAINT fk_deliverings_order_status FOREIGN KEY (order_status) references order_status(id) on update cascade on delete set null,
CONSTRAINT fk_deliverings_address_from FOREIGN KEY (from_address_id) references address(id) on delete set null on update cascade,
CONSTRAINT fk_deliverings_address_to FOREIGN KEY (to_address_id) references address(id) on delete set null on update cascade,
CONSTRAINT fk_deliverings_client_from FOREIGN KEY (from_id) references clients(id) on delete set null on update cascade,
CONSTRAINT fk_deliverings_client_to FOREIGN KEY (to_id) references clients(id) on delete set null on update cascade

);




create table payment_info(
id
name
tax_number
bank_account
bank_name
BIC_code
bank_city
corr_account

check bank_account len 20
check corr_accoint len 20
check tax_number

);

create table invoices ();

create table orders (
id int4 unsigned not null auto_increment primary key,
entity_id int8 unsigned not null,
paid boolean not null,
amount float not null,
VAT boolean comment 'НДС',
paid_by_sender boolean comment 'true - by sender, false - by receiver',
pay_client_ref int8 unsigned not null,

constraint fk_orders_et foreign key(entity_id) references entity_table(entity_id) on delete restrict on update cascade,
constraint fk_client_payments foreign key(entity_id) references clients(entity_id)
);

goods_extra
fragile
explosive
food
animal


create table log ()

create trigger add_data_to_log on delete on clients
for each row 
begin
	insert into log 
		set name = old.name ...
end;

-- ***********************************************************************************************
create view current_deliverings
as
select *
from deliverings
inner join clients

inner join address

inner join phone
;

create view recent_payments

;
create view our_branches

;




-- *********************************************************************************************
create procedure create_delivering ()
begin

end;

create procedure change_status_for_delivering ()
begin

end;

create procedure add_client()
begin
	start transaction
		try
        SELECT LAST_INSERT_ID() FROM `table`
			insert into entity_table
			insert into phone
			insert into address
    
			insert into clients
		except
        rollback
    end;
end;

create procedure client_search()
begin

end;


create procedure delivering_serach()
begin

end










