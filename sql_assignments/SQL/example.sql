declare
	mname emp.ename%type;
begin
	select ename
	into mname
	from emp
	where empno=&no;
dbms_output.put_line(mname);
end;
/