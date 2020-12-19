-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Дек 10 2015 г., 19:52
-- Версия сервера: 5.0.27-community-nt
-- Версия PHP: 5.3.28

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `library`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(15) default NULL,
  `LastName` varchar(15) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`ID`, `FirstName`, `LastName`) VALUES
(1, 'Джеймс Р.', 'Грофф'),
(2, 'Сергей', 'Никольский'),
(3, 'Михаил', 'Маров'),
(4, 'Борис', 'Карпов'),
(5, 'Алексей', 'Архангельский'),
(6, 'Владимир', 'Король'),
(7, 'Евангелос', 'Петрусос'),
(8, 'Маркус', 'Херхагер'),
(9, 'Павел', 'Гарбар'),
(10, 'Александр', 'Матросов'),
(11, 'Людмила', 'Омельченко'),
(12, 'Кевин', 'Рейчард'),
(13, 'Ольга', 'Кокорева'),
(14, 'Марк', 'Браун');

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `ID` int(11) NOT NULL,
  `Name` varchar(70) default NULL,
  `NPages` int(11) default NULL,
  `YearPress` int(11) default NULL,
  `Id_Themes` int(11) default NULL,
  `Id_Category` int(11) default NULL,
  `Id_Author` int(11) default NULL,
  `Id_Press` int(11) default NULL,
  `Comment` varchar(32) default NULL,
  `Quantity` int(11) default NULL,
  `Price` decimal(10,4) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`ID`, `Name`, `NPages`, `YearPress`, `Id_Themes`, `Id_Category`, `Id_Author`, `Id_Press`, `Comment`, `Quantity`, `Price`) VALUES
(1, 'SQL', 816, 2001, 1, 1, 1, 2, '2-е издание', 2, '100.0000'),
(2, '3D Studio Max 3', 640, 2000, 3, 6, 3, 3, 'Учебный курс', 3, '300.0000'),
(3, '100 компонентов общего назначения библиотеки Delphi 5', 272, 1999, 2, 4, 5, 4, 'Компоненты', 1, '25.0000'),
(4, 'Visual Basic 6', 416, 2000, 2, 5, 4, 3, 'Специальный справочник', 1, '600.0000'),
(5, 'Курс математического анализа', 328, 1990, 4, 2, 2, 5, '1-й том', 1, '77.0000'),
(6, 'Библиотека C++ Builder 5: 70 компонентов ввода/вывода информации', 288, 2000, 2, 3, 5, 4, 'Компоненты', 1, '567.0000'),
(7, 'Интегрированная среда разработки', 272, 2000, 2, 3, 5, 4, 'Среда разработки', 2, '444.0000'),
(8, 'Русская справка (Help) по Delphi 5 и  Object Pascal', 32, 2000, 2, 4, 5, 4, 'Справочник', 1, '222.0000'),
(9, 'Visual Basic 6.0 for Application', 488, 2000, 2, 5, 6, 6, 'Справочник с примерами', 3, '111.0000'),
(10, 'Visual Basic 6', 576, 2000, 2, 5, 7, 2, 'Руководство разработчика 1-й том', 1, '233.0000'),
(11, 'Mathcad 2000', 416, 2000, 5, 7, 8, 2, 'Полное руководство', 1, '461.0000'),
(12, 'Novell GroupWise 5.5 система электронной почты и коллективной работы', 480, 2000, 6, 8, 9, 2, 'Сетевые пакеты', 2, '1890.0000'),
(13, 'Реестр Windows 2000', 352, 2000, 9, 12, 13, 2, 'Руководство для профессионалов', 4, '789.0000'),
(14, 'Unix справочник', 384, 1999, 9, 13, 12, 3, 'Справочное руководство', 1, '652.0000'),
(15, 'Самоучитель Visual FoxPro 6.0', 512, 1999, 1, 11, 11, 2, 'Самоучитель', 1, '345.0000'),
(16, 'Самоучитель FrontPage 2000', 512, 1999, 7, 10, 11, 2, 'Самоучитель', 1, '1333.0000'),
(17, 'Самоучитель Perl', 432, 2000, 2, 9, 10, 2, 'Самоучитель', 2, '444.0000'),
(18, 'HTML 3.2', 1040, 2000, 7, 14, 14, 2, 'Руководство', 5, '555.0000');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `Id` int(11) NOT NULL,
  `Name` varchar(25) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`Id`, `Name`) VALUES
