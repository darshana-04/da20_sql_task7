select * from employee

create or replace function age_limit(age int)
returns varchar as $$
begin
	if age = 18 THEN
		return 'you will get 1000 bonus';
	elseif age >= 25 AND age <= 35 THEN
		return 'you will get 1500 bonus';
	elseif age >= 40 AND age <= 55 THEN
		return 'you will get 2000 bonus';
	else 
		return 'you will get 500 bonus';
		end if;
END 
$$ LANGUAGE plpgsql;

select age_limit(55)

select age_limit(65)

select age_limit(18)

----------------------------------------------------------------------------------------------------
create or replace function salary_limit(salary numeric)
returns varchar as $$
begin
	if salary >= 30000 THEN
		return 'you will get extra bonus again';
	else
		return 'you will not get any bonus';
	end if;

END
$$ LANGUAGE plpgsql;


select salary_limit(27000)

select salary_limit(59000)
	
	
	
