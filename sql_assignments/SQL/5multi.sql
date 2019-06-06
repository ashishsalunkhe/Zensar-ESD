declare
	no number := '&no';
	n number :=1;
	p number;
begin
	while n<=10
	loop
		p := no*n;
		dbms_output.put_line(no||'x'||n||'='||p);
		n := n+1;
	end loop;
end;
/
