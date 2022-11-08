-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 09 Mar 2020, 12:14
-- Wersja serwera: 10.1.37-MariaDB
-- Wersja PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `egzaminy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `egzaminy`
--

CREATE TABLE `egzaminy` (
  `id_egzaminu` int(11) NOT NULL,
  `id_studenta` int(11) NOT NULL,
  `id_wykladowcy` int(11) NOT NULL,
  `id_przedmiotu` int(11) NOT NULL,
  `id_osrodka` int(11) NOT NULL,
  `data_czas_egzaminu` datetime NOT NULL,
  `czy_zdal` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `egzaminy`
--

INSERT INTO `egzaminy` (`id_egzaminu`, `id_studenta`, `id_wykladowcy`, `id_przedmiotu`, `id_osrodka`, `data_czas_egzaminu`, `czy_zdal`) VALUES
(1, 1, 18, 7, 11, '2015-12-06 13:00:00', 1),
(2, 1, 16, 6, 12, '2015-02-11 13:00:00', 0),
(3, 1, 19, 6, 7, '2016-04-02 12:00:00', 1),
(4, 1, 7, 4, 2, '2016-11-12 13:00:00', 1),
(5, 1, 13, 12, 8, '2015-09-09 12:00:00', 1),
(6, 1, 18, 8, 11, '2015-08-27 10:00:00', 0),
(7, 2, 4, 12, 12, '2016-10-14 09:00:00', 0),
(8, 2, 16, 4, 8, '2016-06-16 12:00:00', 1),
(9, 2, 12, 12, 12, '2016-10-19 09:00:00', 1),
(10, 2, 20, 6, 9, '2016-02-11 09:00:00', 1),
(11, 3, 10, 10, 11, '2015-01-18 13:00:00', 1),
(12, 3, 10, 8, 6, '2016-01-25 12:00:00', 1),
(13, 3, 10, 3, 5, '2016-03-17 12:00:00', 1),
(14, 3, 13, 5, 10, '2016-10-22 14:00:00', 1),
(15, 3, 1, 6, 9, '2016-09-21 12:00:00', 0),
(16, 3, 16, 9, 11, '2015-07-19 13:00:00', 1),
(17, 3, 4, 2, 3, '2016-01-15 12:00:00', 1),
(18, 4, 8, 2, 5, '2015-09-17 11:00:00', 1),
(19, 4, 17, 6, 8, '2015-10-09 13:00:00', 1),
(20, 4, 17, 6, 9, '2016-05-14 08:00:00', 0),
(21, 5, 12, 6, 6, '2015-09-06 10:00:00', 0),
(22, 5, 11, 11, 2, '2015-06-26 12:00:00', 1),
(23, 5, 4, 12, 11, '2015-04-20 10:00:00', 1),
(24, 5, 19, 3, 8, '2016-05-10 14:00:00', 1),
(25, 5, 6, 2, 3, '2016-12-27 08:00:00', 1),
(26, 5, 13, 6, 9, '2015-10-12 13:00:00', 1),
(27, 6, 11, 7, 8, '2015-06-10 10:00:00', 1),
(28, 6, 15, 9, 6, '2016-04-26 08:00:00', 1),
(29, 6, 12, 9, 10, '2015-01-04 09:00:00', 0),
(30, 6, 5, 9, 5, '2015-05-24 13:00:00', 0),
(31, 6, 6, 11, 4, '2016-04-23 08:00:00', 1),
(32, 7, 16, 6, 6, '2015-12-23 12:00:00', 1),
(33, 7, 13, 7, 3, '2015-10-01 11:00:00', 1),
(34, 7, 18, 11, 11, '2016-09-02 08:00:00', 1),
(35, 7, 6, 3, 5, '2015-09-05 13:00:00', 1),
(36, 7, 7, 12, 12, '2016-12-04 08:00:00', 0),
(37, 7, 16, 8, 9, '2015-06-13 09:00:00', 0),
(38, 7, 19, 8, 7, '2015-10-19 12:00:00', 1),
(39, 7, 9, 1, 5, '2016-04-24 12:00:00', 0),
(41, 8, 17, 2, 6, '2015-10-06 10:00:00', 0),
(42, 8, 17, 1, 7, '2015-10-25 14:00:00', 1),
(43, 8, 5, 9, 12, '2016-08-17 10:00:00', 1),
(44, 8, 14, 8, 9, '2015-05-09 13:00:00', 0),
(45, 8, 3, 6, 9, '2015-01-17 11:00:00', 1),
(46, 8, 18, 8, 10, '2015-12-07 09:00:00', 1),
(47, 9, 2, 3, 2, '2016-08-15 08:00:00', 1),
(48, 9, 16, 8, 6, '2016-01-24 11:00:00', 1),
(49, 9, 8, 3, 10, '2015-06-12 10:00:00', 0),
(50, 9, 11, 11, 12, '2016-04-11 08:00:00', 0),
(51, 9, 9, 4, 2, '2015-07-16 14:00:00', 1),
(55, 11, 5, 8, 11, '2016-01-22 08:00:00', 0),
(56, 11, 12, 10, 12, '2016-07-13 09:00:00', 1),
(57, 11, 9, 12, 12, '2016-03-05 10:00:00', 1),
(58, 11, 18, 4, 5, '2015-03-08 10:00:00', 1),
(59, 11, 9, 9, 6, '2015-03-15 13:00:00', 1),
(60, 11, 15, 12, 9, '2015-06-11 10:00:00', 0),
(62, 12, 2, 6, 3, '2015-04-26 13:00:00', 1),
(64, 12, 5, 4, 9, '2015-05-14 12:00:00', 0),
(65, 12, 17, 1, 10, '2016-12-27 10:00:00', 1),
(66, 13, 15, 5, 10, '2015-10-04 08:00:00', 1),
(67, 13, 12, 3, 9, '2016-08-24 09:00:00', 1),
(71, 15, 12, 2, 12, '2015-06-15 13:00:00', 1),
(72, 15, 8, 3, 12, '2016-03-14 10:00:00', 1),
(73, 15, 2, 6, 12, '2015-11-05 13:00:00', 1),
(74, 15, 8, 3, 9, '2015-12-11 11:00:00', 0),
(75, 16, 6, 7, 2, '2016-08-22 09:00:00', 1),
(76, 16, 16, 5, 5, '2016-09-16 14:00:00', 1),
(77, 16, 11, 3, 9, '2016-02-01 13:00:00', 1),
(78, 16, 10, 4, 3, '2015-07-19 10:00:00', 1),
(79, 16, 5, 6, 5, '2015-12-28 11:00:00', 1),
(80, 17, 16, 8, 2, '2015-06-12 12:00:00', 0),
(81, 17, 1, 5, 10, '2016-10-15 13:00:00', 1),
(82, 17, 6, 5, 7, '2015-05-04 13:00:00', 0),
(83, 18, 1, 4, 12, '2016-12-01 09:00:00', 1),
(84, 18, 10, 5, 6, '2015-06-22 13:00:00', 1),
(85, 19, 3, 4, 12, '2016-03-09 12:00:00', 1),
(86, 19, 2, 1, 10, '2015-07-24 08:00:00', 1),
(87, 19, 6, 9, 11, '2016-03-24 09:00:00', 1),
(88, 19, 20, 7, 10, '2015-12-02 13:00:00', 1),
(89, 19, 20, 8, 6, '2015-07-12 13:00:00', 1),
(90, 19, 3, 2, 12, '2016-02-06 12:00:00', 1),
(91, 19, 14, 12, 5, '2016-01-21 12:00:00', 1),
(92, 20, 11, 7, 4, '2015-09-17 14:00:00', 1),
(93, 20, 14, 4, 4, '2016-08-05 10:00:00', 1),
(94, 20, 3, 2, 4, '2015-01-25 11:00:00', 0),
(95, 20, 12, 10, 8, '2015-07-02 13:00:00', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `osrodki`
--

CREATE TABLE `osrodki` (
  `id_osrodka` int(11) NOT NULL,
  `nazwa_osrodka` varchar(45) NOT NULL,
  `miasto` varchar(45) NOT NULL,
  `ulica` varchar(45) NOT NULL,
  `numer_bloku` varchar(45) NOT NULL,
  `telefon` varchar(9) NOT NULL,
  `fax` varchar(9) DEFAULT NULL,
  `e_mail` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `osrodki`
--

INSERT INTO `osrodki` (`id_osrodka`, `nazwa_osrodka`, `miasto`, `ulica`, `numer_bloku`, `telefon`, `fax`, `e_mail`) VALUES
(1, 'CKMP', 'Lublin', 'Metalurgiczna', '7H', '215452632', '', 'info@ckmp.pl'),
(2, 'Katedra Informatyki PL', 'Lublin', 'Nadbystrzycka', '36B', '854216329', '985412854', 'KIPL@pollub.pl'),
(3, 'LBS', 'Lublin', 'Plac Kochanowskiego', '1', '654258741', '', 'kontakt@LBS.pl'),
(4, 'Softmark', 'Lublin', 'Abramowicka', '13', '512489324', '622457121', 'sm@softmark.pl'),
(5, 'EuroSoft', 'Lubartow', 'Lubelska', '20', '662887191', '', 'EUS@eurosoft.eu'),
(6, 'Sonet', 'Lublin', 'Swietoduska', '8', '991234117', '', 'news@sonent.pl'),
(7, 'III LO', 'Lublin', 'Bernardynska', '1', '985514775', '', 'info@3lo.pl'),
(8, 'II LO', 'Lublin', 'Spokojna', '22', '955134755', '', 'info@2lo.pl'),
(9, 'Zespol Szkol Elektron', 'Lublin', 'Wojciechowska', '11', '328946127', '911477522', 'kontakt@zse.pl'),
(10, 'Atena', 'Krasnystaw', 'Zamojska', '10', '201364904', '', 'infoK@atena.pl'),
(11, 'Arka', 'Parczew', 'Wschodnia', '5', '301522142', '224188652', 'infoP@arka.pl'),
(12, 'Future', 'Chelm', 'Zachodnia', '1', '100213549', '951744117', 'info@przyszlosc.pl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmioty`
--

