/*accept 2 in from integer display fibonacci series check first no is greater than second*/
declare
	no1 number :=&no1;
	no2 number := &no2;
	i number := 0;
	j number := 1;
	k number :=0;
begin
if no2>no1
then
		loop 
			i:=j;
			j:=k;
			k:=i+j;
			exit when k>=no1;
		end loop;
		
		loop
			dbms_output.put_line(k);
			i:=j;
			j:=k;
			k:=i+j;
			exit when k>no2;
		end loop;
	end if;
end;
/