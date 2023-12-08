-- BangingChains - Lily Yassemi, Matthew Marcotullio, Matt Macari, Alex Georgopoulos, Dylan Lucas, Katherine Lopez
-- CS 325 - Fall 2023
-- Last modified: 12-8-23

spool 325report1-results.txt

clear columns breaks computes

set newpage 1
set linesize 110
set pagesize 15
set feedback off

ttitle CENTER 'BANGING CHAINS - QUERY REPORT 1'  
btitle CENTER '- REPORT END -'

prompt The purpose of this report is to get the disc_name, brand_name, type, flight numbers, and price 
prompt for the discs priced in the bottom half of our disc stock ordered by most expensive to least expensive. 
prompt We can give this information to our customers who are looking for more affordable discs.

col "Brand - Disc Name" heading "Brand - Disc Name" format a25
col "Brand" format a12
col "Type" heading "Disc Type" format a14
col "Flight Numbers" format a35
col "Plastic" format a12
col "Price" format $99999999.99

break ON disc_name on disc_price skip 1
compute avg of disc_price on disc_name

select brand_name || ' - ' || disc_name "Brand - Disc Name", disc_type "Type", 
        'speed: ' ||  disc_speed_num ||' glide: ' || disc_glide_num || ' turn: ' 
        || disc_turn_num || ' fade: ' || disc_fade_num "Flight Numbers", 
        disc_plastic_type "Plastic", disc_price "Price"
from disc 
where disc_price < (select avg(disc_price) avg_disc_price
                    from disc)      
order by "Price" desc;

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