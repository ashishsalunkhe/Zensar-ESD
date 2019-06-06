declare 
	cursor c1
	is 
	select * from emp;
begin 
	for mrow in c1
	loop
		dbms_output.put_line(mrow.empno);
	end loop;
end;
/