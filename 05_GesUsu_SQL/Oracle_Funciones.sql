DROP TABLE D_USUARIO; /* Elimina la tabla completa */ 
DROP TRIGGER d_dept_bir;
/*COMANDOS PARA BORRAR SOLO REGISTROS */ 

TRUNCATE TABLE D_USUARIO;
DELETE TABLE D_USUARIO; /* COPIA DE SEGURIDAD DATOS, PERO ES MÑAS LENTO QUE EL TRUNCATE*/


UPDATE D_USUARIO SET edad = edad + 1; 

SELECT * FROM D_USUARIO; 

SELECT * FROM D_USUARIO WHERE edad >= 20 AND edad < 23;
/* CONCATENAR SQL*/
SELECT nombre||': < '||email||'> tiene ' ||edad|| ' años' AS texto_formateado
FROM D_USUARIO;

/*CAMPOS CALCULADOS*/

SELECT nombre, 2018 - edad AS anio_nacim FROM D_USUARIO;

/* dual es una tabla estandar de oracle */ 
SELECT 'hola, muy buenas' AS texto FROM dual; -- texto tal cual 
SELECT upper 'hola, muy buenas' AS texto FROM dual; -- mayusculas 
SELECT lower 'HOla, muy buenas' AS texto FROM dual; 
SELECT initcap(nombre) AS Nombre_Cap FROM D_USUARIO;
	
	
select nombre, edad from usuario where edad not between 20 and 30;
/*modificar añadir tablas*/
ALTER TABLE USUARIO	ADD apellidos VARCHAR2(50);
ALTER TABLE USUARIO	ADD fecha_registro DATE;
ALTER TABLE USUARIO ADD descripcion VARCHAR2(100) DEFAULT 'Un vago más';

ALTER TABLE USUARIO DROP COLUMN fecha_registro;
ALTER TABLE USUARIO ADD fecha_registro DATE DEFAULT SYSDATE;

SELECT NOMBRE, APELLIDOS FROM usuario where apellidos is not null;

/* QUITAR ESPACIOS */ 
SELECT RTRIM(DESCRIPCION) FROM USUARIO;
SELECT LTRIM(DESCRIPCION) FROM USUARIO;
SELECT TRIM(DESCRIPCION) FROM USUARIO;
SELECT TRIM(BOTH '*' FROM REPLACE (DESCRIPCION, 'todos', ' cualquiera')) FROM USUARIO;
		
select replace(descripcion, 'todos', ' cualquiera') from usuario;
		
		
SELECT SUBSTR(DESCRIPCION, 3, 5), LENGTH(DESCRIPCION) FROM USUARIO;
SELECT INSTR(DESCRIPCION,'VAGO') FROM USUARIO;
SELECT TRANSLATE(DESCRIPCION,'aeiou', '43102') from usuario;

ALTER TABLE USUARIO	 ADD NOTA NUMBER(4,2) DEFAULT 0; 
UPDATE USUARIO SET NOTA=dbms_random.value(1,10);

select nota, ceil(nota), floor(nota), round(nota,1) from usuario;
selecta abs(-20), mod(10,3), power(2,3) from dual;

