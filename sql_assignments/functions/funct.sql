create or replace function show_total(no in emp.empno%type)
return number
is 
msal emp.sal%type;
begin
	select sal+nvl(comm,0) into msal
	from emp where empno = no;
	return msal;
end show_total;
/