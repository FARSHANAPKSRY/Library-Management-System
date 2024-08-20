 create database library;
 use library;
 
 create table branch(
 branch_no int primary key,
 manager_id int,
 branch_address varchar(25),
 contact_no varchar(15)
 );
 alter table branch modify column contact_no varchar(15);
 -- insert 10 values into the empolyee table
 insert into branch (branch_no,manager_id,branch_address,contact_no)
 values
 (1,101,'kottayam','9876543210'),
 (2,102,'malappuram','9786543211'),
 (3,103,'kannur','9678543212'),
 (4,104,'kozhikod','9778765434'),
 (5,105,'trissure','9987876543'),
 (6,106,'goa','7878909009'),
 (7,107,'hydrabad','6778899009'),
 (8,108,'shirur','7665545456'),
 (9,109,'palakad','8989877667'),
 (10,110,'mysore',9067566778);
 select*from branch;
desc branch;

 
 
 create table employee(
 emp_id int primary key,
 emp_name varchar(50),
 position varchar(50),
 salary decimal(10,2),
 branch_no int, foreign key (branch_no) references branch(branch_no)
 );
 
 
 select*from branch where branch_no = branch_no;
 insert into employee (emp_id,emp_name,position,salary,branch_no) values
 (20,'alice','manager',68000,1),
 (21,'joby','salesman',30000,2),
 (22,'rahul','hr',55000,3),
 (23,'babu','staff',34000,4),
 (24,'daisy','manager',67000,5),
 (25,'chinju','hr',38000,6),
 (26,'jebi','office staff',30000,7),
 (27,'fathima','hr',58000,8),
 (28,'noora','manager',68000,9),
 (29,'jaleel','salesman',70000,10);
 select * from employee;
 
 
 
 create table books(
 isbn int primary key,
 book_title varchar(30),
 category varchar(25),
 rentel_price decimal(10,2),
 status varchar(10) check (status in ('yes','no')),
 author varchar(35),
 publisher varchar(50)
 );
 
 
 insert into books(isbn,book_title,category,rentel_price,status,author,publisher) values
 (20,'history of rome','history',100,'yes','livy','penguin'),
 (21,'advanced mathematics','maths',150,'yes','isaac newton','cambridge'),
 (22,'hery potter','fantasy',120,'no','j.k.rowling','bloomsberry'),
 (23,'charlottes web','children fiction',200,'no','e.b.white','harper and brothers'),
 (24,'to kill a mockingbird','fiction',180,'no','harper lee','j.b.lippincot and co'),
 (25,'becoming','fiction',50,'yes','michelle obama','crown'),
 (26,'the great gatsby','fiction',100,'yes','scot fitsgirald','charles scribners'),
 (27,'the road','fiction',90,'no','cormac mccarthy','alfred k knolf'),
 (28,'the alchimist','fantasy',110,'yes','paulo coelho','harperone'),
 (29,'educated','memoir',60,'no','tara westover','random house');
 select * from books;
 
 
 
 create table customers(
 customer_id int primary key,
 customer_name varchar(50),
 customer_address varchar(50),
 reg_date date
 );
 
 
 insert into customers(customer_id,customer_name,customer_address,reg_date)values
 (931,'laila','jammu','2023-09-04'),
 (932,'mery','palakad','2024-01-02'),
 (933,'hyra','kannur','2019-03-22'),
 (934,'raseena','wayanad','2020-09-23'),
 (935,'habeeb','kashmir','2021-12-23'),
 (936,'jojo','tamilnadu','2019-02-15'),
 (937,'chinju','uttarpradesh','2018-03-23'),
 (938,'aeiza','shrilankha','2024-12-03'),
 (939,'ayshu','mannali','2020-04-14'),
 (940,'nusaiba','uttarpradesh','2021-10-23');
 select * from customers;
 


CREATE TABLE IssueStatus (
Issue_Id INT PRIMARY KEY,
Issued_cust INT,
Issued_book_name VARCHAR(255),
Issue_date DATE,
Isbn_book int ,
FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_Id),
FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN)
);


-- INSERTING DATA INTO ISSUESTATUS TABLE
insert into isssueStatus(issue_id,issued_cust,issued_book_name,issue_date,isbn_book)values
(300,931,'pathumayude aad','2023-02-12',20),
(301,932,'aotubiograpghy','2019-12-23',21),
(302,933,'baalasakhi','2020-11-23',22),
(303,934,'tom and jerry','2022-03-15',23),
(304,935,'train to pakisthan',2019-07-12,24),
(305,936,'circe',2023-12-12,25),
(306,937,'normal people','2022-12-23',26),
(307,938,'the night circus',2023-12-30,27),
(308,939,'herrypotter','2023-07-05',28),
(309,940,'becoming','2021-06-17',29);
select * from issueStatus;



