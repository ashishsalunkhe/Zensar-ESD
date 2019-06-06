declare 
	cursor c1
	is 
	select ename, mgr from emp order by mgr;

name emp.ename%type;
man emp.mgr%type;
cnt number;
temp emp.mgr%type;

begin 
	select count(*) into cnt from emp;
	open c1;
	fetch c1 into name, man;
	temp:= man;
	dbms_output.put_line('MANAGER 						EMPLOYEE');
	loop
	fetch c1 into name, man;
	exit when c1%notfound;

	if temp = 0
	then 
	dbms_output.put_line(man||' 							'||name);
	temp:=man;


	elsif man <> temp
	then 
	dbms_output.put_line(man||' 							'||name);
	temp:=man;

	else
	dbms_output.put_line(' 							'||name);
	temp:= man;
	end if;

	cnt:=cnt-1;
	end loop;
	close c1;

end;
/