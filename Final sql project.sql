show databases;
use student;
create table trustee(Trustee_id int primary key,First_Name char(30),Last_Name varchar(30),Age int);
insert into trustee values("1","Mr_Kunal","Chhabria","30");
insert into trustee values("2","Mr_Arnab","Goswami","54");

create table svpt_principal(principal_id int primary key,name char(30),lname char(30),age int,years_of_experience int,
Trustee_id int,foreign key(Trustee_id) references trustee (Trustee_id));
insert into svpt_principal values("1","Vaihali","Patel","57","30","1");

create table svpt_teacher(Teacher_id int,First_name char(30),Last_Name char(30),age int,Teaching_division char(10) 
primary key,principal_id int,foreign key(principal_id) references svpt_principal(principal_id));
insert into svpt_teacher values("1","Anjana","Melody","51","A","1");
insert into svpt_teacher values("2","Kalpana","Prabhu","40","C","1");
insert into svpt_teacher values("3","Minakshi","Patel","35","B","1");
insert into svpt_teacher values("4","Sonali","Gupta","41","D","1");
insert into svpt_teacher values("5","Priyanka","Patel","33","E","1");
select  distinct * from svpt_teacher;
select * from svpt_teacher where Teacher_id in (1,3,4);
select First_name from svpt_teacher;

create table svpt_student(stu_id int,First_Name char(30),Last_Name char(30),Age int,Marks int,Teaching_division char(10),
foreign key(Teaching_division) references svpt_teacher(Teaching_division));
insert into svpt_student values("1","Ameya","parekh","21","50","A");
insert into svpt_student values("2","Reyansh","Sharma","18","20","A");
insert into svpt_student values("3","Aryan","Mehta","23","55","B");
insert into svpt_student values("4","Neel","Mehta","20","60","c");
insert into svpt_student values("5","Ashish","Patil","30","55","B");
insert into svpt_student values("6","Siddhesh","Patil","40","15","A");
insert into svpt_student values("7","Harsh","Vishwakarma","18","44","c");
insert into svpt_student values("8","Sayyam","jain","15","20","B");
insert into svpt_student values("9","Khushi","Jain","18","50","D");
insert into svpt_student values("10","Prasana","Surana","27","53","E");
insert into svpt_student values("11","Ashish","patil","33","22","D");
insert into svpt_student values("12","Mayuresh","patil","17","33","E");
insert into svpt_student values("13","RR","Royals","17","30","A");
insert into svpt_student values("14","Kunal","chhabria","18","33","B");
insert into svpt_student values("15","Yashvant","jadhav","20","29","D");
insert into svpt_student values("16","Rishi","patil","19","30","A");
insert into svpt_student values("17","Raj","jadhav","18","50","C");
insert into svpt_student values("18","Siddharth","Randheria","19","53","D");
insert into svpt_student values("17","Raj","jadhav","18","23","A");
insert into svpt_student values("18","Anand","vishwa","18","39","B");
insert into svpt_student values("19","kalruksha","Vishwakarma","18","44","c");
insert into svpt_student values("20","yash","patil","18","43","D");
insert into svpt_student values("21","Yatish","Nakhawa","19","45","A");
insert into svpt_student values("22","zahan","patil","20","49","C");
select First_Name from svpt_student;
select marks from svpt_student;
select * from svpt_student where First_Name="Ameya";
alter table svpt_student rename column stu_id to stud_id;
select stud_id, First_Name from svpt_student;
select  distinct * from svpt_student;
select * from svpt_student where marks between 20 and 40;
select * from svpt_student where stud_id in (1,4,7,10,12,9,8);
select * from svpt_student where stud_id not in (1,2,4,12);
