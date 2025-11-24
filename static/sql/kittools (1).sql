-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 24-11-2025 a las 20:30:24
-- Versión del servidor: 8.0.42
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `kittools`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int NOT NULL,
  `nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int NOT NULL,
  `usuario_id` int NOT NULL,
  `repartidor_id` int NOT NULL,
  `fecha_pedido` datetime NOT NULL,
  `estado` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_productos`
--

CREATE TABLE `pedido_productos` (
  `id` int NOT NULL,
  `pedido_id` int NOT NULL,
  `producto_id` int NOT NULL,
  `cantidad` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `precio` float NOT NULL,
  `stock` int NOT NULL,
  `categoria_id` int NOT NULL,
  `imagen` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `categoria_id`, `imagen`) VALUES
(1, 'Llave de Impacto Snap 8000', 'Potente llave de impacto para desmontar llantas de autos y motocicletas', 139.99, 20, 1, 'Snap-on.jpg'),
(2, 'Gato Hidráulico FACOM Pro', 'Gato de 3 toneladas para trabajos pesados en talleres automotrices', 89.5, 18, 1, 'FACOM.jpg'),
(3, 'Destornillador Matco de Torque', 'Herramienta de torque ajustable para precisión mecánica', 24.99, 40, 2, 'MatcoTools.jpg'),
(4, 'Compresor Portátil Hazet 12V', 'Compresor compacto ideal para inflar neumáticos en carretera', 59.9, 35, 2, 'Hazet.jpg'),
(5, 'Kit Multiherramienta Wera Moto', 'Set completo para mantenimiento de motocicletas', 44.25, 30, 3, 'Wera.jpg'),
(6, 'Pistola Neumática Snap Thunder', 'Ideal para aflojar pernos oxidados en autos de gran tamaño', 155, 12, 1, 'Snap-on.jpg'),
(7, 'Scanner Automotriz FACOM X1', 'Lector OBD2 para diagnóstico de fallas vehiculares modernas', 54.99, 22, 4, 'FACOM.jpg'),
(8, 'Manómetro Digital Matco Max', 'Medidor de presión de llantas con pantalla retroiluminada', 11.75, 50, 3, 'MatcoTools.jpg'),
(9, 'Bomba Extractora Hazet OilMaster', 'Herramienta para extracción rápida de aceite de motor', 34.99, 17, 4, 'Hazet.jpg'),
(10, 'Set de Dados Wera Grip 24pz', 'Juego de dados de alta resistencia para autos y motos', 49.5, 26, 1, 'Wera.jpg'),
(11, 'Linterna Mecánica Snap ProLED', 'Linterna recargable ideal para inspección de motores', 19.99, 45, 5, 'Snap-on.jpg'),
(12, 'Multímetro Automotriz FACOM M200', 'Multímetro preciso para diagnóstico eléctrico automotriz', 29.9, 32, 5, 'FACOM.jpg'),
(13, 'Soporte de Moto Matco Stand', 'Soporte plegable para mantenimiento de motocicletas', 55, 14, 6, 'MatcoTools.jpg'),
(14, 'Cepillo Desengrasante Hazet Clean', 'Cepillo resistente para eliminar grasa en motores', 6.99, 70, 7, 'Hazet.jpg'),
(15, 'Extractor de Poleas Wera XForce', 'Herramienta para desmontar poleas en motores', 24.8, 29, 4, 'Wera.jpg'),
(16, 'Compresímetro Snap Ultra', 'Medidor de compresión para motores de autos y motocicletas', 38.4, 21, 6, 'Snap-on.jpg'),
(17, 'Embudo Antiderrame FACOM Flex', 'Embudo flexible con sistema antiderrame para cambios de aceite', 7.5, 60, 7, 'FACOM.jpg'),
(18, 'Filtro de Aire Matco ProFlow', 'Filtro universal compatible con múltiples modelos de motocicletas', 14.25, 33, 3, 'MatcoTools.jpg'),
(19, 'Carro Organizante Hazet ToolBox', 'Carro de herramientas con compartimentos reforzados', 112, 10, 8, 'Hazet.jpg'),
(20, 'Set de Llaves Wera AutoLine', 'Juego de llaves combinadas ideal para mecánica automotriz', 35.9, 27, 1, 'Wera.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int NOT NULL,
  `nombre` text NOT NULL,
  `contacto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repartidores`
--

CREATE TABLE `repartidores` (
  `id` int NOT NULL,
  `nombre` text NOT NULL,
  `telefono` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `correo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `clave` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `telefono` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `direccion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `perfil` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'U'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