-- Inserting data into IssueStatus table
INSERT INTO IssueStatus (Issue_Id, Issued_cust, Issued_book_name, Issue_date, Isbn_book) VALUES
(300,931,'pathumayude aad','2023-02-12',20),
(301,932,'aotubiograpghy','2019-12-23',21),
(302,933,'baalasakhi','2020-11-23',22),
(303,934,'tom and jerry','2022-03-15',23),
(304,935,'train to pakisthan','2020-03-12',24),
(305,936,'circe','2024-01-14',25),
(306,937,'normal people','2022-12-23',26),
(307,938,'the night circus','2022-09-18',27),
(308,939,'herrypotter','2023-07-05',28),
(309,940,'becoming','2021-06-17',29);
SELECT * FROM IssueStatus;
desc IssueStatus;



create table return_status(
 return_id int primary key,
 return_cust int,
 return_book_name varchar(50),
 return_date date,
 isbn_book2 int,foreign key (return_cust) references customer(customer_id), foreign key (isbn_book2) references books(isbn)
 );


 insert into return_status(return_id,return_cust,return_book_name,return_date,isbn_book2)values
 (401,931,'pathumayude aad','2023-05-12',20),
 (402,932,'aotobiogarphy','2020-01-12',21),
 (403,933,'baalasakhi','2021-06-23',22),
 (404,934,'tom and jerry','2023-01-12',23),
 (405,935,'train to pakisthan','2018-09-17',24),
 (406,936,'circe','2017-07-10',25),
 (407,937,'normal people','2023-12-15',26),
 (408,938,'the night circus','2022-04-14',27),
 (409,939,'herrypotter','2020-08-26',28),
 (410,940,'becoming','2024-02-12',29);
 select * from return_status;
 
 -- 1.retrieve  the book title,category,and rentel price of all available book
 select book_title,category,rentel_price from books;

 
 -- 2.list the employee names and their respective salaries in descending order of salary
 select emp_name,salary from employee order by salary desc;
 
 

-- 3. Retrieve the book titles and the corresponding customers who have issued those books.
SELECT books.Book_title, issuestatus.Issued_cust, customer.Customer_name
FROM issuestatus
INNER JOIN books ON issuestatus.Isbn_book = books.ISBN
INNER JOIN customer ON issuestatus.Issued_cust = customer.Customer_Id;  -- Assuming Issued_cust matches Customer_Id




-- 4. Display the total count of books in each category. 
select category,count(*) as total_books from books group by category;



-- 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000
 select emp_name,position,salary from employee where salary>50000;



-- 6. List the customer names who registered before 2023-07-01 and have not issued any books yet
SELECT customer.Customer_name,customer.Reg_date
FROM customer
LEFT JOIN issuestatus ON customer.Customer_Id = issuestatus.Issued_cust
WHERE customer.Reg_date < '2023-07-01'
AND issuestatus.issue_id IS NULL;

-- 7. Display the branch numbers and the total count of employees in each branch.
select branch_no,count(*) as total_employees
from employee
group by branch_no;
 
 

-- 8. Display the names of customers who have issued books in the month of july 2023.
--  here Customer_id = Issued_cust
SELECT DISTINCT customer.Customer_name,issuestatus.Issue_date
FROM customer
INNER JOIN issuestatus ON customer.Customer_Id = issuestatus.Issued_cust
WHERE YEAR(issuestatus.Issue_date) = 2023
AND MONTH(issuestatus.Issue_date) = 07;


-- 9.retrieve book_title from book table containing fiction. 
select book_title,category from books where category = 'fiction';


-- 10.Retrieve the branch numbers along with the count of employees for branches having less than than 5 employees
select branch_no,count(*) as total_employees from employee group by branch_no having count(*)>5;



-- 11.Retrieve the names of employees who manage branches and their respective branch addresses.
SELECT*FROM branch;
SELECT*FROM employee;
-- Here Manager_Id= Emp_Id
SELECT employee.Emp_name AS Manager_Name, branch.Branch_Address
FROM employee
INNER JOIN branch ON employee.Emp_Id = branch.Manager_Id;


-- 12. display the namesof customers who have issued books with a rental price higher than Rs.25
select * from issue_status;
select*from customers;
select distinct customers.customer_name issuestatus,books.rentel_price issued_book_name
from customers
inner join issuestatus on customers.customer_id = issuestatus.issued_cust
inner join books on issuestatus.isbn_book = books.isbn
where books.rentel_price >25;