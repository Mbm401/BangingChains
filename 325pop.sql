-- CS 325 Fall 2023 
-- Group: The Super 6 Chain Bangers 
--        Lily Yassemi, Matt Macari, Matthew Marcotullio, Alex Georgopoulos, Katherine Lopez, Dylan Lucas
-- Last modified: 12-1-2023 

delete from user_info;

delete from admin;   

delete from users; 

delete from customer_card;

delete from customer_billing_address; 

delete from customer_shipping_address; 

delete from customer;  

delete from order_of_disc;

delete from orders; 

delete from disc; 

prompt INSERT INTO disc
prompt 

insert into disc 
values
('987654321', 'Destroyer', 'Innova', 'yellow', 'driver', 12, 5, -1, 3, 'halo', 23.99, 1000);

insert into disc 
values
('123456789', 'Roc', 'Innova', 'green', 'mid-range', 5, 4, 0, 3, 'champion', 21.99, 850);

insert into disc 
values 
('132456789', 'Toro', 'Innova', 'purple', 'fairway driver', 4, 2, 0, 4, 'star', 26.99, 975);

insert into disc 
values 
('142356789', 'Buzz', 'discraft', 'red', 'mid-range', 5, 4, -1, 1, 'esp', 19.99, 525);

insert into disc 
values
('152346789', 'Luna', 'discraft', 'white', 'putter', 3, 3, 0, 3, 'big z', 15.99, 330);

insert into disc 
values
('162345789', 'FD3', 'discMania', 'blue', 'fairway driver', 7, 6, 0, 1, 'metal-flake', 24.99, 250);

insert into disc 
values
('172345689', 'Cloud Breaker', 'discMania', 'yellow', 'driver', 12, 5, -1, 3, 'horizon', 27.99, 30);

insert into disc 
values
('182345679', 'P2', 'discMania', 'orange', 'putter', 2, 3, 0, 1, 'd-line', 13.99, 555);

insert into disc 
values
('192345678', 'Truth', 'dynamicDiscs', 'tie-dye', 'mid-range', 5, 5, -1, 1, 'lucid', 18.99, 215);

insert into disc 
values
('124356789', 'Felon', 'dynamicDiscs', 'pink', 'fairway driver', 9, 4, 1, 4, 'lucid', 31.99, 775);

insert into disc 
values 
('000000001', 'HumDinger', 'BCD', 'gold', 'driver', 13, 5, -2, 3, 'gold-flake', 9999.99, 1);


prompt INSERT INTO user_info
prompt 

insert into user_info
values 
('matthew@bcd.com', 'Matthew', 'Marcotullio', 'N', 'Y');

insert into user_info
values 
('matt@bcd.com', 'Matt', 'Macari', 'N', 'Y'); 

insert into user_info
values 
('alex@bcd.com', 'Alex', 'Georgopoulos', 'N', 'Y'); 

insert into user_info
values 
('dylan@bcd.com', 'Dylan', 'Lucas', 'N', 'Y'); 

insert into user_info
values 
('kato@bcd.com', 'Katherine', 'Lopez', 'N', 'Y'); 

insert into user_info
values 
('lily@bcd.com', 'Lily', 'Yassemi', 'N', 'Y'); 

insert into user_info
values 
('smcd@hotmail.com', 'Sleeve', 'McDichael', 'Y', 'N'); 

insert into user_info
values 
('hermione@gmail.com', 'Hermione', 'Granger', 'Y', 'N');

insert into user_info
values 
('smorluvr@ymail.com', 'Anatoli', 'Smorin', 'Y', 'N');

insert into user_info
values 
('yankeelover@aol.com', 'George', 'Costanza', 'Y', 'N');  

insert into user_info 
values 
('markymark@aol.com', 'Mark', 'Wahlberg', 'N', 'Y'); 

insert into user_info 
values 
('jsnow@thewall.com', 'Jon', 'Snow', 'N', 'Y'); 

insert into user_info 
values 
('neo@1.net', 'Neo', 'Anderson', 'Y', 'N'); 

insert into user_info 
values 
('trinity@1.net', 'Trinity', 'Norte', 'Y', 'N'); 

insert into user_info 
values 
('paulb@gmail.com', 'Paul', 'McBeth', 'Y', 'N'); 

insert into user_info 
values 
('meow@hogwarts.edu', 'Crookshanks', 'Granger', 'Y', 'Y'); 

