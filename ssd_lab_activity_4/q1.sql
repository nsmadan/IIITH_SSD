DELIMITER //
CREATE PROCEDURE AddNum(IN num1 int,IN num2 int,OUT Sum int)
BEGIN
  set Sum = num1 + num2;
END //

DELIMITER ;

Call Addnum(34,5,@result);
 select @result;
  
