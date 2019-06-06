
declare 
	mname emp.ename%type;
	mdname dept.loc%type;
	mloc dept.loc%type;
begin
	select ename,deptno,loc
	from emp where emp.empno = dept.deptno and emp.empno =&emp_no;
dbms_ouput.put_line('write pl/sql script to accept empnp and display name, deptname, loc')
dbms_ouput.put_line(mname||''||mdname||''||mloc)


end;
/