-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Wrz 2022, 09:55
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
-- Baza danych: `biblioteka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `czytelnicy`
--

CREATE TABLE `czytelnicy` (
  `id_czyt` int(11) NOT NULL,
  `nazwisko` varchar(70) DEFAULT NULL,
  `imie` varchar(40) DEFAULT NULL,
  `adres` varchar(100) DEFAULT NULL,
  `pesel` int(11) DEFAULT NULL,
  `uwagi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `czytelnicy`
--

INSERT INTO `czytelnicy` (`id_czyt`, `nazwisko`, `imie`, `adres`, `pesel`, `uwagi`) VALUES
(1, 'Kowalski', 'Mariusz', 'Wierzbowa 7', 2147483647, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dzialy`
--

CREATE TABLE `dzialy` (
  `dzial` varchar(50) NOT NULL,
  `opis` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `dzialy`
--

INSERT INTO `dzialy` (`dzial`, `opis`) VALUES
('kryminały', 'tutaj znajdują się kryminały!');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `egzemplarze`
--

CREATE TABLE `egzemplarze` (
  `sygnatura` int(11) NOT NULL,
  `ksiazka` int(11) DEFAULT NULL,
  `uwagi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `egzemplarze`
--

INSERT INTO `egzemplarze` (`sygnatura`, `ksiazka`, `uwagi`) VALUES
(21, 1, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazka`
--

CREATE TABLE `ksiazka` (
  `ksiazka` int(11) NOT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `tytul` varchar(100) DEFAULT NULL,
  `wydawnictwo` varchar(100) DEFAULT NULL,
  `dzial` varchar(50) DEFAULT NULL,
  `isbn` int(13) DEFAULT NULL,
  `uwagi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `ksiazka`
--

INSERT INTO `ksiazka` (`ksiazka`, `autor`, `tytul`, `wydawnictwo`, `dzial`, `isbn`, `uwagi`) VALUES
(1, 'Remigiusz Mróz', 'Nie ufaj mu', 'Czwarta Strona', 'kryminały', 12, 'Minął rok, od kiedy życie Iny Kobryn wywróciło się do góry nogami. Kiedy wreszcie jest gotowa ruszyć dalej i zostawić za sobą trudne przeżycia, poznaje mężczyznę, na którego czekała.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `liczba_wyp`
--

CREATE TABLE `liczba_wyp` (
  `id_czyt` int(11) DEFAULT NULL,
  `liczba` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `liczba_wyp`
--

INSERT INTO `liczba_wyp` (`id_czyt`, `liczba`) VALUES
(1, 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `maile`
--

CREATE TABLE `maile` (
  `id_czyt` int(11) DEFAULT NULL,
  `mail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `maile`
--

INSERT INTO `maile` (`id_czyt`, `mail`) VALUES
(1, 'mariusz.kowalski@gmail.com');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `telefony`
--

CREATE TABLE `telefony` (
  `id_czyt` int(11) DEFAULT NULL,
  `nr_tel` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `telefony`
--

INSERT INTO `telefony` (`id_czyt`, `nr_tel`) VALUES
(1, 111222333);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypozyczenia`
--

CREATE TABLE `wypozyczenia` (
  `id_wyp` int(11) DEFAULT NULL,
  `id_czyt` int(11) DEFAULT NULL,
  `sygnatura` int(11) DEFAULT NULL,
  `data_wyp` date DEFAULT NULL,
  `uwagi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `wypozyczenia`
--

INSERT INTO `wypozyczenia` (`id_wyp`, `id_czyt`, `sygnatura`, `data_wyp`, `uwagi`) VALUES
(2, 1, 21, '2022-09-02', 'okładka zniszczona');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `czytelnicy`
--
ALTER TABLE `czytelnicy`
  ADD PRIMARY KEY (`id_czyt`);

--
-- Indeksy dla tabeli `dzialy`
--
ALTER TABLE `dzialy`
  ADD PRIMARY KEY (`dzial`);

--
-- Indeksy dla tabeli `egzemplarze`
--
ALTER TABLE `egzemplarze`
  ADD PRIMARY KEY (`sygnatura`),
  ADD KEY `ksiazka` (`ksiazka`);

--
-- Indeksy dla tabeli `ksiazka`
--
ALTER TABLE `ksiazka`
  ADD PRIMARY KEY (`ksiazka`),
  ADD KEY `dzial` (`dzial`);

--
-- Indeksy dla tabeli `liczba_wyp`
--
ALTER TABLE `liczba_wyp`
  ADD KEY `id_czyt` (`id_czyt`);

--
-- Indeksy dla tabeli `maile`
--
ALTER TABLE `maile`
  ADD PRIMARY KEY (`mail`),
  ADD KEY `id_czyt` (`id_czyt`);

--
-- Indeksy dla tabeli `telefony`
--
ALTER TABLE `telefony`
  ADD PRIMARY KEY (`nr_tel`),
  ADD KEY `id_czyt` (`id_czyt`);

--
-- Indeksy dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD KEY `id_czyt` (`id_czyt`),
  ADD KEY `sygnatura` (`sygnatura`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `egzemplarze`
--
ALTER TABLE `egzemplarze`
  ADD CONSTRAINT `egzemplarze_ibfk_1` FOREIGN KEY (`ksiazka`) REFERENCES `ksiazka` (`ksiazka`);

--
-- Ograniczenia dla tabeli `ksiazka`
--
ALTER TABLE `ksiazka`
  ADD CONSTRAINT `ksiazka_ibfk_1` FOREIGN KEY (`dzial`) REFERENCES `dzialy` (`dzial`);

--
-- Ograniczenia dla tabeli `liczba_wyp`
--
ALTER TABLE `liczba_wyp`
  ADD CONSTRAINT `liczba_wyp_ibfk_1` FOREIGN KEY (`id_czyt`) REFERENCES `czytelnicy` (`id_czyt`);

--
-- Ograniczenia dla tabeli `maile`
--
ALTER TABLE `maile`
  ADD CONSTRAINT `maile_ibfk_1` FOREIGN KEY (`id_czyt`) REFERENCES `czytelnicy` (`id_czyt`);

--
-- Ograniczenia dla tabeli `telefony`
--
ALTER TABLE `telefony`
  ADD CONSTRAINT `telefony_ibfk_1` FOREIGN KEY (`id_czyt`) REFERENCES `czytelnicy` (`id_czyt`);

--
-- Ograniczenia dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD CONSTRAINT `wypozyczenia_ibfk_1` FOREIGN KEY (`id_czyt`) REFERENCES `czytelnicy` (`id_czyt`),
  ADD CONSTRAINT `wypozyczenia_ibfk_2` FOREIGN KEY (`sygnatura`) REFERENCES `egzemplarze` (`sygnatura`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