insert into user_info 
values 
('kingslayer@yahoo.com', 'Jamie', 'Lannister', 'Y', 'N'); 

insert into user_info 
values 
('TD@mayhem.com', 'Tyler', 'Durden', 'Y', 'N'); 

insert into user_info 
values 
('bernie@ymail.com', 'Bernie', 'Madoff', 'N', 'Y'); 

insert into user_info 
values 
('ferrisB@hotmail.com', 'Ferris', 'Bueler', 'Y', 'N'); 


prompt INSERT INTO users
prompt

insert into users 
values 
('matt', 'EA13D17', 'matthew@bcd.com'); 

insert into users 
values 
('dischead', '17EDA13', 'matt@bcd.com'); 

insert into users 
values 
('alexBC', '73ED121', 'alex@bcd.com'); 

insert into users 
values 
('dylpickle', '8123ED7', 'dylan@bcd.com'); 

insert into users 
values 
('kato_123', 'ABC123', 'kato@bcd.com'); 

insert into users 
values 
('stargazer', '137DEFZ', 'lily@bcd.com'); 

insert into users 
values 
('sleeveMcD', '0000001', 'smcd@hotmail.com'); 

insert into users 
values 
('mudblood3', '17FDEAZ', 'hermione@gmail.com'); 

insert into users 
values 
('gimmesmor', 'E32178F', 'smorluvr@ymail.com'); 

insert into users 
values 
('artVandelay', '77113FF', 'yankeelover@aol.com'); 

insert into users 
values 
('markyMarketer', '0341112', 'markymark@aol.com'); 

insert into users 
values 
('kingOfTheNorth', '7861342', 'jsnow@thewall.com');  

insert into users 
values 
('neo', '1100111', 'neo@1.net'); 

insert into users 
values 
('datGirlTrin', '0011000', 'trinity@1.net'); 

insert into users 
values 
('mcBeast', '2198371', 'paulb@gmail.com'); 

insert into users 
values 
('datCatCrooks', '2819731', 'meow@hogwarts.edu');

insert into users 
values 
('kingslayer', '2111930', 'kingslayer@yahoo.com');

insert into users 
values 
('soapstud', '1031142', 'TD@mayhem.com'); 

insert into users 
values 
('bigPonzi', '1234217', 'bernie@ymail.com'); 

insert into users 
values 
('captainHooky', '1211211', 'ferrisB@hotmail.com'); 

prompt INSERT INTO admin
prompt 

insert into admin 
values 
('matt', 'CIO', 5); 

insert into admin 
values 
('dischead', 'CFO', 4); 

insert into admin 
values 
('alexBC', 'Intern', 1); 

insert into admin 
values 
('dylpickle', 'CEO', 5); 

insert into admin 
values 
('kato_123', 'Manager', 3); 

insert into admin 
values 
('stargazer', 'Customer Service', 2); 

insert into admin 
values 
('markyMarketer', 'Marketing', 2);

insert into admin 
values 
('datCatCrooks', 'Customer Service', 2); 

insert into admin 
values 
('kingOfTheNorth', 'Marketing', 2); 

insert into admin 
values 
('bigPonzi', 'Accounting', 4); 


prompt INSERT INTO customer 
prompt 

insert into customer 
values 
('sleeveMcD', 12000, '5102904959272293', '0001', '0001'); 

insert into customer 
values 
('mudblood3', 5, '2513086873784457', '0002', '0002'); 

insert into customer 
values 
('gimmesmor', 500, '9816959060758170', '0003', '0003'); 

insert into customer 
values 
('artVandelay', 3000, '3512715725494118', '0004', '0004'); 

insert into customer 
values 
('neo', 1244, '6827199756090740', '0010', '0010'); 

insert into customer 
values 
('datGirlTrin', 5678, '5744504841866580', '1000', '1000'); 

insert into customer 
values 
('mcBeast', 9000, '0762440187214321', '0200', '0200'); 

insert into customer 
values 
('datCatCrooks', 1000000, '9041328658969097', '0020', '0030'); 

insert into customer
values 
('kingslayer', 8, '6893430084500723', '3000', '3000'); 

insert into customer 
values 
('soapstud', 800, '9137190797109150', '1234', '4321'); 

insert into customer 
values 
('captainHooky', 420, '2222504190245069', '0300', '0300'); 

