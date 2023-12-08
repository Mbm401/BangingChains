-- BangingChains - Lily Yassemi, Matthew Marcotullio, Matt Macari, Alex Georgopoulos, Dylan Lucas, Katherine Lopez
-- CS 325 - Fall 2023
-- Last modified: 12-8-23

spool 325query-results.txt

clear breaks columns computes

set pagesize 35
set linesize 120 
set feedback off

prompt 
prompt query 1
prompt ========================
prompt 

-- For all customers with more than 1000 points, get their email address to send a thank you for their patronage.

col username heading "Username" format a15
col reward_points heading "Reward Points" format 9999999999
col email heading "Email" format a20
break on username skip 1

select customer.username, reward_points, user_info.email
from customer, user_info, users
where reward_points > 1000
      AND customer.username = users.username
      AND users.email = user_info.email
order by reward_points; 

prompt 
prompt query 2
prompt ========================
prompt 

-- Get the name, email, and card exp_date for all customers whose card is expired/will expire in the next 6 months
-- to send a reminder email to update their card 

col name_on_card heading "Name on Card" format a25
col exp_date heading "Expiration Date" format a11 
col email heading "Email" format a20

select distinct name_on_card, exp_date, email
from customer_card, users
where users.username = customer_card.username AND 
      exp_date <= '07-JUN-2024'; 

prompt 
prompt query 3
prompt =========================
prompt 

-- Get the order number, customer last name, and disc name for all orders in the order table
-- to see which customers bought which discs. 

select  orders.order_num, user_info.fname || ' ' || user_info.lname "Name", disc.disc_name
from orders, users, user_info, order_of_disc, disc
where orders.order_num = order_of_disc.order_num 
    AND order_of_disc.sku = disc.sku
    AND orders.username = users.username
    AND users.email = user_info.email; 

prompt
prompt query 4
prompt =========================
prompt 

-- Get the order number for all orders that ship to the state of New York to be grouped for processing 

select customer.username, order_num, shipment_status, order_status
from orders, customer, customer_shipping_address
where orders.username = customer.username 
      AND customer.username = customer_shipping_address.username 
      AND order_status != 'SHIPPED'
      AND order_status != 'INVOICE'
      AND order_status != 'RETURNED'
      AND customer_shipping_address.state_abr = 'NY';

prompt
prompt query 5
prompt =========================
prompt 

-- Get the disc_name, brand_name, disc_color, disc_type, flight numbers, plastic_type, and price 
-- of all discs that are of type 'driver' in order to assist customers in choosing a driver disc by seeing all stats

select disc_name "Name", brand_name "Brand", disc_color, disc_type "Type", 'speed: ' || disc_speed_num || ' glide: ' || disc_glide_num || ' turn: ' || disc_turn_num || ' fade: ' || disc_fade_num
       "Flight Numbers", disc_plastic_type "Plastic", disc_price "Price"
from disc
where disc_type = 'driver';         
       
prompt 
prompt query 6
prompt =========================
prompt 

-- Project the disc_name, brand_name, color, type, flight numbers, plastic type, and price
-- where the disc price is greater than the average disc price on our site ordered from most to least expensive


select disc_name "Name", brand_name "Brand", disc_color, disc_type "Type", 'speed: ' ||  disc_speed_num || ' glide: ' || disc_glide_num || ' turn: ' || disc_turn_num || ' fade: ' || disc_fade_num "Flight Numbers", disc_plastic_type "Plastic", disc_price "Price"
from disc 
where disc_price >= (select avg(disc_price)
                     from disc)
order by disc_price desc; 

prompt 
prompt query 7
prompt =========================
prompt

-- Project the disc_name, brand_name, color, type, flight numbers, plastic type, and price 
-- where the disc price is less than the average disc price on our site ordered from most to least expensive

col "Name" heading "Disc Name" format a16
col disc_color heading "Disc Color" format a10
col "Brand" format a13
col "Type" heading "Disc Type" format a18
col "Flight Numbers" format a38
col "Plastic" format a12
col "Price" format $99999999.99

select disc_name "Name", brand_name "Brand", disc_color, disc_type "Type", 'speed: ' ||  disc_speed_num ||' glide: ' || disc_glide_num || ' turn: ' || disc_turn_num || ' fade: ' || disc_fade_num "Flight Numbers", disc_plastic_type "Plastic", disc_price "Price"
from disc 
where disc_price < (select avg(disc_price) "Average disc price"
                    from disc)
order by disc_price desc;


prompt
prompt query 8 
prompt ==========================
prompt 

-- Select the name and privilege of all admins with privilege level >= 3

select user_info.fname, user_info.lname, admin_privileges
from user_info, admin, users
where users.email = user_info.email AND users.username = admin.username AND 
      is_admin = 'Y' AND admin_privileges >= 3;

prompt
prompt query 9 
prompt ===============================
prompt 

-- Select the brand name and the max price disc for each brand name 

select brand_name, max(disc_price) max_price
from disc
group by brand_name;


