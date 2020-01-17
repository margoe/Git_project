-- This will create the schema (database) needed
-- for the Jeans Styles Spring 2019
CREATE SCHEMA IF NOT EXISTS a_jeansorders;

-- drop the tables if they already EXISTS
use a_jeansorders;

    drop table if exists a_jeansorders.store_item_colors;
    drop table if exists a_jeansorders.store_item_size;
    drop table if exists a_jeansorders.store_item;
    drop table if exists a_jeansorders.store_categories;

-- create Store Item
create table a_jeansorders.store_item(
    id          INT             not NULL
,   cat_id      INT             not NULL
,   item_title  VARCHAR(100)
,   item_price  float(8,2)
,   item_desc   text
,   item_image  VARCHAR(50)       
,   constraint jo_store_item_pk     primary key(id, cat_id)
);

-- create Store Item Size
create table a_jeansorders.store_item_size(
    item_id     INT             not NULL
,    item_size   VARCHAR(25)
);

-- createtable store_item_color(
create table a_jeansorders.store_item_color(
    item_id             INT             not NULL
,   store_item_color    VARCHAR(25)

);
-- inserting records into store_items table

insert into store_item values('1', '1', 'Clasic Shorts', 24.99, 'Nice push up denim short.','img/lacetop_white.jpg');
insert into store_item values('2', '1', 'Push Up Jeans Shorts', 24.99, 'Nice push up denim short.','img/short1_sm.jpg');
insert into store_item values('3', '2', 'Short Overall',34.99, 'Nice short overall.','img/overall3.jpg');
insert into store_item values('4', '2', 'Pants Overall',44.99, 'Nice pants overall.','img/.jpg');
insert into store_item values('5', '3', 'Strech Jeans with Application', 34.99, 'Nice strech jeans.','img/blkflower2_sm.jpg');
insert into store_item values('6', '3', 'Strech Jeans', 34.99, 'Nice strech jeans.','img/white_pant.jpg');
insert into store_item values('7', '4', 'Rag Jeans', 34.99, 'Nice rag jeans short.','img/rag_jean.jpg');	
insert into store_item values('8', '4', 'Rag Jeans', 34.99, 'Nice rag jeans short.','img/rag_leg1.jpg');
insert into store_item values('9', '4', 'Rag White Jeans', 34.99, 'Nice raggy jeans.','img/white_ragPant.jpg');
insert into store_item values('10','5', 'Golden Jeans', 34.99, 'Nice strech jeans with gold buttons .','img/goldjean.jpg');


-- inserting records into the store_item_size        
insert into store_item_size values(1, 'S');
insert into store_item_size values(1, 'M');
insert into store_item_size values(1, 'L');
insert into store_item_size values(2, 'S');
insert into store_item_size values(2, 'M');
insert into store_item_size values(2, 'L');
insert into store_item_size values(3, 'S');
insert into store_item_size values(3, 'M');
insert into store_item_size values(3, 'L');
insert into store_item_size values(4, 'S');
insert into store_item_size values(4, 'M');
insert into store_item_size values(4, 'L');
insert into store_item_size values(5, 'S');
insert into store_item_size values(5, 'M');
insert into store_item_size values(5, 'L');
insert into store_item_size values(6, 'S');
insert into store_item_size values(6, 'M');
insert into store_item_size values(6, 'L');
insert into store_item_size values(7, 'S');
insert into store_item_size values(7, 'M');
insert into store_item_size values(7, 'L');
insert into store_item_size values(8, 'S');
insert into store_item_size values(8, 'M');
insert into store_item_size values(8, 'L');
insert into store_item_size values(9, 'S');
insert into store_item_size values(9, 'M');
insert into store_item_size values(9, 'L');

-- Inserting Recordsinto the store_item_color table

insert into store_item_color values(1, 'blue');
insert into store_item_color values(1, 'white');
insert into store_item_color values(1, 'light blue');
insert into store_item_color values(2, 'blue');
insert into store_item_color values(2, 'white');
insert into store_item_color values(2, 'light blue');
insert into store_item_color values(3, 'white');
insert into store_item_color values(3, 'blue');









