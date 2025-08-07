-- domain

CREATE DOMAIN email_address AS TEXT
CHECK (VALUE ~ '^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');

CREATE DOMAIN salary_type AS DECIMAL(10,2)
CHECK (VALUE >=0);

CREATE DOMAIN age_domain AS INT
CHECK (VALUE between 18 and 66);

CREATE TABLE (
    emp_id integer,
    emp_name varchar,
    email email_address 
    salary salary_type,
    age age_domain,
    mobile_no bigint
	);
	
select * from employee

-- enum

create type department_enum as enum ('software developer', 'data analytic', 'web developer');

create type gender_enum as enum ('male', 'female', 'other');

-- adding enum using alter

alter table employee add column department department_enum;

alter table employee add column gender gender_enum;

select * from employee

update employee set department = 'software developer', gender = 'female' where emp_id = 1

update employee set department = 'web developer', gender = 'male' where emp_id = 2

update employee set department = 'web developer', gender = 'male' where emp_id = 3

update employee set department = 'data analytic', gender = 'female' where emp_id in (4,5)

select * from employee