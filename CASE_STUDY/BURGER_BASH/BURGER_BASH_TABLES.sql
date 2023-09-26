use bha;

## CREATION OF TABLE RUNNER_ORDERS

create table runner_orders
(
order_id integer not null primary key,
runner_id integer not null,
pickup_time timestamp,
distance varchar(8),
duration varchar(10),
cancellation varchar(25)
);

## INSERTING VALUES INTO TABLE RUNNER_ORDERS

Insert Into runner_orders values
(1,1,'2021-01-01 18:15:34','20km','32 minutes',NULL),
(2,1,'2021-01-01 19:10:54','20km','27 minutes',NULL),
(3,1,'2021-01-03 00:12:37','13.4km','20 mins',NULL),
(4,2,'2021-01-04 13:53:03','23.4','40',NULL),
(5,3,'2021-01-08 21:10:57','10','15',NULL),
(6,3,NULL,NULL,NULL,'Restaurant Cancellation'),
(7,2,'2021-01-08 21:30:45','25km','25mins',NULL),
(8,2,'2021-01-10 00:15:02','23.4 km','15 minute',NULL),
(9,2,NULL,NULL,NULL,'Customer Cancellation'),
(10,1,'2021-01-11 18:50:20','10km','10minutes',NULL);

## CREATION OF TABLE BURGER_RUNNER

create table burger_runner
(
runner_id integer not null primary key,
registration_date date not null
);

## INSERTING VALUES INTO TABLE BURGER_RUNNER

Insert Into burger_runner values
(1,'2021-01-01'),
(2,'2021-01-03'),
(3,'2021-01-08'),
(4,'2021-01-15');

## CREATION OF TABLE BURGER_NAMES

create table burger_names
(
burger_id integer not null primary key,
burger_name varchar(10) not null
);

## INSERTING VALUES INTO TABLE BURGER_NAMES

Insert Into burger_names values
(1,'Meatlovers'),
(2,'Vegetarian');

## CREATION OF TABLE CUSTOMER_ORDERS

create table customer_orders
(
order_id integer not null,
customer_id integer not null,
burger_id integer not null,
exclusions varchar(40),
extras varchar(4),
order_time timestamp not null
);

## INSERTING VALUES INTO TABLE CUSTOMER_ORDERS

Insert Into customer_orders values
(1,101,1,NULL,NULL,'2021-01-01 18:05:02'),
(2,101,1,NULL,NULL,'2021-01-01 19:00:52'),
(3,102,1,NULL,NULL,'2021-01-02 23:51:23'),
(3,102,2,NULL,NULL,'2021-01-02 23:51:23'),
(4,103,1,'4',NULL,'2021-01-04 13:23:46'),
(4,103,1,'4',NULL,'2021-01-04 13:23:46'),
(4,103,2,'4',NULL,'2021-01-04 13:23:46'),
(5,104,1,NULL,'1','2021-01-08 21:00:29'),
(6,101,2,NULL,NULL,'2021-01-08 21:03:13'),
(7,105,2,NULL,'1','2021-01-08 21:20:29'),
(8,102,1,NULL,NULL,'2021-01-09 23:54:33'),
(9,103,1,'4','1, 5','2021-01-10 11:22:59'),
(10,104,1,NULL,NULL,'2021-01-11 18:34:49'),
(10,104,1,'2, 6','1, 4','2021-01-11 18:34:49');











