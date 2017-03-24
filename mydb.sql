-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 24 mrt 2017 om 10:47
-- Serverversie: 10.1.21-MariaDB
-- PHP-versie: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `auteur`
--

CREATE TABLE `auteur` (
  `Id` int(11) NOT NULL,
  `voornaam` varchar(45) NOT NULL,
  `achternaam` varchar(45) NOT NULL,
  `geboortejaar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `auteur`
--

INSERT INTO `auteur` (`Id`, `voornaam`, `achternaam`, `geboortejaar`) VALUES
(3, 'Julius', 'Verne', '1967-01-24'),
(4, 'Agatha', 'Christie', '1985-01-10');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `boek`
--

CREATE TABLE `boek` (
  `id` int(11) NOT NULL,
  `ISBN nummer` int(11) NOT NULL,
  `Auteur_Id` int(11) NOT NULL,
  `Uitgever_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `boek`
--

INSERT INTO `boek` (`id`, `ISBN nummer`, `Auteur_Id`, `Uitgever_id`) VALUES
(1, 6168914, 4, 1),
(2, 90621390, 3, 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `taal`
--

CREATE TABLE `taal` (
  `id` int(11) NOT NULL,
  `taal` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `taal`
--

INSERT INTO `taal` (`id`, `taal`) VALUES
(1, 'NL'),
(4, 'EN');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `taal_boek`
--

CREATE TABLE `taal_boek` (
  `id` int(11) NOT NULL,
  `aantal paginas` int(11) NOT NULL,
  `Boektitel` varchar(45) NOT NULL,
  `Boek_id` int(11) NOT NULL,
  `taal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `taal_boek`
--

INSERT INTO `taal_boek` (`id`, `aantal paginas`, `Boektitel`, `Boek_id`, `taal_id`) VALUES
(1, 425, 'Het eenzame Eiland', 2, 1),
(2, 420, 'A Pocketful of Rye', 1, 4);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `uitgever`
--

CREATE TABLE `uitgever` (
  `id` int(11) NOT NULL,
  `code` varchar(45) NOT NULL,
  `naam` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `uitgever`
--

INSERT INTO `uitgever` (`id`, `code`, `naam`) VALUES
(1, 'FC', 'Fontana Collins'),
(3, 'SAW', 'Sijthoff A.W');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`Id`);

--
-- Indexen voor tabel `boek`
--
ALTER TABLE `boek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Boek_Auteur_idx` (`Auteur_Id`),
  ADD KEY `fk_Boek_Uitgever1_idx` (`Uitgever_id`);

--
-- Indexen voor tabel `taal`
--
ALTER TABLE `taal`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `taal_boek`
--
ALTER TABLE `taal_boek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_taal_boek_Boek1_idx` (`Boek_id`),
  ADD KEY `fk_taal_boek_taal1_idx` (`taal_id`);

--
-- Indexen voor tabel `uitgever`
--
ALTER TABLE `uitgever`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `auteur`
--
ALTER TABLE `auteur`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT voor een tabel `boek`
--
ALTER TABLE `boek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `taal`
--
ALTER TABLE `taal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT voor een tabel `taal_boek`
--
ALTER TABLE `taal_boek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `uitgever`
--
ALTER TABLE `uitgever`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `boek`
--
ALTER TABLE `boek`
  ADD CONSTRAINT `fk_Boek_Auteur` FOREIGN KEY (`Auteur_Id`) REFERENCES `auteur` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Boek_Uitgever1` FOREIGN KEY (`Uitgever_id`) REFERENCES `uitgever` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Beperkingen voor tabel `taal_boek`
--
ALTER TABLE `taal_boek`
  ADD CONSTRAINT `fk_taal_boek_Boek1` FOREIGN KEY (`Boek_id`) REFERENCES `boek` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_taal_boek_taal1` FOREIGN KEY (`taal_id`) REFERENCES `taal` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
