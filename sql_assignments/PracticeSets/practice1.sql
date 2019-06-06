set serveroutput on 

declare 
  cursor c1(dno emp.deptno%type)
  is
  select * from emp
  where deptno = dno;
  m emp%rowtype;
  sal number(7,2); 
begin
  open c1(&deno);
  dbms_output.put_line('Empname Salary');
  loop
    fetch c1 into m;
    exit when c1%notfound;
    sal := m.sal * 1.1;
    dbms_output.put_line(m.ename ||'  '|| sal); 
  end loop;
  dbms_output.put_line('No of records updated: ' || c1%rowcount);
  close c1;
end;
/