CREATE TABLE `przedmioty` (
  `id_przedmiotu` int(11) NOT NULL,
  `nazwa_przedmiotu` varchar(45) NOT NULL,
  `opis` longtext NOT NULL,
  `cena_egzaminu` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `przedmioty`
--

INSERT INTO `przedmioty` (`id_przedmiotu`, `nazwa_przedmiotu`, `opis`, `cena_egzaminu`) VALUES
(1, 'Bazy danych', 'Celem przedmiotu jest zapoznanie studentow z podstawowymi pojeciami i koncepcjami technologii systemow baz danych, niezbednymi do poprawnego projektowania, korzystania i implementacji systemow baz danych i ich aplikacji. W ramach tego przedmiotu studenci zapoznaja sie przede wszystkim z podstawowymi zasadami modelowania i projektowania baz danych, relacyjnym modelem danych, standardowym jezykiem baz danych SQL, normalizacja schematow logicznych baz danych oraz logiczna organizacja i podstawowymi strukturami fizycznymi danych wykorzystywanymi w systemach baz danych.', '200.00'),
(2, 'Metody numeryczne', 'Metody rozwiazywania problemow matematycznych za pomoca operacji na liczbach. Otrzymywane ta droga wyniki sa na ogol przyblizone, jednak dokladnosc obliczen moze byc z gory okreslona i dobiera sie ja zaleznie od potrzeb. Obecnie ta dziedzina matematyki rozwija sie bardzo szybko ze wzgledu na liczne zastosowania w informatyce i algorytmice. Metody numeryczne wykorzystywane sa wowczas, gdy badany problem nie ma w ogole rozwiazania analitycznego (danego wzorami) lub korzystanie z takich rozwiazan jest uciazliwe ze wzgl©du na ich zlozonosc.', '300.00'),
(3, 'Algorytmy i struktury danych', 'Projektowanie i analiza algorytmow. Przeglad podstawowych algorytmow i struktur danych. Doskonalenie praktycznych umiejetnosci w projektowaniu i programowaniu poprawnych i wydajnych algorytmow oraz w poslugiwaniu sie gotowymi bibliotekami algorytmew i struktur danych.', '200.00'),
(4, 'Analiza matematyczna', 'Jest to pierwszy z czterech semestralnych wykladow analizy matematycznej. Jest on pierwsza czescia pelnego, klasycznego wykladu z podstaw analizy matematycznej jednej zmiennej rzeczywistej. Punktem wyjscia jest aksjomatyka liczb rzeczywistych. Celem wykladu jest zapoznanie studentow z podstawowymi pojeciami analizy: liczby rzeczywiste, funkcje elementarne, ciagi i szeregi liczbowe, funkcje ciagle, funkcje rozniczkowalne oraz podstawowymi twierdzeniami zwiazanymi z tymi pojeciami wraz z pelnymi dowodami.', '350.00'),
(5, 'Statystyka', 'Przedmiotem statystyki sa zjawiska, czyli procesy masowe. Statystyka zajmuje sie badaniem tych zjawisk w czasie i w przestrzeni. Umoľliwia analize kierunkow i tempa ich zmian', '250.00'),
(6, 'Programowanie obiektowe', 'Przedstawienie podstawowych pojec i zagadnieä wystepujacych w programowaniu obiektowym. W ramach wykladu wprowadzone sa pojecia klasy i obiektu oraz zagadnienia zwiazane z kapsulkowaniem, dziedziczeniem i polimorfizmem. Omowione sa podstawy projektowania obiektowego. Wprowadzone sa formalizmy do zapisywania projektow i programow obiektowych.', '250.00'),
(7, 'Programowanie rownolegle', 'Celem przedmiotu jest zapoznanie studentow z podstawami projektowania i implementacji algorytmow rownoleglych w srodowisku z pamiecia rozproszona i wspoldzielona. Przedstawione zostanie programowanie w modelu PGAS. Omawiane b©dĄ przyklady algorytmow rownoleglych, ich zlozonosc czasowa i implementacja przy uzyciu wspolczesnych narzedzi i bibliotek (MPI, OpenMP, PCJ).', '350.00'),
(8, 'Elektronika', 'Dziedzina techniki i nauki zajmujaca sie obwodami elektrycznymi zawierajacymi, obok elementow elektronicznych biernych, elementy aktywne takie jak lampy prozniowe, tranzystory i diody.', '300.00'),
(9, 'Teoria sygnalow', 'Celem wykladu jest zapoznanie sluchaczy z podstawowymi pojeciami i zagadnieniami teorii sygnalow i ukladow z czasem dyskretnym. Tresci przekazywane w ramach wykladu stanowia punkt wyjscia do dalszego poznawania i zglebiania bardziej zaawansowanych pojeciowo i technicznie zagadnien sygnalowych, wykorzystujacych narzedzia cyfrowego przetwarzania.', '350.00'),
(10, 'Architerktury systemow komputerowych', 'Celem wykladu jest zapoznanie sluchaczy ze struktura i budowa wspolczesnych procesorow i komputerow. Tresc wykladu obejmuje niezbedne podstawy teoretyczne, budowe aplikacyjnego modelu programowego komputera dostosowanego do wykonywania programow napisanych w jezykach wysokiego poziomu, budowe jednostki wykonawczej komputera, model i implementacj© mechanizmew systemowych oraz podstawowe informacje o organizacji wspolpracy z urzadzeniami zewnetrznymi i strukturze komputera.', '250.00'),
(11, 'Programowanie niskopoziomowe', 'Celem przedmiotu jest zapoznanie sluchaczy z zasadami programowania asemblerowego i hybrydowego oraz z narzedziami do tego sluzacymi. Tresc wykladu obejmuje niezbedne podstawy teoretyczne, w tym opis srodowiska pracy programu, zapoznanie z oprogramowaniem narzedziowym (asembler, kompilator C, konsolidator) oraz zasady programowania asemblerowego i hybrydowego. Zajecia projektowe maja na celu stworzenie przez studenta kilku programow asemblerowych i hybrydowych i praktyczne zapoznanie z zagadnieniami omawianymi w trakcie wykladu.', '200.00'),
(12, 'Modelowanie komputerowe', 'Przedmiot przygotowujacy do tworzenia modeli architektonicznych w srodowisku technologii cyfrowej.', '250.00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `studenci`
--

CREATE TABLE `studenci` (
  `id_studenta` int(11) NOT NULL,
  `imie` varchar(45) NOT NULL,
  `nazwisko` varchar(45) NOT NULL,
  `data_urodzenia` date NOT NULL,
  `PESEL` varchar(11) NOT NULL,
  `miasto` varchar(45) NOT NULL,
  `ulica` varchar(45) NOT NULL,
  `numer_bloku` varchar(45) NOT NULL,
  `telefon` varchar(9) NOT NULL,
  `fax` varchar(9) DEFAULT NULL,
  `e_mail` varchar(45) NOT NULL,
  `rok_studiow` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `studenci`
--

INSERT INTO `studenci` (`id_studenta`, `imie`, `nazwisko`, `data_urodzenia`, `PESEL`, `miasto`, `ulica`, `numer_bloku`, `telefon`, `fax`, `e_mail`, `rok_studiow`) VALUES
(1, 'Jan', 'Nowak', '1993-12-24', '9312247518', 'Lubartow', 'Szeroka', '17', '537826524', '', 'Jan.Nowak@pollub.edu.pl', 2),
(2, 'Karol', 'Kwiatkowski', '1992-10-13', '9210139686', 'Kazimierz Dolny', 'Pogodna', '7', '793211671', '772301232', 'Karol.Kwiatkowski@pollub.edu.pl', 2),
(3, 'Zbigniew', 'Pyza', '1991-05-03', '9105038846', 'Kazimierz Dolny', 'Zielona', '16', '899850816', '', 'Zbigniew.Pyza@pollub.edu.pl', 1),
(4, 'Karol', 'Ostrowski', '1991-01-27', '9101278253', 'Zamosc', 'Jasna', '6', '177770247', '226427578', 'Karol.Ostrowski@pollub.edu.pl', 1),
(5, 'Jacek', 'Lapoc', '1991-02-12', '9102128433', 'Lubartow', 'Szeroka', '24', '102355163', '', 'Jacek.Lapoc@pollub.edu.pl', 3),
(6, 'Ewelina', 'Dymowska', '1989-02-18', '8902186028', 'Lublin', 'Dluga', '14', '629966693', '', 'Ewelina.Dymowska@pollub.edu.pl', 2),
(7, 'Grzegorz', 'Pyszek', '1991-09-29', '9109298344', 'Lubartow', 'Szeroka', '14', '145326594', '', 'Grzegorz.Pyszek@pollub.edu.pl', 1),
(8, 'Marta', 'Adamczuk', '1993-05-20', '9305207754', 'Zamosc', 'Jasna', '6', '703443430', '', 'Marta.Adamczuk@pollub.edu.pl', 1),
(9, 'Piotr', 'Wojcik', '1992-03-13', '9203138535', 'Zamosc', 'Jasna', '20', '384879197', '629644521', 'Piotr.Wojcik@pollub.edu.pl', 1),
(10, 'Michal', 'Kotowski', '1993-10-17', '9310178048', 'Kazimierz Dolny', 'Pogodna', '8', '901892517', '', 'Michal.Kotowski@pollub.edu.pl', 1),
(11, 'Matylda', 'Miszczak', '1992-08-20', '9208209776', 'Kazimierz Dolny', 'Pogodna', '25', '542056302', '', 'Matylda.Miszczak@pollub.edu.pl', 3),
(12, 'Marek', 'Ogolny', '1989-07-13', '8907136990', 'Kazimierz Dolny', 'Zielona', '15', '599457159', '', 'Marek.Ogolny@pollub.edu.pl', 2),
(13, 'Magdalena', 'Nosowska', '1989-04-05', '8904057063', 'Zamosc', 'Jasna', '25', '318814707', '', 'Magdalena.Nosowska@pollub.edu.pl', 1),
(14, 'Stanislaw', 'Krysa', '1991-08-20', '9108207926', 'Lublin', 'Dluga', '11', '751178390', '538434180', 'Stanislaw.Krysa@pollub.edu.pl', 2),
(15, 'Jerzy', 'Mirski', '1989-01-15', '8901157444', 'Kazimierz Dolny', 'Pogodna', '11', '973607990', '', 'Jerzy.Mirski@pollub.edu.pl', 1),
(16, 'Pawel', 'Stonoga', '1993-04-29', '9304298937', 'Zamosc', 'Jasna', '24', '981279203', '', 'Pawel.Stonoga@pollub.edu.pl', 1),
(17, 'Karolina', 'Ogrodek', '1991-11-10', '9111105422', 'Kazimierz Dolny', 'Pogodna', '5', '858816899', '', 'Karolina.Ogrodek@pollub.edu.pl', 2),
(18, 'Lukasz', 'Brzezinski', '1989-12-27', '8912279987', 'Zamosc', 'Jasna', '9', '621106311', '627346915', 'Lukasz.Brzezinski@pollub.edu.pl', 1),
(19, 'Jacek', 'Rak', '1991-08-17', '9108176399', 'Kazimierz Dolny', 'Zielona', '25', '154035858', '', 'Jacek.Rak@pollub.edu.pl', 3),
(20, 'Leszek', 'Potem', '1992-03-01', '9203019586', 'Kazimierz Dolny', 'Zielona', '24', '727527175', '579735755', 'Leszek.Potem@pollub.edu.pl', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wykladowcy`
--

CREATE TABLE `wykladowcy` (
  `id_wykladowcy` int(11) NOT NULL,
  `imie` varchar(45) NOT NULL,
  `nazwisko` varchar(45) NOT NULL,
  `data_urodzenia` date NOT NULL,
  `PESEL` varchar(11) NOT NULL,
  `miasto` varchar(45) NOT NULL,
  `ulica` varchar(45) NOT NULL,
  `numer_bloku` varchar(45) NOT NULL,
  `telefon` varchar(9) NOT NULL,
  `fax` varchar(9) DEFAULT NULL,
  `e_mail` varchar(45) NOT NULL,
  `stawka_godzinowa` decimal(5,2) NOT NULL,
  `liczba_godzin_miesiecznie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `wykladowcy`
--

INSERT INTO `wykladowcy` (`id_wykladowcy`, `imie`, `nazwisko`, `data_urodzenia`, `PESEL`, `miasto`, `ulica`, `numer_bloku`, `telefon`, `fax`, `e_mail`, `stawka_godzinowa`, `liczba_godzin_miesiecznie`) VALUES
(1, 'Sztefan', 'Gwozdz', '1964-06-09', '64060981281', 'Swidnik', 'Zolta', '8', '826799089', '786028961', 's.gwozdz@pollub.pl', '60.00', 72),
(2, 'Piotr', 'Nosek', '1963-05-21', '63052143507', 'Pulawy', 'Jasna', '25', '980571974', '', 'p.nosek@pollub.pl', '50.00', 32),
(3, 'Zbigniew', 'Krotki', '1974-04-10', '74041017302', 'Zamosc', 'Mila', '20', '422245221', '457341299', 'z.krotki@pollub.pl', '50.00', 56),
(4, 'Alan', 'Smith', '1974-07-01', '74070199653', 'Swidnik', 'Zolta', '6', '164194565', '', 'a.smith@pollub.pl', '80.00', 96),
(5, 'Jan', 'Markowski', '1958-06-07', '58060786879', 'Lublin', 'Zielona', '22', '922417629', '', 'j.markowski@pollub.pl', '80.00', 72),
(6, 'Franciszek', 'Zwir', '1978-08-27', '78082799547', 'Leczna', 'Lesna', '22', '986829032', '806151405', 'f.zwir@pollub.pl', '80.00', 88),
(7, 'Robert', 'Ostry', '1979-06-26', '79062697179', 'Lublin', 'Zielona', '29', '350846416', '', 'r.ostry@pollub.pl', '80.00', 56),
(8, 'Igor', 'Rzadki', '1962-07-27', '62072752831', 'Leczna', 'Lesna', '13', '512648702', '', 'i.rzadki@pollub.pl', '50.00', 104),
(9, 'Lukasz', 'Wysocki', '1978-03-02', '78030254476', 'Swidnik', 'Zolta', '26', '924297790', '170021422', 'l.wysocki@pollub.pl', '80.00', 88),
(10, 'Tomasz', 'Jankowski', '1968-09-26', '68092640536', 'Swidnik', 'Zolta', '19', '284349810', '', 't.jankowski@pollub.pl', '50.00', 40),
(11, 'Maria', 'Twardowska', '1974-01-09', '74010955637', 'Swidnik', 'Zolta', '14', '276154499', '963482803', 'm.twardowska@pollub.pl', '80.00', 32),
(12, 'Kacper', 'Nowowiejski', '1963-11-18', '63111826415', 'Zamosc', 'Mila', '16', '472529858', '387770399', 'k.nowowiejski@pollub.pl', '50.00', 72),
(13, 'Marek', 'Czarniecki', '1975-08-01', '75080122171', 'Swidnik', 'Zolta', '30', '204235273', '', 'm.czarniecki@pollub.pl', '50.00', 56),
(14, 'Katarzyna', 'Listowska', '1958-01-25', '58012589292', 'Pulawy', 'Jasna', '8', '951617231', '', 'k.listowska@pollub.pl', '60.00', 104),
(15, 'Mateusz', 'Pala', '1964-01-04', '64010462025', 'Zamosc', 'Mila', '28', '774739958', '793036228', 'm.pala@pollub.pl', '50.00', 88),
(16, 'Paulina', 'Rzekoma', '1970-01-25', '70012577458', 'Lublin', 'Zielona', '28', '674584004', '', 'p.rzekoma@pollub.pl', '50.00', 32),
(17, 'Magdalena', 'Wronska', '1960-01-27', '60012781155', 'Leczna', 'Lesna', '13', '731514022', '', 'm.wronska@pollub.pl', '80.00', 120),
(18, 'Agata', 'Wilk', '1971-01-02', '71010231987', 'Leczna', 'Lesna', '14', '911092139', '', 'a.wilk@pollub.pl', '60.00', 96),
(19, 'Agnieszka', 'Lis', '1976-11-03', '76110380659', 'Pulawy', 'Jasna', '20', '649400992', '262208039', 'a.lis@pollub.pl', '60.00', 64),
(20, 'Karol', 'Zajac', '1969-12-18', '69121843724', 'Leczna', 'Lesna', '18', '983683215', '', 'k.zajac@pollub.pl', '50.00', 32);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `egzaminy`
--
ALTER TABLE `egzaminy`
  ADD PRIMARY KEY (`id_egzaminu`),
  ADD KEY `id_studenta_fk_idx` (`id_studenta`),
  ADD KEY `id_wykladowcy_fk_idx` (`id_wykladowcy`),
  ADD KEY `id_przedmiot_fk_idx` (`id_przedmiotu`),
  ADD KEY `id_osrodka_idx` (`id_osrodka`);

--
-- Indeksy dla tabeli `osrodki`
--
ALTER TABLE `osrodki`
  ADD PRIMARY KEY (`id_osrodka`);

--
-- Indeksy dla tabeli `przedmioty`
--
ALTER TABLE `przedmioty`
  ADD PRIMARY KEY (`id_przedmiotu`);

--
-- Indeksy dla tabeli `studenci`
--
ALTER TABLE `studenci`
  ADD PRIMARY KEY (`id_studenta`);

--
-- Indeksy dla tabeli `wykladowcy`
--
ALTER TABLE `wykladowcy`
  ADD PRIMARY KEY (`id_wykladowcy`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `osrodki`
--
ALTER TABLE `osrodki`
  MODIFY `id_osrodka` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `przedmioty`
--
ALTER TABLE `przedmioty`
  MODIFY `id_przedmiotu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `studenci`
--
ALTER TABLE `studenci`
  MODIFY `id_studenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `wykladowcy`
--
ALTER TABLE `wykladowcy`
  MODIFY `id_wykladowcy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `egzaminy`
--
ALTER TABLE `egzaminy`
  ADD CONSTRAINT `id_osrodka` FOREIGN KEY (`id_osrodka`) REFERENCES `osrodki` (`id_osrodka`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_przedmiot_fk` FOREIGN KEY (`id_przedmiotu`) REFERENCES `przedmioty` (`id_przedmiotu`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_studenta_fk` FOREIGN KEY (`id_studenta`) REFERENCES `studenci` (`id_studenta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_wykladowcy_fk` FOREIGN KEY (`id_wykladowcy`) REFERENCES `wykladowcy` (`id_wykladowcy`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
