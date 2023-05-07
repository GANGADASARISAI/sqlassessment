1)
-- creating database
create database online_consulation_theraphy_website
-- creating a table doctor
create table doctor(
doctor_id int primary key ,
doctor_name varchar(40) not null,
specialization varchar(30) not null
);
-- creating appointments table
create table Appointments(
patent_id int not null,
doctor_id int not null,
appointment_date date not null,
appointment_time time not null,
address varchar(40) not null,
foreign key (docter_id) references doctor,
foreign key (patient_id) references Patient
);
-- creating patient table
create table Patient(
patient_id int primary key,
patient_name varchar(30) not null,
gender varchar(30),
patent_age int,
patient_problem varchar(30) not null,
patient_contact_number int not null
);
--creating reviews table
create table Reviews(
 review_id int primary key,
 patient_id int,
 doctor_id int not null,
 review_date date,
 rating int,
 comments varchar(300),
 foreign key (docter_id) references doctor,
foreign key (patient_id) references Patient
 );
 


2)
///////////create table contact(
id int primary key,
Email varchar(70) not null,
fname varchar(50) not null,
lname varchar(50),
company varchar(30),
Active_flag int,
opt_out int);

insert into contact values(123,"a@.com","Kian","Seth","ABC",1,1);
insert into contact values(133,"b@.com","Neha","Seth","ABC",1,0);
insert into contact values(234,"c@.com","Puru","Malik","CDF",0,0);
insert into contact values(342,"d@.com","Sid","Maan","TEG",1,0);//////////////
select *from contact;
select * from contact where Active_flag=1;
delete from contact where opt_out=1;
delete from contact where company="ABC";
insert into contact values(658,"mili@gmail.com",'mili',' ','DGH',1,1);
select distinct(company) from contact;
update contact set fname="niti" where fname="mili";



3)
//////create table customer(
customer_id int primary key,
cust_name varchar(40) not null,
city varchar(40) not null,
grade int,
salesman_id int not null
);
insert into customer values(3002,"Nick Rimando","New York",100,5001);
insert into customer values(3007," Brad Davis","New York",200,5001);
insert into customer values(3005,"Graham Zusi","California",200,5002);
insert into customer values(3008,"Julian Green","London",300,5002);
insert into customer values(3004," Fabian Johnson","Paris",300,5006);
insert into customer values(3009,"Geoff Cameron","Berlin",100,5003);
insert into customer values(3003,"Jozy Altidor","Moscow",200,5007);
insert into customer values(3001,"Brad Guzan","London",NULL ,5005);
select *from customer;
drop table customer;
create table salesman(
salesman_id int primary key,
name varchar(50) not null,
city varchar(50) not null,
commission float
);
insert into salesman values(5001,"James Hoog","New York",0.15);
insert into salesman values(5002,"Nail Knite","Paris",0.13);
insert into salesman values(5005,"Pit Alex","London",0.11);
insert into salesman values(5006,"Mc Lyon","Paris",0.14);
insert into salesman values(5007,"Paul Adam","Rome",0.13);
insert into salesman values(5003,"Lauson Hen","San Jose",0.12);
select *from salesman;
select *from customer;////////


select c.cust_name,c.city as customer_city,c.grade,s.salesman_id,s.name,s.city as salesman_city from customer c
join salesman s on c.salesman_id=s.salesman_id where c.grade<100 order by c.customer_id ASC;

select c.cust_name,c.city as customer_city,c.grade,s.name,s.city as salesman_city from customer c
join salesman s on c.salesman_id=s.salesman_id where c.grade<100 order by c.customer_id ASC;



select c.cust_name,c.city as customer_city,c.grade,s.salesman_id,s.name,s.commission,s.city as salesman_city from customer c
join salesman s on c.salesman_id=s.salesman_id where c.grade<100 order by c.customer_id ASC;









