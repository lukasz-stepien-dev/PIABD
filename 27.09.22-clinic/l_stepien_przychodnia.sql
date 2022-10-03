-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 27 Wrz 2022, 09:30
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
-- Baza danych: `l_stepien_przychodnia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ogloszenie`
--

CREATE TABLE `ogloszenie` (
  `id_ogloszenie` int(4) NOT NULL,
  `id_pracownik` int(5) NOT NULL,
  `id_zdjecie` int(4) NOT NULL,
  `tytul` varchar(100) NOT NULL,
  `tresci` text NOT NULL,
  `data_dodania` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `ogloszenie`
--

INSERT INTO `ogloszenie` (`id_ogloszenie`, `id_pracownik`, `id_zdjecie`, `tytul`, `tresci`, `data_dodania`) VALUES
(1, 1, 1, '', 'Donec non mauris e', '2022-09-01');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pacjent`
--

CREATE TABLE `pacjent` (
  `id_pacjent` int(5) NOT NULL,
  `imie` varchar(200) NOT NULL,
  `nazwisko` varchar(200) NOT NULL,
  `plec` char(1) NOT NULL,
  `pesel` int(11) NOT NULL,
  `adres` varchar(200) NOT NULL,
  `miasto` varchar(200) NOT NULL,
  `kod_pocztowy` char(6) NOT NULL,
  `id_wojewodztwa` int(2) NOT NULL,
  `data_urodzenia` date NOT NULL,
  `telefon` char(9) NOT NULL,
  `email` text NOT NULL,
  `opis` text NOT NULL,
  `haslo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `pacjent`
--

INSERT INTO `pacjent` (`id_pacjent`, `imie`, `nazwisko`, `plec`, `pesel`, `adres`, `miasto`, `kod_pocztowy`, `id_wojewodztwa`, `data_urodzenia`, `telefon`, `email`, `opis`, `haslo`) VALUES
(1, 'Karolina', 'Nowak', 'K', 1174563212, 'egestas 09', 'Łowicz', '77-333', 1, '2003-09-11', '753214896', 'karolina@nowak.pl', 'Donec non mauris et ligula imperdiet egestas. Suspendisse porttitor felis eu velit tempor suscipit. Aliquam finibus euismod augue sit amet faucibus. Proin pretium, arcu quis tincidunt semper, quam leo iaculis velit, sit amet vehicula purus libero vel turpis. Integer vitae pharetra quam. Suspendisse ligula velit, hendrerit posuere magna varius, consectetur tincidunt est. Nulla tempor sed libero nec mattis. Donec nec tincidunt urna. Phasellus pharetra consequat dapibus.', '4321');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownik`
--

CREATE TABLE `pracownik` (
  `id_pracownik` int(5) NOT NULL,
  `imie` varchar(200) NOT NULL,
  `nazwisko` varchar(200) NOT NULL,
  `plec` char(1) NOT NULL,
  `pesel` char(11) NOT NULL,
  `adres` varchar(200) NOT NULL,
  `nr_konta_bankowego` char(26) NOT NULL,
  `miasto` varchar(200) NOT NULL,
  `kod_pocztowy` char(6) NOT NULL,
  `id_wojewodztwo` int(2) NOT NULL,
  `data_urodzienia` date NOT NULL,
  `telefon` char(9) NOT NULL,
  `email` text NOT NULL,
  `haslo` text NOT NULL,
  `data_rozpoczecia_pracy` date NOT NULL,
  `opis` text NOT NULL,
  `id_specjalizacja` int(2) NOT NULL,
  `id_stanowisko` int(3) NOT NULL,
  `pensja` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `pracownik`
--

INSERT INTO `pracownik` (`id_pracownik`, `imie`, `nazwisko`, `plec`, `pesel`, `adres`, `nr_konta_bankowego`, `miasto`, `kod_pocztowy`, `id_wojewodztwo`, `data_urodzienia`, `telefon`, `email`, `haslo`, `data_rozpoczecia_pracy`, `opis`, `id_specjalizacja`, `id_stanowisko`, `pensja`) VALUES
(1, 'Jan', 'Kowalski', 'M', '12345678911', 'Cras 66', '12345678912345678911123456', 'Łódź', '55-555', 1, '2012-06-07', '987654321', 'example@example', '1234', '2022-09-07', 'Ut congue, velit at bibendum imperdiet, ante nulla tristique dui, at lobortis sapien nisi vel ante. Nulla ultrices, nunc sit amet eleifend molestie, quam ante pellentesque urna, eget gravida tortor quam vitae tellus. In consectetur, velit a malesuada venenatis, libero elit elementum quam, gravida finibus erat justo aliquet sem. Vestibulum maximus neque non urna dictum tincidunt. Pellentesque vel convallis tortor, vel dapibus tortor. Suspendisse potenti. Nulla urna tellus, aliquet at tempus ut, gravida et diam.\r\n\r\n', 1, 1, 10000.00);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `specjalizacja`
--

CREATE TABLE `specjalizacja` (
  `id_specjalizacji` int(2) NOT NULL,
  `nazwa` varchar(60) NOT NULL,
  `opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `specjalizacja`
--

INSERT INTO `specjalizacja` (`id_specjalizacji`, `nazwa`, `opis`) VALUES
(1, 'Chirurg ', 'Donec fringilla libero id neque bibendum fermentum. Aenean nec erat vestibulum, ornare massa vel, pharetra lacus. Sed congue sollicitudin odio a vulputate. Proin sodales tristique ipsum. Donec sodales quis tellus interdum pharetra. Curabitur faucibus lorem vel elit facilisis, non iaculis purus congue. Suspendisse a quam eros.\r\n\r\n');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stanowisko`
--

CREATE TABLE `stanowisko` (
  `id_stanowisko` int(3) NOT NULL,
  `nazwa` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `stanowisko`
--

INSERT INTO `stanowisko` (`id_stanowisko`, `nazwa`) VALUES
(1, 'Ordynator');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `usluga`
--

CREATE TABLE `usluga` (
  `id_usluga` int(4) NOT NULL,
  `id_specjalizacja` int(2) NOT NULL,
  `nazwa` varchar(200) NOT NULL,
  `opis` text NOT NULL,
  `cena` double(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `usluga`
--

INSERT INTO `usluga` (`id_usluga`, `id_specjalizacja`, `nazwa`, `opis`, `cena`) VALUES
(1, 1, 'Operacja', 'Maecenas eros ante, interdum et dolor aliquam, porttitor ullamcorper leo. Vivamus ipsum metus, interdum at dignissim nec, vestibulum vitae lectus. Nullam eleifend suscipit enim, nec interdum est malesuada id. Proin quis felis ipsum. Nullam fringilla, quam quis auctor pellentesque, dui massa tempus velit, et vehicula purus libero sed urna. Nunc ornare nisi turpis, sed cursus risus laoreet ut. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aenean quam ex, condimentum vel tincidunt non, cursus ac dui. Integer in enim pulvinar, porttitor elit rutrum, blandit urna. Suspendisse faucibus tempus felis in sodales. Aenean mollis dui magna, ut scelerisque lacus elementum ac.', 99999.99);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wizyta`
--

CREATE TABLE `wizyta` (
  `id_wizyta` int(7) NOT NULL,
  `id_pracownik` int(5) NOT NULL,
  `id_pacjent` int(5) NOT NULL,
  `id_usluga` int(4) NOT NULL,
  `data_wizyty` datetime NOT NULL,
  `opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `wizyta`
--

INSERT INTO `wizyta` (`id_wizyta`, `id_pracownik`, `id_pacjent`, `id_usluga`, `data_wizyty`, `opis`) VALUES
(1, 1, 1, 1, '2022-09-29 07:37:25', 'Curabitur vitae est sodales, cursus quam vitae, dapibus nunc. Nullam consectetur purus vel nisl consectetur venenatis. Mauris sagittis dolor nec ornare suscipit. Sed efficitur quam erat, sed fringilla felis sollicitudin eu. In accumsan sodales volutpat. Pellentesque eu vehicula massa, vel mollis turpis. Etiam pulvinar, nisi et ornare ullamcorper, quam ipsum aliquam libero, et tempor mi lectus sit amet orci. Ut id tempor ante. Cras sit amet sagittis sapien. Cras sed tempus odio, eget varius est. Praesent lacus est, mollis vitae ante non, consequat pharetra orci. Cras eget tellus volutpat, euismod libero quis, imperdiet turpis. Ut ac pharetra ante, ut imperdiet nunc. Aenean bibendum scelerisque pretium. In consectetur hendrerit metus sed iaculis. Curabitur et ante leo.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wojewodztwo`
--

CREATE TABLE `wojewodztwo` (
  `id_wojewodztwo` int(2) NOT NULL,
  `nazwa` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `wojewodztwo`
--

INSERT INTO `wojewodztwo` (`id_wojewodztwo`, `nazwa`) VALUES
(1, 'Łódzkie');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zdjecie`
--

CREATE TABLE `zdjecie` (
  `id_zdjecie` int(4) NOT NULL,
  `zrodlo` text NOT NULL,
  `tekst_alternatywny` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `zdjecie`
--

INSERT INTO `zdjecie` (`id_zdjecie`, `zrodlo`, `tekst_alternatywny`) VALUES
(1, 'example.com', 'fajne zdjecie');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `ogloszenie`
--
ALTER TABLE `ogloszenie`
  ADD PRIMARY KEY (`id_ogloszenie`),
  ADD KEY `id_pracownik` (`id_pracownik`),
  ADD KEY `id_zdjecie` (`id_zdjecie`);

--
-- Indeksy dla tabeli `pacjent`
--
ALTER TABLE `pacjent`
  ADD PRIMARY KEY (`id_pacjent`),
  ADD KEY `id_wojewodztwa` (`id_wojewodztwa`);

--
-- Indeksy dla tabeli `pracownik`
--
ALTER TABLE `pracownik`
  ADD PRIMARY KEY (`id_pracownik`),
  ADD KEY `id_stanowisko` (`id_stanowisko`),
  ADD KEY `id_specjalizacja` (`id_specjalizacja`),
  ADD KEY `id_wojewodztwo` (`id_wojewodztwo`);

--
-- Indeksy dla tabeli `specjalizacja`
--
ALTER TABLE `specjalizacja`
  ADD PRIMARY KEY (`id_specjalizacji`);

--
-- Indeksy dla tabeli `stanowisko`
--
ALTER TABLE `stanowisko`
  ADD PRIMARY KEY (`id_stanowisko`);

--
-- Indeksy dla tabeli `usluga`
--
ALTER TABLE `usluga`
  ADD PRIMARY KEY (`id_usluga`),
  ADD KEY `id_specjalizacja` (`id_specjalizacja`);

--
-- Indeksy dla tabeli `wizyta`
--
ALTER TABLE `wizyta`
  ADD PRIMARY KEY (`id_wizyta`),
  ADD KEY `id_pacjent` (`id_pacjent`),
  ADD KEY `id_usluga` (`id_usluga`),
  ADD KEY `id_pracownik` (`id_pracownik`);

--
-- Indeksy dla tabeli `wojewodztwo`
--
ALTER TABLE `wojewodztwo`
  ADD PRIMARY KEY (`id_wojewodztwo`);

--
-- Indeksy dla tabeli `zdjecie`
--
ALTER TABLE `zdjecie`
  ADD PRIMARY KEY (`id_zdjecie`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `ogloszenie`
--
ALTER TABLE `ogloszenie`
  ADD CONSTRAINT `ogloszenie_ibfk_1` FOREIGN KEY (`id_pracownik`) REFERENCES `pracownik` (`id_pracownik`),
  ADD CONSTRAINT `ogloszenie_ibfk_2` FOREIGN KEY (`id_zdjecie`) REFERENCES `zdjecie` (`id_zdjecie`);

--
-- Ograniczenia dla tabeli `pacjent`
--
ALTER TABLE `pacjent`
  ADD CONSTRAINT `pacjent_ibfk_1` FOREIGN KEY (`id_wojewodztwa`) REFERENCES `wojewodztwo` (`id_wojewodztwo`);

--
-- Ograniczenia dla tabeli `pracownik`
--
ALTER TABLE `pracownik`
  ADD CONSTRAINT `pracownik_ibfk_1` FOREIGN KEY (`id_stanowisko`) REFERENCES `stanowisko` (`id_stanowisko`),
  ADD CONSTRAINT `pracownik_ibfk_2` FOREIGN KEY (`id_specjalizacja`) REFERENCES `specjalizacja` (`id_specjalizacji`),
  ADD CONSTRAINT `pracownik_ibfk_3` FOREIGN KEY (`id_wojewodztwo`) REFERENCES `wojewodztwo` (`id_wojewodztwo`);

--
-- Ograniczenia dla tabeli `usluga`
--
ALTER TABLE `usluga`
  ADD CONSTRAINT `usluga_ibfk_1` FOREIGN KEY (`id_specjalizacja`) REFERENCES `specjalizacja` (`id_specjalizacji`);

--
-- Ograniczenia dla tabeli `wizyta`
--
ALTER TABLE `wizyta`
  ADD CONSTRAINT `wizyta_ibfk_1` FOREIGN KEY (`id_pacjent`) REFERENCES `pacjent` (`id_pacjent`),
  ADD CONSTRAINT `wizyta_ibfk_2` FOREIGN KEY (`id_usluga`) REFERENCES `usluga` (`id_usluga`),
  ADD CONSTRAINT `wizyta_ibfk_3` FOREIGN KEY (`id_pracownik`) REFERENCES `pracownik` (`id_pracownik`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
