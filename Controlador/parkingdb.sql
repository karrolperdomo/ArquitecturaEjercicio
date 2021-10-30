CREATE DATABASE IF NOT EXISTS parkingdb DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE parkingdb;


DROP TABLE IF EXISTS persona;
CREATE TABLE persona (
  usuario varchar(50) NOT NULL,
  correo varchar(120) NOT NULL,
  password varchar(255) NOT NULL,
  celular bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS categoria;
CREATE TABLE categoria (
  ID int(10) NOT NULL PRIMARY KEY,
  categoria varchar(120) DEFAULT NULL,
  fechacreacion timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS vehiculo;
CREATE TABLE vehiculo (
  ID int(10) NOT NULL PRIMARY KEY,
  Bahia varchar(3) DEFAULT NULL,
  Categoria varchar(120) NOT NULL,
  Marca varchar(120) DEFAULT NULL,
  Placa varchar(120) DEFAULT NULL,
  Propietario varchar(120) DEFAULT NULL,
  Celular bigint(10) DEFAULT NULL,
  HoraEntrada timestamp NULL DEFAULT current_timestamp(),
  HoraSalida timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  Valor varchar(120) NOT NULL,
  Observacion mediumtext NOT NULL,
  Estado varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;