DROP SCHEMA IF EXISTS `php_test`;
CREATE SCHEMA IF NOT EXISTS `php_test` DEFAULT CHARACTER SET utf8 collate utf8_spanish2_ci;
USE `php_test`;

CREATE TABLE `usuarios` (
    `id` int UNSIGNED NOT NULL PRIMARY KEY auto_increment, 
    `user` varchar(30) NOT NULL,
    `nombre` varchar(300) NOT NULL,
    `correo` varchar(300) NOT NULL,
    `password` varchar(450) NOT NULL,
    `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `cargo` varchar(300) NOT NULL,
    `perm` int(11) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `usuarios` (`id`,`user`, `nombre`, `correo`, `password`,`date`, `cargo`,`perm`) VALUES
(1, 'root','Gabriel Ore Durán', 'allright@gmail.com', '0000','1000-01-10 00:00:00','Gerente General',1),
(2, 'root','Alucard Van Hellsing', 'inhisworld@gmail.com', '1111','1998-01-10 00:00:00','Gerente General',1),
(3, 'root','Aleli Valdez Vargaz', 'aleli_vald@gmail.com', '1234','1998-01-20 00:00:00','Gerente de Informatica',1),
(4, 'root','Nadia Maldonado Fierro', 'nadia_hot@gmail.com', '1235','1993-01-22 00:00:00','Gerente de Informatica',1),
(5, 'root','Diego Perez Aguilar', 'perez_solar@gmail.com', '1236','1993-03-10 00:00:00','Jefe de informatica',1),
(6, 'root','Pamela Islas Calvo', 'pamela_islas@gmail.com', '1237','1998-02-12 00:00:00','Jefe de informatica',1),
(7, 'admin','Leticia Padilla Solis', 'leticia.solis@gmail.com', '1238','1992-08-11 00:00:00','Especialista DAYS',2),
(8, 'admin','Abraham Garcia Rodriguez', 'abramzito@gmail.com', '1239','1990-10-15 00:00:00','Especialista DAYS',2),
(9, 'admin','Teodoro Manzano Lopez', 'teo_doro@gmail.com', '1010','1990-06-18 00:00:00','Especialista AP',2),
(10, 'admin','Mario Lopez Montes', 'mario_lopez@gmail.com', '1011','1998-11-05 00:00:00','Especialista Programador',2),
(11, 'admin','Chalino Reyes Olmedo', 'rey.chalino@gmail.com', '1012','1995-04-18 00:00:00','Especialista Programador',2),
(12, 'admin','Valenin Elizalde Orozco', 'val.orozco@gmail.com', '1013','1996-07-24 00:00:00','Especialista Desarrollo',2),
(13, 'admin','Roman Tepetitlan Guzman', 'guzman.lopez@gmail.com', '1014','1994-05-10 00:00:00','Especialista Desarrollo',2),
(14, 'admin','Vanessa Carrillo Dominguez', 'vane.doca@gmail.com', '1015','1999-12-01 00:00:00','Especialista GYT',2),
(15, 'admin','Luis Rey Martinez Jimenez', 'luis_rey@gmail.com', '1016','1994-10-18 00:00:00','Especialista ABD',2),
(16, 'admin','Alberto Torres Guzman', 'torres.alber@gmail.com', '1017','1993-09-05 00:00:00','Especialista ADR',2),
(17, 'admin','Agustin Fernandez Barrera', 'aus_fer@gmail.com', '1018','1998-11-27 00:00:00','Especialista Produccion',2),
(18, 'admin','Melisa Cortez Lopez', 'Mecortez@gmail.com', '1019','1998-06-18 00:00:00','Especialista Produccion',2),
(19, 'user','Israel Valdez Valdez', 'isval@gmail.com', '1020','1997-03-10 00:00:00','Tecnico Soporte',3),
(20, 'user','Gloria Carrillo Zamael', 'zamael.car@gmail.com', '1056','1996-08-08 00:00:00','Tecnico Soporte',3),
(21, 'user','Juan Alcopar Muñoz', 'juan.alcopar@gmail.com', '9857','1992-11-11 00:00:00','Tecnico Soporte',3),
(22, 'user','Gustavo Ferrera Salinas', 'gus.ferre@gmail.com', '9874','1997-09-24 00:00:00','Tecnico Soporte',3),
(23, 'user','Yael Montes Montes', 'yael-montes@gmail.com', '9867','1998-05-19 00:00:00','Tecnico Soporte',3),
(24, 'user','Africa Mendoza Mesa', 'africa.mend@gmail.com', '5456','1998-08-16 00:00:00','Tecnico Soporte',3),
(25, 'user','Adriana Garcia Chavez', 'garcha@gmail.com', '4465','1998-10-02 00:00:00','Tecnico Soporte',3),
(26, 'user','Lorenzo Padilla Morales', 'padi.mor@gmail.com', '0864','1995-06-10 00:00:00','Tecnico Soporte',3),
(27, 'user','Pamela Gutierrez Sierra', 'pamelarra@gmail.com', '4534','1997-04-18 00:00:00','Tecnico Soporte',3),
(28, 'user','Daiela Montes Solis', 'dani_montes@gmail.com', '2635','1998-12-28 00:00:00','Tecnico Soporte',3),
(29, 'user','Mayra Corona Perez', 'mayra.cope@gmail.com', '0987','1998-07-13 00:00:00','Tecnico Soporte',3),
(30, 'user','Oscar Manuel Angeles', 'manu.angeles@gmail.com', '0981','1998-01-01 00:00:00','Tecnico Soporte',3),
(31, 'user','German Saldana Mendoza', 'salda.mendoza@gmail.com', '5448','1999-02-08 00:00:00','Tecnico Soporte',3),
(32, 'user','Karina Martinez Perez', 'kary.mart@gmail.com', '4654','1995-12-24 00:00:00','Tecnico Soporte',3),
(33, 'user','Pedro Cruz Pina', 'cruz.pina@gmail.com', '2456','1992-09-16 00:00:00','Tecnico Soporte',3),
(34, 'user','Angelica Saqueris Tovar', 'an.saqueris@gmail.com', '5487','1997-09-05 00:00:00','Tecnico Soporte',3),
(35, 'user','Abigail Flores Montes', 'abi.flore@gmail.com', '6545','1993-04-03 00:00:00','Tecnico Soporte',3),
(36, 'user','Fernanda Martinez Guzman', 'fernand.martinez@gmail.com', '7878','1993-03-03 00:00:00','Tecnico Soporte',3),
(37, 'user','Jenifer Cruz Cruz', 'jeni.cruz34@gmail.com', '1287','1993-07-14 00:00:00','Tecnico Soporte',3),
(38, 'user','Rodrigo Consuelo Diaz', 'rodri.consuelo@gmail.com', '9788','1995-07-18 00:00:00','Tecnico Soporte',3),
(39, 'user','Esmeralda Miguel Torres', 'esmemigue@gmail.com', '1896','1996-09-12 00:00:00','Tecnico Soporte',3),
(40, 'user','Sandra Gomez Palacios', 'sandra.palacios@gmail.com', '8465','1992-12-09 00:00:00','Tecnico Soporte',3),
(41, 'user','Cristina Marques Sandoval', 'cristina.sandoval@gmail.com', '9877','1993-06-22 00:00:00','Tecnico Soporte',3),
(42, 'user','Rosalia Hernandez Carrosa', 'roalia.carrosa@gmail.com', '9844','1993-08-16 00:00:00','Tecnico Soporte',3),
(43, 'user','Daniela Guerrero Minato', 'daniela.minato@gmail.com', '9078','1998-03-28 00:00:00','Tecnico Soporte',3),
(44, 'user','Brisa Solis Delgado', 'brisa.dela@gmail.com', '4564','1993-10-12 00:00:00','Tecnico Soporte',3),
(45, 'user','Dulce Chavez Garcia', 'dulcedulce@gmail.com', '3245','1996-05-19 00:00:00','Tecnico Soporte',3),
(46, 'user','Antonia Martinez Montes', 'antonio45@gmail.com', '0984','1994-10-22 00:00:00','Tecnico Telecomunicaciones',3),
(47, 'user','Aaron Mendez Mendez', 'aaronpiper@gmail.com', '1254','1994-06-01 00:00:00','Tecnico Telecomunicaciones',3),
(48, 'user','Abigail Esteban Caballero', 'abicaballe4@gmail.com', '0981','1999-05-05 00:00:00','Tecnico Telecomunicaciones',3),
(49, 'user','Abner Cortez Cruz', 'abnener@gmail.com', '0947','1992-05-09 00:00:00','Tecnico Telecomunicaciones',3),
(50, 'user','Adrian Loyo Aranda', 'adriloyo56@gmail.com', '9873','1995-10-10 00:00:00','Tecnico Telecomunicaciones',3),
(51, 'user','Adrian Vazquez Hernandez', 'adriadri@gmail.com', '5453','1995-03-19 00:00:00','Tecnico Telecomunicaciones',3),
(52, 'user','Adriana Torres Peralta', 'adriana.peralta@gmail.com', '5454','1991-07-13 00:00:00','Tecnico Telecomunicaciones',3),
(53, 'user','Aide Peralta Monroy', 'aide987@gmail.com', '5457','1994-03-30 00:00:00','Tecnico Telecomunicaciones',3),
(54, 'user','Aislin Rodriguez Alvarez', 'aislinroro@gmail.com', '9876','1994-02-02 00:00:00','Tecnico Telecomunicaciones',3),
(55, 'user','Alan Rivera Ramirez', 'alanrivera@gmail.com', '6545','1997-11-01 00:00:00','Tecnico Telecomunicaciones',3),
(56, 'user','Alejandra Ramirez Aguilar', 'aleeeeex@gmail.com', '2345','1996-11-10 00:00:00','Tecnico Telecomunicaciones',3),
(57, 'user','Alexa Montoya Ramirez', 'montoya.123@gmail.com', '5645','1995-05-30 00:00:00','Tecnico Telecomunicaciones',3),
(58, 'user','Ali Mendez Gonzalez', 'ali.ali@gmail.com', '5456','1990-07-13 00:00:00','Tecnico Telecomunicaciones',3),
(59, 'user','Amaranta Cortez Ortega', 'amaranta.orte@gmail.com', '1986','1996-09-12 00:00:00','Tecnico Telecomunicaciones',3),
(60, 'user','Andrea Villasenor de Lucio', 'andreeeea12@gmail.com', '5446','1997-09-11 00:00:00','Tecnico Telecomunicaciones',3),
(61, 'user','Alexei Hernandez Garcia', 'alexei.cat@gmail.com', '9879','1995-10-13 00:00:00','Tecnico Telecomunicaciones',3),
(62, 'user','Alfredo Perez Cristobal', 'freud.cri@gmail.com', '4545','1991-11-05 00:00:00','Tecnico Telecomunicaciones',3),
(63, 'user','Ameyalli Ortega Rodrigguez', 'amemes13@gmail.com', '8758','1990-04-20 00:00:00','Tecnico Telecomunicaciones',3),
(64, 'user','America Gonzalez Bautista', 'bautista.amer@gmail.com', '4654','1990-02-28 00:00:00','Tecnico Telecomunicaciones',3),
(65, 'user','Angel Parra Lara', 'parra.laraa2@gmail.com', '7846','1991-04-23 00:00:00','Tecnico Telecomunicaciones',3),
(66, 'user','Angelica Soto Silva', 'ansotosilva@gmail.com', '0989','1995-09-25 00:00:00','Tecnico Telecomunicaciones',3),
(67, 'user','Antonio Cruz De Romero ', 'deromero@gmail.com', '5465','1998-08-08 00:00:00','Tecnico Telecomunicaciones',3),
(68, 'user','Ariadna Valdez Garcia', 'ariadnaariadna@gmail.com', '0899','1997-04-25 00:00:00','Tecnico Telecomunicaciones',3),
(69, 'user','Ariel Clemento Calzada', 'clemente12345@gmail.com', '0887','1992-05-08 00:00:00','Tecnico Telecomunicaciones',3),
(70, 'user','Arturo Rosas Trejo ', 'rosas.trejo@gmail.com', '4545','1995-02-10 00:00:00','Tecnico Telecomunicaciones',3),
(71, 'user','Asminda Salgado Guerra', 'asminda198@gmail.com', '8769','1996-04-22 00:00:00','Tecnico Telecomunicaciones',3),
(72, 'user','Atziri Valdez Linio', 'valdez.atzi@gmail.com', '0899','1994-08-10 00:00:00','Tecnico Telecomunicaciones',3),
(73, 'user','Beatriz Flores Llanos', 'beatriz.flores@gmail.com', '4654','1996-08-25 00:00:00','Tecnico Telecomunicaciones',3),
(74, 'user','German Guzman Gutierres', 'ggg2000@gmail.com', '4676','2010-05-28 00:00:00','Tecnico Telecomunicaciones',3),
(75, 'user','Ernesto Chavez Perez', 'ercgu406@gmail.com', '9652','1945-05-13 00:00:00','Tecnico Telecomunicaciones',3),
(76, 'user','Penelope Hernandez Frias', 'phernan.f@gmail.com', '9673','1937-12-24 00:00:00','Tecnico Produccion',3),
(77, 'user','Fernando Contreras Cortes', 'c.fer@gmail.com', '8465','1987-12-08 00:00:00','Tecnico Produccion',3),
(78, 'user','Francisco Torres Cordero', 'fran.torres@gmail.com', '9845','1976-12-20 00:00:00','Tecnico Produccion',3),
(79, 'user','Jose Lopez Carbajo', 'carb_lopj@gmail.com', '2316','1976-06-01 00:00:00','Tecnico Produccion',3),
(80, 'user','Sonia Antonio Liebana', 'liebanto.sonia@gmail.com', '7630','1945-08-19 00:00:00','Tecnico Produccion',3),
(81, 'user','Maria Elena Lumbreras Lemos', 'melena_lum@gmail.com', '8632','1999-05-28 00:00:00','Tecnico Produccion',3),
(82, 'user','Laura Funes Miguelez', 'fun.lauram@gmail.com', '9517','1963-12-19 00:00:00','Tecnico Produccion',3),
(83, 'user','Angela Benitez Valderrama', 'valde_angela@gmail.com', '6721','1972-03-09 00:00:00','Tecnico Produccion',3),
(84, 'user','Marta Gamboa Espada', 'marta.ge@gmail.com', '8663','1986-12-10 00:00:00','Tecnico Produccion',3),
(85, 'user','Miguel Lopez Castillo', 'lopezcas.mike@gmail.com', '8941','1976-10-01 00:00:00','Tecnico Produccion',3),
(86, 'user','Hector Cubillo Castañeda', 'hector_cc@gmail.com', '9633','1965-03-08 00:00:00','Tecnico Produccion',3),
(87, 'user','Jesus Mesa Catala', 'jesmc@gmail.com', '9371','1964-06-12 00:00:00','Tecnico Produccion',3),
(88, 'user','Rosa Cordon Escamilla', 'rosa.esca@gmail.com', '7641','1986-11-04 00:00:00','Tecnico Produccion',3),
(89, 'user','Isabel Panadero Peral', 'pan.isa@gmail.com', '6843','1957-06-28 00:00:00','Tecnico Produccion',3),
(90, 'user','Brenda Alarcon Perez', 'brendaperez@gmail.com', '9865','1963-08-15 00:00:00','Tecnico Produccion',3),
(91, 'user','Araceli Castañeda Cortes', 'ara.cataneda@gmail.com', '9763','1976-04-04 00:00:00','Tecnico Produccion',3),
(92, 'user','Julio Peña Cedillo', 'julio_cedillo@gmail.com', '6285','1996-10-09 00:00:00','Tecnico Produccion',3),
(93, 'user','Kennia Reyes Hernandez', 'kennia.hernandez@gmail.com', '6389','1966-08-17 00:00:00','Tecnico Produccion',3),
(94, 'user','Lucero Castillo Perez', 'lu.castillo@gmail.com', '6286','1983-10-12 00:00:00','Tecnico Produccion',3),
(95, 'user','Estela Contreras Lopez', 'estel.castillo2003@gmail.com', '5132','1963-06-27 00:00:00','Tecnico Produccion',3),
(96, 'user','Cesar Peña Garcia', 'cesar16@gmail.com', '9631','1978-07-10 00:00:00','Tecnico Produccion',3),
(97, 'user','Valeria Lopez Alba', 'val.la@gmail.com', '9846','1935-04-17 00:00:00','Tecnico Produccion',3),
(98, 'user','Elizabeth Cortez Garcia', 'eli_cor197@gmail.com', '9637','1988-05-27 00:00:00','Tecnico Produccion',3),
(99, 'user','Raul Pantoja Flores', 'pan.raul@gmail.com', '7631','2001-03-16 00:00:00','Tecnico Produccion',3),
(100, 'user','Gerardo Lopez Fernandez', 'ger.lop@gmail.com', '4628','1996-08-13 00:00:00','Tecnico Produccion',3);



CREATE TABLE `bienes` (
  `id` int UNSIGNED NOT NULL PRIMARY KEY auto_increment,
  `id_dueño` int UNSIGNED,
  `TieneDueño` boolean NOT NULL ,
  `tipo` varchar(30) NOT NULL, 
  KEY `id_dueño` (`id_dueño`),
  CONSTRAINT `ID_DUEÑO` FOREIGN KEY (`id_dueño`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

INSERT INTO `bienes` (`id`, `id_dueño`, `TieneDueño`, `tipo`) VALUES
(1, 1, true, 'Laptop'),
(2, 2, true, 'Escritorio'),
(3, 3, true, 'Escritorio'),
(4, 4, true, 'Escritorio'),
(5, 5, true, 'Laptop'),
(6, 6, true, 'Laptop'),
(7, 7, true, 'Laptop'),
(8, 8, true, 'Laptop'),
(9, 9, true, 'Escritorio'),
(10, 10, true, 'Laptop'),
(11, 11, true, 'Laptop'),
(12, 12, true, 'Escritorio'),
(13, 13, true, 'Escritorio'),
(14, 14, true, 'Laptop'),
(15, 15, true, 'Laptop'),
(16, 16, true, 'Laptop'),
(17, 17, true, 'Escritorio'),
(18, 18, true, 'Escritorio'),
(19, 19, true, 'Escritorio'),
(20, 20, true, 'Laptop'),
(21, 21, true, 'Laptop'),
(22, 22, true, 'Laptop'),
(23, 23, true, 'Escritorio'),
(24, 24, true, 'Laptop'),
(25, 25, true, 'Laptop'),
(26, 26, true, 'Escritorio'),
(27, 27, true, 'Escritorio'),
(28, 28, true, 'Laptop'),
(29, 29, true, 'Laptop'),
(30, 30, true, 'Laptop'),
(31, 31, true, 'Laptop'),
(32, 32, true, 'Escritorio'),
(33, 33, true, 'Laptop'),
(34, 34, true, 'Laptop'),
(35, 35, true, 'Laptop'),
(36, 36, true, 'Escritorio'),
(37, 37, true, 'Laptop'),
(38, 38, true, 'Laptop'),
(39, 39, true, 'Escritorio'),
(40, 40, true, 'Escritorio'),
(41, 41, true, 'Laptop'),
(42, 42, true, 'Laptop'),
(43, 43, true, 'Laptop'),
(44, 44, true, 'Escritorio'),
(45, 45, true, 'Escritorio'),
(46, 46, true, 'Escritorio'),
(47, 47, true, 'Laptop'),
(48, 48, true, 'Escritorio'),
(49, 49, true, 'Escritorio'),
(50, 50, true, 'Escritorio'),
(51, 51, true, 'Laptop'),
(52, 52, true, 'Laptop'),
(53, 53, true, 'Laptop'),
(54, 54, true, 'Laptop'),
(55, 55, true, 'Escritorio'),
(56, 56, true, 'Laptop'),
(57, 57, true, 'Laptop'),
(58, 58, true, 'Escritorio'),
(59, 59, true, 'Escritorio'),
(60, 60, true, 'Laptop'),
(61, 61, true, 'Laptop'),
(62, 62, true, 'Laptop'),
(63, 63, true, 'Escritorio'),
(64, 64, true, 'Escritorio'),
(65, 65, true, 'Escritorio'),
(66, 66, true, 'Escritorio'),
(67, 67, true, 'Escritorio'),
(68, 68, true, 'Escritorio'),
(69, 69, true, 'Escritorio'),
(70, 70, true, 'Laptop'),
(81, 81, true, 'Escritorio'),
(82, 82, true, 'Escritorio'),
(83, 83, true, 'Escritorio'),
(84, 84, true, 'Escritorio'),
(85, 85, true, 'Laptop'),
(86, 86, true, 'Escritorio'),
(87, 88, true, 'Laptop'),
(89, 89, true, 'Escritorio'),
(90, 90, true, 'Laptop'),
(91, 91, true, 'Laptop'),
(92, 92, true, 'Escritorio'),
(93, 93, true, 'Escritorio'),
(94, 94, true, 'Laptop'),
(95, 95, true, 'Laptop'),
(96, 96, true, 'Laptop'),
(97, 97, true, 'Escritorio'),
(98, 98, true, 'Escritorio'),
(99, 99, true, 'Escritorio'),
(100, 100, true, 'Laptop'),
(101, NULL,false, 'Escritorio'),
(102, NULL,false, 'Laptop'),
(103, NULL,false, 'Escritorio'),
(104, NULL,false, 'Laptop'),
(105, NULL,false, 'Laptop'),
(106, NULL,false, 'Laptop'),
(107, NULL,false, 'Laptop'),
(108, NULL,false, 'Escritorio'),
(109, NULL,false, 'Escritorio'),
(110, NULL,false, 'Laptop'),
(111, NULL,false, 'Laptop'),
(112, NULL,false, 'Laptop'),
(113, NULL,false, 'Laptop'),
(114, NULL,false, 'Escritorio'),
(115, NULL,false, 'Laptop'),
(116, NULL,false, 'Laptop'),
(117, NULL,false, 'Escritorio'),
(118, NULL,false, 'Laptop'),
(119, NULL,false, 'Escritorio'),
(120, NULL,false, 'Laptop'),
(121, NULL,false, 'Laptop'),
(122, NULL,false, 'Escritorio'),
(123, NULL,false, 'Escritorio'),
(124, NULL,false, 'Escritorio'),
(125, NULL,false, 'Laptop');

