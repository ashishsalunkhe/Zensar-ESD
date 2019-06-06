/*PL/SQL prog to cursor param*/
declare
CURSOR c1
  is  
      SELECT ename,mgr from emp order by mgr;
      name emp.ename%type;
      man emp.mgr%type;
      cnt number;
  
begin 
  SELECT count(*) into cnt from emp;
   OPEN c1;  
   LOOP  
      FETCH c1 into name;
      dbms_output.put_line('Manager    Employee'); 
     
      fetch c1 into name,man;
      EXIT WHEN c1%notfound;  
      dbms_output.put_line(man||'                     '||name);
      cnt:=cnt-1;
    
   END LOOP;  
   CLOSE c1;  
end;
/