create database codingchallenge1;
use  codingchallenge1;

create table pets(petid int primary key,name varchar(50),age int,breed varchar(50),type varchar(50),
AvailableForAdoption bit);

create table shelters(shelterid int primary key,
name varchar(50),location varchar(255));

create table donations( donationid int primary key,donorname varchar(100),
donortype varchar(50) ,donationamount decimal(10,2),donationitem varchar(100),donationdate date);

create table adoptionsevents(eventid int primary key,eventname varchar(255),
eventdate date, location varchar(255));

create table participants( participationid int primary key,participationname varchar(50),participationtype varchar (50),
 eventid int foreign key  references adoptionsevents(eventid) );
drop table donations;


 insert into pets(petid,name,age,breed,type,availableforadoption) values
 (1,'buddy',3,'goldenretriver','dog',1),
(2,'whiskers',2,'persian','cat',0),
(3,'shivu',1,'vodafone','dog',1),
(4,'pekkie',1,'rajapalyam','dog',1),
 (5,'whisu',4,'bulldog','dog',1),
 (6,'siames',2,'maine','cat',2),
(7,'babe',3,'german','dog',1),
 (8,'luna',2,'rugged','cat',1),
(9,'max',1,'siams','cat',1),
 (10,'daisy',2,'puppy','dog',2);
 select*from pets;

insert into shelters (shelterid, name,location) values
(1, 'happy one', 'us'),
(2, 'save life', 'UK'),
(3, 'rugged friends', 'China'),
(4, 'Home for Pets', 'Hampi'),
(5, 'lucky friens', 'german'),
(6, 'rescue me', 'singapore'),
(7, 'doggy home', 'malaysia'),
(8, ' save Paws ', 'hongkong'),
(9, 'forever homes ', 'dubai'),
(10, 'kutty home', 'india');
select*from shelters;

insert into donations (donationid, donorname, donortype, donationamount, donationitem, donationdate) values
(1, 'Kaviya', 'Cash', 2100.00, null, '2025-03-01 '),
(2, 'Aishwarya', 'cash', 1200, null, '2025-03-05 '),
(3, 'Ramesh', 'cash', 3200.50, null, '2025-03-10 '),
(4, 'Babu', 'item',null, 'toys', '2025-03-15 '),
(5, 'Sarah', 'item',null, 'Toys', '2025-03-20 '),
(6, 'Dinesh', 'cash', 1900.00, null, '2025-03-25 '),
(7, 'Rajan', 'item', null, ' beds', '2025-03-30 '),
(8, 'Harish', 'cash',300.00, null, '2025-04-05 '),
(9, 'Sharmi', 'item', null,'food' , '2025-04-10 '),
(10, 'Karthi', 'cash', 120.00, null, '2025-04-15 ');



select*from donations;

insert into adoptionsevents (eventID, eventName, eventDate, Location) VALUES
(1, 'spring fest', '2025-04-15' , ' india'),
(2, 'Summer fest', '2025-06-20', 'china'),
(3, 'Winter fest', '2025-12-10 ', 'german'),
(4, 'monsoon fest', '2025-07-08 ', 'singapore'),
(5, 'together fest', '2025-08-14', 'malaysia'),
(6, 'Rescue fest', '2025-09-22 ', 'dubai'),
(7, 'pet show', '2025-10-18 ', 'china'),
(8, 'rainy fest', '2025-11-25 ', 'hongkong'),
(9, 'paws meet', '2025-05-30', 'hampi'),
(10, 'take home', '2026-02-14 ', 'us');

select *from adoptionsevents;

insert into participants (participationid, participationname, participationtype, EventID) values
(1, 'Kaviya', 'adopter', 1),
(2, 'Aishwarya', 'adopter', 2),
(3, 'Ramesh', 'adopter', 3),
(4, 'Babu', 'shelter', 4),
(5, 'Sarah', 'adopter', 5),
(6, 'Dinesh', 'shelter', 6),
(7, 'Rajan', 'adoptor', 7),
(8, 'Harish', 'shelter', 8),
(9, 'Sharmi', 'shelter', 9),
(10, 'Karthi', 'adopter', 10);
select*from participants;


--queries
--5)Write an SQL query that retrieves a list of available pets (those marked as available for adoption)
--from the "Pets" table. Include the pet's name, age, breed, and type in the result set. Ensure that
--the query filters out pets that are not available for adoption.

select name,age,breed,type from pets 
where availableforadoption=1;

--6)Write an SQL query that retrieves the names of participants (shelters and adopters) registered
--for a specific adoption event. Use a parameter to specify the event ID. Ensure that the query
--joins the necessary tables to retrieve the participant names and types.

