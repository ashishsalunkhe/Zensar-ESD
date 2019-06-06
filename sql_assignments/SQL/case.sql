prompt Menu
prompt 1. Add
prompt 2. Sub
prompt 3. Mul
prompt 4. Div
prompt 5. Exit

declare 
	choice number := '&enter_choice';
	no1 number := '&no';
	no2 number := '&no1';
begin
	case choice
	when 1 then
	dbms_output.put_line('Addition'||no1+no2);
	when 2 then
	dbms_output.put_line('Subtraction'||no1-no2);
	when 3 then
	dbms_output.put_line('Multiplication'||no1*no2);
	when 4 then
	dbms_output.put_line('Division'||no1/no2);
	otherwise
	dbms_output.put_line('no case');
	end case;
end;
/