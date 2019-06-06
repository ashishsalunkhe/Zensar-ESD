declare
	n1 number :=&n0;
	n2 number :=&n2;
	n3 number;

begin
	
	n3 := n1 + n2;
	dbms_output.put_line('Addition: '|| n3);
	n3 := n1 - n2;
	dbms_output.put_line('Subtraction: '|| n3);
	n3 := n1 * n2;
	dbms_output.put_line('Multiplication: '|| n3);
	n3 := n1 / n2;
	dbms_output.put_line('Division: '|| n3);
end;
/