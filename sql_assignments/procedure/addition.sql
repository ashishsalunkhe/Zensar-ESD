create or replace procedure addition
is
	num1 number :=&no1;
	num2 number :=&no2;
	res number;
begin 
	res:= num1 + num2;
	dbms_output.put_line(res);
end addition;
/