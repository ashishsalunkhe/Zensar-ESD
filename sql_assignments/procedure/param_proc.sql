create or replace procedure addition(num1 number ,	num2 number )
is
	
	res number;
begin 
	res:= num1 + num2;
	dbms_output.put_line(res);
end addition;
/