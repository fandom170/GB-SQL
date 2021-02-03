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

alter table phone add constraint fk_phone_et foreign key (id) references entity_table(entity_id) ON update cascade



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

alter table address add constraint fk_address_et foreign key (entity_id) references entity_table(entity_id) ON update cascade

/*create table email(
id int4 unsigned auto_increment primary key,
entity_id int8 unsigned,
email varchar(255),
email_note varchar(150) comment 'comment about email',
constraint fk_email_et foreign key (entity_id) references entity_table(entity_id) ON update cascade,
constraint ch_email_format check (email REGEXP '^[^@]+@[^@]+\.[^@]{2,}$'),  -- or '^[A-Z0-9._%-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$'
index email(email)
);*/

alter table email add constraint fk_email_et foreign key (entity_id) references entity_table(entity_id) ON update cascade;

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

alter table payment_info add constraint fk_payment_info_entity_table foreign key (entity_id) references entity_table(entity_id) on delete restrict on update cascade;


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

alter table carriers add constraint fk_carriers_et foreign key(entity_id) references entity_table(entity_id)


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


alter table clients add constraint fk_clients_et foreign key (reference_id) references entity_table(entity_id) ON DELETE restrict ON update cascade;
alter table clients add constraint fk_clients_phone foreign key (contact_phone) references phone(id) ON DELETE set null ON update cascade;
alter table clients add constraint fk_client_payment foreign key(payment_information) references payment_info(entity_id);
alter table clients add constraint fk_client_email foreign key (email) references email(entity_id);


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
/*delimiter $$
create trigger tg_deliverings_orderid 
			before insert
            on deliverings
            for each row
            set new.orderid = concat(client_id, to_address_id,'/',entity_id)
            end;
delimiter ;*/


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


/*create table log (
id int8 unsigned not null auto_increment primary key,
entity_id int8 unsigned not null,
entity_name varchar(100),
event_date datetime
);*/
/*
delimiter $$
create trigger tg_client_to_log after insert on clients
for each row 
begin
	insert into log (entity_id, entity_name, event_date)
		values (new.entity_id, new.client_name, now());
end$$
delimiter ;

delimiter $$
create trigger tg_delivering_to_log after insert on deliverings
for each row 
begin
	insert into log (entity_id, entity_name, event_date)
		values (new.entity_id, 'delivering', now());
end$$
delimiter ;
*/
-- ***********************************************************************************************
/*create view current_deliverings
as
select d.order_id,
os.description as order_status,
a_from.city as city_from,
a_to.city as city_to
, a_to.address_1 as address_to
, a_to.is_branch
, d.carrier
, d.fragile
, d. dangerous
, d.flamable
, d.notes
, c_to.client_name
, p.phone as contact_phone
, p.notes as contact_notes
from deliverings as d
inner join clients as c_from
	on d.from_id = c_from.entity_id
inner join clients as c_to
	on d.to_id = c_to.entity_id
left join phone as p
	on c_to.contact_phone = p.id
inner join address as a_from
	on d.from_address_id = a_from.entity_id
inner join address as a_to
	on d.to_address_id = a_to.entity_id
inner join order_status as os
	on d.order_status = os.id
where d.completed <> 0
;*/

/*
create or replace view our_branches as (
	select 
    id
    , entity_id
    , country
    , region
    , city
    , address_1
    , zip
    from address 
    where  is_branch = 1
);*/

-- *********************************************************************************************
/*
drop procedure if exists create_delivering;
delimiter $$
create procedure create_delivering (client_from int8, 
									client_to int8, 
                                    address_from int8,
                                    address_to int8, 
                                    cost float, 
                                    paid boolean,
                                    who_paid int8,
                                    fragile boolean,
                                    dangerous boolean,
                                    flamable boolean,
                                    notes varchar(1000) )
begin
		declare now datetime;
        declare id_entity int8 unsigned;
        declare order_status int4;
        
        
        set now = now();
		insert into entity_table (created, updated)
        values (now, now);
        
        set id_entity = (select entity_id from entity_table order by entity_id desc limit 1);
        set order_status = (select id from order_status where description = 'Open');
        
        insert into deliverings(entity_id, order_status, from_address_id, to_address_id, from_id, to_id, cost, paid, pay_client_ref, fragile, dangerous, flamable, notes)
        values(id_entity, order_status, address_from, address_to, client_from, client_to, cost, paid, who_paid, fragile, dangerous, flamable, notes)  ;

end$$

delimiter ;

call create_delivering (1000692, 1000451, 1000185, 1000514, 910.16, 1, 1000451, 0, 0, 0, "Test delivering SP");*/



