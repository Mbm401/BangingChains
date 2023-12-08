-- BangingChains - Lily Yassemi, Matthew Marcotullio, Matt Macari, Alex Georgopoulos, Dylan Lucas, Katherine Lopez
-- CS 325 - Fall 2023
-- Last modified: 12-8-23

spool 325report1-results.txt

clear columns breaks computes

set newpage 1
set linesize 42
set pagesize 20
set feedback off

ttitle CENTER 'BANGING CHAINS - QUERY REPORT 2'  
btitle CENTER '- REPORT END -'

prompt To see which customers ordered which discs, we select the order number, customer full name, 
prompt and disc name(s) for all orders. 

col order_num heading 'Order #' format a7

col customer_name heading 'Customer Name' format a19

col disc_name heading 'Disc Name' format a13

break on order_num

select distinct orders.order_num, user_info.fname || ' ' || user_info.lname customer_name, disc.disc_name
from orders, users, user_info, order_of_disc, disc
where orders.order_num = order_of_disc.order_num 
    AND order_of_disc.sku = disc.sku
    AND orders.username = users.username
    AND users.email = user_info.email
order by orders.order_num; 

spool off

clear breaks columns computes

set space 1
set feedback 6
set pagesize 14
set linesize 80
set newpage 1
set heading on
ttitle off 
btitle off