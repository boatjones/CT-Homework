/* create product table from corrected website code */
CREATE TABLE IF NOT EXISTS products(
      id INT,
      product VARCHAR(50),
      quantity INT);
      
/* don't like the key name so I changed it */      
ALTER TABLE sys.products CHANGE id prod_id int;

/* load product table */
INSERT INTO products
VALUES 
 (1, 'banana', 200), 
 (2, 'peach', 100),
 (3, 'mango', 50),
 (4, 'grapes', 500); 

/* create customer table */
create table sys.customers (
 cust_id int,
 cust_name varchar(50),
 cust_address varchar(250)
);

/* load customer table */
insert into customers
values 
  (1, 'Sam Stone', '288 John Prine Drive, Nashville, TN 34960'),
  (2, 'John Cale', '78 Stovepipe Road, Tulsa, OK 56930'),
  (3, 'Jerry Garcia', '40 Paso Robles Lane, San Francisco, CA 98503');
  
/* just for yucks, make an order table to pull them together.  I didn't worry about quantities for now. */
CREATE TABLE sys.orders
  (order_id INT NOT NULL AUTO_INCREMENT,
   cust_id INT NOT NULL,
   prod_id INT NOT NULL,
   PRIMARY KEY (order_id))
   
/* load some orders into the table */
insert into orders (
  cust_id, prod_id)
values 
  (3, 3),
  (1, 2),
  (3, 1);
  
/* join to see who ordered what */
select c.cust_name,
       p.product
from customers c, products p, orders o
where p.prod_id = o.prod_id
 and  c.cust_id = o.cust_id;
       
      
  
  
  



