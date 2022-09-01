DELIMITER //
CREATE PROCEDURE Cust_name_p1(IN city VARCHAR(50))
BEGIN
select cust_name from CUSTOMER WHERE WORKING_AREA=city;
END //
 DELIMITER ;

 call Cust_name_p1('Bangalore'); 
 
 