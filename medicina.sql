-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 05, 2024 alle 14:55
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medicina`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`nome`, `cognome`, `email`, `password`) VALUES
('prova', 'prova', '5234@gmail.com', '$2a$10$wd2.Rtl5jK1SO7Oz03ORw.g4TQbsJBHAU5mhr0syNdoQvYkg9nULW'),
('adasd', 'asdas', 'dasdad@gmail.com', '$2a$10$l/gTCpjpXzKFB0rM9aPkq.fUSvr4gz1I6aKig7KT3hDUpLB9PNMBO'),
('prova99', 'prova99', 'prova99@gmail.com', '$2a$10$9ZMZdM7cKzcZX64mzFb11u8xZaadBkd/URofPBk08mukUkiM2enxy'),
('prova', 'prova', 'prova@gmail.com', '$2a$10$9uOqU6gR/iALlnrnVDhRpul3lfIp/swe6pMqeBCy69K0L3Qw.8312');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
