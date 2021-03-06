-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 10 2021 г., 06:30
-- Версия сервера: 8.0.24
-- Версия PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `basketlake`
--

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `header` text NOT NULL,
  `anounnce` text NOT NULL,
  `img` text NOT NULL,
  `alltext` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `date`, `header`, `anounnce`, `img`, `alltext`) VALUES
(1, '2021-11-08 17:00:00', '«Лейкерс» установили антирекорд последних 25 лет', '«Лейкерс» впервые за последние 25 лет потерпели поражение, владея преимуществом 25+ очков по ходу встречи. «Лос-Анджелес» лидировал с разницей +26 во второй четверти.', 'pic/news/one-news.jpg', '«Лос-Анджелес Лейкерс» уступил «Оклахома-Сити Тандер» (115:123) в матче регулярного чемпионата НБА.\r\n«Лейкерс» впервые за последние 25 лет потерпели поражение, владея преимуществом 25+ очков по ходу встречи. «Лос-Анджелес» лидировал с разницей +26 во второй четверти. «Лейкерс» выиграли 230 из 230 предыдущих матчей, в которых опережали соперника на 25+ очков.\r\nВ составе победителей лучшими на площадке были Шей Гилджес-Александер (27 очков и 9 подборов), Дариус Базли (20 очков) и Джош Гидди (18 очков и 10 передач). У «Лейкерс» наиболее результативными игроками стали Энтони Дэвис (30 очков), оформивший трипл-дабл Расселл Уэстбрук (20 очков, 14 подборов и 13 передач) и Кармело Энтони (13 очков). Леброн Джеймс участия в матче не принимал.\r\n'),
(2, '2021-11-08 17:00:00', 'Уэстбрук выразил недовольство данком Бэйзли на последних секундах и заработал удаление', 'Уэстбрук выразил недовольство данком Дариуса Бэйзли, который тот исполнил после перехвата за 4 секунды до сирены при счете 121:115.', 'pic/news/two-news.jpg', 'Звездный разыгрывающий «Лейкерс» Расселл Уэстбрук заработал удаление на последних секундах матча с «Тандер» (115:123).\r\nУэстбрук выразил недовольство данком Дариуса Бэйзли, который тот исполнил после перехвата за 4 секунды до сирены при счете 121:115. Между игроками команд завязалась небольшая потасовка.\r\n«Я придерживаюсь олдскульных правил в баскетболе. Не могу пройти мимо, когда случается такая фигня. Некоторые вещи на площадке недопустимы. Матч был окончен, я не оценил случившееся. Вот и все», – объяснил ситуацию Уэстбрук.\r\n\r\n'),
(3, '2021-11-08 17:00:00', 'Монк и Энтони исполнили по эирболу в концовке с «Тандер» при «-3»', '«Лейкерс» имели возможность сравнять счет в концовке матча с «Оклахомой» (115:123).', 'pic/news/three-news.jpg', '«Лейкерс» имели возможность сравнять счет в концовке матча с «Оклахомой» (115:123).\r\nНа последних секундах встречи при счете 115:118 Малик Монк и Кармело Энтони бросали из-за дуги. В обоих случаях мяч не коснулся даже дужки кольца.\r\nКалифорнийцы по ходу матча вели 26 очков.\r\n');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
