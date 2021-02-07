use delivering_service;

-- typical requests

-- 1. Search deliverings by city
set @city:= 'South Arjunton';

select 
	order_id
    , os.description as order_status
    , af.city as city_from
    , at.city as city_to    
from deliverings as d
	inner join address as af
		on d.from_address_id = af.entity_id
	inner join address as at
		on d.to_address_id = at.entity_id
	inner join order_status as os
		on d.order_status = os.id
where af.city = @city 
	or at.city = @city;

-- 2. Search client by date of sending
set @sent_date:= (select date(send_date) from deliverings order by rand() limit 1);
select @sent_date;

select distinct cl.client_name, 
				dt.send_date as date_sent_by_client, 
                dt.date_received as date_received_from_client, 
                dt.completed as received_from_client, 
                df.send_date date_sent_to_client, 
                df.date_received as received_by_client, 
                df.completed as received_by_client
from clients as cl
	inner join deliverings as df
		on cl.entity_id = df.from_id
    inner join deliverings as dt
		on cl.entity_id = dt.to_id
where date(df.send_date) = @sent_date or date(dt.send_date) = @sent_date;



-- ********************************************************************************************
-- examples of storde procedures using
-- 1. create delivering
set @client_from = (select entity_id from clients order by rand() limit 1);
set @client_to = (select entity_id from clients order by rand() limit 1);
set @address_from = (select address from clients where entity_id = @client_from);
set @address_to = (select address from clients where entity_id = @client_to);
set @cost = (FLOOR(rand() * (250 - 1 + 1) + 1));
set @paid = (if(rand() > 0.50, 1, 0));
set @who_paid = (if(rand() > 0.5, @client_from, @client_to));
set @fragile = (if(rand() > 0.50, 1, 0));
set @dangerous = (if(rand() > 0.50, 1, 0));
set @flamable = (if(rand() > 0.50, 1, 0));
set @notes = concat('Some text ', now());

call create_delivering (@client_from, 
						@client_to, 
						@address_from,
						@address_to, 
						@cost, 
                        @paid,
                        @who_paid,
						@fragile,
                        @dangerous,
                        @flamable,
                        @notes);
select *
from deliverings 
order by id desc limit 1;

-- 2. create client
-- Person non-legal entity in example
set @client_name = null;
set @first_name = 'Test';
set @last_name = 'Test LN';
set @middle_name = null;
set @country = (select country from address order by rand() limit 1);
set @region = (select region from address order by rand() limit 1);
set @city = (select city from address order by rand() limit 1);
set @address_1 = (select address_1 from address order by rand() limit 1);
set @zip = (select zip from address order by rand() limit 1);
set @is_branch = 0;
set @legal_entity_address = 0;
set @phone = '(555)555-55-56';
set @can_smes = (if(rand() > 0.50, 1, 0));
set @email = 'testmail@testmail.com';
set @dob = CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 14) DAY - INTERVAL FLOOR(RAND() * 12) Month - INTERVAL FLOOR(RAND() * 20 + 15) YEAR;
set @other_contact_method = 'Other contact method for test 1';

call add_client (@client_name
				, @first_name
				, @last_name
                , @middle_name
                , @country
                , @region
                , @city
                , @address_1
                , @zip
                , @is_branch
                , @legal_entity_address
                , @phone
                , @can_sms
                , @email
                , @dob
                , @other_contact_method);
                
-- 3. Client search
set @phone = '(555)555-55-56';
call client_search_by_phone(@phone);

set @city = (select city from address order by rand() limit 1);
call client_search_by_city(@city);

set @first_name = (select first_name from clients order by rand() limit 1);
call client_search_by_name(null, @first_name, null);


-- 4. Delivering search (first two fields are mandatory)
call delivering_search('Tiffanyshire', 'sapie', 0, '2020-11-02', '2020-11-04');
call delivering_search('Tiffanyshire', 'sapie', 0, NULL, null);
call delivering_search('Tiffanyshire', 'sapie', null, NULL, null);


-- 5 Delivering count by date and client
set @start_date = '2020-12-01';
set @start_date = '2021-02-01';
call delivering_count_by_interval(@start_date, @end_date);
call delivering_count_by_interval(null, null);

-- 6 Create invoice
set @client_id = (select pay_client_ref from deliverings where paid = 0 order by rand() limit 1);
set @delivering_id = (select entity_id from deliverings where pay_client_ref = @client_id order by rand() limit 1);

call add_invoice(@client_id, @delivering_id, null);
call add_invoice(@client_id, null, null);
