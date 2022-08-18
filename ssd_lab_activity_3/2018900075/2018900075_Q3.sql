select dpt.mgr_ssn ,count(*) "Number of Projects" from department dpt,project prj
where prj.dnum=dpt.dnumber group by dpt.mgr_ssn;