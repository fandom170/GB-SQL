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
/*create index idx_entityid on entity_table (entity_id)*/

/*create table client_status (
id int2 unsigned auto_increment primary key not null,
status_description varchar(50),
is_active boolean default true
);*/
/*alter table client_status auto_increment=10*/

/*create table phone (
id int8 unsigned,
phone varchar(14) not null,
notes varchar(100),

constraint fk_phone_et foreign key (id) references entity_table(entity_id) ON update cascade,
constraint ch_phone_format check (length(phone) >= 7),

index phone(phone)
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
zip varchar(11),
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
constraint ch_email_format check (email REGEXP '^[^@]+@[^@]+\.[^@]{2,}$'),  -- or '^[A-Z0-9._%-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$'
index email(email)
);*/


/*create table payment_info(
id int4 unsigned auto_increment primary key comment 'internal id',
entity_id int8 unsigned comment 'general number in system',
bank_name nvarchar(100) comment "name of bank",
tax_number varchar(20) comment "enterprize tax no",
bank_account varchar(20) comment "number of bank acc",
BIC_code varchar(8),
bank_city varchar(50) comment "city where bank account was registered",

constraint length_tax_no CHECK (LENGTH(tax_number) <= 10) ,
constraint length_bank_acc CHECK (LENGTH(bank_account) <= 20) ,

constraint fk_payment_info_entity_table foreign key (entity_id) references entity_table(entity_id) on delete restrict on update cascade

);*/


/*create table carriers (
id int4 unsigned not null auto_increment primary key,
entity_id int8 unsigned not null,
name varchar(200) not null,
car_mark varchar(50),
car_color varchar(50),
car_number varchar(10),
document_type int4 unsigned comment 'references to document types table',
document_id varchar(25),
other_data varchar(200),

constraint fk_carrier_documents foreign key (document_type) references document_types(id),
constraint fk_carriers_et foreign key(entity_id) references entity_table(entity_id)
);*/


/*create table clients (
id int4 unsigned auto_increment primary key comment "own number of client",
entity_id int8 unsigned not null comment "link to entity table",
client_status int2 unsigned comment 'link to client_status table',
client_name varchar(100) comment 'can be combination of FN and LN for individuals',
first_name varchar(50) not null comment 'FN of contact person in case of legal entity',
middle_name varchar(50),
last_name varchar(50) not null comment 'LN of contact person in case of legal entity',
address int4 unsigned comment 'link to address table',
contact_phone int8 unsigned comment 'link to phone table',
can_sms boolean default true,
email int8 unsigned comment 'link to email table',
other_contacy_method varchar(100),
date_of_birth date,
legal_entity boolean default false comment 'True if client is legal entity',
payment_information int8 unsigned comment 'Should be populated if client is legal entity',

constraint fk_clients_clientstatus foreign key (client_status) references client_status(id) ON DELETE set null ON update cascade,
constraint fk_clients_et foreign key (reference_id) references entity_table(entity_id) ON DELETE restrict ON update cascade,
constraint fk_clients_phone foreign key (contact_phone) references phone(id) ON DELETE set null ON update cascade,
constraint fk_client_payment foreign key(payment_information) references payment_info(entity_id),
constraint fk_client_email foreign key(email) references email(entity_id),

index client_names (client_name)
);*/

alter table clients change column reference_id entity_id int8 unsigned not null comment "link to entity table"


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


