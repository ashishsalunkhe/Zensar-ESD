create or replace procedure deptn(dn in dept.dname%type ,no out number)
is 

	
begin
	select count(*) into no from emp,dept where dept.deptno=emp.deptno and dept.dname = dn;

end deptn;
/