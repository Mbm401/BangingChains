-- CS 325 - Fall 2023
-- Group: The Super 6 Chain Bangers
--        Lily Yassemi, Matt Macari, Matthew Marcotullio, Alex Georgopoulos, Katherine Lopez, Dylan Lucas
-- Last modified: 12-01-23

spool 325result-contents.txt

set pagesize 45

set linesize 120

set feedback off

prompt
prompt SELECT FROM disc 
prompt =========================================

col disc_name heading 'Disc Name' format a13

col brand_name heading 'Brand' format a12

col disc_color heading 'Color' format a7

col disc_type heading 'Type' format a14

col disc_speed_num heading 'Speed #' format 9999999

col disc_glide_num heading 'Glide #' format 9999999

col disc_turn_num heading 'Turn #' format 999999

col disc_fade_num heading 'Fade #' format 999999

col disc_plastic_type heading 'Plastic' format a11

col disc_price heading 'Price' format $9999.99 

col disc_quant_avail heading '# Available' format 99999999999

select sku, disc_name, brand_name, disc_color, disc_type, disc_speed_num, disc_glide_num, disc_turn_num, disc_fade_num, disc_plastic_type
from disc; 

select sku, disc_name, disc_price, disc_quant_avail
from disc; 

prompt
prompt SELECT FROM user_info
prompt =========================================

col email heading 'Email' format a20

col fname heading 'First Name' format a11

col lname heading 'Last Name' format a12

col is_customer heading 'C'

col is_admin heading 'A'

select * 
from user_info; 

prompt
prompt SELECT FROM users
prompt =========================================

col password_hash heading 'PASSWORD' format a8

col email heading 'EMAIL' format a20

select * 
from users; 

prompt
prompt SELECT FROM admin
prompt =========================================

col admin_role heading 'ROLE' format a16

col admin_privileges heading 'PRIVILEGES' 

select * 
from admin; 

prompt
prompt SELECT FROM customer
prompt =========================================

col reward_points heading 'REWARD_PTS' format 9999999999

col b_address_id heading 'B_ID'

col s_address_id heading 'S_ID'

select *
from customer; 

prompt
prompt SELECT FROM customer_card
prompt =========================================

col cvv_num heading 'CVV' format 9999 

col name_on_card heading 'NAME' format a19

select *
from customer_card; 

prompt
prompt SELECT FROM customer_billing_address
prompt =========================================

col b_address_id heading 'B_ID'

col state_abr heading 'STATE' format 99999

col street_address heading 'STREET' format a22

col zipcode heading 'ZIPCODE' format a7

col apt_num heading 'APT #' format 9999

select *
from customer_billing_address; 

prompt
prompt SELECT FROM customer_shipping_address
prompt =========================================

col s_address_id heading 'S_ID'

col state_abr heading 'STATE' format 99999

col street_address heading 'STREET' format a22

col zipcode heading 'ZIPCODE' format a7 

col apt_num heading 'APT #' format 9999

select *
from customer_shipping_address; 

prompt
prompt SELECT FROM orders
prompt =========================================

col shipment_status heading 'SHIPMENT STATUS' format a15

col order_status heading 'ORDER STATUS' format a12

col date_placed heading 'DATE PLACED' format a11

col date_delivered heading 'DATE DELIVERED' format a14

col order_num heading 'ORDER #' format 9999999

select *
from orders; 

prompt
prompt SELECT FROM order_of_disc
prompt =========================================

select *
from order_of_disc;

spool off
