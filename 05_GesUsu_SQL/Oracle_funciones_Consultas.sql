SELECT Nombre, edad, fecha_registro
	FROM USUARIO ORDER BY fecha_registro;
	
SELECT Nombre, edad, fecha_registro
	FROM USUARIO ORDER BY edad DESC;
	
		
SELECT Nombre, edad, fecha_registro
	FROM USUARIO ORDER BY Nombre;
	
		
SELECT Nombre, edad, fecha_registro
	FROM USUARIO WHERE edad < 35 and fecha_registro < '10/19/19';
	
/* DESCRIBE TODOS LOS CAMPOS DE UNA TABLA */ 	
DESCRIBE USUARIO;
	
/*Contar número registros */ 
	
SELECT count(*) FROM USUARIO;
SELECT count(Apellidos) FROM usuario;

SELECT sum(nota) from usuario;
SELECT AVG(NOTA) from usuario;
SELECT MAX(NOTA) from usuario;

SELECT Nombre FROM usuario where nombre like '%aa%';
SELECT count(nombre) from usuario where nombre like '%aa%';

select edad,count(*) from usuario group by edad;	

/* Que devuelva el usuario con menor nota de los aprobados */  

select min(nota) from usuario where nota >= 5;
select * from usuario where nota = (select min(nota) from usuario where nota >= 5);

/* Que nos devuelva la desviación con respecto a la media de los usuarios suspendido */ 

SELECT nombre, nota, (nota - (SELECT AVG(nota) from usuario))
from usuario where nota < 5 group by nombre, nota;

/* Listar usuarios cuya nota sea superior a la indicada */ 




system@//localhost:1521/XE
	