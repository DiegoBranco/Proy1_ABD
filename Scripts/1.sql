--Ejecutar como SYSTEM	
--Instrucciones para eliminar los tablespaces
--Si no estan creados, arrojará un error.
DROP TABLESPACE repositorio_tablas INCLUDING CONTENTS AND DATAFILES;
DROP TABLESPACE repositorio_indices INCLUDING CONTENTS AND DATAFILES;
--Instrucciones para crear los tablespaces
CREATE TABLESPACE repositorio_tablas DATAFILE 'df_tablas.DBF' SIZE 50M;
CREATE TABLESPACE repositorio_indices DATAFILE 'df_indices.DBF' SIZE 50M;

--Instrucciones para eliminar a los usuarios TRYNDAMERE y TEEMO con todo su contenido
--usar si tienen algun error al eliminar el usuario:
alter session set "_oracle_script"=true;
DROP USER tryndamere CASCADE;
DROP USER TEEMO CASCADE;

--Instrucciones para crear al usuario TRYNDAMERE y otorgarle los permisos necesarios
--ejecutar si encuentra un problema al crear el usuario: alter session set "_ORACLE_SCRIPT"=true;  
--contraseña de su preferencia--
CREATE USER tryndamere IDENTIFIED BY a1234; 
GRANT CREATE SESSION, CREATE TABLE, ALTER SESSION, CREATE TRIGGER, CREATE PROCEDURE to TRYNDAMERE;
ALTER USER tryndamere QUOTA UNLIMITED ON repositorio_tablas;
ALTER USER tryndamere QUOTA UNLIMITED ON repositorio_indices;

--Creamos un usuario distinto para la app, para prevenir cualquier posibilidad de inyeccion SQL.
--En honor a su inofensividad e inocencia, lo llamaremos Teemo <3


CREATE USER teemo IDENTIFIED BY SCOUTS_HONOR;
GRANT CREATE SESSION TO teemo;

GRANT SELECT  ON dba_procedures TO teemo;
GRANT SELECT  ON dba_segments TO TEEMO;  
GRANT SELECT  ON dba_data_files TO teemo;
GRANT SELECT  ON dba_free_space TO teemo;

-- configuramos la bd a modo archive log
alter system set db_recovery_file_dest_size = 500M;
shutdown immediate;
startup mount;
alter database archivelog;
alter database open;



--Instrucciones para conectarse como el usuario creado e importar los scripts necesarios para crear la base de datos
CONNECT tryndamere/a1234--contraseña de su preferencia--;
--Ruta de los scripts en caso de que no desee importarlos manualmente.
--ej. @C:\xxxxx\...\xxxxx\Escritorio\Proyecto1\Scripts\1.sql (Pruebe con comillas dobles o simples si no funciona la instrucción)
@C:\"Ruta"\2.sql
@C:\"Ruta"\3.sql
@C:\"Ruta"\4.sql
@C:\"Ruta"\5.sql