select p.participationid, p.participationname, p.participationtype
from participants p
join adoptionsevents a
on p.eventid=a.eventid
order by a.eventName;

--7)Create a stored procedure in SQL that allows a shelter to update its information (name and
--location) in the "Shelters" table. Use parameters to pass the shelter ID and the new information.
--Ensure that the procedure performs the update and handles potential errors, such as an invalid
--shelter ID.





--8)Write an SQL query that calculates and retrieves the total donation amount for each shelter (by
--shelter name) from the "Donations" table. The result should include the shelter name and the
--total donation amount. Ensure that the query handles cases where a shelter has received no
--donations.
select*from donations;
select*from shelters;

select s.name as sheltername
sum(donations.donationamount) as total_amount
from shelters s
left join donations 
on shelters.shelterid=d.donationid
group by s.name;
--error

--9)Write an SQL query that retrieves the names of pets from the "Pets" table that do not have an
--owner (i.e., where "OwnerID" is null). Include the pet's name, age, breed, and type in the result
--set.

alter table pets add ownerID int null;
select*from pets;

insert into pets (petid, name, age, breed, type, availableforadoption, OwnerID)
values
(11, 'rocky', 2, 'goldenretriver', 'Dog', 0, 101),  
(12, 'milo', 3, 'persian', 'Cat', 1, 102);

select name ,age,breed,type
from pets
where ownerid is null;

--10)Write an SQL query that retrieves the total donation amount for each month and year (e.g.,
--January 2023) from the "Donations" table. The result should include the month-year and the
--corresponding total donation amount. Ensure that the query handles cases where no donations
--were made in a specific month-year.


select month(donationdate) as month,year (donationdate) as year,
sum (donationamount) as total_donation
from donations
where donationamount is not null
group by month(donationdate),year(donationdate)
order by month,year;

--11)Retrieve a list of distinct breeds for all pets that are either aged between 1 and 3 years or older
--than 5 years.
select*from pets;
select distinct breed from pets where age between 1 and 3 or age>5;

--12)Retrieve a list of pets and their respective shelters where the pets are currently available for
--adoption.




select*from shelters;
select *from pets;

alter table pets 
add shelterid int;
alter table pets
add constraint fk_shelter foreign key(shelterid)
references shelters(shelterid)
on delete set null;

select*from pets;

update pets set shelterid=1 where petid=1;
update pets set shelterid=2 where petid=2;
update pets set shelterid=3 where petid=3;
update pets set shelterid=4 where petid=4;
update pets set shelterid=5 where petid=5;
update pets set shelterid=6 where petid=6;
update pets set shelterid=7 where petid=7;
update pets set shelterid=8 where petid=8;
update pets set shelterid=9  where petid=9;
update pets set shelterid=10 where petid=10;

select  p.name,p.breed,p.type,s.name,s.location
from pets p
join shelters s 
on p.shelterid=s.shelterid
where p.AvailableForAdoption=1;

--13)Find the total number of participants in events organized by shelters located in specific city.
--Example: City=Chennai
select*from shelters;

select count(p.participationid) as totalmembers
from participants p
join adoptionsevents a
on p.eventid=a.eventid
join shelters s
on a.location = s.location
where s.location='china';



select * from Shelters;
select * from AdoptionsEvents;
select * from Participants;

--14. Retrieve a list of unique breeds for pets with ages between 1 and 5 years.
select distinct breed from pets where age between 1 and 5;
select*from pets;

--15)15. Find the pets that have not been adopted by selecting their information from the 'Pet' table.
select name,age,breed,type from pets
where ownerid is  null;

--16)Retrieve the names of all adopted pets along with the adopter's name from the 'Adoption' and
--'User' tables.

select *from participants;
select *from pets;


select p.name as petname ,pa.participationname as adoptername
from pets p
join participants pa
on p.petid=pa.participationid
where pa.participationtype='adopter' ;

--17)Retrieve a list of all shelters along with the count of pets currently available for adoption in each


select s.shelterid, s.name  ,s.location, count(pets.petid) as availablepets
from shelters s,pets 
where s.shelterid=pets.shelterid
and pets.availableforadoption=1
group by s.shelterid,s.name,s.location;


--18)Find pairs of pets from the same shelter that have the same breed.


--19. List all possible combinations of shelters and adoption events.

select s.name as sheltername, a.eventname as adoptionevent, a.location as eventlocation
from shelters s, adoptionsevents a;


--20)Determine the shelter that has the highest number of adopted pets.
select top 1 s.name as sheltername,count(p.petid) as highadoptedpets
from shelters s,pets p
where s.shelterid=p.shelterid
and p.ownerid is not null
group by s.name
order by highadoptedpets









