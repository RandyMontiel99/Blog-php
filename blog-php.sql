-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-07-2020 a las 01:21:23
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog-php`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `id_admin` int(11) NOT NULL,
  `nombre_admin` text NOT NULL,
  `correo_admin` text NOT NULL,
  `foto_admin` text NOT NULL,
  `fecha_admin` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`id_admin`, `nombre_admin`, `correo_admin`, `foto_admin`, `fecha_admin`) VALUES
(1, 'Juanito Travel', 'juanitotravel@blogviajero.com', 'vistas/img/admin.jpg', '2019-11-08 01:57:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncios`
--

CREATE TABLE `anuncios` (
  `id_anuncio` int(11) NOT NULL,
  `pagina_anuncio` text NOT NULL,
  `codigo_anuncio` text NOT NULL,
  `fecha_anuncio` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `anuncios`
--

INSERT INTO `anuncios` (`id_anuncio`, `pagina_anuncio`, `codigo_anuncio`, `fecha_anuncio`) VALUES
(1, 'inicio', '<div class=\"my-4\">\r\n					\r\n					<img src=\"http://localhost/blog-php/vistas/img/ad01.jpg\" class=\"img-fluid\">\r\n\r\n</div>', '2019-11-08 05:35:58'),
(2, 'inicio', '<div class=\"my-4\">\r\n					\r\n					<img src=\"http://localhost/blog-php/vistas/img/ad02.jpg\" class=\"img-fluid\">\r\n\r\n				</div>	', '2019-11-08 05:35:58'),
(3, 'inicio', '<div class=\"my-4\">\r\n					\r\n					<img src=\"http://localhost/blog-php/vistas/img/ad05.png\" class=\"img-fluid\">\r\n\r\n				</div>	', '2019-11-08 05:35:58'),
(4, 'categorias', '<div class=\"mb-4\">\r\n					\r\n					<img src=\"http://localhost/blog-php/vistas/img/ad03.png\" class=\"img-fluid\">\r\n\r\n				</div>', '2019-11-08 05:41:35'),
(5, 'categorias', '<div class=\"my-4\">\r\n					\r\n					<img src=\"http://localhost/blog-php/vistas/img/ad02.jpg\" class=\"img-fluid\">\r\n\r\n				</div>	', '2019-11-08 05:41:35'),
(6, 'categorias', '<div class=\"my-4\">\r\n					\r\n					<img src=\"http://localhost/blog-php/vistas/img/ad05.png\" class=\"img-fluid\">\r\n\r\n				</div>	', '2019-11-08 05:41:35'),
(7, 'articulos', '\r\n				<div class=\"mb-4\">\r\n					\r\n					<img src=\"http://localhost/blog-php/vistas/img/ad03.png\" class=\"img-fluid\">\r\n\r\n				</div>', '2019-11-08 05:43:50'),
(8, 'articulos', '<div class=\"my-4\">\r\n					\r\n					<img src=\"http://localhost/blog-php/vistas/img/ad02.jpg\" class=\"img-fluid\">\r\n\r\n				</div>	', '2019-11-08 05:43:50'),
(9, 'articulos', '<div class=\"my-4\">\r\n					\r\n					<img src=\"http://localhost/blog-php/vistas/img/ad06.png\" class=\"img-fluid\">\r\n\r\n				</div>	\r\n				', '2019-11-08 05:43:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id_articulo` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `portada_articulo` text NOT NULL,
  `titulo_articulo` text NOT NULL,
  `descripcion_articulo` text NOT NULL,
  `p_claves_articulo` text NOT NULL,
  `ruta_articulo` text NOT NULL,
  `contenido_articulo` text NOT NULL,
  `vistas_articulo` int(11) NOT NULL,
  `fecha_articulo` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id_articulo`, `id_cat`, `portada_articulo`, `titulo_articulo`, `descripcion_articulo`, `p_claves_articulo`, `ruta_articulo`, `contenido_articulo`, `vistas_articulo`, `fecha_articulo`) VALUES
(28, 4, 'vistas/img/articulos/articulo-08/articulo08.png', 'Type something here lorem 28', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias aliquid laboriosam suscipit magnam distinctio nisi eaque expedita beatae neque nobis dolores corporis laudantium quo voluptatum facilis', '[\"suramerica\", \"colombia\", \"peru\", \"argentina\", \"chile\", \"brasil\", \"ecuador\", \"venezuela\", \"paraguay\", \"uruguay\", \"bolivia\"]', 'type-something-here-lorem-28', '<img src=\"http://localhost/blog-php/vistas/img/articulo.png\" alt=\"Lorem ipsum dolor sit amet\" class=\"img-fluid my-lg-3\">\n\n					<p class=\"textoArticulo my-3\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias aliquid laboriosam suscipit magnam distinctio nisi eaque expedita beatae neque nobis dolores corporis laudantium quo voluptatum facilis, aliquam sed deleniti delectus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae asperiores laborum facere est eos in optio suscipit, consequatur animi placeat adipisci, sunt. Unde distinctio odit, facilis quos eveniet et culpa. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, minus distinctio assumenda porro fugit voluptates officiis atque? Voluptas, soluta eius inventore aspernatur quasi, earum iste maiores porro ipsam, expedita minus.</p>\n\n					<p class=\"textoArticulo my-3\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias aliquid laboriosam suscipit magnam distinctio nisi eaque expedita beatae neque nobis dolores corporis laudantium quo voluptatum facilis, aliquam sed deleniti delectus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae asperiores laborum facere est eos in optio suscipit, consequatur animi placeat adipisci, sunt. Unde distinctio odit, facilis quos eveniet et culpa. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, minus distinctio assumenda porro fugit voluptates officiis atque? Voluptas, soluta eius inventore aspernatur quasi, earum iste maiores porro ipsam, expedita minus.</p>\n\n					<p class=\"textoArticulo my-3\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias aliquid laboriosam suscipit magnam distinctio nisi eaque expedita beatae neque nobis dolores corporis laudantium quo voluptatum facilis, aliquam sed deleniti delectus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae asperiores laborum facere est eos in optio suscipit, consequatur animi placeat adipisci, sunt. Unde distinctio odit, facilis quos eveniet et culpa. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, minus distinctio assumenda porro fugit voluptates officiis atque? Voluptas, soluta eius inventore aspernatur quasi, earum iste maiores porro ipsam, expedita minus.</p>', 2, '2020-07-04 23:55:50'),
(60, 6, 'vistas/img/articulos/articulo-10/articulo10.png', 'Type something here lorem 60', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias aliquid laboriosam suscipit magnam distinctio nisi eaque expedita beatae neque nobis dolores corporis laudantium quo voluptatum facilis', '[\"españa\",\"suramerica\", \"colombia\", \"peru\", \"argentina\", \"chile\", \"brasil\", \"ecuador\", \"venezuela\", \"paraguay\", \"uruguay\", \"bolivia\"]', 'type-something-here-lorem-60', '<img src=\"http://localhost/blog-php/vistas/img/articulo.png\" alt=\"Lorem ipsum dolor sit amet\" class=\"img-fluid my-lg-3\">\n\n					<p class=\"textoArticulo my-3\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias aliquid laboriosam suscipit magnam distinctio nisi eaque expedita beatae neque nobis dolores corporis laudantium quo voluptatum facilis, aliquam sed deleniti delectus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae asperiores laborum facere est eos in optio suscipit, consequatur animi placeat adipisci, sunt. Unde distinctio odit, facilis quos eveniet et culpa. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, minus distinctio assumenda porro fugit voluptates officiis atque? Voluptas, soluta eius inventore aspernatur quasi, earum iste maiores porro ipsam, expedita minus.</p>\n\n					<p class=\"textoArticulo my-3\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias aliquid laboriosam suscipit magnam distinctio nisi eaque expedita beatae neque nobis dolores corporis laudantium quo voluptatum facilis, aliquam sed deleniti delectus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae asperiores laborum facere est eos in optio suscipit, consequatur animi placeat adipisci, sunt. Unde distinctio odit, facilis quos eveniet et culpa. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, minus distinctio assumenda porro fugit voluptates officiis atque? Voluptas, soluta eius inventore aspernatur quasi, earum iste maiores porro ipsam, expedita minus.</p>\n\n					<p class=\"textoArticulo my-3\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias aliquid laboriosam suscipit magnam distinctio nisi eaque expedita beatae neque nobis dolores corporis laudantium quo voluptatum facilis, aliquam sed deleniti delectus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae asperiores laborum facere est eos in optio suscipit, consequatur animi placeat adipisci, sunt. Unde distinctio odit, facilis quos eveniet et culpa. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, minus distinctio assumenda porro fugit voluptates officiis atque? Voluptas, soluta eius inventore aspernatur quasi, earum iste maiores porro ipsam, expedita minus.</p>', 12, '2020-07-04 23:43:43'),
(61, 1, 'vistas/img/articulos/articulo-01/liverpool.jpg', 'El Liverpool gana su primera Liga en 30 años', 'El Liverpool de Jürgen Klopp ya forma parte de la historia de la Premier League. Les ha costado 30 años y una pandemia mundial volver a alzar un título liguero, pero gracias al favor del Chelsea ante el Manchester City, el Liverpool ya tiene en sus vitrinas de Anfield su primera Premier League.', '[\"liverpool\", \"Campeon\"]', 'liverpool-gana-premier-liague', '<img src=\"http://localhost/blog-php/vistas/img/articulos/articulo-01/liverpool.jpg\" alt=\"Lorem ipsum dolor sit amet\" class=\"img-fluid my-lg-3\">\r\n\r\n					<p class=\"textoArticulo my-3\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias aliquid laboriosam suscipit magnam distinctio nisi eaque expedita beatae neque nobis dolores corporis laudantium quo voluptatum facilis, aliquam sed deleniti delectus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae asperiores laborum facere est eos in optio suscipit, consequatur animi placeat adipisci, sunt. Unde distinctio odit, facilis quos eveniet et culpa. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, minus distinctio assumenda porro fugit voluptates officiis atque? Voluptas, soluta eius inventore aspernatur quasi, earum iste maiores porro ipsam, expedita minus.</p>\r\n\r\n					<p class=\"textoArticulo my-3\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias aliquid laboriosam suscipit magnam distinctio nisi eaque expedita beatae neque nobis dolores corporis laudantium quo voluptatum facilis, aliquam sed deleniti delectus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae asperiores laborum facere est eos in optio suscipit, consequatur animi placeat adipisci, sunt. Unde distinctio odit, facilis quos eveniet et culpa. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, minus distinctio assumenda porro fugit voluptates officiis atque? Voluptas, soluta eius inventore aspernatur quasi, earum iste maiores porro ipsam, expedita minus.</p>\r\n\r\n					<p class=\"textoArticulo my-3\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias aliquid laboriosam suscipit magnam distinctio nisi eaque expedita beatae neque nobis dolores corporis laudantium quo voluptatum facilis, aliquam sed deleniti delectus. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae asperiores laborum facere est eos in optio suscipit, consequatur animi placeat adipisci, sunt. Unde distinctio odit, facilis quos eveniet et culpa. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, minus distinctio assumenda porro fugit voluptates officiis atque? Voluptas, soluta eius inventore aspernatur quasi, earum iste maiores porro ipsam, expedita minus.</p>', 19, '2020-07-06 21:40:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(11) NOT NULL,
  `pagina_banner` text NOT NULL,
  `titulo_banner` text DEFAULT NULL,
  `descripcion_banner` text DEFAULT NULL,
  `img_banner` text NOT NULL,
  `fecha_banner` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`id_banner`, `pagina_banner`, `titulo_banner`, `descripcion_banner`, `img_banner`, `fecha_banner`) VALUES
(1, 'inicio', NULL, NULL, 'vistas/img/banner01.jpg', '2019-11-08 05:52:31'),
(2, 'inicio', NULL, NULL, 'vistas/img/banner02.jpg', '2019-11-08 05:52:31'),
(3, 'inicio', NULL, NULL, 'vistas/img/banner03.jpg', '2019-11-08 05:52:31'),
(4, 'inicio', NULL, NULL, 'vistas/img/banner04.jpg', '2019-11-08 05:52:31'),
(5, 'interno', 'Watch how we work', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit ea quidem', 'vistas/img/bannerGrande01.jpg', '2019-11-08 05:52:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `dominio` text NOT NULL,
  `titulo` text NOT NULL,
  `descripcion` text NOT NULL,
  `palabras_claves` text NOT NULL,
  `portada` text NOT NULL,
  `email` text NOT NULL,
  `logo` text NOT NULL,
  `icono` text NOT NULL,
  `redes_sociales` text NOT NULL,
  `sobre_mi` text NOT NULL,
  `sobre_mi_completo` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `blog`
--

INSERT INTO `blog` (`id`, `dominio`, `titulo`, `descripcion`, `palabras_claves`, `portada`, `email`, `logo`, `icono`, `redes_sociales`, `sobre_mi`, `sobre_mi_completo`, `fecha`) VALUES
(1, 'http://localhost/blog-php/', 'Blog del viajero', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vitae mollitia et animi beatae voluptates, sint exercitationem magni consequuntur ipsa, recusandae. Cumque, maxime, sequi. Id at quo, voluptatum eum voluptas. Dolores.', '[\"lorem\", \"ipsum\", \"dolor\", \"sit\", \"amet\"]', 'vistas/img/articulo01.png', 'contacto@blogdelviajero.com', 'vistas/img/logotipo-negativo.png', 'vistas/img/icono.jpg', '[\r\n{\"red\":\"facebook\",\"url\":\"https://www.facebook.com\", \"icono\":\"fab fa-facebook-f\", \"background\":\"#1475E0\"},\r\n{\"red\":\"instagram\",\"url\":\"https://www.instagram.com\", \"icono\":\"fab fa-instagram\", \"background\":\"#B18768\"},\r\n{\"red\":\"twitter\",\"url\":\"https://www.twitter.com\", \"icono\":\"fab fa-twitter\", \"background\":\"#00A6FF\"},\r\n{\"red\":\"youtube\",\"url\":\"https://www.youtube.com\", \"icono\":\"fab fa-youtube\", \"background\":\"#F95F62\"},\r\n{\"red\":\"snapchat\",\"url\":\"https://www.snapchat.com\", \"icono\":\"fab fa-snapchat-ghost\", \"background\":\"#FF9052\"}\r\n]', '<div class=\"sobreMi\">\r\n					\r\n					<h4><a href=\"http://localhost/blog-php/sobre-mi\">Sobre Mi</a></h4>\r\n\r\n					<img src=\"vistas/img/sobreMi.jpg\" alt=\"Lorem ipsum dolor sit amet\" class=\"img-fluid my-1\">\r\n\r\n					<p class=\"small\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rerum odio, eos architecto atque numquam alias laboriosam minima beatae consectetur.</p>\r\n\r\n				</div>', '<div> <h1>Sobre Mi</h1><img src=\"vistas/img/sobreMi.jpg\" alt=\"Lorem ipsum dolor sit amet\" class=\"img-fluid my-2\" width=\"100%\">  	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rerum odio, eos architecto atque numquam alias laboriosam minima beatae consectetur.  	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit culpa mollitia cupiditate natus iusto! Commodi odio ipsum modi nesciunt pariatur quod aut aliquid sint repellendus, deleniti, possimus, expedita qui ad.</p>  	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rerum odio, eos architecto atque numquam alias laboriosam minima beatae consectetur.  	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit culpa mollitia cupiditate natus iusto! Commodi odio ipsum modi nesciunt pariatur quod aut aliquid sint repellendus, deleniti, possimus, expedita qui ad.</p>  </div>', '2019-11-08 07:12:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `titulo_categoria` text NOT NULL,
  `descripcion_categoria` text NOT NULL,
  `p_claves_categoria` text NOT NULL,
  `ruta_categoria` text NOT NULL,
  `img_categoria` text NOT NULL,
  `fecha_categoria` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `titulo_categoria`, `descripcion_categoria`, `p_claves_categoria`, `ruta_categoria`, `img_categoria`, `fecha_categoria`) VALUES
(1, 'Champions', 'La Liga de Campeones de la UEFA', '[\r\n\"champions\", \r\n\"liverpool\", \r\n\"europa\"\r\n]', 'champions-league', 'vistas/img/categorias/champions.jpg', '2020-07-04 23:16:48'),
(2, 'Centroamérica', 'Mi viaje por Centroamérica', '[\"mexico\", \"honduras\", \"guatemala\", \"panama\", \"aruba\", \"republica dominicana\", \"el salvador\", \"cuba\" ]', 'centroamerica', 'vistas/img/categorias/centroamerica.jpg', '2019-11-08 01:53:47'),
(3, 'Norteamérica', 'Mi viaje por Norteamérica', '[\"estados unidos\", \"canada\", \"orlando\", \"florida\", \"cataratas del niagara\", \"las vegas\", \"hollywood\"]', 'norteamerica', 'vistas/img/categorias/norteamerica.jpg', '2019-11-08 01:53:44'),
(4, 'Europa', 'Mi viaje por Europa', '[\"espa?a\", \"italia\", \"grecia\", \"francia\", \"alemania\", \"croacia\", \"inglaterra\"]', 'europa', 'vistas/img/categorias/europa.jpg', '2019-11-08 01:52:58'),
(5, 'África', 'Mi viaje por África', '[\"egipto\", \"marruecos\", \"piramides\", \"surafrica\", \"madagascar\", \"safari\"]', 'africa', 'vistas/img/categorias/africa.jpg', '2019-11-08 01:53:40'),
(6, 'Asia', 'Mi viaje por Asia', '[\"japon\", \"china\", \"korea\", \"singapur\", \"rusia\"]', 'asia', 'vistas/img/categorias/asia.jpg', '2019-11-08 01:52:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opiniones`
--

CREATE TABLE `opiniones` (
  `id_opinion` int(11) NOT NULL,
  `id_art` int(11) NOT NULL,
  `nombre_opinion` text NOT NULL,
  `correo_opinion` text NOT NULL,
  `foto_opinion` text NOT NULL,
  `contenido_opinion` text NOT NULL,
  `id_adm` int(11) DEFAULT NULL,
  `respuesta_opinion` text DEFAULT NULL,
  `aprobacion_opinion` int(11) NOT NULL,
  `fecha_opinion` date NOT NULL,
  `fecha_respuesta` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `opiniones`
--

INSERT INTO `opiniones` (`id_opinion`, `id_art`, `nombre_opinion`, `correo_opinion`, `foto_opinion`, `contenido_opinion`, `id_adm`, `respuesta_opinion`, `aprobacion_opinion`, `fecha_opinion`, `fecha_respuesta`) VALUES
(1, 55, 'Carla Gómez ', 'carla@gmail.com', 'vistas/img/usuarios/user01.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto beatae, aut sint provident dolorem minus recusandae facere, ipsum magnam, nostrum enim. Error quasi quod ab consectetur explicabo consequuntur obcaecati suscipit!', 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto beatae, aut sint provident dolorem minus recusandae facere, ipsum magnam, nostrum enim. Error quasi quod ab consectetur explicabo consequuntur obcaecati suscipit!', 1, '2019-10-15', '2019-11-08 01:56:31'),
(2, 55, 'Guillermo del toro', 'guillermo@gmail.com', 'vistas/img/usuarios/default.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias aliquid laboriosam suscipit magnam distinctio nisi eaque expedita beatae neque nobis dolores corporis laudantium quo voluptatum facilis, aliquam sed deleniti delectus. Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 1, NULL, 1, '2019-10-16', '2019-11-08 01:56:50'),
(16, 55, 'Pedro Lopez', 'pedro@hotmail.com', 'vistas/img/usuarios/default.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias aliquid laboriosam suscipit magnam distinctio nisi eaque expedita beatae neque', 1, NULL, 0, '2019-11-07', '2019-11-08 02:28:26'),
(17, 55, 'Lucas Ruiz', 'lucas@gmail.com', 'vistas/img/usuarios/3408.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto beatae, aut sint provident dolorem minus recusandae facere', 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto beatae, aut sint provident dolorem minus recusandae facere, ipsum magnam, nostrum enim. Error quasi quod ab consectetur explicabo consequuntur obcaecati suscipit!', 1, '2019-11-07', '2019-11-08 02:48:26'),
(18, 55, 'Maria Jimenez', 'maria@gmail.com', 'vistas/img/usuarios/6478.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto beatae, aut sint provident dolorem minus recusandae facere, ipsum magnam, nostr', 1, NULL, 0, '2019-11-07', '2019-11-08 03:02:31');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `anuncios`
--
ALTER TABLE `anuncios`
  ADD PRIMARY KEY (`id_anuncio`);

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id_articulo`);

--
-- Indices de la tabla `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indices de la tabla `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `opiniones`
--
ALTER TABLE `opiniones`
  ADD PRIMARY KEY (`id_opinion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `anuncios`
--
ALTER TABLE `anuncios`
  MODIFY `id_anuncio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id_articulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `opiniones`
--
ALTER TABLE `opiniones`
  MODIFY `id_opinion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
