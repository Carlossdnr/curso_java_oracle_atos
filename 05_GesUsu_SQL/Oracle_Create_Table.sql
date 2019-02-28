CREATE TABLE USUARIO ( 
	ID 		NUMBER(10) NOT NULL,
	NOMBRE  VARCHAR2(100) NOT NULL,
	EMAIL 	VARCHAR2(255) NOT NULL, 
	EDAD 	NUMBER(3,0) NOT NULL,
	PASSWORD VARCHAR2(50) NOT NULL
);

ALTER TABLE USUARIO ADD(
	CONSTRAINT d_dept_pk PRIMARY KEY(ID)	
); 

ALTER TABLE USUARIO ADD
	CONSTRAINT d_uq_usuario_email UNIQUE(EMAIL); 

CREATE SEQUENCE d_dept_seq START WITH 1; 

CREATE OR REPLACE TRIGGER d_dept_bir 
	BEFORE INSERT ON USUARIO
	FOR EACH ROW 
	
	BEGIN
	SELECT d_dept_seq.NEXTVAL
	INTO :new.id 
	FROM dual;
	END; 
	
	
	
INSERT INTO USUARIO (nombre, email, edad, password)
		VALUES('Aaa', 'aaa@aaa.com', 20, 'aaa');
		
INSERT INTO USUARIO (nombre, email, edad, password)
		VALUES('Bbb', 'bbb@bbb.com', 21, 'bbb');
		
INSERT INTO USUARIO (nombre, email, edad, password)
		VALUES('Ccc', 'ccc@ccc.com', 22, 'ccc');
		
INSERT INTO USUARIO (nombre, email, edad, password)
		VALUES('Ddd', 'ddd@ddd.com', 33, 'ddd');
		
INSERT INTO USUARIO (nombre, email, edad, password)
		VALUES('Eee', 'eee@eee.com', 34, 'eee');
		
INSERT INTO USUARIO (nombre, email, edad, password)
		VALUES('Fff', 'fff@fff.com', 35, 'fff');		

INSERT INTO USUARIO (nombre, email, edad, password)
		VALUES('Ggg', 'ggg@ggg.com', 43, 'ggg'); 
		
INSERT INTO USUARIO (nombre, email, edad, password)
		VALUES('Hhh', 'hhh@hhh.com', 44, 'hhh');
		
INSERT INTO USUARIO (nombre, email, edad, password)
		VALUES('Iii', 'iii@iii.com', 44, 'iii');
		
INSERT INTO USUARIO (nombre, email, edad, password)
		VALUES('Jjj', 'jjj@jjj.com', 45, 'jjj');
