--Para evitar problema con las fechas, el siguiente comando modifica el formato del tipo de dato date
ALTER SESSION SET nls_date_format = 'dd-mm-yyyy';
EXECUTE agregar_servidor ('BR', 'Brazil', '13-09-2012', 'Portuguese', 'Sao Paulo, SP, Brazil', '104.160.152.3');
EXECUTE agregar_servidor ('EUNE', 'Europe Nordic and East', '13-07-2010', 'Czech, English, Greek, Hungarian, Polish, Romanian', 'Frankfurt, Germany', '104.160.142.3');
EXECUTE agregar_servidor ('LAN', 'Latin America North', '05-06-2013', 'Spanish', 'Miami, FL, United States', '104.160.136.3');
EXECUTE agregar_servidor ('LAS', 'Latin America South', '05-06-2013', 'Spanish', 'Santiago, Chile', '104.160.69.3');
--Inserciones
EXECUTE agregar_servidor ('RUS', 'Russia', '05-06-2014', 'Russian', 'Moscow, Russia', '104.160.137.3');
EXECUTE agregar_servidor ('BR2', 'Brazil 2', '05-07-2013', 'Portuguese', 'Brasilia, Brazil', '104.160.169.3');
EXECUTE agregar_servidor ('SK', 'South Korea', '05-06-2014', 'Korean', 'Seoul, Korea', '104.160.137.3');
EXECUTE agregar_servidor ('JAP', 'Japan', '05-06-2013', 'Anime', 'Tokyo, Japan', '104.160.137.3');
EXECUTE agregar_servidor ('NVZ', 'Neo Venezuela', '05-06-2013', 'Maracuchian', 'Maracaibo, Venezuela', '104.160.137.3');

--asumo numero fijo
EXECUTE agregar_division ('SR', 'Sin Ranking', 'Aguila no caza mosca');
EXECUTE agregar_division ('PROV', 'Provisional', 'Provisional');
EXECUTE agregar_division ('HIV', 'Hierro 4', 'Hierro cuatro');
EXECUTE agregar_division ('HIII', 'Hierro 3', 'Hierro tres');
EXECUTE agregar_division ('HII', 'Hierro 2', 'Hierro dos');
EXECUTE agregar_division ('HI', 'Hierro 1', 'Hierro uno');
EXECUTE agregar_division ('BIV', 'Bronce 4', 'Bronce cuatro');
EXECUTE agregar_division ('BIII', 'Bronce 3', 'Bronce tres');
EXECUTE agregar_division ('BII', 'Bronce 2', 'Bronce dos');
EXECUTE agregar_division ('BI', 'Bronce 1', 'Bronce uno');
EXECUTE agregar_division ('PIV', 'Plata 4', 'Plata cuatro');
EXECUTE agregar_division ('PIII', 'Plata 3', 'Plata tres');
EXECUTE agregar_division ('PII', 'Plata 2', 'Plata dos');
EXECUTE agregar_division ('PI', 'Plata 1', 'Plata uno');
EXECUTE agregar_division ('OIV', 'Oro 4', 'Oro cuatro');
EXECUTE agregar_division ('OIII', 'Oro 3', 'Oro tres');
EXECUTE agregar_division ('OII', 'Oro 2', 'Oro dos');
EXECUTE agregar_division ('OI', 'Oro 1', 'Oro uno');
EXECUTE agregar_division ('PLIV', 'Platino 4', 'Platino cuatro');
EXECUTE agregar_division ('PLIII', 'Platino 3', 'Platino tres');
EXECUTE agregar_division ('PLII', 'Platino 2', 'Platino dos');
EXECUTE agregar_division ('PLI', 'Platino 1', 'Platino uno');
EXECUTE agregar_division ('DIV', 'Diamante 4', 'Diamante cuatro');
EXECUTE agregar_division ('DIII', 'Diamante 3', 'Diamante tres');
EXECUTE agregar_division ('DII', 'Diamante 2', 'Diamante dos');
EXECUTE agregar_division ('DI', 'Diamante 1', 'Diamante uno');
EXECUTE agregar_division ('MIV', 'Master 4', 'Master cuatro');
EXECUTE agregar_division ('MIII', 'Master 3', 'Master tres');
EXECUTE agregar_division ('MII', 'Master 2', 'Master dos');
EXECUTE agregar_division ('MI', 'Master 1', 'Master uno');
EXECUTE agregar_division ('GMIV', 'Grandmaster 4', 'Grandmaster cuatro');
EXECUTE agregar_division ('GMIII', 'Grandmaster 3', 'Grandmaster tres');
EXECUTE agregar_division ('GMII', 'Grandmaster 2', 'Grandmaster dos');
EXECUTE agregar_division ('GMI', 'Grandmaster 1', 'Grandmaster uno');
EXECUTE agregar_division ('CIV', 'Challenger 4', 'Challenger cuatro');
EXECUTE agregar_division ('CIII', 'Challenger 3', 'Challenger tres');
EXECUTE agregar_division ('CII', 'Challenger 2', 'Challenger dos');
EXECUTE agregar_division ('CI', 'Challenger 1', 'Challenger uno');

