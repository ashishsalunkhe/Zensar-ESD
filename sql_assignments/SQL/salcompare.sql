declare 
	sal1 number;
	sal2 number;
	l1 varchar(20);
	l2 varchar(20);
	s1 varchar(20);
	s2 varchar(20);
begin 
	select sal,ename,loc into sal1,s1,l1 from emp,dept where empno=&eno1 and emp.deptno = dept.deptno ;  
	select sal,ename,loc into sal2,s2,l2 from emp,dept where empno=&eno2 and emp.deptno = dept.deptno ; 
	if sal1>sal2 then
	dbms_output.put_line('Sal1 is greater'||l1);
	else 
	dbms_output.put_line('Sal2 is greater'||l2);
	end if;
END;
/