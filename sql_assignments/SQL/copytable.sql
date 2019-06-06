/*PL/SQL prog to copy table*/
declare
CURSOR c1 is  
      SELECT * FROM emp;  
      mrow emp%rowtype;
	
begin 
	OPEN c1;  
    LOOP  
   	  EXIT WHEN c1%notfound;
      FETCH c1 into mrow;
      dbms_output.put_line(mrow.empno||mrow.ename); 
      insert into newtable values(mrow.empno,mrow.ename,mrow.job,mrow.mgr,mrow.hiredate,mrow.sal,mrow.comm,mrow.deptno);
    END LOOP;  
    dbms_output.put_line('No of Rows Fetched'||c1%rowcount); 
    CLOSE c1;  
end;
/