prompt INSERT INTO customer_card
prompt 

insert into customer_card 
values 
('sleeveMcD', '5102904959272293', '01-AUG-2026', 'Sleeve McDichael', 420); 

insert into customer_card 
values 
('mudblood3', '2513086873784457', '01-NOV-2027', 'Hermione Granger', 135); 

insert into customer_card 
values 
('gimmesmor', '9816959060758170', '01-JAN-2025', 'Anatoli Smorin', 422); 

insert into customer_card 
values 
('artVandelay', '3512715725494118', '01-JUN-1981', 'George Costanza', 157); 

insert into customer_card
values 
('neo', '6827199756090740', '01-FEB-2029', 'Neo Anderson', 102); 

insert into customer_card
values 
('datGirlTrin', '5744504841866580', '01-MAR-2024', 'Trinity Anderson', 116); 

insert into customer_card
values 
('mcBeast', '0762440187214321', '01-APR-2024', 'Paul McBeth', 611); 

insert into customer_card
values 
('datCatCrooks', '9041328658969097', '01-MAY-2025', 'Crookshanks Granger', 711); 

insert into customer_card
values 
('kingslayer', '6893430084500723', '01-JUN-2026', 'Jamie Lannister', 204); 

insert into customer_card
values 
('soapstud', '9137190797109150', '01-AUG-2025', 'Tyler Durden', 402); 

insert into customer_card
values 
('captainHooky', '2222504190245069', '01-OCT-2027', 'Ferris Bueler', 666); 

prompt INSERT INTO customer_billing_address
prompt 

insert into customer_billing_address 
values
('sleeveMcD', '0001', 'WV', 'Moundsville', '1 Base Lane', '26041', 65); 

insert into customer_billing_address 
values
('mudblood3', '0002', 'NY', 'Hogwarts', '18 Crookshanks Road', '62442', 934);

insert into customer_billing_address(username, b_address_id, state_abr, city, street_address, zipcode)
values
('gimmesmor', '0003', 'TX', 'Ding Dong', '352 Blue Cedar Road', '76542');

insert into customer_billing_address 
values
('artVandelay', '0004', 'NY', 'New York', '129 West 81st Street', '10024', 411);

insert into customer_billing_address(username, b_address_id, state_abr, city, street_address, zipcode) 
values 
('neo', '0010', 'MA', 'Trix', '001 Nebuchadnezzar Ave', '01010'); 

insert into customer_billing_address(username, b_address_id, state_abr, city, street_address, zipcode) 
values 
('datGirlTrin', '1000', 'MA', 'Trix', '010 Nebuchadnezzar Ave', '01010'); 

insert into customer_billing_address 
values 
('mcBeast', '0200', 'WV', 'Birdieville', '19 Under Par Ave', '97614', 45); 

insert into customer_billing_address 
values 
('datCatCrooks', '0020', 'NY', 'Hogwarts', '18 Crookshanks Road', '62442', 934); 

insert into customer_billing_address(username, b_address_id, state_abr, city, street_address, zipcode) 
values 
('kingslayer', '3000', 'VA', 'Kings Landing', '1 Castle Drive', '81112'); 

insert into customer_billing_address 
values 
('soapstud', '1234', 'NY', 'New York', '15 Manhattan Lane', '11456', 67); 

insert into customer_billing_address(username, b_address_id, state_abr, city, street_address, zipcode)  
values 
('captainHooky', '0300', 'IL', 'Chicago', '370 Beech Street', '92210'); 

prompt INSERT INTO customer_shipping_address
prompt 

insert into customer_shipping_address 
values
('sleeveMcD', '0001', 'WV', 'Moundsville', '1 Base Lane', '26041', 65); 

insert into customer_shipping_address 
values
('mudblood3', '0002', 'NY', 'Hogwarts', '18 Crookshanks Road', '62442', 934);

insert into customer_shipping_address(username, s_address_id, state_abr, city, street_address, zipcode)
values
('gimmesmor', '0003', 'TX', 'Ding Dong', '352 Blue Cedar Road', '76542');

insert into customer_shipping_address 
values
('artVandelay', '0004', 'NY', 'New York', '129 West 81st Street', '10024', 411);

insert into customer_shipping_address(username, s_address_id, state_abr, city, street_address, zipcode) 
values 
('neo', '0010', 'MA', 'Trix', '001 Nebuchadnezzar Ave', '01010'); 

