CREATE DATABASE TorneoPonifutbol; 
use TorneoPonifutbol;

CREATE TABLE equipos(
idEquipo VARCHAR (12) PRIMARY KEY,
nombreEquipo VARCHAR (100),
apellidoJugador VARCHAR (100),
fechaNacimientoJugador DATE,
dorsalJugador INT
);

CREATE TABLE estadios(
idEstadio VARCHAR(12) PRIMARY KEY,
nombreEstadio VARCHAR(100),
direccionEstadio VARCHAR(100),
idEquipo VARCHAR(12)
);

CREATE TABLE partidos(
idPartido VARCHAR(12) PRIMARY KEY,
fechaPartido DATE,
idEquipoLocal VARCHAR(12),
idEquipoVisitante VARCHAR(12),
estadoDelPartido BOOLEAN,
resultadoPartido VARCHAR(6)
);

CREATE TABLE arbitros(
idArbitro VARCHAR(12) PRIMARY KEY,
nombreArbitro VARCHAR(100),
apellidoArbitro VARCHAR(100),
fechaDeNacimientoArbitro DATE,
idPartido VARCHAR(12)
);

----

ALTER TABLE jugadores
ADD CONSTRAINT fkIdJugadores
FOREIGN KEY (idEquipo) REFERENCES equipos(idEquipo);

ALTER TABLE estadios
ADD CONSTRAINT fkIdEquipo
FOREIGN KEY (idEquipo) REFERENCES equipos(idEquipo);


ALTER TABLE partidos
ADD idEquipo VARCHAR(12);

ALTER TABLE partidos
ADD CONSTRAINT fkIdPartidos
FOREIGN KEY (idEquipo) REFERENCES equipos(idEquipo);

ALTER TABLE arbitros
ADD CONSTRAINT fkIdArbitros
FOREIGN KEY (idPartido) REFERENCES partidos(idPartido);

use torneoPoniFutbol;

INSERT INTO equipos (idEquipo, nombreEquipo, apodoEquipo, fundaciónEquipo)
VALUES 
('EQU001', 'Los Dragones', 'Dragones', '2000-03-15'),
('EQU002', 'Águilas Doradas', 'Águilas', '1998-05-23'),
('EQU003', 'Leones del Norte', 'Leones', '1985-10-11'),
('EQU004', 'Tigres del Sur', 'Tigres', '1990-07-07'),
('EQU005', 'Guerreros del Este', 'Guerreros', '1978-02-02'),
('EQU006', 'Tiburones Azules', 'Tiburones', '2005-08-08'),
('EQU007', 'Pumas Negros', 'Pumas', '1995-12-25'),
('EQU008', 'Fénix de Fuego', 'Fénix', '2002-09-30'),
('EQU009', 'Cóndores del Cielo', 'Cóndores', '1980-04-14'),
('EQU010', 'Serpientes Verdes', 'Serpientes', '1993-11-19');



INSERT INTO jugadores (idJuagador, nombreJugador, apellidoJugador, fechaDeNacimientoJugador, dorsalJugador, idEquipo)
VALUES 
('JUG001', 'Juan', 'Pérez', '1995-06-12', 10, 'EQU001'),
('JUG002', 'Luis', 'García', '1990-02-28', 9, 'EQU002'),
('JUG003', 'Carlos', 'Martínez', '1992-11-05', 8, 'EQU003'),
('JUG004', 'Pedro', 'Ramírez', '1988-01-22', 11, 'EQU004'),
('JUG005', 'Jorge', 'Sánchez', '1993-09-30', 7, 'EQU005'),
('JUG006', 'Santiago', 'Gómez', '1996-03-17', 6, 'EQU006'),
('JUG007', 'Alejandro', 'Fernández', '1985-10-11', 5, 'EQU007'),
('JUG008', 'Raúl', 'Torres', '1999-05-07', 4, 'EQU008'),
('JUG009', 'Miguel', 'Rojas', '1991-08-19', 3, 'EQU009'),
('JUG010', 'Ricardo', 'Jiménez', '1989-12-12', 2, 'EQU010');


INSERT INTO estadios (idEstadio, nombreEstadio, apodoEstadio, direccionEstadio, idEquipo)
VALUES 
('EST001', 'Estadio Central', 'La Fortaleza', 'Av. Principal 123', 'EQU001'),
('EST002', 'Estadio Olímpico', 'El Nido', 'Calle Secundaria 456', 'EQU002'),
('EST003', 'Estadio Norte', 'La Cueva', 'Boulevard Norte 789', 'EQU003'),
('EST004', 'Estadio Sur', 'El Templo', 'Ruta 4, Km 10', 'EQU004'),
('EST005', 'Estadio del Este', 'El Coliseo', 'Calle Este 321', 'EQU005'),
('EST006', 'Estadio Azul', 'El Acuario', 'Av. Costera 567', 'EQU006'),
('EST007', 'Estadio Negro', 'La Selva', 'Calle Oscura 890', 'EQU007'),
('EST008', 'Estadio de Fuego', 'La Hoguera', 'Camino al Volcán 123', 'EQU008'),
('EST009', 'Estadio del Cielo', 'El Nido', 'Calle Cielo 456', 'EQU009'),
('EST010', 'Estadio Verde', 'La Serpiente', 'Carretera Verde 789', 'EQU010');





INSERT INTO partidos (idPartido, fechaPartido, idEquipoLocal, idEquipoVisitante, estadoDelPartido, resultadoPartido)
VALUES 
('PAR001', '2023-09-15', 'EQU001', 'EQU002', TRUE, '2-1'),
('PAR002', '2023-09-22', 'EQU003', 'EQU004', TRUE, '1-3'),
('PAR003', '2023-09-29', 'EQU005', 'EQU006', TRUE, '0-0'),
('PAR004', '2023-10-06', 'EQU007', 'EQU008', TRUE, '4-2'),
('PAR005', '2023-10-13', 'EQU009', 'EQU010', TRUE, '1-1'),
('PAR006', '2023-10-20', 'EQU001', 'EQU003', TRUE, '3-0'),
('PAR007', '2023-10-27', 'EQU002', 'EQU004', TRUE, '2-2'),
('PAR008', '2023-11-03', 'EQU005', 'EQU007', TRUE, '0-1'),
('PAR009', '2023-11-10', 'EQU006', 'EQU008', TRUE, '1-4'),
('PAR010', '2023-11-17', 'EQU009', 'EQU001', TRUE, '3-3');

INSERT INTO arbitros (idArbitro, nombreArbitro, apellidoArbitro, fechaDeNacimientoArbitro, idPartido)
VALUES 
('ARB001', 'Roberto', 'López', '1980-01-15', 'PAR001'),
('ARB002', 'Fernando', 'González', '1975-03-22', 'PAR002'),
('ARB003', 'Miguel', 'Hernández', '1982-05-10', 'PAR003'),
('ARB004', 'José', 'Rodríguez', '1978-06-30', 'PAR004'),
('ARB005', 'Ricardo', 'Díaz', '1981-09-05', 'PAR005'),
('ARB006', 'Juan', 'Molina', '1979-11-19', 'PAR006'),
('ARB007', 'Carlos', 'Ruiz', '1974-02-28', 'PAR007'),
('ARB008', 'Sergio', 'Ramírez', '1983-07-15', 'PAR008'),
('ARB009', 'David', 'Martínez', '1985-10-09', 'PAR009'),
('ARB010', 'Luis', 'Gómez', '1987-12-25', 'PAR010');
