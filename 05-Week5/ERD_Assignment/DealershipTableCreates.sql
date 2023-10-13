create table if not exists salesman(
	salesman_id  serial  not null primary key,
	first_name   varchar(30),
	last_name   varchar(30),
	address    varchar(150),
	phone    varchar(12),
	email    varchar(30),
	commission_rate   numeric
);

create table if not exists customer(
	cust_id  serial not null  primary key,
	first_name   varchar(30),
	last_name   varchar(30),
	address    varchar(150),
	phone    varchar(12),
	email    varchar(30)
);

create table if not exists mechanic(
	mechanic_id  serial not null primary key,
	first_name   varchar(30),
	last_name   varchar(30),
	address    varchar(150),
	phone    varchar(12),
	email    varchar(30)
);

create table if not exists part(
	part_id   serial  not null primary key,
	part_name  varchar(30)  not null,
	sku     varchar(30)  not null
);

create table if not exists car_make(
	make_id   serial  not null primary key,
	make_name  varchar(20)
);

create table if not exists car_model(
	model_id	serial  not null primary key,
	model_name  varchar(20),
	make_id    integer  not null,
	foreign key(make_id) references car_make(make_id)  
);

create table if not exists car(
	vin  varchar(17)  not null primary key,
	make_id   integer  not null,
	model_id  integer  not null,
	year  integer  not null,
    new  bool  default 'yes' not null,
	foreign key(make_id) references car_make(make_id),
	foreign key(model_id) references car_model(model_id)
);

create table if not exists sales_invoice(
	sale_inv_id	 serial not null  primary key,
	vin   varchar(17) not null,
	cust_id  integer  not null,
	sale_date  date  not null,
	sale_amount  numeric(8,2) not null,
	salesman_id  integer  not null,
	foreign key(vin) references car(vin),
	foreign key(cust_id) references customer(cust_id),
	foreign key(salesman_id) references salesman(salesman_id)
);

create table if not exists service_invoice(
	svc_inv_id   serial  not null primary key,
	vin   varchar(17) not null,
	cust_id   integer  not null,
	svc_date   date  not null,
	svc_amount  numeric(6,2),
	foreign key(vin) references car(vin),
	foreign key(cust_id) references customer(cust_id)
);

create table if not exists svc_part(
	part_id   integer  not null,
	svc_inv_id  integer  not null,
	primary key (part_id, svc_inv_id),
	foreign key(part_id) references part(part_id),
	foreign key(svc_inv_id) references service_invoice(svc_inv_id)
);

create table if not exists svc_mechanic(
	mechanic_id  integer not null,
	svc_inv_id  integer not null,
	primary key (mechanic_id, svc_inv_id),
	foreign key(mechanic_id) references mechanic(mechanic_id),
	foreign key(svc_inv_id) references service_invoice(svc_inv_id)
);