INSERT INTO USUARIO VALUES ('UID_00', 'LAN', 'fabianziffzer@gmail.com', '...', 'Fabian', 'Ziffzer', '+58 414 760 9562', '31-07-1996', 'M', 'DV', 0);
INSERT INTO USUARIO VALUES ('UID_01', 'LAN', 'mercyospina@gmail.com', '...', 'Mercy', 'Ospina', '+58 414 760 9563', '30-07-1996', 'F', 'CI', 0);
INSERT INTO USUARIO VALUES ('UID_02', 'LAS', 'fabianziffzer@gmail.com', '...', 'Fabian', 'Ziffzer', '+58 414 760 9562', '31-07-1996', 'M', 'PI', 0);
--Inserciones
INSERT INTO USUARIO VALUES ('UID_03', 'LAS', 'fabianziffzer@gmail.com', '...', 'Fabian', 'Ziffzer', '+58 414 760 9562', '31-07-1996', 'M', 'PI', 0);
INSERT INTO USUARIO VALUES ('UID_04', 'LAS', 'fabianziffzer@gmail.com', '...', 'Fabian', 'Ziffzer', '+58 414 760 9562', '31-07-1996', 'M', 'PI', 0);
INSERT INTO USUARIO VALUES ('UID_05', 'LAS', 'fabianziffzer@gmail.com', '...', 'Fabian', 'Ziffzer', '+58 414 760 9562', '31-07-1996', 'M', 'PI', 0);
INSERT INTO USUARIO VALUES ('UID_06', 'LAS', 'fabianziffzer@gmail.com', '...', 'Fabian', 'Ziffzer', '+58 414 760 9562', '31-07-1996', 'M', 'PI', 0);
INSERT INTO USUARIO VALUES ('UID_07', 'LAS', 'fabianziffzer@gmail.com', '...', 'Fabian', 'Ziffzer', '+58 414 760 9562', '31-07-1996', 'M', 'PI', 0);

INSERT INTO RIOTER VALUES ('UID_01', 'LAN', 'Riot Mercy4No1', '12-12-2014', '07-01-2024', 999999);
INSERT INTO RIOTER VALUES ('UID_01', 'LAN', 'Riot Mercy4No1', '12-12-2014', '07-01-2024', 999999);
INSERT INTO RIOTER VALUES ('UID_01', 'LAN', 'Riot Mercy4No1', '12-12-2014', '07-01-2024', 999999);
INSERT INTO RIOTER VALUES ('UID_01', 'LAN', 'Riot Mercy4No1', '12-12-2014', '07-01-2024', 999999);
INSERT INTO RIOTER VALUES ('UID_01', 'LAN', 'Riot Mercy4No1', '12-12-2014', '07-01-2024', 999999);

INSERT INTO INVOCADOR VALUES ('UID_00', 'LAN', 'Alekxanderz', '12-11-2014');
INSERT INTO INVOCADOR VALUES ('UID_01', 'LAS', 'Piadosa', '12-11-2014');
INSERT INTO INVOCADOR VALUES ('UID_02', 'LAN', 'Alekxanderz', '12-11-2014');
INSERT INTO INVOCADOR VALUES ('UID_03', 'LAS', 'Piadosa', '12-11-2014');
INSERT INTO INVOCADOR VALUES ('UID_04', 'LAN', 'Alekxanderz', '12-11-2014');
INSERT INTO INVOCADOR VALUES ('UID_05', 'LAS', 'Piadosa', '12-11-2014');
INSERT INTO INVOCADOR VALUES ('UID_06', 'LAN', 'Alekxanderz', '12-11-2014');
INSERT INTO INVOCADOR VALUES ('UID_07', 'LAS', 'Piadosa', '12-11-2014');

--asumo numero fijo
INSERT INTO REGION VALUES ('Demacia', 'Monarquia Feudal', 'Mediano', 'Prohibida', 'Campos Fertiles');
INSERT INTO REGION VALUES ('Freljord', 'Tribu Matrialcal', 'Bajo', 'Venerada', 'Tundra Helada');
INSERT INTO REGION VALUES ('Noxus', 'Imperio Expansionista', 'Mediano', 'Alta, con fines belicos', 'Estepa Inhospita');
INSERT INTO REGION VALUES ('Ionia', 'Provincias Regionales', 'Bajo', 'Alta', 'Magico (Variado)');
INSERT INTO REGION VALUES ('Shadow Isles', 'Ninguno', 'Bajo', 'Alta, orientada al sufrimiento', 'Archipielago Maldito');
INSERT INTO REGION VALUES ('Piltover/Zaun', 'Oligarquia', 'Alto', 'Alta, orientada al beneficio propio', 'Ciudad');

