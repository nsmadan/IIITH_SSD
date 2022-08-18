select dpt.dnumber,dpt.dname,count(*) Number_of_locations    from department dpt,dept_locations dloc ,
(select essn,count(*) Num_of_Dependents from dependent where sex='F' group by essn having Num_of_Dependents >= 2) dep
where dpt.dnumber=dloc.dnumber
and dep.essn=dpt.mgr_ssn group by dpt.dnumber,dpt.dname;