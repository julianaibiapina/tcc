SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Banco de dados: `cakebase3`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `role`, `created`, `modified`) VALUES
(1, 'admin', '957efa2fc06378576c47c6852edfced7339de495', 'Administrador', 'julianibiapina@alu.ufc.br', 'admin', '2020-12-15 17:54:00', '2020-12-15 17:54:00');

-- --------------------------------------------------------

--
-- Table structure for table `sensors`
--

CREATE TABLE IF NOT EXISTS `sensors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`user_id`) REFERENCES users(id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dataset`
--

CREATE TABLE IF NOT EXISTS `dataset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sensor_id` int(11) NOT NULL,
  `value` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`sensor_id`) REFERENCES sensors(id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;