/*show databases;*/

-- CREATE TABLE customers (
--      id INT NOT NULL AUTO_INCREMENT,
--      name VARCHAR(30) NOT NULL,
--      email VARCHAR(30) NOT NULL DEFAULT 'No email provided',
--      amount VARCHAR(30) NOT NULL,
--      PRIMARY KEY (id)
-- );

-- INSERT INTO customers(name,email,amount)VALUES('hitesh','hit@gmail.com',30),
-- ('ki','ki@gmail.com',30),
-- ('jimmy','jim@gmail.com',40),
-- ('george','george@gmail.com',70),
-- ('ko','ko@gmail.com',90)

-- select name from customers;
-- SELECT email from customers;

-- SELECT amount from customers;

-- SELECT amount AS Purchases from customers;

-- SELECT * from customers WHERE name ="jimmy";

-- UPDATE customers SET email='jimmy@yahoo.co.in' WHERE name ="jimmy";
-- INSERT INTO customers (name,email,amount) VALUES("ki","abc@gmail.com",75)

/*update all email having name ki*/

-- UPDATE customers SET email ='ki@gmail.com' WHERE name="ki";

-- DELETE FROM customers where name="george";
DELETE FROM customers WHERE email = 'ki@gmail.com';
