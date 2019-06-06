declare
	msal number(7,2);

begin
	select sal
	into msal
	from emp
	where empno = &no;

msal := msal + 1000;
dbms_output.put_line(msal);
end;
/