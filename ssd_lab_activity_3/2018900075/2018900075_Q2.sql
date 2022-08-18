select emp_m.full_name,emp_m.ssn,dpt.dnumber,emp_m.Num_Of_Employees from department dpt ,
(select  CONCAT(emp1.fname, ' ', emp1.minit, ' ',emp1.lname)  full_Name,emp1.ssn,count(*) Num_Of_Employees  from employee emp1,employee emp2
where emp1.ssn=emp2.super_ssn group by emp1.ssn) emp_m
where dpt.mgr_ssn=emp_m.ssn order by emp_m.Num_Of_Employees;