INSERT INTO CARTA VALUES ('0000', 'Heroe', 'Lucian', 'Lucian', 'He visto morir a 4 aliados o mas o a Senna, Centinela de la Luz.', 'Demacia', 2, 3, 2, 'Campeon', 'Campeon', 'Ataque Rapido');
INSERT INTO CARTA VALUES ('0001', 'Heroe', 'Fiora', 'Fiora', 'He matado a 2 enemigos', 'Demacia', 3, 3, 3, 'Campeon', 'Campeon', 'Aspirante');
INSERT INTO CARTA VALUES ('0002', 'Hechizo', 'Chaleco de Cadenas', 'Chaleco de Cadenas', 'Otorga Aguante a un aliado', 'Demacia', 1, 0, 0, 'Comun', 'Otorga Aguante a un aliado', 'Rafaga');
INSERT INTO CARTA VALUES ('0003', 'Hechizo', 'Barrera Prismatica', 'Barrera Prismatica', 'Concede Barrera a un aliado esta ronda', 'Demacia', 3, 0, 0, 'Comun', 'Concede Barrera a un aliado esta ronda', 'Rafaga');
INSERT INTO CARTA VALUES ('0004', 'Hechizo', 'Sucesion', 'Sucesion', 'Invoca Vanguardia Imperterrita', 'Demacia', 3, 0, 0, 'Comun', 'Invoca Vanguardia Imperterrita', 'Lento');
INSERT INTO CARTA VALUES ('0005', 'Hechizo', 'Espalda con Espalda', 'Espalda con Espalda', 'Concede a dos aliados +3/+3 esta ronda', 'Demacia', 5, 0, 0, 'Rara', 'Concede a dos aliados +3/+3 esta ronda', 'Rafaga');
INSERT INTO CARTA VALUES ('0006', 'Adepto', 'Poro Intrepido', 'Poro Intrepido', 'Poro Intrepido', 'Demacia', 1, 1, 1, 'Comun', 'Poro Intrepido', 'Aguante');
INSERT INTO CARTA VALUES ('0007', 'Adepto', 'Chefs de Guerra', 'Chefs de Guerra', 'Apoyo: Concede +1/+1 al aliado al que apoye esta ronda', 'Demacia', 2, 2, 3, 'Comun', 'Apoyo: Concede +1/+1 al aliado al que apoye esta ronda', 'Apoyo');
INSERT INTO CARTA VALUES ('0008', 'Adepto', 'Caballeria de la Vanguardia', 'Caballeria de la Vanguardia', 'Caballeria de la Vanguardia', 'Demacia', 5, 5, 5, 'Comun', 'Caballeria de la Vanguardia', 'Aguante');
INSERT INTO CARTA VALUES ('0009', 'Adepto', 'Tianna Crownguard', 'Tianna Crownguard', 'Cuando se me invoca, se prepara el ataque', 'Demacia', 8, 7, 7, 'Epica', 'Cuando se me invoca, se prepara el ataque', 'Aguante');
--Inserciones
INSERT INTO CARTA VALUES ('0010', 'Adepto', 'Guaido', 'Presidente', 'No hace nada', 'Demacia', 8, 7, 7, 'Epica', 'No hace nada', 'Aguante');
INSERT INTO CARTA VALUES ('0011', 'Heroe', 'Teemo', 'Mapache Scout', 'Cuando se me invoca, se prepara el ataque', 'Demacia', 8, 7, 7, 'Epica', 'Cuando se me invoca, se prepara el ataque', 'Aguante');
INSERT INTO CARTA VALUES ('0012', 'Hechizo', 'Lanzamiento Nuclear', 'Nuclear Launch', 'Cuando se me invoca, se prepara el ataque', 'Piltover', 8, 7, 7, 'Epica', 'Cuando se me invoca, se prepara el ataque', 'Aguante');
INSERT INTO CARTA VALUES ('0013', 'Adepto', 'La Guatona Candy', 'Gorda Guatona', 'Si hay una lisiada en el campo enemigo, exiliala, convoca un token de Terry', 'Noxus', 8, 7, 7, 'Epica', 'Cuando se me invoca, se prepara el ataque', 'Aguante');
INSERT INTO CARTA VALUES ('0014', 'Heroe', 'Rengar', 'Tigre Furtivo', 'Cuando se me invoca, se prepara el ataque', 'Shadow Isles', 8, 7, 7, 'Epica', 'Cuando se me invoca, se prepara el ataque', 'Aguante');


