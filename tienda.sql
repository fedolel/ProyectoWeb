-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-07-2019 a las 02:34:42
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbldetalleventa`
--

CREATE TABLE `tbldetalleventa` (
  `ID` int(11) NOT NULL,
  `IDVENTA` int(11) NOT NULL,
  `IDPRODUCTO` int(11) NOT NULL,
  `PRECIOUNITARIO` decimal(20,3) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `ENVIADO` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblproductos`
--

CREATE TABLE `tblproductos` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Precio` decimal(20,3) NOT NULL,
  `Descripcion` text NOT NULL,
  `Imagen` varchar(255) NOT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblproductos`
--

INSERT INTO `tblproductos` (`ID`, `Nombre`, `Precio`, `Descripcion`, `Imagen`, `stock`) VALUES
(1, 'Zapatilla Air Max Sequent 4.5 Negro Nike', '50.000', 'Zapatilla Air Max Sequent 4.5 Negro Nike \r\nTipo de Producto: Zapatilla\r\nOcasión: Lifestyle\r\nTalla: 40\r\nMaterial Exterior: Textil/Sintético\r\nMaterial Interior: Poliéster\r\nMaterial Suela: Goma\r\nTipo de Punta: Redonda\r\nEmpeine: Moldeado\r\nTipo Ajuste: Cordón\r\nTecnología: Air-Max: Unidad ubicada en el talón para brindar comodidad y protección contra los impactos', 'https://dafitistaticcl-a.akamaihd.net/p/nike-9298-052077-1-zoom.jpg', 100),
(2, 'Zapatilla Adidas Wmns Lite Racer Core Black/White', '25.000', 'Parte superior de malla fina con refuerzos de ante sintético. 3 bandas de piel sintética selladas. Logotipo de adidas en la etiqueta de la lengüeta y en el refuerzo del talón. Cómodo forro textil. Plantilla cómoda. Mediasuela y suela de EVA inyectada para una mayor amortiguación y ligereza.', 'https://www.belsport.cl/medias/BE-ANDB0575-VIEW1.jpg-bls515Wx515H?context=bWFzdGVyfGltYWdlc3wyOTg4NHxpbWFnZS9qcGVnfGltYWdlcy9oMDgvaDM5Lzg4ODUwNjY3OTI5OTAuanBnfDc5MjZlZGU3MGY5MDY1YzBmMzU2MzY4M2IyNWMwYjc5YjQ2NmMzN2NhZTljZWI4MTZmZjZiZThkNDM0ZTRmMGI', 2222),
(4, 'Zapatillas de Básquetbol UA Curry 6', '75.000', 'La parte superior totalmente tejida brinda un ajuste transpirable similar a la compresión, que proporciona una fuerza direccional ligera\r\nLa amortiguación UA HOVR™ completa proporciona una sensación de ingravidez y un retorno de energía explosivo\r\nLa talonera externa brinda mayor estabilidad y soporte\r\nLa placa para velocidad de todo el largo del pie te mantiene en forma para derribar a los defensas\r\nEl diseño de suela dividida aumenta el contacto con la cancha para lograr una mayor tracción\r\nEl diseño exclusivo de la suela brinda mayor tracción y flexibilidad en la planta del pie', 'https://www.fuikaomar.es/29758-large_default/under-armour-curry-6-coy-fish.jpg', 312),
(5, 'Zapatillas de básquetbol UA Anomaly para hombre', '75.000', 'La parte superior sintética proporciona soporte ligero\r\nLa almohadilla adicional alrededor de la lengüeta y el cuello brindan comodidad completa\r\nLa plantilla Micro G® moldeada y de largo completo se adapta a la forma del pie\r\nLa entresuela de espuma Micro G® convierte los aterrizajes amortiguados en arranques explosivos\r\nEl enfranque interno en la parte media del pie proporciona soporte adicional para evitar que el pie se doble\r\nEl patrón de tracción adaptable en la suela tiene un efecto de corte que permite comenzar y terminar más rápido', 'https://cdn.fashiola.es/L504638538/under-armour-zapatillas-de-baloncesto-ua-anomaly-para-hombre.jpg', 4122),
(6, 'ZAPATILLAS UA VARIX WC TURTLEDOVE/TRUE WHITE', '47.000', 'La zapatilla Vans Varix WC adopta un modelo clásico con una silueta Wafflecup que incorpora la última tecnología, así como una plantilla extraíble UltraCush™ Lite que proporciona un confort duradero, cuenta con un forro de espuma ligera ULTRACUS específico para esta marca.', 'https://footdistrict.com/media/extendware/ewimageopt/media/inline/c8/2/6a80b026ce856bd624c7bc7769a9b6f9/vans-varix-wc-vn0a3wlnvud-38.jpg', 44),
(7, 'ZAPATILLAS UA ULTRARANGE HI MTE (WOOL) ASPHALT', '55.000', 'Clásico de la marca Vans. En la caña domina cuero natural - piel de flor, ante, textil - textil, Sintético - sintético de calidad. Dentro de los zapatos hay una plantilla: textil. Comodidad aumenta con la suela adecuada: material de alta calidad. Zapatos enriquecidos con tecnología Ultra Cush Lite. Elegante y agradable de llevar', 'https://falabella.scene7.com/is/image/Falabella/7309441?\\\\$lista123\\\\$', 56),
(8, 'ZAPATILLA HOMBRE ANVIL', '58.000', 'La clásica Anvil de DC siempre se hace presente en cada temporada.', 'https://home.ripley.cl/store/Attachment/WOP/D317/2000360819395/2000360819395-1.jpg', 788),
(9, 'E.TRIBEKA SE M SHOE', '57.000', 'Sin ti estas zapatillas no podrán atravesar la ciudad, no podrán invitarte un refresco o transformarte en un artista, lo que hagas con ellas depende de ti, tú las definirás y harás que las cosas sucedan.', 'https://cdn.afosto.net/gb/product/3480200133-3613373711960-1.jpg', 888),
(10, 'Puma Astro Cup Red Dahlia White ', '30.000', 'COLOR: Rojo Dahlia-Puma Blanco\r\nSe convierte en PUMA ASTRO CUP. \r\nZapatos de entrenamiento de fútbol \"atún graso culo\" \r\nEl modelo de uso de la ciudad que se convirtió en la base. \r\nde los zapatos de fútbol de la parte de puntillas \r\nMuestra el diseño que atrapó la ración militar; de la parte superior \r\nUn material de gamuza se convierte en una atmósfera más refinada. ', 'https://falabella.scene7.com/is/image/Falabella/7402086_1?$producto308$&wid=800&hei=800&qlt=70', 122),
(11, 'Puma Nrgy Comet 190556 20 Indigo Bunting/ White', '36.000', 'Zapatillas para correr de la marca Puma. Caña bien acabada - textil - textil, Sintético - sintético de calidad. Plantilla es textil. Se logró una mejor amortiguación gracias a la suela - es material de alta calidad. En los zapatos ha sido usada la tecnología Flexible, IGNITE Foam, NRGY Foam, SoftFoam. Anatómicamente perfiladas son perfectos tanto para distancias largas como cortas.', 'https://cdn.fashiola.es/L490389653/puma-zapatos-nrgy-comet-190556-20-indigo-bunting-white.jpg', 50),
(14, 'Zapato bacan', '50000.000', 'muy comodo', 'https://www.tacticaluniformes.cl/wp-content/uploads/2014/10/Zapato-Guardias-Vigilantes-1-460x400.png', 10),
(15, 'zapato transformer', '50.000', 'zapato decepticon', 'https://falabella.scene7.com/is/image/FalabellaCO/3706751_1?$producto308$&wid=800&hei=800&qlt=70', 999);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblroles`
--

CREATE TABLE `tblroles` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblusuarios`
--

