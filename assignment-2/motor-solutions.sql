/*fetch all the customers who cancelled orders*/
-- SELECT * FROM customers LEFT JOIN orders ON orders.customer_id = customers.customer_id
-- WHERE orders.status="cancelled"; 

/*fetch all customers who made payment b/w 5000 and 35000*/
-- SELECT * FROM customers LEFT JOIN payments ON payments.customer_id = customers.customer_id 
-- WHERE payments.amount BETWEEN 5000 AND 35000;

/*Add new employee/salesman*/
-- INSERT INTO employees(employee_id,last_name,first_name,extension,email,office_code,reports_to,job_title)VALUES
-- (15657,"Roy","Lakshmi","x4065","lakshmiroy1@lcomotors.com",4,1088,"Sales Rep");

/*Assign new employee to customer whose phone is 2125557413*/
-- UPDATE customers SET customers.sales_employee_id =15657 WHERE phone = 2125557413;

/*sql query for shipped motorscycles*/
-- SELECT * FROM orders LEFT JOIN orderdetails ON orderdetails.order_id = orders.order_id
-- LEFT JOIN products ON orderdetails.product_code =  products.product_code 
-- WHERE  products.product_line="motorscycles" AND orders.status="shipped" ;

/*get all the details of employee/salesman whose office is located in sydney*/
-- SELECT * FROM employees LEFT JOIN offices ON offices.office_code = employees.office_code
-- WHERE offices.city = "sydney";

/*fetch details of customers whose orders status are in process*/
-- SELECT * FROM customers LEFT JOIN orders ON orders.customer_id = customers.customer_id 
-- WHERE orders.status ="in process";

/*fetch the details of products with orders less than 30*/
-- SELECT * FROM products RIGHT JOIN productlines ON productlines.product_line = products.product_line
-- LEFT JOIN orderdetails ON orderdetails.product_code = products.product_code WHERE orderdetails.quantity_ordered < 30;

/*update check nos OM314933 to 2575*/
-- UPDATE payments set check_number =2575 WHERE check_number ="OM314933";

/*fetch details of saleman dealing with customers whose orders are resolved*/
-- SELECT * FROM employees LEFT JOIN customers ON customers.sales_employee_id = employees.employee_id
-- RIGHT JOIN orders ON orders.customer_id = customers.customer_id WHERE orders.status ="resolved";

/*fetch all the details of customers who made max payments*/
-- SELECT * FROM customers RIGHT JOIN payments ON payments.customer_id = customers.customer_id
-- WHERE amount =(SELECT max(amount)FROM payments);

/*fetch list of orders shipped to france*/
-- SELECT * FROM orders LEFT JOIN customers ON customers.customer_id = orders.customer_id
--  WHERE customers.country = "france" AND orders.status = "shipped" GROUP BY customers.customer_id;

/*How many customers are from finland who placed orders*/
-- SELECT COUNT(*) FROM customers RIGHT JOIN orders ON orders.customer_id = customers.customer_id
-- WHERE customers.country = "finland";

/*Get the details of the customer and payment who made payments between may 2019 and june 2019*/
-- SELECT * FROM customers LEFT JOIN payments ON payments.customer_id = customers.customer_id
-- WHERE payment_date BETWEEN '2019-05-01' AND '2019-06-30';

/*How Many orders shipped to belgium in 2018*/
-- SELECT COUNT(*) FROM orders LEFT JOIN customers ON customers.customer_id = orders.customer_id
-- WHERE customers.country ="belgium" AND  orders.shipped_date BETWEEN '2019-01-01'AND '2019-12-31';

/*get the employees details who is dealing with offices customers in germany*/
-- SELECT * FROM employees LEFT JOIN customers ON customers.sales_employee_id = employees.employee_id
-- WHERE customers.country = "germany";

/*Add new customer order*/
-- INSERT INTO orders (order_id,order_date,required_date,status,comments,customer_id)VALUES
-- (10426,CURRENT_DATE(),(CURRENT_DATE()+INTERVAL 10 DAY),"in process","new customer","496");
-- INSERT INTO orderdetails(order_id,product_code,quantity_ordered,each_price,order_line_number)VALUES
-- (10426,"s12_3148",41,151,11);

/*fetch the details of the employees who were reported by the customers for the payments made between june 2018 and july 2018*/
-- SELECT * FROM employees LEFT JOIN customers ON customers.sales_employee_id = employees.employee_id
-- RIGHT JOIN payments ON payments.customer_id = customers.customer_id WHERE payments.payment_date
-- BETWEEN '2018-06-01' AND '2018-07-31'; 

/*add new payment details*/
-- INSERT INTO payments(customer_id,check_number,payment_date,amount)VALUES
-- (119,"OM314944",CURRENT_DATE(),33789.55);

/*get the address of the office of the employee that reports to the employee who id is 1102*/
-- SELECT * FROM employees JOIN employees reports_emp ON reports_emp.employee_id = employees.reports_to
-- RIGHT JOIN offices ON offices.office_code = employees.office_code WHERE employees.reports_to="1102";

/*get the payment details of classic cars*/
-- SELECT * FROM payments LEFT JOIN customers ON customers.customer_id=payments.customer_id
-- RIGHT JOIN orders ON orders.customer_id = customers.customer_id LEFT JOIN orderdetails
-- ON orderdetails.order_id = orders.order_id LEFT JOIN products ON products.product_code=orderdetails.product_code
-- WHERE products.product_line="classic cars";

/*how many customers ordered from usa*/
-- SELECT COUNT(*) FROM customers LEFT JOIN orders ON orders.customer_id = customers.customer_id
-- WHERE customers.country ="USA";

/*get comments regarding resolved orders*/
-- SELECT comments FROM orders WHERE status="resolved";

/*fetch the details of the employee in the USA with office address*/
-- SELECT * FROM employees LEFT JOIN offices ON employees.office_code = offices.office_code
-- WHERE offices.country="USA";

/*fetch total price of each order of motorcycles */
-- SELECT *, orderdetails.quantity_ordered*orderdetails.each_price AS total_price FROM orderdetails LEFT JOIN products ON products.product_code=orderdetails.product_code
-- WHERE products.product_line="motorcycles";

/*get the total worth of planes ordered*/
-- SELECT SUM(orderdetails.quantity_ordered*orderdetails.each_price) AS total_price FROM orderdetails LEFT JOIN products
-- ON products.product_code=orderdetails.product_code WHERE products.product_line="planes";

/*How many customers belong to france*/
-- SELECT COUNT(*) FROM customers WHERE country="france";

/*Get the payments of customers who live in france*/
-- SELECT * FROM customers LEFT JOIN payments ON payments.customer_id = customers.customer_id
-- WHERE customers.country="france";

/*get the office  address of the employee/salesman who report to employee 1143*/
-- SELECT * FROM offices LEFT JOIN employees ON employees.office_code = offices.office_code
-- WHERE employees.reports_to=1143;