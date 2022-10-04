-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 04 Paź 2022, 08:06
-- Wersja serwera: 10.4.13-MariaDB
-- Wersja PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `baza2e`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `agenci`
--

CREATE TABLE `agenci` (
  `id` decimal(4,0) NOT NULL,
  `imie` varchar(15) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(20) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `osoby`
--

CREATE TABLE `osoby` (
  `id` decimal(5,0) NOT NULL,
  `nazwisko` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `imie` varchar(15) COLLATE utf8_polish_ci NOT NULL,
  `miasto` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `skladki`
--

CREATE TABLE `skladki` (
  `ub_polisa` decimal(5,0) NOT NULL,
  `miesiac` date NOT NULL,
  `termin_platnosci` date NOT NULL,
  `data_oplacenia` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ubezpieczenia`
--

CREATE TABLE `ubezpieczenia` (
  `polisa` decimal(5,0) NOT NULL,
  `data_od` date NOT NULL,
  `data_do` date NOT NULL CHECK (`data_do` > `data_od`),
  `wariant` varchar(1) COLLATE utf8_polish_ci NOT NULL,
  `skladka` decimal(4,0) NOT NULL,
  `ag_id` decimal(4,0) NOT NULL,
  `os_id` decimal(5,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `agenci`
--
ALTER TABLE `agenci`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `osoby`
--
ALTER TABLE `osoby`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `skladki`
--
ALTER TABLE `skladki`
  ADD PRIMARY KEY (`ub_polisa`);

--
-- Indeksy dla tabeli `ubezpieczenia`
--
ALTER TABLE `ubezpieczenia`
  ADD PRIMARY KEY (`polisa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
