declare
	n1 number := &n;
	n2 number := &n;
begin
	if n1>n2
	then
	dbms_ouput.put_line('n1 is greater');
	else 
	dbms_output.put_line('n2 is greater');
	end if;
end;
/