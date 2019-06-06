declare
	
	mn varchar2(20);
	ma number;
	mm number;

begin
	dbms_output.put_line('write pl/sql block accepting empno and store empname,monthly sal,annual sal, monthly tax in a new table Tax Table.');
	select ename,sal,sal*12 into mn,mm,ma from emp where empno=&emp_no;
	insert into tax values(mn,mm,ma);
end;
/