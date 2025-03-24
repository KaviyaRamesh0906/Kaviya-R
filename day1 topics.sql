--to create a datbase
create database hexaware;
use hexaware;
create table author (author_id int primary key,author_name varchar(20));
insert into author values(101,'Ben Jhonson');
insert into author values(102,'Mary Koms');
insert into author values(103,'George');
insert into author values(104,'Alice');
insert into author values(103,'George');
insert into author values(105,'Joe');


select*from author;
create table author(author_id int constraint Pk_author_id primary key,author_name varchar(20),constraint Pk_author_id primary key);
select*from INFORMATION_SCHEMA.COLUMS WHERE Table_name='author';
alter table author alter column author_id int NOT NULL;

delete from author where author_name='Mary';
drop table author;





--alter command queries
create table employee(emp_id int ,emp_name varchar(20),salary decimal(8,2));
--ADD  A NEW COLUMN
Alter table employee add email varchar(255) UNIQUE
--MODIFYING A  COLUMN change width character or data type
alter table employee alter column email varchar(500)
insert into employee values(101,'Ben Jhonson',3400,'ben@gmail.com');
insert into employee values(102,'Jhonson',3400,'jhonson@gmail.com');

 Alter table employee add constraint UQ_EMPLOYEE_EMAIL Unique(email);


 drop table author;

insert into author values(101,'Ben Jhonson');
insert into author values(102,'Mary Koms');
insert into author values(103,'George');
insert into author values(104,'Alice');

create table book(
book_id int constraint Pk_Book_id primary key,
book_name varchar(30),
price numeric (10,2) constraint Ck_price Check (price>=1000),
author_id int constraint FJ_BOOK_AUTHORID Foreign key references author (author_id));


insert into book values(1,'alice in wonderland',2800,101);
insert into book values(2,'harry potter',3800,101);
insert into book values(3,'little red riding hood',5800,104);
insert into book values(4,'hansel and gratel',5800,103);
select*from book;

DELETE FROM author where author_id=102;
DELETE FROM author where author_id=103;

alter table book drop constraint FJ_BOOK_AUTHORID ;


alter table book add constraint FJ_BOOK_AUTHORID
foreign key references Author(author_id) On delete no action;
alter table book drop constraint Fk_BOOK_AUTHORID ;

alter table book add constraint FJ_BOOK_AUTHORID ;
Foreign key references Author (author_id) on delete set null;

select *from author;


create table departments(deptId int primary key,dname varchar(10));
insert into departments values(1,'Manager');
insert into departments values (2, 'HR');
insert into departments values (3, 'IT');
select*from departments;
create table employees (eid int primary key, ename varchar(20),
dept_id int default 1,
constraint FK_EMP_DID foreign key(dept_id) references departments (deptId)
on delete set default);
insert into employees values (101, 'Alice', 1)
insert into employees values (102, 'Alice', 2)
insert into employees values (103, 'Alice', 3)
select * from employees
delete from departments where deptId = 2 ;

select*from departments;
