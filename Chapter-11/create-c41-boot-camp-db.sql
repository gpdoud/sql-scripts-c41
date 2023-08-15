/*
CREATE Database C41BootCamp;
CREATE TABLE Students (
    Id int primary key identity(1, 1),
    Firstname varchar(30) not null,
    Lastname varchar(30) not null,
    Phone varchar(12) null,
    Address varchar(75) null,
    City varchar(30) null,
    State varchar(2) not null default 'OH',
    Zipcode varchar(5) null
);
insert Students (Firstname, Lastname, Phone, Address, City, State, Zipcode) 
    values ('Jane', 'Doe', '513-555-1212', null, null, default, null);
alter table Students
    add Active bit not null default 1;

select * from students;
CREATE TABLE Technologies (
    Id int primary key identity(1,1),
    Name varchar(30) not null,
    InstructionDays int not null default 5
)

*/

CREATE TABLE Curriculum (
    Id int primary key identity(1,1),
    Day int not null,
    Topic varchar(50) not NULL,
    TechnologiesId int not null foreign key references Technologies(id)
);