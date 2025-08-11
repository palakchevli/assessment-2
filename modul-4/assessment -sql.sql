create database mydb2;
use mydb2;

 /*Q-1*/
 
drop table worker;
create table worker (
 worker_id int,
 first_name varchar(45),
 last_name varchar(45),
 salary int,
 joining_date datetime,
 department varchar(45)
 );
 
 insert into worker
 values (1,"monika","arora",100000,"2014-02-20 09:00:00","HR"),
        (2,"niharika","vema",80000,"2014-06-11 09:00:00","admin"),
        (3,"vishal","singhal",300000,"2014-02-20 09:00:00","HR"),
        (4,"amitabh","singh",500000,"2014-02-20 09:00:00","admin"),
        (5,"vivek","bhati",500000,"2014-06-11 09:00:00","admin"),
        (6,"vipul","diwan",200000,"2014-06-11 09:00:00","Account"),
        (7,"satish","kumar",75000,"2014-01-20 09:00:00","Account"),
        (8,"geetika","chauhan",90000,"2014-04-11 09:00:00","admin");
select * from worker
order by first_name Asc,
         department desc;
select * from worker
where first_name  in ("vipul", "satish");

select*from worker
where first_name like "%%%%%h";

select*from worker
where salary between 1 and 100000;

select
department,
count(worker_id) as total_employee
from worker
group by department
having count(worker_id) >1;

select * from worker
limit 6;

select department,
      count(worker_id) as total_worker
from worker
group by department
having count(worker_id) <5;
      
select
department,
count(worker_id) as total_worker
from worker
group by department;

select
first_name,
last_name,
department
from worker
order by salary desc
limit 1;
        
 /*Q-2*/
drop table student;
create table student (
 Stdid int,
 Stdname varchar(45),
 sex varchar(45),
 percentage int,
 Class int,
 sec varchar(45),
 Stream varchar(45),
 DOB date
 );
select*from student;

insert into student
values (1001,"surekha joshi","female",82,12,"A","science","1998-3-8"),
       (1002,"maahi agrawal","female",56,11,"C","commerce","2008-11-23"),
       (1003,"sanam verma","male",59,11,"C","commerce","2006-6-29"),
       (1004,"ronit kumar","male",63,11,"C","commerce","1997-11-5"),
       (1005,"dipesh pulkit","male",78,11,"B","science","2003-9-14"),
       (1006,"jahanvi puri","female",60,11,"B","commerce","2008-11-7"),
       (1007,"sanam kumar","male",23,12,"F","commerce","1998-3-8"),
       (1008,"sahil saras","male",56,11,"C","commerce","2008-11-7"),
       (1009,"akshara agrawal","female",72,12,"B","commerce","1996-11-23"),
       (1010,"stuti mishra","female",39,11,"F","science","2008-11-23"),
       (1011,"harsh agrawal","male",42,11,"C","science","1998-8-3"),
       (1012,"nikunj agrawal","male",49,12,"C","commerce","1998-6-28"),
       (1013,"akriti saxena","female",89,12,"A","science","2008-11-23"),
       (1014,"tani rastogi","female",82,12,"A","science","2008-11-23");
       
select * from student;

select stdname,dob from student;

select*from student
where percentage>=80;

select stdname,stream,percentage from student
where percentage>80;

select * from student
where stream = "science" and percentage > 75;


 
 

