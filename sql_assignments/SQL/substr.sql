declare
	no1 number := &no1;
	n1 number;
	n3 number;
	n4 number;
	n2 number;

begin
	n1 := substr(no1, 1,1);
	n2 := substr(no1, 2,1);
	n3 := substr(no1, 3,1);
	n4 := substr(n, 4,1);

dbms_output.put_line(n1+n3);
dbms_output.put_line(n2*n4);

end;
/
