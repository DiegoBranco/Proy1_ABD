CREATE TABLE SERVIDOR(
    id VARCHAR2(4),
    nombre VARCHAR2(30),
    inauguracion DATE,
    idiomas VARCHAR2(100),
    ubicacion VARCHAR2(50),
    ip VARCHAR2(50)
)TABLESPACE repositorio_tablas;
CREATE UNIQUE INDEX IND_id_servidor_PK ON SERVIDOR(id) TABLESPACE repositorio_indices;
ALTER TABLE SERVIDOR ADD CONSTRAINT id_servidor_PK PRIMARY KEY (id);
ALTER TABLE SERVIDOR INITRANS 8;
ALTER TABLE SERVIDOR MAXTRANS 20;

CREATE UNIQUE INDEX SERVIDOR_id_nombre_ind ON SERVIDOR(
    id,
    nombre
) TABLESPACE repositorio_indices
COMPUTE STATISTICS;

CREATE TABLE DIVISION(
    codigo VARCHAR2(5),
    nombre VARCHAR2(50),
    descripcion VARCHAR2(50)
)TABLESPACE repositorio_tablas;
CREATE UNIQUE INDEX IND_codigo_division_PK ON DIVISION(codigo) TABLESPACE repositorio_indices;
CREATE INDEX IND_nombre_division ON DIVISION(nombre) TABLESPACE repositorio_indices;
ALTER TABLE DIVISION ADD CONSTRAINT codigo_division_PK PRIMARY KEY (codigo);

CREATE UNIQUE INDEX DIVISION_codigo_nombre_ind ON DIVISION(
    codigo,
    nombre
) TABLESPACE repositorio_indices
COMPUTE STATISTICS;

CREATE TABLE USUARIO(
    id VARCHAR2(30),
    servidor VARCHAR2(4),
    correo VARCHAR2(50),
    contrasena VARCHAR2(100),
    nombre VARCHAR2(50),
    apellido VARCHAR2(50),
    telefono VARCHAR2(30),
    fecha_nacimiento DATE,
    sexo char,
    division VARCHAR2(5),
    puntos NUMBER(3)
)TABLESPACE repositorio_tablas;
CREATE UNIQUE INDEX IND_id_usuario_PK ON USUARIO(id, servidor) TABLESPACE repositorio_indices;
CREATE INDEX IND_nombre_usuario ON USUARIO(nombre) TABLESPACE repositorio_indices;
ALTER TABLE USUARIO ADD CONSTRAINT id_servidor_usuario_PK PRIMARY KEY (id, servidor);

CREATE UNIQUE INDEX USUARIO_id_nombre_ind ON USUARIO(
    id,
    nombre
) TABLESPACE repositorio_indices
COMPUTE STATISTICS;

CREATE TABLE RIOTER(
    usuario VARCHAR2(30),
    servidor VARCHAR2(4),
    nombre_invocador VARCHAR2(50),
    fecha_contrato_inicio DATE,
    fecha_contrato_fin DATE,
    salario NUMBER
)TABLESPACE repositorio_tablas;
CREATE UNIQUE INDEX IND_usuario_servidor_rioter_PK ON RIOTER(usuario, servidor) TABLESPACE repositorio_indices;
ALTER TABLE RIOTER ADD CONSTRAINT usuario_servidor_rioter_PK PRIMARY KEY (usuario, servidor);
ALTER TABLE RIOTER INITRANS 8;
ALTER TABLE RIOTER MAXTRANS 20;

CREATE UNIQUE INDEX RIOTER_id_nombre_ind ON RIOTER(
    usuario,
    nombre_invocador
) TABLESPACE repositorio_indices
COMPUTE STATISTICS;


CREATE TABLE INVOCADOR(
    usuario VARCHAR2(30),
    servidor VARCHAR2(4),
    nombre_invocador VARCHAR2(50),
    fecha_creacion DATE
)TABLESPACE repositorio_tablas;
CREATE UNIQUE INDEX IND_usuario_servidor_invocador_PK ON INVOCADOR(usuario, servidor) TABLESPACE repositorio_indices;
CREATE INDEX IND_nombre_invocador_invocador ON INVOCADOR(nombre_invocador) TABLESPACE repositorio_indices;
ALTER TABLE INVOCADOR ADD CONSTRAINT usuario_servidor_invocador_PK PRIMARY KEY (usuario, servidor);
ALTER TABLE INVOCADOR INITRANS 8;
ALTER TABLE INVOCADOR MAXTRANS 20;