CREATE TABLE `tblusuarios` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Apellido` varchar(100) DEFAULT NULL,
  `Mail` varchar(100) DEFAULT NULL,
  `Usuario` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `rol_id` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblusuarios`
--

INSERT INTO `tblusuarios` (`Id`, `Nombre`, `Apellido`, `Mail`, `Usuario`, `password`, `rol_id`, `estado`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblventas`
--

CREATE TABLE `tblventas` (
  `ID` int(11) NOT NULL,
  `ClaveTransaccion` varchar(250) NOT NULL,
  `Region` varchar(200) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `Apellido` varchar(200) NOT NULL,
  `Ciudad` varchar(200) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Correo` varchar(5000) NOT NULL,
  `Total` decimal(60,3) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblventas`
--

INSERT INTO `tblventas` (`ID`, `ClaveTransaccion`, `Region`, `Nombre`, `Apellido`, `Ciudad`, `Fecha`, `Correo`, `Total`, `status`) VALUES
(49, 'vdhoc14h986qj3lqd3gkrg9d107oqk5t', 'Region de Tarapaca', 'aaaaaaaaaaaaa', 'miau', 'san antonio', '2019-07-14 16:25:02', 'guau@guau.cl', '225.000', 'Enviado');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IDVENTA` (`IDVENTA`),
  ADD KEY `IDPRODUCTO` (`IDPRODUCTO`);

--
-- Indices de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblroles`
--
ALTER TABLE `tblroles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Nombre_UNIQUE` (`Nombre`);

--
-- Indices de la tabla `tblusuarios`
--
ALTER TABLE `tblusuarios`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `fk_rol_usuarios_idx` (`rol_id`);

--
-- Indices de la tabla `tblventas`
--
ALTER TABLE `tblventas`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tblroles`
--
ALTER TABLE `tblroles`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tblusuarios`
--
ALTER TABLE `tblusuarios`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tblventas`
--
ALTER TABLE `tblventas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  ADD CONSTRAINT `tbldetalleventa_ibfk_1` FOREIGN KEY (`IDVENTA`) REFERENCES `tblventas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbldetalleventa_ibfk_2` FOREIGN KEY (`IDPRODUCTO`) REFERENCES `tblproductos` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