(1, 'Язык SQL'),
(2, 'Математический анализ'),
(3, 'C++ Builder'),
(4, 'Delphi'),
(5, 'Visual Basic'),
(6, '3D Studio Max'),
(7, 'Mathcad'),
(8, 'Novell'),
(9, 'Perl'),
(10, 'FrontPage'),
(11, 'Visual FoxPro'),
(12, 'Windows 2000'),
(13, 'Unix'),
(14, 'HTML');

-- --------------------------------------------------------

--
-- Структура таблицы `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `departments`
--

INSERT INTO `departments` (`ID`, `Name`) VALUES
(1, 'Программерства'),
(2, 'Графика и Дизайн'),
(3, 'Железа и Администрирования');

-- --------------------------------------------------------

--
-- Структура таблицы `faculties`
--

CREATE TABLE IF NOT EXISTS `faculties` (
  `ID` int(11) NOT NULL,
  `Name` varchar(20) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `faculties`
--

INSERT INTO `faculties` (`ID`, `Name`) VALUES
(1, 'Программирования'),
(2, 'Веб-дизайна'),
(3, 'Администрирования');

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(5) default NULL,
  `id_faculty` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`id`, `name`, `id_faculty`) VALUES
(2, '9П1', 1),
(3, '9П2', 1),
(4, '9А', 3),
(5, '9Д', 2),
(6, '14А', 3),
(7, '19П1', 1),
(8, '18П2', 1),
(9, '18А', 3),
(10, '19Д', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `libs`
--

CREATE TABLE IF NOT EXISTS `libs` (
  `id` int(11) NOT NULL,
  `firstname` varchar(10) default NULL,
  `lastname` varchar(15) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `libs`
--

INSERT INTO `libs` (`id`, `firstname`, `lastname`) VALUES
(1, 'Сергей', 'Максименко'),
(2, 'Дмитрий', 'Чеботарев');

-- --------------------------------------------------------

--
-- Структура таблицы `press`
--

CREATE TABLE IF NOT EXISTS `press` (
  `ID` int(11) NOT NULL,
  `Name` varchar(15) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `press`
--

INSERT INTO `press` (`ID`, `Name`) VALUES
(1, 'DiaSoft'),
(2, 'BHV'),
(3, 'Питер'),
(4, 'Бином'),
(5, 'Наука'),
(6, 'Кудиц-Образ'),
(7, 'Диалектика');

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(12) default NULL,
  `LastName` varchar(15) default NULL,
  `Id_Group` int(11) default NULL,
  `Term` smallint(6) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`ID`, `FirstName`, `LastName`, `Id_Group`, `Term`) VALUES
(2, 'Вячеслав', 'Зезик', 8, 2),
(3, 'Ольга', 'Мантуляк', 8, 2),
(4, 'Ольга', 'Хреновак', 8, 2),
(5, 'Ольга', 'Медведева', 8, 2),
(6, 'Галина', 'Инащенко', 8, 2),
(7, 'Юрий', 'Минаев', 8, 2),
(8, 'Юрий', 'Домовесов', 8, 2),
(9, 'Руслан', 'Ярмолович', 8, 2),
(10, 'Игорь', 'Удовик', 8, 2),
(11, 'Петр', 'Кацевич', 8, 2),
(12, 'Евгений', 'Бурцев', 3, 2),
(13, 'Флора', 'Побирская', 3, 2),
(14, 'Наталья', 'Гридина', 3, 2),
(15, 'Елена', 'Акусова', 3, 2),
(16, 'Светлана', 'Горшкова', 9, 2),
(17, 'Александр', 'Любенко', 10, 2),
(18, 'Евгения', 'Цимбалюк', 10, 2),
(19, 'Ольга', 'Болячевская', 5, 2),
(20, 'Станислав', 'Плешаков', 7, 2),
(21, 'Елена', 'Таран', 4, 2),
(22, 'Денис', 'Рогачевский', 6, 2),
(23, 'Оксана', 'Тихонова', 6, 2),
(24, 'Петр', 'Максимов', 3, 2),
(25, 'Ирина', 'Стогнева', 5, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `s_cards`
--

CREATE TABLE IF NOT EXISTS `s_cards` (
  `ID` int(11) NOT NULL,
  `Id_Student` int(11) default NULL,
  `Id_Book` int(11) default NULL,
  `DateOut` varchar(32) default NULL,
  `DateIn` varchar(32) default NULL,
  `Id_Lib` int(11) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `s_cards`
--

INSERT INTO `s_cards` (`ID`, `Id_Student`, `Id_Book`, `DateOut`, `DateIn`, `Id_Lib`) VALUES
(1, 2, 1, '17.05.2001', '12.06.2001', 1),
(2, 17, 18, '18.05.2000', NULL, 1),
(3, 6, 3, '21.04.2001', NULL, 2),
(4, 21, 4, '26.03.2001', NULL, 2),
(5, 3, 1, '07.05.2000', '12.04.2001', 1),
(6, 7, 11, '02.06.2001', NULL, 2),
(7, 16, 14, '05.04.2001', NULL, 1),
(8, 11, 6, '05.05.2001', NULL, 2),
(9, 17, 2, '01.10.2001', NULL, 2),
(10, 10, 13, '05.05.2001', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `ID` int(11) NOT NULL,
  `FIRSTNAME` varchar(12) default NULL,
  `LASTNAME` varchar(15) default NULL,
  `ID_dep` int(11) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `teachers`
--

INSERT INTO `teachers` (`ID`, `FIRSTNAME`, `LASTNAME`, `ID_dep`) VALUES
(1, 'Григорий', 'Ящук', 1),
(2, 'Алекс', 'Туманов', 1),
(3, 'Сергей', 'Максименко', 2),
(4, 'Дмитрий', 'Боровский', 2),
(5, 'Виктор', 'Бровар', 2),
(6, 'Вадим', 'Ткаченко', 3),
(7, 'Вячеслав', 'Калашников', 3),
(8, 'Руслан', 'Кучеренко', 1),
(9, 'Андрей', 'Тендюк', 1),
(10, 'Анатолий', 'Выклюк', 2),
(11, 'Олег', 'Резниченко', 3),
(12, 'Александр', 'Артемов', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `themes`
--

CREATE TABLE IF NOT EXISTS `themes` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(24) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `themes`
--

INSERT INTO `themes` (`ID`, `NAME`) VALUES
(1, 'Базы данных'),
(2, 'Программирование'),
(3, 'Графические пакеты'),
(4, 'Высшая математика'),
(5, 'Математические пакеты'),
(6, 'Сети'),
(7, 'Web-дизайн'),
(8, 'Windows 2000'),
(9, 'Операционные системы');

-- --------------------------------------------------------

--
-- Структура таблицы `t_cards`
--

CREATE TABLE IF NOT EXISTS `t_cards` (
  `ID` int(11) NOT NULL,
  `Id_Teacher` int(11) default NULL,
  `Id_Books` int(11) default NULL,
  `DateOut` varchar(32) default NULL,
  `DateIn` varchar(32) default NULL,
  `Id_Lib` int(11) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t_cards`
--

INSERT INTO `t_cards` (`ID`, `Id_Teacher`, `Id_Books`, `DateOut`, `DateIn`, `Id_Lib`) VALUES
(1, 2, 13, '01.01.2000', '04.07.2001', 1),
(2, 10, 2, '03.03.2000', NULL, 1),
(3, 6, 12, '04.06.2000', NULL, 2),
(4, 3, 1, '05.09.2000', NULL, 1),
(5, 8, 8, '05.05.2000', NULL, 2),
(6, 5, 18, '02.02.2001', NULL, 2),
(7, 12, 17, '04.03.2001', NULL, 1),
(8, 4, 18, '02.07.2000', NULL, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
