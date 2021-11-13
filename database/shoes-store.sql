CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Formal'),
(3, 'Slip-on'),
(4, 'Flat'),
(5, 'Heels'),
(6, 'Sneakers'),
(7, 'Wedges');

CREATE TABLE IF NOT EXISTS `shoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `price` varchar(20) NOT NULL,
  `picture` varchar(45) DEFAULT NULL,
  `size` varchar(4) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `comment` varchar(1500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_shoes_categories_idx` (`categories_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

INSERT INTO `shoes` (`id`, `name`, `categories_id`, `price`, `picture`, `size`, `stock`, `comment`) VALUES
(5, 'Tolliver Lieke Women', 4, '229000 ', '1fl.jpg', '38', 2, '-Â Flat shoes\r\n- Material: PUÂ leather\r\n- Warna biru\r\n- DetailÂ stitching\r\n- Aksen pita danÂ tassel'),
(6, 'Crocs Carlisa Flat', 4, '374500 ', '2fl.jpg', '38', 3, '- Flat shoes\r\n- MaterialÂ translucentÂ TPU\r\n- Kombinasi warnaÂ azure, custard\r\n- DetailÂ footbed\r\n- Classic molded closed toe\r\n- Non-marking outsole\r\n- Signature logo'),
(7, 'Audrey Flat Shoes', 4, '229000 ', '3fl.jpg', '38', 1, 'Nicholas Edison Audrey Flat Shoes Brown.Â Flat shoesÂ dengan sentuhan motifÂ snake skinÂ yang trendi. Desain simpel mudah dipadukan denganÂ outfitÂ pilihan.Â Effortless chic!\r\n\r\nFlat shoesÂ warna coklat dari bahan PUÂ synthetic.'),

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_admin` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;



ALTER TABLE `shoes`
  ADD CONSTRAINT `fk_shoes_categories` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;