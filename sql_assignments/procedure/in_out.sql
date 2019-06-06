create or replace procedure addition(num1 in number,num2 in number,
	res out number)
is
	
begin 
	res:= num1 + num2;
	dbms_output.put_line(res);
end addition;
/