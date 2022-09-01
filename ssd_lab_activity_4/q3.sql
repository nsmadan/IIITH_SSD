DELIMITER //
CREATE PROCEDURE Cust_name_p2()
BEGIN
select cust_name,grade from CUSTOMER WHERE  (opening_amt+receive_amt)>10000;
END //
 DELIMITER ;

 call Cust_name_p2(); 