INSERT INTO MAZO VALUES ('00', 'UID_00', 'LAN', '0000', 'Con el Mazo Dando', 3);
INSERT INTO MAZO VALUES ('00', 'UID_00', 'LAN', '0001', 'Con el Mazo Dando', 3);
INSERT INTO MAZO VALUES ('00', 'UID_00', 'LAN', '0002', 'Con el Mazo Dando', 3);
INSERT INTO MAZO VALUES ('00', 'UID_00', 'LAN', '0003', 'Con el Mazo Dando', 3);
INSERT INTO MAZO VALUES ('00', 'UID_00', 'LAN', '0004', 'Con el Mazo Dando', 3);
INSERT INTO MAZO VALUES ('00', 'UID_00', 'LAN', '0005', 'Con el Mazo Dando', 3);
INSERT INTO MAZO VALUES ('00', 'UID_00', 'LAN', '0006', 'Con el Mazo Dando', 3);
INSERT INTO MAZO VALUES ('00', 'UID_00', 'LAN', '0007', 'Con el Mazo Dando', 3);
INSERT INTO MAZO VALUES ('00', 'UID_00', 'LAN', '0008', 'Con el Mazo Dando', 3);
INSERT INTO MAZO VALUES ('00', 'UID_00', 'LAN', '0009', 'Con el Mazo Dando', 3);

INSERT INTO MAZO VALUES ('01', 'UID_01', 'LAN', '0000', 'Sin piedad', 3);
INSERT INTO MAZO VALUES ('01', 'UID_01', 'LAN', '0001', 'Sin piedad', 3);
INSERT INTO MAZO VALUES ('01', 'UID_01', 'LAN', '0002', 'Sin piedad', 3);
INSERT INTO MAZO VALUES ('01', 'UID_01', 'LAN', '0003', 'Sin piedad', 3);
INSERT INTO MAZO VALUES ('01', 'UID_01', 'LAN', '0004', 'Sin piedad', 3);
INSERT INTO MAZO VALUES ('01', 'UID_01', 'LAN', '0005', 'Sin piedad', 3);
INSERT INTO MAZO VALUES ('01', 'UID_01', 'LAN', '0006', 'Sin piedad', 3);
INSERT INTO MAZO VALUES ('01', 'UID_01', 'LAN', '0007', 'Sin piedad', 3);
INSERT INTO MAZO VALUES ('01', 'UID_01', 'LAN', '0008', 'Sin piedad', 3);
INSERT INTO MAZO VALUES ('01', 'UID_01', 'LAN', '0009', 'Sin piedad', 3);
--Inserciones
INSERT INTO MAZO VALUES ('02', 'UID_02', 'LAN', '0000', 'Castigo Eterno', 3);
INSERT INTO MAZO VALUES ('02', 'UID_02', 'LAN', '0001', 'Castigo Eterno', 3);
INSERT INTO MAZO VALUES ('02', 'UID_02', 'LAN', '0002', 'Castigo Eterno', 3);
INSERT INTO MAZO VALUES ('02', 'UID_02', 'LAN', '0003', 'Castigo Eterno', 3);
INSERT INTO MAZO VALUES ('02', 'UID_02', 'LAN', '0004', 'Castigo Eterno', 3);
INSERT INTO MAZO VALUES ('02', 'UID_02', 'LAN', '0005', 'Castigo Eterno', 3);
INSERT INTO MAZO VALUES ('02', 'UID_02', 'LAN', '0006', 'Castigo Eterno', 3);
INSERT INTO MAZO VALUES ('02', 'UID_02', 'LAN', '0007', 'Castigo Eterno', 3);
INSERT INTO MAZO VALUES ('02', 'UID_02', 'LAN', '0008', 'Castigo Eterno', 3);
INSERT INTO MAZO VALUES ('02', 'UID_02', 'LAN', '0009', 'Castigo Eterno', 3);

INSERT INTO BATALLA VALUES ('A00000', 'UID_00', '00', 'UID_01', '01', 'UID_00', 50);
--Inserciones
INSERT INTO BATALLA VALUES ('A00001', 'UID_00', '00', 'UID_01', '01', 'UID_00', 50);
INSERT INTO BATALLA VALUES ('A00002', 'UID_00', '00', 'UID_01', '01', 'UID_00', 50);
INSERT INTO BATALLA VALUES ('A00003', 'UID_00', '00', 'UID_01', '01', 'UID_00', 50);
INSERT INTO BATALLA VALUES ('A00004', 'UID_00', '00', 'UID_01', '01', 'UID_00', 50);
INSERT INTO BATALLA VALUES ('A00005', 'UID_00', '00', 'UID_01', '01', 'UID_00', 50);
