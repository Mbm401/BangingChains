drop table user_info cascade constraints; 

create table user_info
(EMAIL          varchar2(60),
 fname           varchar2(40),
 lname           varchar2(40), 
 is_customer     char(1) CHECK(is_customer IN ('Y', 'N')),
 is_admin        char(1) CHECK(is_admin IN ('Y', 'N')),
 primary key (EMAIL));

drop table users cascade constraints; 

create table users
(USERNAME       varchar2(15), 
 password_hash   varchar2(15), 
 email           varchar2(60),
 primary key (USERNAME),
 foreign key (email) references user_info(email));

drop table customer cascade constraints; 

create table customer
(USERNAME        varchar2(15),
 reward_points   integer,
 card_num        char(16), 
 b_address_id    char(4),
 s_address_id    char(4), 
 primary key (USERNAME),
 foreign key (USERNAME) references users(USERNAME));

drop table customer_card cascade constraints; 

create table customer_card
(USERNAME        varchar2(15),
 CARD_NUM        char(16), 
 exp_date        date,
 name_on_card    varchar2(40), 
 cvv_num         integer,
 primary key (USERNAME, CARD_NUM),
 foreign key (username) references customer(username));

drop table customer_billing_address cascade constraints; 

create table customer_billing_address
(USERNAME               varchar2(15), 
 B_ADDRESS_ID            char(4), 
 state_abr               char(2), 
 city                    varchar(20), 
 street_address          varchar(40), 
 zipcode                 char(5), 
 apt_num                 integer default null, 
 primary key (USERNAME, B_ADDRESS_ID),
 foreign key (username) references customer);

drop table customer_shipping_address cascade constraints; 

create table customer_shipping_address
(USERNAME       varchar(15), 
 S_ADDRESS_ID    char(4), 
 state_abr       char(2), 
 city            varchar(20), 
 street_address  varchar(40), 
 zipcode         char(5), 
 apt_num         integer default null, 
 primary key (USERNAME, S_ADDRESS_ID),
 foreign key (username) references customer);

drop table admin cascade constraints; 

create table admin
(USERNAME               varchar2(15), 
admin_role              varchar2(20), 
admin_privileges        integer, 
primary key (USERNAME),
foreign key (username) references users);

drop table disc cascade constraints; 

create table disc
(SKU                char(9),
disc_name           varchar2(15), 
brand_name          varchar2(15), 
disc_color          varchar2(15), 
disc_type           varchar2(15), 
disc_speed_num      integer,
disc_glide_num      integer, 
disc_turn_num       integer, 
disc_fade_num       integer, 
disc_plastic_type   varchar2(15), 
disc_price          float, 
disc_quant_avail    integer,
primary key (SKU));

drop table orders cascade constraints; 

create table orders
(ORDER_NUM        char(5), 
shipment_status   varchar(10),
order_status      varchar(10),  
date_placed       date, 
date_delivered    date default null, 
username          varchar2(15), 
primary key (ORDER_NUM),
foreign key (username) references customer
);

drop table order_of_disc cascade constraints; 

create table order_of_disc
(ORDER_NUM    char(5),
 SKU          char(9),
 primary key (ORDER_NUM, SKU),
 foreign key (order_num) references orders,
 foreign key (sku) references disc);