CREATE UNIQUE INDEX INVOCADOR_id_nombre_ind ON INVOCADOR(
    usuario,
    nombre_invocador
) TABLESPACE repositorio_indices
COMPUTE STATISTICS;

CREATE TABLE REGION(
    nombre VARCHAR2(30),
    tipo_de_gobierno VARCHAR2(50),
    nivel_de_tecnologia VARCHAR2(50),
    tolerancia_a_la_magia VARCHAR2(50),
    descripcion_ambiente VARCHAR2(50)
)TABLESPACE repositorio_tablas;
CREATE UNIQUE INDEX IND_nombre_region_PK ON REGION(nombre) TABLESPACE repositorio_indices;
CREATE INDEX IND_tipo_de_gobierno_region ON REGION(tipo_de_gobierno) TABLESPACE repositorio_indices;
ALTER TABLE REGION ADD CONSTRAINT nombre_region_PK PRIMARY KEY (nombre);

CREATE TABLE CARTA(
    id VARCHAR2(30),
    tipo VARCHAR2(50),
    nombre VARCHAR2(50),
    descripcion VARCHAR2(100),
    mejora VARCHAR2(100),
    region VARCHAR2(30),
    costo NUMBER(2),
    ataque NUMBER(3),
    vida NUMBER(3),
    rareza VARCHAR2(30),
    efecto VARCHAR2(100),
    palabra_clave VARCHAR2(30)
)TABLESPACE repositorio_tablas;
CREATE UNIQUE INDEX IND_id_carta_PK ON CARTA(id) TABLESPACE repositorio_indices;
CREATE INDEX IND_nombre_costo_carta ON CARTA(nombre, costo) TABLESPACE repositorio_indices;
ALTER TABLE CARTA ADD CONSTRAINT id_carta_PK PRIMARY KEY (id);

CREATE UNIQUE INDEX CARTA_id_nombre_ind ON CARTA(
    id,
    nombre
) TABLESPACE repositorio_indices
COMPUTE STATISTICS;

CREATE TABLE MAZO(
    id VARCHAR2(30),
    usuario VARCHAR2(30),
    servidor VARCHAR2(30),
    carta VARCHAR2(30),
    nombre VARCHAR2(50),
    cantidad NUMBER(1)
)TABLESPACE repositorio_tablas;
CREATE UNIQUE INDEX IND_id_usuario_carta_mazo_PK ON MAZO(id, usuario, carta) TABLESPACE repositorio_indices;
ALTER TABLE MAZO ADD CONSTRAINT id_usuario_carta_mazo_PK PRIMARY KEY (id, usuario, carta);

<<<<<<< HEAD
CREATE UNIQUE INDEX SERVIDOR_id_nombre_ind ON SERVIDOR(
=======
CREATE UNIQUE INDEX MAZO_id_nombre_indON MAZO(
>>>>>>> 65f258d7a0e865eabe4bd09d245bad56d34b1860
    id,
    nombre
) TABLESPACE repositorio_indices
COMPUTE STATISTICS;

CREATE TABLE BATALLA(
    id VARCHAR2(30),
    usuario1 VARCHAR2(30),
    mazo1 VARCHAR2(30),
    usuario2 VARCHAR2(30),
    mazo2 VARCHAR2(30),
    ganador VARCHAR2(30),
    puntos NUMBER(3)
)TABLESPACE repositorio_tablas;
CREATE UNIQUE INDEX IND_id_batalla_PK ON BATALLA(id) TABLESPACE repositorio_indices;
ALTER TABLE BATALLA ADD CONSTRAINT id_batalla_PK PRIMARY KEY (id);

CREATE UNIQUE INDEX BATALLA_id_nombre_ind ON BATALLA(
    id,
    usuario1,
    usuario2
) TABLESPACE repositorio_indices
COMPUTE STATISTICS;