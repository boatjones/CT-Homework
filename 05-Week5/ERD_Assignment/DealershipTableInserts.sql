insert into salesman
values (
	1,
	'Joel',
	'Carter',
	'4011 Kanwha Avenue, Peekskill, NY 10234',
	'914-459-3583',
	'jcarter@vintageauto.com',
	0.2),
(	2,
	'Samuel',
	'Beckett',
	'100 North Division Street, Peekskill, NY 10235',
	'914-730-8822',
	'sbeckett@vintageauto.com',
	0.1);

insert into customer
values (
	1,
	'Peyton',
	'Snead',
	'34 Hoplite Road, Rixyville, VA 23567',
	'804-298-8822',
	'peyton_snead@yahoo.com'),
(	2,
	'Robert',
	'Camp',
	'93 Upperville Lane, Front Royal, VA 22984',
	'804-339-2299',
	'camparoony@gmail.com'),
(	3,
	'Penelope',
	'Yardley',
	'83 Dickson Drive, Towson, MD 28444',
	'304-883-9455',
	'pyardley@gmail.com'),
(	4,
	'Harrison',
	'Pemberton',
	'75 Main Street, Lexington, VA 24450',
	'540-889-5512',
	'hpemberton@wlu.edu');

insert into mechanic 
values (
	1,
	'Lisa',
	'Funk',
	'83 Ridley Lane, Croton, NY 19488',
	'914-594-4499',
	'lfunk@vintageauto.com'),
(	2,
 	'Curt',
 	'Miller',
 	'98 Main Street, Peekskill, NY 10998',
 	'914-994-9933',
 	'kmiller@vintageauto.com');

insert into part 
values (
	1,
	'Oil Cooler Assembly',
	'HY84-OR88-KKQ77'),
(	2,
	'Throw Out Bearing',
	'BR549-L2308');

insert into car_make 
values (
	1,
	'Honda'),
(	2,
	'Volvo');


insert into car_model 
values (
	1, 
	'Accord',
	1),
(	2,
	'940 Turbo Wagon',
	2),
(	3,
	'Odysea',
	1),
(	4,
	'X90',
	2);

insert into car 
values (
	'1HGCM82633A123456',
	1,
	1,
	2023,
	'yes'),
(	'YV1SZ58D9X1234567',
	2,
	2,
	2008,
	'no'),
(	'1HGCM82633A128756',
	1,
	3,
	2020,
	'no'),
(	'YV1SZ58D9X1238867',
	2,
	4,
	2019,
	'no');	

insert into sales_invoice
values (
	1, 
	'1HGCM82633A123456',
	1,
	'2023-06-15',
	14856.87,
	2),
(	2,
	'YV1SZ58D9X1234567',
	2,
	'2023-07-24',
	12987.34,
	1);
	
insert into service_invoice
values (
	1,
	'1HGCM82633A128756',
	3,
	'2023-08-11',
	530.40),
(	2,
	'YV1SZ58D9X1238867',
	4,
	'2023-09-19',
	459.30);

create or replace procedure insert_data() 
language plpgsql
as $$
begin
	insert into svc_part
	values(1,1),(2,2);
	insert into svc_mechanic
	values(1,1),(2,2);
end;
$$;

call insert_data();