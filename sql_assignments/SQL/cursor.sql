DECLARE  
   
   CURSOR c1 is  
      SELECT ename FROM emp;  
      mname emp.ename%type;
      cnt number;
BEGIN  
   SELECT count(*) into cnt from emp;
   OPEN c1;  
   LOOP  
      FETCH c1 into mname;
      dbms_output.put_line(mname); 
      cnt:=cnt-1;   
      EXIT WHEN cnt <= 0;  
       
   END LOOP;  
   CLOSE c1;  
END;  
/  