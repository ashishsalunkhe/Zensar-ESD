create or replace procedure taxdisp
is

cursor emp1 is select sal,ename,empno from emp;
msal number;
emp_no number;
emp_name varchar(10);
asal number;
mtax number;
atax number;
begin
open emp1;
loop

fetch emp1 into msal,emp_name,emp_no;
 exit when emp1%notfound;
 
 asal:=msal*12;
 mtax:=msal*.07;
 atax:=asal*.07;
insert into tax_tab values(emp_no,e_name,msal,mtax,asal,atax);
 
end loop;
 
close emp1;

end taxdisp;
/