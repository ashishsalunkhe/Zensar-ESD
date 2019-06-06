declare
CURSOR c1
  is  
      SELECT ENAME,SAL,GRADE FROM EMP,SALGRADE WHERE SAL BETWEEN LOSAL AND HISAL ;
      name emp.ename%type;
      sal emp.sal%type;
      grade salgrade.grade%type;
      cnt number;
  
begin 
  SELECT count(*) into cnt from emp;
   OPEN c1;  
   while cnt<=5 
   LOOP  
      FETCH c1 into name,sal,grade;
      
      EXIT WHEN c1%notfound;  
      dbms_output.put_line(name||'		'||sal||'              '||grade);
      cnt:=cnt+1;
    
   END LOOP;  
   CLOSE c1;  
end;
/