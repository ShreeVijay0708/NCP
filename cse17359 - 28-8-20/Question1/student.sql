show databases;
create database ncp;

use ncp;

create table studentinfo(
name varchar(50) ,
rollnumber int primary key,
age int,
cgpa decimal(5,2),
company_placed varchar(50)
)

drop table studentinfo;

show tables;

insert into studentinfo values("Niveth",1,20,9.19,"Cisco");
insert into studentinfo values("Ram",2,20,8.19,"CTS");
insert into studentinfo values("Srinath",3,20,7.19,"CTS");
insert into studentinfo values("Ashwin",4,20,9.19,"CTS");
insert into studentinfo values("Prabhu",5,20,8.19,"CTS");
insert into studentinfo values("Inder",6,20,7.19,"CTS");
insert into studentinfo values("Bharath",7,20,9.19,"TCS");
insert into studentinfo values("Arnab",8,20,8.19,"TCS");
insert into studentinfo values("Danaa",9,20,7.19,"TCS");
insert into studentinfo values("Tron",10,20,9.19,"TCS");
insert into studentinfo values("Vikram",11,20,8.19,"TCS");
insert into studentinfo values("Keshav",12,20,7.19,"Infosys");
insert into studentinfo values("Rohit",13,20,9.19,"Infosys");
insert into studentinfo values("Vineeth",14,20,8.19,"Infosys");
insert into studentinfo values("Lohith",15,20,7.19,"Infosys");
insert into studentinfo values("Sushanth",16,20,9.19,"Infosys");
insert into studentinfo values("Lochan",17,20,8.19,"Infosys");
insert into studentinfo values("ShreeVijay",18,20,7.19,"Cisco");
insert into studentinfo values("Venkat",19,20,9.19,"Cisco");
insert into studentinfo values("Varadha",20,20,7.19,"Cisco");
insert into studentinfo values("Badrish",21,20,8.19,"Microsoft");
insert into studentinfo values("Gokul",22,20,9.19,"Microsoft");
insert into studentinfo values("Dhanishwar",23,20,7.19,"Microsoft");
insert into studentinfo values("Pritheev",24,20,8.19,"Microsoft");
insert into studentinfo values("Rajesh",25,20,6.19,"Microsoft");


select * from studentinfo;
