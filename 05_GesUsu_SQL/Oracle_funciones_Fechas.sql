UPDATE USUARIO
	SET fecha_regisro = 
		add_months(fecha_registro,
		-1 + ROUND(dbms_random.value(1,11)));

UPDATE USUARIO
	SET fecha_regisro =  fecha_regisro - 27
		+ ROUND(dbms_random.value(1,20));
				
SELECT Nombre, fecha_regisro FROM usuario WHERE
fecha_regisro BETWEEN '1/1/2019' to '1/4/2019';

SELECT Nombre, fecha_regisro NEXT_DAY(fecha_regisro, 'lunes') FROM usuario;

SELECT current_date FROM dual;
SELECT current_timestamp FROM dual;
SELECT SYSDATE from dual;
SELECT systimestamp from dual;

SELECT TO_DATE('05-SEP-2018 10:33 AM', 'DD-MON-YYYY HH:MM AM') FROM DUAL;

SELECT fecha_regisro, to_char(fecha_regisro) from usuario;