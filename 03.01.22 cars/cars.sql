-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Sty 2023, 09:19
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `cars_l_stepien`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `id_klienta` int(11) NOT NULL,
  `nazwisko` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `imie` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `kraj` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `pesel` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `miasto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `Ulica` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `kod_pocztowy` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `telefon` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`id_klienta`, `nazwisko`, `imie`, `kraj`, `pesel`, `miasto`, `Ulica`, `kod_pocztowy`, `telefon`) VALUES
(1, 'Kowalski', 'Jan', 'Polska', '12345678965', 'Łódź', 'Wesoła 3/1', '95-789', '897564231'),
(2, 'Smith', 'John', 'USA', '92945628565', 'New Jork', 'Tree Street 98/345', '95-789', '867534239'),
(3, 'Ggdflkjs', 'Hew', 'Uganda', '82342678565', 'FSDQ', 'KEQQ 5/12', '98-786', '897545421');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samochody`
--

CREATE TABLE `samochody` (
  `nr_rejestracyjny` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `marka` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `rok_produkcji` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `pojemnosc` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `rodzaj_paliwa` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `moc` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `samochody`
--

INSERT INTO `samochody` (`nr_rejestracyjny`, `marka`, `model`, `rok_produkcji`, `pojemnosc`, `rodzaj_paliwa`, `moc`) VALUES
('GQ 45612', 'AUDI', 'A8', '2022', '5.5', 'Benzyna', 502),
('HGW 4569', 'BMW', 'M8', '2015', '4.2', 'Benzyna', 652),
('TY 78956', 'Land Rover', 'Defender', NULL, '6.7', 'LPG', 201);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `szczegoly_zaplaty`
--

CREATE TABLE `szczegoly_zaplaty` (
  `id_zaplaty` int(11) NOT NULL,
  `typ_samochodu` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `cena_za_dobe` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `szczegoly_zaplaty`
--

INSERT INTO `szczegoly_zaplaty` (`id_zaplaty`, `typ_samochodu`, `cena_za_dobe`) VALUES
(1, 'Coupe', '1500.00'),
(2, 'SUV', '150.00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id_zamowienia` int(11) NOT NULL,
  `id_klienta` int(11) DEFAULT NULL,
  `id_zaplaty` int(11) DEFAULT NULL,
  `data_wyp` date DEFAULT NULL,
  `data_oddania` date DEFAULT NULL,
  `nr_rejestracyjny` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id_zamowienia`, `id_klienta`, `id_zaplaty`, `data_wyp`, `data_oddania`, `nr_rejestracyjny`) VALUES
(1, 2, 1, '2023-05-10', '2023-08-19', 'HGW 4569'),
(2, 1, 2, '2023-01-08', '2023-01-21', 'TY 78956');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`id_klienta`);

--
-- Indeksy dla tabeli `samochody`
--
ALTER TABLE `samochody`
  ADD PRIMARY KEY (`nr_rejestracyjny`);

--
-- Indeksy dla tabeli `szczegoly_zaplaty`
--
ALTER TABLE `szczegoly_zaplaty`
  ADD PRIMARY KEY (`id_zaplaty`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id_zamowienia`),
  ADD KEY `id_klienta` (`id_klienta`),
  ADD KEY `id_zaplaty` (`id_zaplaty`),
  ADD KEY `nr_rejestracyjny` (`nr_rejestracyjny`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD CONSTRAINT `zamowienia_ibfk_1` FOREIGN KEY (`id_klienta`) REFERENCES `klienci` (`id_klienta`),
  ADD CONSTRAINT `zamowienia_ibfk_2` FOREIGN KEY (`id_zaplaty`) REFERENCES `szczegoly_zaplaty` (`id_zaplaty`),
  ADD CONSTRAINT `zamowienia_ibfk_3` FOREIGN KEY (`nr_rejestracyjny`) REFERENCES `samochody` (`nr_rejestracyjny`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
