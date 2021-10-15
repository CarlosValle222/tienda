-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-08-2021 a las 05:28:13
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-10-2021 a las 06:46:46
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `qty` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cart`
--

INSERT INTO `cart` (`cartid`, `userid`, `productid`, `qty`) VALUES
(18, 11, 5, 1),
(20, 11, 6, 1),
(21, 11, 16, 1),
(35, 2, 8, 2),
(36, 2, 10, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`categoryid`, `category_name`) VALUES
(1, 'muebles'),
(2, 'Sillas'),
(3, 'Mesas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer`
--

CREATE TABLE `customer` (
  `userid` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `customer`
--

INSERT INTO `customer` (`userid`, `customer_name`, `address`, `contact`) VALUES
(2, 'Neovic Devierte', 'Silay City, LOS OLIVOS #455', '09092735719'),
(10, 'diego', 'Sector 3 Grupo 20 ', '51-912133140'),
(11, 'user20', 'losnogales.560', '455622'),
(12, 'Carlos', 'Av.Las Palmeras 123', 'jairvalle@gmail.com'),
(13, 'Luis', 'rrttgd', '123456789'),
(14, 'Rosa', 'rrt', '3444556677'),
(15, 'Carlosvalle', 'Las palmeras #567', 'Albert'),
(16, 'Luis', 'sadsfdgfhfghd', 'sadsfdds'),
(17, 'Peter', 'dsfgh', 'sdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventory`
--

CREATE TABLE `inventory` (
  `inventoryid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` double NOT NULL,
  `inventory_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inventory`
--

INSERT INTO `inventory` (`inventoryid`, `userid`, `action`, `productid`, `quantity`, `inventory_date`) VALUES
(1, 2, 'Purchase', 4, 10, '2017-09-18 09:32:01'),
(2, 2, 'Purchase', 20, 10, '2017-09-18 09:32:01'),
(3, 2, 'Purchase', 1, 99, '2017-09-18 09:32:01'),
(4, 2, 'Purchase', 2, 20, '2017-09-18 09:32:01'),
(5, 2, 'Purchase', 2, 10, '2017-09-18 09:34:29'),
(6, 2, 'Purchase', 2, 10, '2017-09-18 11:09:21'),
(7, 2, 'Purchase', 3, 12, '2017-09-18 11:09:22'),
(8, 2, 'Purchase', 4, 8, '2017-09-18 11:09:22'),
(9, 1, 'Add Product', 27, 10, '2017-09-18 13:59:25'),
(10, 1, 'Update quantity', 27, 20, '2017-09-18 14:04:32'),
(11, 1, 'Update Quantity', 12, 50, '2021-08-16 12:57:23'),
(12, 2, 'Update Quantity', 17, 50, '2021-08-16 13:09:29'),
(13, 2, 'Update Quantity', 18, 50, '2021-08-16 13:10:03'),
(14, 2, 'Update Quantity', 19, 50, '2021-08-16 13:10:39'),
(15, 2, 'Update Quantity', 22, 50, '2021-08-16 13:11:13'),
(16, 2, 'Update Quantity', 21, 500, '2021-08-16 13:11:58'),
(17, 2, 'Update Quantity', 20, 500, '2021-08-16 13:12:56'),
(18, 2, 'Update Quantity', 5, 500, '2021-08-16 13:13:31'),
(19, 2, 'Update Quantity', 8, 500, '2021-08-16 13:13:57'),
(20, 2, 'Update Quantity', 16, 500, '2021-08-16 13:14:37'),
(21, 2, 'Update Quantity', 6, 500, '2021-08-16 13:15:09'),
(22, 2, 'Update Quantity', 2, 500, '2021-08-16 13:17:48'),
(23, 2, 'Update Quantity', 10, 500, '2021-08-16 13:18:21'),
(24, 2, 'Update Quantity', 11, 500, '2021-08-16 13:18:56'),
(25, 2, 'Update Quantity', 13, 500, '2021-08-16 13:19:30'),
(26, 2, 'Update Quantity', 14, 500, '2021-08-16 13:20:01'),
(27, 2, 'Update Quantity', 9, 500, '2021-08-16 13:20:41'),
(28, 2, 'Update Quantity', 15, 500, '2021-08-16 13:21:23'),
(29, 1, 'Add Product', 28, 9999, '2021-08-16 15:53:16'),
(30, 4, 'Add Product', 29, 1, '2021-10-14 23:39:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `product_price` double NOT NULL,
  `product_qty` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `supplierid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`productid`, `categoryid`, `product_name`, `product_price`, `product_qty`, `photo`, `supplierid`) VALUES
(2, 2, 'POLTRONA ENMORE TELA GRIS', 400, 500, 'upload/POLTRONA-ENMORE-TELA-GRIS-1-3507_1629137868.jpg', 0),
(5, 3, 'MESA CENTRO BARUTHER', 600, 500, 'upload/MESA-CENTRO-BARUTHER-1-3464_1629137611.jpg', 0),
(6, 3, 'MESA OTTOMAN WINSLOW TAPIZADA CUERO', 449.99, 500, 'upload/MESA-OTTOMAN-WINSLOW-TAPIZADA-CUERO-Stone-1_1629137709.jpg', 0),
(8, 3, 'Mesa Centro Marzio', 549.99, 500, 'upload/Mesa-Centro-Marzio-1-2227_1629138124.jpg', 0),
(9, 2, 'Silla Cuero Split vory', 599.99, 500, 'upload/Silla-A-550-Cuero-Split-Ivory-1-476_1629138041.jpg', 0),
(10, 2, 'POLTRONA GIARDINI TELA Silver', 599.99, 500, 'upload/POLTRONA-GIARDINI-TELA-Silver-1-3474_1629137900.jpg', 0),
(11, 2, 'POLTRONA IMBOS TELA Berenjena', 489.98, 500, 'upload/POLTRONA-IMBOS-TELA-Berenjena-10-3435_1629137936.jpg', 0),
(12, 1, 'MICROSOFT Surface Pro 4 & Typecover - 128 GB', 1500, 50, 'upload/Brentwood-Terciopelo-Taupe-3_1629137290.jpg', 0),
(13, 2, 'POLTRONA SENECA TELA BEIGE', 799, 500, 'upload/POLTRONA-SENECA-TELA-BEIGE-1-3442_1629137970.jpg', 0),
(14, 2, 'POLTRONA TIMBER CUERO Stone', 698, 500, 'upload/POLTRONA-TIMBER-CUERO-Stone-1-3461_1629137999.jpg', 0),
(15, 2, 'Sillon Normando Tela Legiado', 689, 500, 'upload/Sillon-Normando-Tela-Legiado-1-2934_1629138083.jpg', 0),
(16, 3, 'Mesa-de-Centro-Anna-Cafe-1-294', 700, 500, 'upload/Mesa-de-Centro-Anna-Cafe-1-294_1629137675.jpg', 0),
(17, 1, 'Dresdener lado derecho tela gris ', 2000, 50, 'upload/DRESDENER-LADO-DERECHO-TELA-Gris-5_1629137368.jpg', 0),
(18, 1, 'James Derecho Tela Grafito', 2500, 50, 'upload/James-Derecho-Tela-Grafito-4_1629137403.jpg', 0),
(19, 1, 'Tela gris perla', 2700, 50, 'upload/Tela-Gris-Perla-1_1629137439.jpg', 0),
(20, 3, 'MESA ARRIMO LANCASTER', 500, 500, 'upload/MESA-ARRIMO-LANCASTER-1-3455_1629137576.jpg', 0),
(21, 3, 'ESCRITORIO WINNET', 330, 500, 'upload/ESCRITORIO-WINNET-1-3466_1629137516.jpg', 0),
(22, 1, 'Westwood Derecho Cuero', 3000, 50, 'upload/Westwood-Derecho-Cuero-2_1629137472.jpg', 0),
(28, 1, 'fghfghfghfg', 1000, 9999, 'upload/saga anulacion_1629147196.png', 4),
(29, 2, 'desktop chair', 123, 1, 'upload/DESKTOP-CHAIR_1634272766.jpg', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `salesid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `sales_total` double NOT NULL,
  `sales_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`salesid`, `userid`, `sales_total`, `sales_date`) VALUES
(1, 2, 34, '2017-09-16 16:23:38'),
(2, 2, 18, '2017-09-16 16:25:28'),
(3, 2, 6, '2017-09-16 16:27:31'),
(4, 2, 1014244, '2017-09-16 16:44:01'),
(5, 2, 9588, '2017-09-18 09:06:29'),
(6, 2, 88779, '2017-09-18 09:08:42'),
(7, 2, 15579, '2017-09-18 09:09:34'),
(8, 2, 112361, '2017-09-18 09:32:00'),
(9, 2, 7990, '2017-09-18 09:34:29'),
(10, 2, 18370, '2017-09-18 11:09:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales_detail`
--

CREATE TABLE `sales_detail` (
  `sales_detailid` int(11) NOT NULL,
  `salesid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `sales_qty` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sales_detail`
--

INSERT INTO `sales_detail` (`sales_detailid`, `salesid`, `productid`, `sales_qty`) VALUES
(1, 2, 1, 12),
(2, 2, 2, 10),
(3, 3, 3, 11),
(4, 4, 2, 50),
(5, 4, 1, 106),
(6, 4, 5, 1000),
(7, 5, 2, 12),
(8, 6, 5, 101),
(9, 7, 1, 10),
(10, 7, 3, 11),
(11, 8, 4, 10),
(12, 8, 20, 10),
(13, 8, 1, 99),
(14, 8, 2, 20),
(15, 9, 2, 10),
(16, 10, 2, 10),
(17, 10, 3, 12),
(18, 10, 4, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `supcat`
--

CREATE TABLE `supcat` (
  `id_cat` int(100) NOT NULL,
  `name_cat` varchar(250) NOT NULL,
  `description_cat` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `supplier`
--

CREATE TABLE `supplier` (
  `userid` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `company_address` varchar(150) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `Recibo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `supplier`
--

INSERT INTO `supplier` (`userid`, `company_name`, `company_address`, `contact`, `Recibo`) VALUES
(4, 'Dell Computer Corporation', 'One Dell WayRound Rock, Texas 78682', '1-800-WWW-DELL', 'RC001');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `supstock`
--

CREATE TABLE `supstock` (
  `id_stock` int(100) NOT NULL,
  `id_prod` varchar(250) NOT NULL,
  `name_prod` varchar(250) NOT NULL,
  `descripcion_prod` varchar(250) NOT NULL,
  `cantidad_prod` varchar(250) NOT NULL,
  `precio_prod` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `access` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `access`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 2),
(4, 'supplier', '99b0e8da24e29e4ccb5d7d76e677c2ac', 3),
(10, 'diego', '078c007bd92ddec308ae2f5115c1775d', 2),
(11, 'user20plop', '202cb962ac59075b964b07152d234b70', 2),
(12, 'CarlosV', 'argos', 1),
(13, 'Luis20', 'f1b8d02d948655c1d886d2ce4dd26de6', 2),
(14, 'Carlos', '827ccb0eea8a706c4c34a16891f84e7b', 5),
(15, 'Carlos Jair', '32c18cf70e34c2f7bf01739915cdb273', 5),
(16, 'Luis300', '502ff82f7f1f8218dd41201fe4353687', 5),
(17, 'Peter10', '68eaa450f930d9cb2541a6a85ef2b64d', 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indices de la tabla `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`userid`);

--
-- Indices de la tabla `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventoryid`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`salesid`);

--
-- Indices de la tabla `sales_detail`
--
ALTER TABLE `sales_detail`
  ADD PRIMARY KEY (`sales_detailid`);

--
-- Indices de la tabla `supcat`
--
ALTER TABLE `supcat`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indices de la tabla `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`userid`);

--
-- Indices de la tabla `supstock`
--
ALTER TABLE `supstock`
  ADD PRIMARY KEY (`id_stock`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `salesid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `sales_detail`
--
ALTER TABLE `sales_detail`
  MODIFY `sales_detailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