insert into customer_shipping_address(username, s_address_id, state_abr, city, street_address, zipcode) 
values 
('datGirlTrin', '1000', 'MA', 'Trix', '010 Nebuchadnezzar Ave', '01010'); 

insert into customer_shipping_address 
values 
('mcBeast', '0200', 'WV', 'Birdieville', '19 Under Par Ave', '97614', 45); 

insert into customer_shipping_address 
values 
('datCatCrooks', '0030', 'NY', 'Hogwarts', '4 McGonagall Lane', '62442', 777); 

insert into customer_shipping_address(username, s_address_id, state_abr, city, street_address, zipcode) 
values 
('kingslayer', '3000', 'VA', 'Kings Landing', '1 Castle Drive', '81112'); 

insert into customer_shipping_address 
values 
('soapstud', '4321', 'NY', 'New York', '234 56th Street', '11456', 456); 

insert into customer_shipping_address(username, s_address_id, state_abr, city, street_address, zipcode)  
values 
('captainHooky', '0300', 'IL', 'Chicago', '370 Beech Street', '92210'); 

prompt INSERT INTO orders
prompt 

insert into orders(order_num, shipment_status, order_status, date_placed, username)
values
('11111', 'PICK', 'PENDING', '29-NOV-2023', 'sleeveMcD'); 

insert into orders(order_num, shipment_status, order_status, date_placed, username)
values
('22222', 'PACK', 'PENDING', '01-DEC-2023', 'mudblood3'); 

insert into orders(order_num, shipment_status, order_status, date_placed, username)
values
('33333', 'SHIP', 'SHIPPED', '25-NOV-2023', 'gimmesmor'); 

insert into orders
values
('44444', 'SHIP', 'INVOICE', '20-NOV-2023', '28-NOV-2023', 'artVandelay'); 

insert into orders(order_num, shipment_status, order_status, date_placed, username)
values
('55555', 'PACK', 'PENDING', '28-NOV-2023', 'neo'); 

insert into orders(order_num, shipment_status, order_status, date_placed, username)
values
('66666', 'PICK', 'PENDING', '02-DEC-2023', 'datCatCrooks'); 

insert into orders(order_num, shipment_status, order_status, date_placed, username)
values
('77777', 'SHIP', 'SHIPPED', '01-NOV-2023', 'datGirlTrin'); 

insert into orders
values
('88888', 'SHIP', 'RETURNED', '30-OCT-2023', '1-NOV-2023', 'mudblood3'); 

insert into orders
values
('99999', 'SHIP', 'INVOICE', '07-NOV-2023', '15-NOV-2023', 'gimmesmor'); 

insert into orders 
values 
('10101', 'SHIP', 'RETURNED', '08-NOV-2023', '16-NOV-2023', 'artVandelay');  

insert into orders(order_num, shipment_status, order_status, date_placed, username)
values
('10111', 'PACK', 'PENDING', '01-NOV-2023', 'datGirlTrin');

insert into orders
values
('12345', 'SHIP', 'INVOICE', '02-JUL-2023', '11-JUL-2023', 'mcBeast'); 

insert into orders(order_num, shipment_status, order_status, date_placed, username)
values
('13356', 'PICK', 'PENDING', '04-DEC-2023', 'soapstud'); 

insert into orders
values
('14580', 'SHIP', 'INVOICE', '19-AUG-2019', '26-AUG-2019', 'captainHooky'); 

prompt INSERT INTO order_of_disc
prompt 

insert into order_of_disc 
values 
('11111', '000000001'); 

insert into order_of_disc 
values 
('22222', '123456789'); 

insert into order_of_disc 
values 
('33333', '132456789'); 

insert into order_of_disc 
values 
('44444', '142356789'); 

insert into order_of_disc 
values 
('55555', '152346789'); 

insert into order_of_disc 
values 
('66666', '162345789'); 

insert into order_of_disc 
values 
('77777', '987654321'); 

insert into order_of_disc 
values 
('88888', '172345689'); 

insert into order_of_disc 
values 
('99999', '182345679'); 

insert into order_of_disc
values 
('10101', '192345678'); 

insert into order_of_disc
values 
('10111', '987654321'); 

insert into order_of_disc
values 
('12345', '162345789'); 

insert into order_of_disc
values 
('13356', '152346789'); 

insert into order_of_disc
values 
('14580', '192345678'); 
