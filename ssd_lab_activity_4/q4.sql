DELIMITER //
CREATE PROCEDURE Customer_Details(OUT custDet varchar(4000))
BEGIN 
 
    DECLARE c_data varchar(400);

	-- Customer Data Declaration 
	DEClARE cus_data 
		CURSOR FOR 
			select CONCAT(cust_name,',',cust_city,',',cust_country,',',grade) consol_data from customer where agent_code LIKE 'A00%';

	OPEN cus_data;

	LOOP
		FETCH cus_data INTO c_data; 
		SET custDet = CONCAT(c_data,",",custDet);
	END LOOP;
	CLOSE cus_data;
 
END //
 DELIMITER ;
 
  
CALL Customer_Details(@custmer_data); 
SELECT @custmer_data;

 
 