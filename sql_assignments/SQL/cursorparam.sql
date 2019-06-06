/*PL/SQL prog to cursor param*/
declare
CURSOR c1(dno emp.deptno%type)
  is  
      SELECT * FROM emp where deptno=dno;  
      mrow emp%rowtype;
  
begin 
  OPEN c1(&dno);  
    LOOP  
      EXIT WHEN c1%notfound;
      FETCH c1 into mrow;
      dbms_output.put_line(mrow.empno||mrow.ename); 
      
    END LOOP;  
    dbms_output.put_line('No of Rows Fetched'||c1%rowcount); 
    CLOSE c1;  
end;
/