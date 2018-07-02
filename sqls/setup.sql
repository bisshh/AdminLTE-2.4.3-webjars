create table settings(id serial primary key, keyss varchar(255) unique, value text);

create table contact_types (id serial primary key, name varchar(255), created_at timestamp default CURRENT_TIMESTAMP, updated_at timestamp null, status boolean default true);

create table contacts (id serial primary key, salute varchar(5), first_name varchar(50), last_name varchar(50), email varchar (100) unique, contact_no varchar(20), gender char(1), dob date null, address varchar(100), contact_type_id bigint unsigned, created_at timestamp default CURRENT_TIMESTAMP, updated_at timestamp null, status boolean default true);

alter table contacts add foreign key (contact_type_id) references contact_types(id);

create table email_templates (id serial primary key, name varchar(255), slug varchar(100), description text, created_at timestamp default CURRENT_TIMESTAMP, updated_at timestamp null, status boolean default true);

create table students(id serial primary key, first_name varchar(100), last_name varchar(100), email varchar(100), contact varchar(10), address varchar(255), created_at timestamp default CURRENT_TIMESTAMP, updated_at timestamp null, status boolean default true);

insert into students(first_name, last_name, email, contact, address) values ("Resham", "Khadka", "resham@gmail.com", "9849068407", "Baneshwor");