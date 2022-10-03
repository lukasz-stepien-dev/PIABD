-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 20 Wrz 2022, 09:26
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
-- Baza danych: `l_stepien_ksiegarnia`
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
(1, 'Kowalski', 'Mariusz', 'Wierzbowa 7', 2147483647, NULL),
(2, 'neque', 'in ', 'consectetur 32', 987654321, ' Duis convallis a nunc efficitur tincidunt. Curabitur consectetur elementum consectetur. Sed facilisis eros quis nisl dictum cursus. Curabitur convallis elementum tellus in semper. Proin justo ligula, ullamcorper sed hendrerit vel, sollicitudin non purus.'),
(3, 'varius ', 'vitae ', 'justo 65', 1111111111, 'In varius vitae justo at aliquam. Nullam tortor purus, porttitor a suscipit ut, tristique sed augue. Fusce metus orci, pharetra pretium dolor laoreet, accumsan fringilla lorem. Donec et gravida erat. Ut consectetur consequat bibendum. Sed viverra sagittis'),
(4, 'vitae ', 'semper ', 'nunc 456', 222222222, ' Mauris vitae semper nunc. Etiam tristique risus sed mi molestie cursus. Pellentesque imperdiet, tortor tristique convallis luctus, diam dui dapibus arcu, in aliquet elit neque vel elit. Donec tincidunt dolor non vestibulum finibus. Praesent sit amet sapi'),
(5, 'ac purus', 'ultrices ', 'risus 5', 333333333, ' Donec ac purus ultrices risus varius convallis et non velit. Duis nec nunc nec neque tempor rutrum ac at mauris. Maecenas at eros porttitor dolor aliquet faucibus. Sed viverra ante tempus arcu aliquet hendrerit. Mauris neque enim, laoreet id nisi vel, mo'),
(6, 'lacinia ', 'felis ', 'porta 65', 444444444, ' Nam lacinia felis vitae porta dapibus. Proin pellentesque quam non orci tristique, eu convallis diam condimentum. Praesent mattis enim nec tincidunt laoreet. Nulla rutrum, sem ut sodales faucibus, justo metus finibus lacus, sed bibendum mi risus nec eros'),
(7, 'ullamcorper ', 'sem ', 'egestas 7', 555555555, ' Pellentesque ullamcorper sem vitae felis egestas tincidunt. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nam quis urna vel sem iaculis dictum. Morbi lobortis quis libero sit amet iaculis. Vestibulum eget ante in'),
(8, 'non fermentum', 'nunc', 'Curabitur 7/7', 666666666, ' Aliquam non fermentum nunc. Curabitur sit amet tortor nibh. Aliquam erat lorem, maximus ut bibendum ut, sollicitudin id neque. Vestibulum malesuada, urna quis fringilla venenatis, ipsum eros facilisis tellus, sagittis tincidunt mi lacus a massa. Cras ac '),
(9, 'Praesent ', 'leo ', 'leoe 99', 777777777, 'euismod sit amet accumsan nec, condimentum sed urna. Nunc dapibus condimentum velit vel feugiat. Morbi pulvinar orci et volutpat elementum. Donec magna arcu, ornare ut mattis consequat, aliquet ac ligula. Sed efficitur in tellus blandit blandit. Vivamus s'),
(10, 'Lorem ', 'ipsum ', 'dolor sit87', 888888888, 'Amet, consectetur adipiscing elit. Phasellus volutpat dignissim turpis, vitae maximus dolor. Duis mattis id dolor nec dictum. Donec pulvinar ut urna sit amet lobortis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vitae nisi id nisl imper'),
(13, 'Nulla ', 'vel ', 'aliquam 44', 1234567891, 'neque, in consectetur lacus. In cursus semper tincidunt. Proin cursus magna et lectus dignissim varius. Nulla tincidunt nulla pellentesque lectus condimentum, sed gravida libero convallis. Nullam dolor est, mollis et elit pellentesque, imperdiet porta ris');

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
('dla dzieci', 'dla dzieci'),
('dla mechanikow', 'dla mechanikow'),
('filozoficzne', 'filozoficzne'),
('kryminały', 'kryminal\r\n'),
('madre', 'madre'),
('mlodziezowe', 'mlodziezowe'),
('popularno-naukowe', 'popularno-naukowe'),
('programistyczne', 'programistyczne'),
('romans', 'romans'),
('sci-fi', 'sci-fi');

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
(2, 2, ' Phasellus lorem elit, vehicula vitae malesuada in, pretium nec mi. Morbi a ligula sem. Curabitur sed lectus et sapien sollicitudin cursus. Pellentesque eleifend suscipit vehicula. Donec nec dui ligula. Aliquam tincidunt vulputate bibendum. Phasellus mole'),
(3, 3, ' Nam lacus augue, condimentum id augue sed, posuere posuere sem. Pellentesque ut elit vel felis blandit molestie. Cras eu euismod neque. Aliquam finibus diam imperdiet congue mattis. Praesent ultrices tristique ante nec mollis. Pellentesque sollicitudin l'),
(4, 4, ' Donec sed efficitur magna. Aenean dui turpis, ultrices id quam vitae, tempus pretium ligula. Duis nec cursus tortor. Nunc a tincidunt sem. Aliquam eget mollis metus. Proin facilisis diam nec vehicula fermentum. Aliquam erat volutpat. Phasellus nec rhoncu'),
(5, 5, ' Etiam suscipit enim ut consectetur posuere. Curabitur vestibulum vitae tellus at finibus. Sed auctor nisl nec mauris aliquet, non ultrices ante fermentum. Integer sodales, orci sit amet condimentum placerat, ex dolor elementum felis, quis ornare libero d'),
(6, 6, ' Etiam rhoncus felis nunc, eu ullamcorper ex iaculis eu. Cras venenatis lectus non elit venenatis ullamcorper. Etiam convallis odio ex, non volutpat sem laoreet vel. Vivamus id vulputate orci, a iaculis nulla. In accumsan turpis non aliquam semper. Vivamu'),
(7, 7, ' Curabitur vitae tempor diam. Etiam commodo sapien eu eleifend gravida. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et arcu urna. Phasellus eros mauris, elementum interdum convallis hendrerit, accumsan eu nisl. Maecenas sed sapien ma'),
(8, 8, ' Etiam facilisis consequat nulla non venenatis. Integer fermentum lorem sapien, non ultrices mi porta non. Vestibulum eu velit in elit tempus vulputate. Maecenas elementum elementum laoreet. Praesent maximus posuere gravida. Integer felis massa, luctus di'),
(9, 9, ' Curabitur aliquam, lorem ut laoreet lobortis, mauris mauris cursus eros, quis molestie felis odio et metus. Nunc iaculis, leo vel ornare faucibus, diam nisi ullamcorper orci, eget rutrum lorem enim ac justo. Aliquam cursus augue est, ac interdum lacus ti'),
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
(1, 'Remigiusz Mróz', 'tempor ', 'Pellentesque', 'kryminały', 1, 'Phasellus vel ullamcorper velit. Donec tincidunt egestas est, at accumsan urna venenatis id. Donec finibus iaculis lacus sit amet tempor. Sed ac tristique diam, pellentesque malesuada mauris. Fusce congue, velit sit amet condimentum lobortis, arcu nisl vu'),
(2, 'elit lacu', 'velit tortor', 'accumsan', 'dla dzieci', 2, ' Duis venenatis nibh risus, ultrices auctor sapien viverra et. Maecenas lacinia lorem at quam dignissim, at efficitur lorem convallis. Aliquam erat volutpat. Morbi finibus velit tortor, eget tristique est iaculis a. Morbi in elit lacus. Duis mollis est et'),
(3, 'consectetur nis', 'id dolor', 'sed', 'dla mechanikow', 3, ' Aenean pretium malesuada nunc, ac dictum justo feugiat et. Ut vulputate gravida velit, sit amet ornare ex rhoncus ut. Praesent vestibulum massa ut convallis luctus. Curabitur finibus, enim ornare aliquet facilisis, tellus tortor hendrerit nulla, sed volu'),
(4, 'dictum justo', 'vestibulum', 'massa ut', 'filozoficzne', 4, ' Nulla condimentum nibh at quam vulputate, ut auctor libero pellentesque. Proin pellentesque, nisi ac sollicitudin tempor, enim sem tempus enim, dapibus fringilla nisl ipsum vel ex. Integer eget turpis ac risus sodales vehicula. Vestibulum euismod nulla m'),
(5, 'isque enim', 'nulla leo', 'Vivamus', 'filozoficzne', 5, ' Cras scelerisque enim erat, nec dapibus velit facilisis at. Quisque scelerisque enim nec nisl feugiat, sed blandit nibh malesuada. Nullam aliquet pellentesque mi ut condimentum. Morbi gravida nulla leo, ut iaculis nulla vehicula congue. Maecenas aliquet '),
(6, 'tum. Nulla', 'Etiam nec orc', 'Praesent efficitur', 'madre', 6, ' Vivamus ac semper quam, fringilla posuere sapien. Donec scelerisque eleifend elementum. Nulla volutpat rutrum urna, sed rutrum augue ultricies sollicitudin. Maecenas vitae cursus neque. Mauris quis efficitur leo. Phasellus semper aliquam dolor, a auctor '),
(7, ' rutrum urna', 'Phasellus', 'massa in leo ', 'mlodziezowe', 7, ' Vivamus ac semper quam, fringilla posuere sapien. Donec scelerisque eleifend elementum. Nulla volutpat rutrum urna, sed rutrum augue ultricies sollicitudin. Maecenas vitae cursus neque. Mauris quis efficitur leo. Phasellus semper aliquam dolor, a auctor '),
(8, 'Mauris quis efficitur leo', 'nec orci', 'pretium', 'popularno-naukowe', 8, ' Vivamus ac semper quam, fringilla posuere sapien. Donec scelerisque eleifend elementum. Nulla volutpat rutrum urna, sed rutrum augue ultricies sollicitudin. Maecenas vitae cursus neque. Mauris quis efficitur leo. Phasellus semper aliquam dolor, a auctor '),
(9, 'nec mauris', ' tincidunt tincidunt. ', 'Quisque', 'programistyczne', 9, ' Vivamus lobortis ante nec mauris egestas posuere. Quisque non ipsum eu erat condimentum efficitur sit amet a sem. Nam pretium lectus quis ex ultricies tempor. Fusce venenatis nisl vitae tincidunt tincidunt. Mauris a maximus nulla. Maecenas non viverra er');

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
(1, 4),
(2, 46),
(3, 37),
(4, 31),
(5, 10),
(6, 2),
(7, 39),
(8, 42),
(9, 38),
(10, 44);

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
(1, 'mariusz.kowalski@gmail.com'),
(2, 'grottiprodditre-7133@yopmail.com'),
(3, 'kitrakaffanoi-1081@yopmail.com '),
(4, 'loiloiddefimi-7389@yopmail.com '),
(5, 'tafripeimmiquau-5807@yopmail.com '),
(6, 'seullabimeizei-2514@yomail.com '),
(7, 'pradouppeddoideu-8748@pmail.com '),
(8, 'ragocrissacra-4251@yopmil.com '),
(9, 'deuwebeusequou-8547@yil.com '),
(10, 'yiquifriyoupou-9718@mail.com ');

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
(1, 111222333),
(2, 548299377),
(3, 942557483),
(4, 536426851),
(5, 632970131),
(6, 394647061),
(7, 1520540392),
(8, 878314280),
(9, 1107511587),
(10, 847516274);

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
(2, 1, 21, '2022-09-02', 'okładka zniszczona'),
(1, 1, 2, '2022-09-05', ' Suspendisse vel porttitor metus, a pretium felis. Sed in tortor ante. Nam quis eros libero. Proin sollicitudin a ante vitae euismod. Mauris leo elit, mattis quis purus eget, euismod scelerisque sem. Nulla ultrices ligula libero, sed elementum nibh bibend'),
(3, 2, 3, '2022-09-08', ' Suspendisse vel porttitor metus, a pretium felis. Sed in tortor ante. Nam quis eros libero. Proin sollicitudin a ante vitae euismod. Mauris leo elit, mattis quis purus eget, euismod scelerisque sem. Nulla ultrices ligula libero, sed elementum nibh bibend'),
(4, 4, 4, '2022-08-16', ' Vestibulum porta arcu ac erat feugiat, at ornare felis sollicitudin. Donec dapibus sit amet eros tempus mattis. Maecenas ligula ex, pulvinar id posuere ut, porta id libero. Donec ultricies quis lectus accumsan blandit. Cras ac justo pretium ipsum mattis '),
(5, 5, 5, '2022-09-19', ' In eleifend blandit euismod. Curabitur eget auctor nisi, quis fermentum neque. Sed sed semper ligula. Fusce facilisis nibh nulla, ut placerat libero efficitur et. Sed nec posuere nisl, sit amet sagittis urna. Duis eu lacus hendrerit, tempor diam at, port'),
(6, 6, 6, '2022-07-19', ' In eleifend blandit euismod. Curabitur eget auctor nisi, quis fermentum neque. Sed sed semper ligula. Fusce facilisis nibh nulla, ut placerat libero efficitur et. Sed nec posuere nisl, sit amet sagittis urna. Duis eu lacus hendrerit, tempor diam at, port'),
(7, 7, 7, '2022-08-20', ' Proin sodales, dui a facilisis malesuada, augue nunc suscipit diam, et sodales mi velit in orci. Praesent tellus ligula, vulputate ut sapien nec, bibendum aliquet diam. Donec sodales congue justo, vel elementum lacus consequat id. Nunc magna libero, elei'),
(8, 8, 8, '2022-06-21', ' Nam ornare mi elit, tristique hendrerit enim consectetur at. Curabitur semper eleifend sagittis. Suspendisse potenti. Vestibulum nulla velit, cursus vel sem vitae, ultrices efficitur dolor. Pellentesque quis laoreet ante, non convallis felis. Donec eleif'),
(9, 9, 9, '2022-09-01', ' Cras luctus magna non velit maximus pharetra quis quis nulla. Nullam in ornare justo. Nunc tincidunt rhoncus tincidunt. Maecenas venenatis tortor id quam placerat eleifend. Curabitur dictum mollis mauris, quis vehicula nibh pretium vel. Aliquam ante lacu'),
(10, 10, 21, '2022-09-14', ' Praesent dignissim augue vehicula ultrices scelerisque. Donec placerat nunc eu finibus ultricies. Sed eget vehicula purus. Nunc a nibh et lectus varius eleifend. Duis metus tellus, consectetur at urna quis, consequat ultricies quam. Cras pretium arcu eu ');

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