/*create table deliverings (
id int4 unsigned auto_increment primary key comment 'internal id',
entity_id int8 unsigned comment 'general number in system',
order_id nvarchar(25) unique comment 'unique external id for any deliverings',
order_status int4 unsigned,
from_address_id int8 unsigned not null,
to_address_id int8 unsigned not null,
from_id int8 unsigned not null,
to_id int8 unsigned not null,
cost float not null,
paid boolean,
pay_client_ref int8 unsigned not null,
carrier int8 unsigned,
fragile boolean default false,
dangerous boolean default false,
flamable boolean default false,
completed boolean default false,
notes varchar(1000),

constraint fk_deliverings_entity_table foreign key (entity_id) references entity_table(entity_id) on delete restrict on update cascade,
CONSTRAINT fk_deliverings_order_status FOREIGN KEY (order_status) references order_status(id) on update cascade on delete set null,
CONSTRAINT fk_deliverings_address_from FOREIGN KEY (from_address_id) references address(entity_id) on update cascade,
CONSTRAINT fk_deliverings_address_to FOREIGN KEY (to_address_id) references address(entity_id)  on update cascade,
CONSTRAINT fk_deliverings_client_from FOREIGN KEY (from_id) references clients(reference_id)  on update cascade,
CONSTRAINT fk_deliverings_client_to FOREIGN KEY (to_id) references clients(reference_id)  on update cascade,
CONSTRAINT fk_deliverings_payclient FOREIGN KEY (pay_client_ref) references clients(reference_id) on update cascade,
constraint fk_delivering_carrier foreign key (carrier) references carriers(entity_id)
);*/

/*alter table deliverings add column send_date datetime, add column expectind_receiving datetime, add column date_received datetime;*/
delimiter $$
create trigger tg_deliverings_orderid 
			before insert
            on deliverings
            for each row
            set new.orderid = concat(client_id, to_address_id,'/',entity_id)
            end;
delimiter ;


-- create index idx_carrier on deliverings (carrier);

/*create table document_types (
	id int4 unsigned auto_increment primary key comment 'internal id',
    document_description varchar(100) not null
);*/


/*create table invoices (
id int4 unsigned auto_increment primary key comment 'internal id',
entity_id int8 unsigned comment 'general number in system',
invoice_number varchar(20),
invoice_amt float,
client_id int8 unsigned, 
fully_paid boolean default false,
constraint fk_invoices_entity_table foreign key (entity_id) references entity_table(entity_id) on delete restrict on update cascade,
constraint fk_invoices_client foreign key (client_id) references clients(reference_id) on delete restrict on update cascade
);*/

/*create table x_delivering_invoice 
(
id int4 unsigned auto_increment not null primary key,
delivering int8 unsigned,
invoice_id int8 unsigned,
client_id int8 unsigned,

constraint x_delivering foreign key (delivering) references deliverings(entity_id),
constraint x_client foreign key (client_id) references clients(reference_id),
constraint x_invoice foreign key (invoice_id) references invoices(entity_id)
)*/
-- ****************************************************************************************************








create table log (
id int8 unsigned not null auto_increment primary key,

)

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

create view recent_payments (

)

;
/*create view our_branches as (
	select 
    country
    , region
    , city
    , address_1
    , address_2
    from address 
    where  is_branch = true
);*/




-- *********************************************************************************************
delimiter $$
create procedure create_delivering (client_from, 
									client_to, 
                                    address_from,
                                    address_to, 
                                    cost, 
                                    paid,
                                    who_paid,
                                    fragile,
                                    dungerous,
                                    flamable,
                                    notes)
begin
	lock tables entity_table write;

		declare now datetime;
        declare id_entity int8 unsigned;
        declare order_status int4;
        
        
        set now = now()
		insert into entity_table (created_at, updated_at)
        values (now, now);
        
        set id_entity = select entity_id from emtoty_table order by entity_id desc limit 1;
        set order_satus = select id from order_status where decription = 'Open';
        
        insert into deliverings(entity_id, order_status, from_address_id, to_address_id, from_id, to_id, cost, paid, pay_client_ref, fragile, dungerous, flamable, notes)
        values(id_entity, order_status, address_from, address_to, client_from, client_to, const, paid, who_paid, fragile, dungerous, flamable, notes)  

	unlock tables;
end$$

delimiter ;

create procedure change_status_for_delivering ()
begin

end;

create procedure add_client()
begin

SET autocommit=0;
LOCK TABLES t1 WRITE, t2 READ, ...;
... do something with tables t1 and t2 here ...
COMMIT;
UNLOCK TABLES;
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










