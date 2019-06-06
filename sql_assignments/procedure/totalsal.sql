/*create proc accept empno and return total sal*/

create or replace procedure totalsal(no in emp.empno%type ,msal out emp.sal%type)
is

begin

	select sal+nvl(comm,0) into msal;
	from emp where empno=no;

end totalsal;
/