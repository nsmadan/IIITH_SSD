select CONCAT(emp.fname, ' ', emp.minit, ' ',emp.lname)  "Full Name" ,emp.ssn,dpt.dnumber,dpt.dname  from   employee emp,department dpt 
where dpt.mgr_ssn=emp.Ssn 
and emp.ssn in (select distinct emp.super_ssn  from
employee emp,(select essn,sum(hours) hsum from works_on where hours is not null group by essn having hsum < 40) emphr
where emphr.essn=emp.ssn);