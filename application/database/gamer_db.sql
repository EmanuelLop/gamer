-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-06-2022 a las 02:24:58
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de datos: `gamer`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `Id_categoria` int(10) NOT NULL,
  `Tipo` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `Marca` varchar(30) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `Id_direccion` int(10) NOT NULL,
  `Calle` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `Correo` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `C,P` int(20) NOT NULL,
  `Pais/Region` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `Descripcion` varchar(50) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `Id_pagos` int(10) NOT NULL,
  `Id_tarjeta` int(10) NOT NULL,
  `Id_paypal` int(10) NOT NULL,
  `Id_transferencia` int(10) NOT NULL,
  `Id_ventas` int(10) NOT NULL,
  `Id_pedidos` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paypal`
--

CREATE TABLE `paypal` (
  `Id_paypal` int(10) NOT NULL,
  `Correo` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `Clave` varchar(30) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `Id_pedidos` int(10) NOT NULL,
  `Fecha_entrega` time(6) NOT NULL,
  `Fecha_aproximada` time(6) NOT NULL,
  `Id_producto` int(10) NOT NULL,
  `Id_usuario` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `Id_producto` int(10) NOT NULL,
  `Nombre` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `Precio` int(30) NOT NULL,
  `Descripcion` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Id_proveedor` int(10) NOT NULL,
  `Id_categorias` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `Id_proveedor` int(10) NOT NULL,
  `Categoria` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `Marca` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `Correo` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Telefono` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `Nombre` text COLLATE latin1_spanish_ci NOT NULL,
  `Direccion` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `RFC` varchar(10) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjeta`
--

CREATE TABLE `tarjeta` (
  `Id_tarjeta` int(10) NOT NULL,
  `N_tarjeta` int(30) NOT NULL,
  `Titular_tarjeta` text COLLATE latin1_spanish_ci NOT NULL,
  `Codigo_seguridad` int(5) NOT NULL,
  `Fecha_vencimiento` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transferencia`
--

CREATE TABLE `transferencia` (
  `Id_transferencia` int(10) NOT NULL,
  `N_referencia` int(30) NOT NULL,
  `Cantidad` int(30) NOT NULL,
  `Tipo_credito` varchar(20) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_usuario` int(10) NOT NULL,
  `Nombre` text COLLATE latin1_spanish_ci NOT NULL,
  `Nombre Usuario` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `Clave` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `Rol` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  `Id_direccion` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `Id_ventas` int(10) NOT NULL,
  `Direccion` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `Descripcion` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `Calle` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `Colonia` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `C.P` int(10) NOT NULL,
  `Telefono` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `Pais/Region` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `Fecha inicio` time(6) NOT NULL,
  `Fecha aproximada` time(6) NOT NULL,
  `Id_usuario` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`Id_categoria`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`Id_direccion`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`Id_pagos`),
  ADD KEY `Id_tarjeta` (`Id_tarjeta`),
  ADD KEY `Id_paypal` (`Id_paypal`),
  ADD KEY `Id_transferencia` (`Id_transferencia`),
  ADD KEY `Id_ventas` (`Id_ventas`),
  ADD KEY `Id_pedidos` (`Id_pedidos`);

--
-- Indices de la tabla `paypal`
--
ALTER TABLE `paypal`
  ADD PRIMARY KEY (`Id_paypal`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`Id_pedidos`),
  ADD KEY `Id_producto` (`Id_producto`),
  ADD KEY `Id_usuario` (`Id_usuario`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`Id_producto`),
  ADD KEY `Id_proveedor` (`Id_proveedor`),
  ADD KEY `Id_categorias` (`Id_categorias`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`Id_proveedor`);

--
-- Indices de la tabla `tarjeta`
--
ALTER TABLE `tarjeta`
  ADD PRIMARY KEY (`Id_tarjeta`);

--
-- Indices de la tabla `transferencia`
--
ALTER TABLE `transferencia`
  ADD PRIMARY KEY (`Id_transferencia`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_usuario`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`Id_ventas`),
  ADD KEY `Id_usuario` (`Id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `Id_categoria` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `direccion`
--
ALTER TABLE `direccion`
  MODIFY `Id_direccion` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `Id_pagos` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paypal`
--
ALTER TABLE `paypal`
  MODIFY `Id_paypal` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `Id_pedidos` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `Id_producto` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `Id_proveedor` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tarjeta`
--
ALTER TABLE `tarjeta`
  MODIFY `Id_tarjeta` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transferencia`
--
ALTER TABLE `transferencia`
  MODIFY `Id_transferencia` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_usuario` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `Id_ventas` int(10) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`Id_tarjeta`) REFERENCES `tarjeta` (`Id_tarjeta`),
  ADD CONSTRAINT `pagos_ibfk_2` FOREIGN KEY (`Id_paypal`) REFERENCES `paypal` (`Id_paypal`),
  ADD CONSTRAINT `pagos_ibfk_3` FOREIGN KEY (`Id_transferencia`) REFERENCES `transferencia` (`Id_transferencia`),
  ADD CONSTRAINT `pagos_ibfk_4` FOREIGN KEY (`Id_ventas`) REFERENCES `ventas` (`Id_ventas`),
  ADD CONSTRAINT `pagos_ibfk_5` FOREIGN KEY (`Id_pedidos`) REFERENCES `pedidos` (`Id_pedidos`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`Id_producto`) REFERENCES `producto` (`Id_producto`),
  ADD CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id_usuario`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`Id_proveedor`) REFERENCES `proveedor` (`Id_proveedor`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`Id_categorias`) REFERENCES `categoria` (`Id_categoria`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id_usuario`);
COMMIT;
