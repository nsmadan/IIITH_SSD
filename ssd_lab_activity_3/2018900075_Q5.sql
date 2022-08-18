select dep.mgr_ssn,dpt.dnumber,count(*) Num_of_dependents from dependent dep,(select distinct dep.mgr_ssn,dep.dnumber from department dep ,(select dnumber,count(*) num_of_locations from dept_locations group by dnumber having num_of_locations>=2) dloc
where dep.dnumber=dloc.dnumber) dpt
where dep.essn=dpt.mgr_ssn group by dep.essn,dpt.dnumber ;