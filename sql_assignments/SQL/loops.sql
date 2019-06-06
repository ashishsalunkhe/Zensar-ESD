declare 
no number:= 1;
begin
	loop 
	dbms_output.put_line(no);
	no:=no+1;

/* 
if no>10
then 
exit;
end if;
*/

exit when no>10;
end loop;
end;
/