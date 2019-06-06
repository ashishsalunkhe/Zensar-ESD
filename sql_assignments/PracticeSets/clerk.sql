DECLARE
	CURSOR c1 IS SELECT * FROM emp where emp.job = 'CLERK';
	e_rec emp%rowtype;
BEGIN
	OPEN c1;
	LOOP
	FETCH c1 INTO e_rec;
	DBMS_OUTPUT.PUT_LINE('Number' ||'		'||'Name'||'		'||'Salary');
	DBMS_OUTPUT.PUT_LINE(e_rec.empno||'		'||e_rec.ename||'		'||e_rec.sal);
	EXIT WHEN c1%NOTFOUND;
	END LOOP;
	CLOSE c1;
END;
/