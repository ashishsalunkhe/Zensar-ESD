declare
	no number ;
	n1 number;
	th number;
	h number;
	t number;
	u number;
	add number;
	mul number;
begin
	 
	no := &Enter_4DigitNo;
	th := mod(no,10);
	no := no/10;
	h := mod(no,10);
	no := no/10;
	t := mod(no,10);
	no := no/10;
	u := mod(no,10);
	no := no/10;
	add := u+h;
	mul := t*th;
	dbms_ouput.put_line('add:'||add);
	dbms_ouput.put_line('mul:'||mul);

end;
/