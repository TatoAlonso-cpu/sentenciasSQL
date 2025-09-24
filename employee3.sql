USE employee_reward;

select * FROM employee;
select * FROM reward;

SELECT department
from employee;

select distinct department
from employee
order by department ASC;

select *
from employee
where department = 'IT'
order by salary asc;

select * 
from employee 
where salary > 200000
order by salary ASC; 

select * 
from employee
where department in ( 'IT', 'FINANCE')
ORDER BY joining_date ASC;

select * 
from employee
where first_name like '%a%';

select 
department, avg(salary)
from employee
group by department
order by salary desc;

-- departamentos con al menos 2 empleados 
select department, count(*) as numero_empleados
from employee
group by department
having count(*) > 2;

select department, avg(salary) as salario_medio
from employee 
where salary > 2000000
group by department
having avg(salary) > 3000000
order by salario_medio desc
limit 3;
