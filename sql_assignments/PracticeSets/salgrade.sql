declare
CURSOR c1
  is  
     select * from emp where rownum<=5;
 e c1%rowtype;
CURSOR c2
  is  
     select * from salgrade;
s c2%rowtype;
  
begin 
   OPEN c1;  
   LOOP  
      open c2;
      FETCH c1 into e;
      exit when c1%notfound;
              LOOP
                  FETCH c2 into s;
                  exit when c2%notfound; 
                  if e.sal>s.losal and e.sal<s.hisal then
                  dbms_output.put_line(e.ename||'    '||e.sal||'              '||s.grade);
                  end if;  
              end LOOP;
      close c2; 
   END LOOP;  
   CLOSE c1;  
end;
/9