/*delimiter $$
create procedure add_client(in client_name varchar(50)
								, first_name varchar(50)
                                , last_name varchar(50)
                                , middle_name varchar(50)
                                , country varchar(50)
                                , region varchar(50)
                                , city varchar(50)
                                , address_1 varchar(50)
                                , zip varchar(11)
                                , is_branch tinyint(1)
                                , legal_entity_address tinyint(1)
                                , phone varchar(14)
                                , can_sms tinyint(1)
                                , email varchar(255)
                                , dob datetime
                                , other_contact_method varchar(100))
begin
	declare client_entity_id int8;
    declare address_entity_id int8;
    declare phone_entity_id int8;
    declare email_entity_id int8;
    declare client_status smallint;
	
    start transaction;	
	
    -- entity_id for client
    insert into entity_table(created, updated, deleted)
    values (now(), now(), 0);
    set client_entity_id = (select entity_id from entity_table order by entity_id desc limit 1);
    
    -- entity_id for address
    insert into entity_table(created, updated, deleted)
    values (now(), now(), 0); 
    set address_entity_id = (select entity_id from entity_table order by entity_id desc limit 1);
    

    
    -- entity_id for phone
    insert into entity_table(created, updated, deleted)
    values (now(), now(), 0); 
    set phone_entity_id = (select entity_id from entity_table order by entity_id desc limit 1);
        
    -- entity_id for email
    insert into entity_table(created, updated, deleted)
    values (now(), now(), 0); 
    set email_entity_id = (select entity_id from entity_table order by entity_id desc limit 1);
    
	insert into address (entity_id, country, region, city, address_1, zip, is_branch, legal_entity_address)
    values (address+entity_id, country, region, city, address_1, zip, is_branch, legal_entity_address);
    
    insert into email (entity_id, email)
    values (email_entity_id, email);
    
    insert into phone (id, phone)
    values (id, phone);
    
    set client_status = (select id from client_status where status_description = 'Active');
    
    insert into clients (entity_id, client_status, client_name, first_name, last_name, middle_name, address, contact_phone, can_sms, email, other_contact_method,
			date_of_birth, legal_entity)
	values (client_entity_id, client_status, client_name, first_name, last_name, middle_name, address_entity_id, phone_entity_id, can_sms,
			email_entity_id, other_contact_method, dob, legal_entity_address);    
    
commit;

end$$
delimiter ;*/

/*

drop procedure client_search
delimiter $$
create procedure client_search(in client_name varchar(100)
								, city varchar(50)
                                , address_1 varchar(50)
                                , first_name varchar(50)
                                , last_name varchar(50)
                                , phone varchar(14))
begin
	select cl.entity_id 
	from clients as cl
    inner join address as ad
    on cl.address = ad.entity_id   
    inner join phone as p
    on cl.contact_phone = p.id 
    where ad.city = ifnull(city, 0) 
			or ad.address_1 = ifnull(address_1, 0)
            or cl.client_name = ifnull(client_name, 0)
            or cl.first_name = ifnull(first_name, 0)
			or cl.last_name = ifnull(last_name, 0)
            or p.phone = ifnull(phone, 0);

end$$
delimiter ;
*/

/*
drop procedure if exists delivering_search
delimiter $$
create procedure delivering_search(in city varchar(50)
									, client_id int8 
                                    , completed boolean
                                    , sent_date date
                                    , received date)
begin
	select distinct d.entity_id
    from deliverings as d
    inner join address as a1
		on d.from_address_id = a1.entity_id
	inner join address as a2
		on d.to_address_id = a2.entity_id
	inner join clients as cl1
		on d.from_id = cl1.entity_id
    inner join clients as cl2
		on d.to_id = cl2.entity_id 
	where ((a1.city = ifnull(city, 0) or a2.city = ifnull(city, 0))
			or (cl1.entity_id = ifnull(client_id, 0) or cl2.entity_id = ifnull(client_id, 0))
            or d.send_date = ifnull(sent_date, '1970-01-01') 
            or d.date_received = ifnull(received, '1970-01-01') 
            )             
            and d.completed = completed;
end $$

delimiter ; */











