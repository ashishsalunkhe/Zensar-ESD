declare
CURSOR c1(jb emp.job%type)
  is  
      SELECT * FROM emp where job=jb;  
      mrow emp%rowtype;
  
begin 
  OPEN c1('&jb');  
    LOOP  
      EXIT WHEN c1%notfound;
      FETCH c1 into mrow;
      dbms_output.put_line(mrow.ename||'	'||mrow.deptno||'	'||mrow.sal); 
      
    END LOOP;  
    dbms_output.put_line('No of Rows Fetched'||c1%rowcount); 
    CLOSE c1;  
end;
/