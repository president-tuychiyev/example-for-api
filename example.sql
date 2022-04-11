-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 12 2022 г., 00:07
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `premdouz`
--

-- --------------------------------------------------------

--
-- Структура таблицы `address`
--

CREATE TABLE `address` (
  `id` bigint UNSIGNED NOT NULL,
  `regionId` int NOT NULL,
  `districtId` int NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `contact`
--

CREATE TABLE `contact` (
  `id` int NOT NULL,
  `districtId` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `fullNameUz` varchar(38) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `positionUz` varchar(151) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `positionRu` varchar(127) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `positionEn` varchar(129) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(54) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `jobPhone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `site` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `social` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `contact`
--

INSERT INTO `contact` (`id`, `districtId`, `fullNameUz`, `positionUz`, `positionRu`, `positionEn`, `phone`, `jobPhone`, `site`, `social`, `created_at`, `updated_at`) VALUES
(1, '1', 'Абдурахмонова Наргизахон Комолдиновна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '90-524-55-44', '74-373-13-61', 'andijontmtb@umail.uz', 'https://www.facebook.com/andijontumani.mtb', NULL, NULL),
(2, '2', 'Жўраева Малохатхон Маъмуровна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '93-783-77-51', '74-233-09-21', 'asakamtb.uz', 'https: //www.fecebook.com/qurbonon.oktamjon.5, https://t.me/joinchat/WTWJWa5dVxooC-nm', NULL, NULL),
(3, '3', 'Хакимов Бахтиёр Тулашевич', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '97-582-31-38', '74-32310-75', 'baliqchimtb.uz', 'https://www.facebook.com/profile.php?id=100066493206781', NULL, NULL),
(4, '5', 'Айбешова Алфия Хабибуллаевна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '+998 90 529 31 84', '-', 'buloqboshimtb.uz', 'https://www.facebook.com/buloqbsohitumani.mtb/, telegram:https://t.me/and ijnomtb', NULL, NULL),
(5, '4', 'Тошматова Ферузахон Усмоновна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '94-389-50-02', '94-389-50-02', 'bostonmtb.uz', 'https://t.me/joinchat/VoUZ29tr3MtsQ-et', NULL, NULL),
(6, '7', 'Каримова Малохат Абдуллаевна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '90-760-81-00', '74-755-27-64', 'Jalaquduq_tuman_mtb@umail.uz', 'https://www.facebook.com/groups/868553530550631/permalink/965477350858248/', NULL, NULL),
(7, '6', 'Мадаминова Дилноза Абдусойибовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '93-411-65-86', '74-312-38-06', 'izboskanmtb.uz', '93-411-65-86 telegram', NULL, NULL),
(8, '10', 'Юхёев Абдумухтор Абдурахим ўғли', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '91-600-51-52', '743913602', 'marhamatmtb.uz', 'https://t.me/joinchat/_4Mk_RivrJ9kNTky', NULL, NULL),
(9, '14', 'Комилова Азиза Гуломжон қизи', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99-326-15-31', '74-761-13-02', 'ulugnormtb.uz', 'https://www.facebook.com/ulugnorlik.bolajonlar/', NULL, NULL),
(10, '11', 'Шерматов Улуғбек Сотволдиевич', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99) 439-76-83', '74) 354-58-11', 'oltinkolmtb.uz', '94) 438-77-99 telegramm', NULL, NULL),
(11, '12', 'Маннопов Шохрухбек Шахобиддин угли', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '94-105-09-92', '-', 'paxtaobodmtb.uz', 'https://www.facebook.com/photo/?fbid=474976097197809&set=a.124511848910904', NULL, NULL),
(12, '8', 'Абдуллаева Нигора Акромжоновна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '91-176-05-84', '98-742-1179', 'xojaobodmtb.uz', '91-176-05-84 телеграм', NULL, NULL),
(13, '13', 'Абдураҳмонов Авазбек Дилшоджон угли', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '93 189 62 82', '-', 'shaxrixonmtb.uz', 'https://www.facebook.com/groups/661769991155297/?ref=share', NULL, NULL),
(14, '9', 'Эрматова Махлиё Тулкиновна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99-491-81-00', '74-723-19-69', 'qurgantepamtb.uz', 'https://www.facebook.com/abdumutalibjon.mamadaliyev.', NULL, NULL),
(15, '16', 'Бозорова Рисолат Абдурахмоновна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(90) 718-92-22', '-', 'buxorotumanmtb.zn.uz', '-', NULL, NULL),
(16, '25', 'Юсупова Дилфуза Ибрагимовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(91) 975-51-88', 'мавжуд эмас', 'vobkenttmtb.zn.uz', '-', NULL, NULL),
(17, '18', 'Каххорова Дилбар Нуриддиновна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(93) 475-68-17', '-', 'jondortmtb.zn.uz', '-', NULL, NULL),
(18, '19', 'Хабибова Мунаввар Шамсуллоевна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(97) 477-18-14', '-', 'kogontummtb.zn.uz', '-', NULL, NULL),
(19, '15', 'Туропов Умид Сайдуллаевич', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(99) 389-75-25', '(65) 342-14-50', 'olottmtb.zn.uz', '-', NULL, NULL),
(20, '22', 'Насриддинова Фотима Рустамовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(99) 112-64-72', '-', 'peshkutmtb.zn.uz', '-', NULL, NULL),
(21, '23', 'Ҳамроева Гулчехра Рамазоновна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(91) 444-96-45', '-', 'romitantmtb.zn.uz', '-', NULL, NULL),
(22, '24', 'Ҳакимова Дилноза Ганиевна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(91) 926-83-84', '65 502-38-80', 'shofirkontmtb.zn.uz', '-', NULL, NULL),
(23, '20', 'Қуллиев Махмуд Итолмас Ўғли', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(99) 702-66-81', '-', 'qorakultmtb.zn.uz', '-', NULL, NULL),
(24, '17', 'Ҳодиева Зарнигор Бахрамовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(90) 080-65-65', 'мавжуд эмас', 'gijduvontmtb.zn.uz', '-', NULL, NULL),
(25, '41', 'Нарзуллаев Бобир Мухиддинович', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '97-794-88-11', '72-372-11-91', '-', 'https://t.me/arnasoy_mtb', NULL, NULL),
(26, '42', 'Жумабоев Хусниддин Хазратқул ўғли', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '97-484-10-93', NULL, '-', 'https://t.me/baxmal_mtb', NULL, NULL),
(27, '45', 'Исакова Бахринисо Нуритдиновна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '93-309-70-47', '72-432-11-26', '-', 'телеграм гуруҳ', NULL, NULL),
(28, '173', 'Хакимова Хафиза Илхомовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '90-486-12-79', '72-221-19-50', '-', 'телеграм гуруҳ', NULL, NULL),
(29, '43', 'Хўшвоқтова Умида Иминдиллохоновна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '91-568-10-33', '-', 'dustlikmtb.zn.uz', 'телеграм гуруҳ', NULL, NULL),
(30, '51', 'Нарзуллаева Шохиста Ғофуровна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '90-265-85-92', '72-472-23-47', '-', 'телеграм гуруҳ', NULL, NULL),
(31, '52', 'Сафарова Марифат Мардановна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '94-575-70-05', '72-492-22-78', '-', 'телеграм гуруҳ', NULL, NULL),
(32, '50', 'Оқбўтаева Турсуной Шербўтаевна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '93-295-70-95', '-', 'zomin mtb.uz', 'телеграм гуруҳ', NULL, NULL),
(33, '47', 'Жумабаев Самандар Исроилович', 'Axborot va kommunikatsiya texnologiyalarini joriy etish bo‘yicha mutaxassis', 'Специалист по внедрению информационно-коммуникационных технологий', 'Information and Communication Technology Implementation Specialist', '93-306-53-63', '72-312-26-90', 'mirzachulmtb.uz', 'https://t.me/mirzachul_mtb', NULL, NULL),
(34, '48', 'Бегматова Нилуфар Ғаппаровна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '94-346-20-49', '72-554-14-56', '-', 'телеграм гуруҳ', NULL, NULL),
(35, '44', 'Каримова Шохида Махмудовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '91-222-89-99', '72-452-14-83', 'forishmtb.zn.uz', 'телеграм гуруҳ', NULL, NULL),
(36, '49', 'Султонқулова Озода Ботирқуловна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99-355-24-64', '72-542-10-34', '-', 'телеграм гуруҳ', NULL, NULL),
(37, '92', 'Жалолова Юлдуз Турдипщлатовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '90-868-29-88', '75 522 92 78', 'Shahrisabz MTB .uz', 'Шаҳрисабз  MTT \"бир йиллик мажбурий таълим\" тарбиячилари телеграмм гуруҳи', NULL, NULL),
(38, '96', 'Бердиев Ўткир Зиятович', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '88-600-00-74', '-', 'guzormtb.uz', '\"G\'uzor tumani MTT bir yillik majburiy ta\'lim tarbiyachilari\" телеграмм гуруҳи', NULL, NULL),
(39, '84', 'Кенжаева Дилфуза Холмуродовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '93-935-34-86', '75-612-17-48', 'dehqonobodmtb.uz', 'Dehqonobod majburiy bir yillik tayyorlov guruh tarbiyachilari', NULL, NULL),
(40, '85', 'Болтаева Ҳилола Тўхтамуродовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99893-907-87-01', '75-642-20-70', 'kasbimtb.uz', '\"Касби тумани MTTбир йиллик мажбурий таълим тарбиячилари\" телеграмм гуруҳи', NULL, NULL),
(41, '86', 'Ачилова Дилафрўз Баҳодировна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '90-426-03-86', '-', 'kitobmtb,uz', 'Китоб туман 6 ёш гуруҳ', NULL, NULL),
(42, '81', 'Ҳасанова Шахноза Баратовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99-082-15-57', '-', 'http://koson mtb.uz/', 'Косон туман МТБ \"Мажбурий таълим\"телеграм гурухи', NULL, NULL),
(43, '94', 'Саттарова Лида Рахимжон қизи', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '93 697 - 95 - 77', '93 697 - 95 - 77', 'qamashitmtb.uz', 'Мажбурий бир йиллик гурухлар учун телеграм гурухи', NULL, NULL),
(44, '95', 'Хайитова Гулшан Йулдашевна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '90-732-72-62', '-', 'samariddinroziboyev7@gmail.com', 'Карши туман  MTT bir yillik majburiy ta\'lim tarbiyachilari телеграмм гуруҳи', NULL, NULL),
(45, '88', 'Азизова Олия Талиповна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '91-214-46-94', '-', 'mirishkor tmtb', 'Миришкор таълим ва тарбия телеграм гуруҳи', NULL, NULL),
(46, '89', 'Атаева Шохиста Фатуллаевна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '90-608-00-73', '-', 'muborakmtb.uz', '\"Муборак тумани MTTбир йиллик мажбурий таълим тарбиячилари\" телеграмм гуруҳи', NULL, NULL),
(47, '90', 'Хуррамова Зебо Келдиёровна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '97-222-33-02', '75-512-13-52', 'nishonmtb.uz', 'Давлат ва нодавлат мактабгача таълим ташкилотлари телеграмм гуруҳи', NULL, NULL),
(48, '91', 'Ашурова Гулнора Мойлиевна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99-746-46-73', '-', 'chiroqchimtb.uz', 'Чироқчи туман МТБ 6 ёшли гуруҳ»', NULL, NULL),
(49, '92', 'Қобилова Азиза Турсуновна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '97 291 09 75', '97 291 09 75', 'shaxrisabzmtb.uz', '6-Yoshli_Majburiy_ta\'lim_guruhlar', NULL, NULL),
(50, '93', 'Эшқувватова Иқбол Абдихалиловна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '91-226-45-09', '-', 'yakkabog\'mtb.uz', 'Яккабоғ туман МТБ, 6 ёш', NULL, NULL),
(51, '77', 'Маматова Чарос Алишер қизи', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '90-647-58-53', '79-53-2-46-11', 'karmana-mtb.uz', '90-647-58-53', NULL, NULL),
(52, '80', 'Камолов Аброр Жамолбоевич', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99 417 97 85', '79-562-17-98', 'navbahor-mtb.uz', '94-374-85-58', NULL, NULL),
(53, '81', 'Бобоқандов Жасурбек Эгамбердиевич', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '97 365 65 57', '-', 'nurota-mtb.uz', '97 365 65 57', NULL, NULL),
(54, '76', 'Маликова Махфуза', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99-196-01-92', '-', '-', '99-196-01-92', NULL, NULL),
(55, '78', 'Восиева Маърифат Тўҳтақуловна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '94-257-68-28', '94-257-68-28', 'Qiziltepa-mtb.uz', '94-257-68-28', NULL, NULL),
(56, '79', 'Тоғаева Гулноза Илхомиддин қизи', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(+998)94-253-14-12', '79-545-51-60', 'xatirchi_tmtb@mdo.uz', '(+998)94-253-14-12', NULL, NULL),
(57, '83', 'Дониёрова Дилдора Ибодуллаевна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '93-313-85-09', '79-593-49-47', 'uchquduq-tmtb.uz', '93-313-85-09', NULL, NULL),
(58, '67', 'Закиров Азамат Салимжон ўғли', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99-019-12-15', '69-452-23-04', 'mingbuloq.namudo.uz', 'https://www.facebook.com/mingbuloqtmtb', NULL, NULL),
(59, '66', 'Юсуфхонов Махмудхўжа Умархон ўғли', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '94-300-03-73', '69-65-24-651', 'kosonsoy.namudo.uz', 'https://www.facebook.com/kosonsoytmtb/', NULL, NULL),
(60, '68', 'Қобулова Назира Турсуновна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99-650-59-68', '95-307-23-24', 'namtmtb.namudo.uz', '-', NULL, NULL),
(61, '69', 'Исақова Машҳура.', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99-978-75-05', '69-612-13-85', 'norin.namudo.uz', '-', NULL, NULL),
(62, '70', 'Юлдашева Умида Ахмаджановна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99-975-07-72', '69-433-13-89', 'pop.namudo.uz', 'https://www.facebook.com/groups/375637403366473', NULL, NULL),
(63, '71', 'Каримова\nМухаббатхон', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99-320-82-05', '69-442-22-80', 'turakurgan.namudo.uz', '-', NULL, NULL),
(64, '73', 'Фахритдинова Асила Хошимжоновна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '93-050-74-59', '69-482-12-55', 'uychi.namudo.uz', 'https://www.facebook.com/groups/2493638130859850', NULL, NULL),
(65, '72', 'Султонова Асила Равшанбековна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '94-276-71-75', '69-462-11-83', 'uchkurgan.namudo.uz', '-', NULL, NULL),
(66, '64', 'Инамжанова Дилфуза Ҳайбуллаевна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '93-401-00-82', '69-412-49-04', 'chortoq.namudo.uz', '-', NULL, NULL),
(67, '65', 'Авазхонова Дилдора Авазхон қизи', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '97-371-76-92', '69-423-21-46', 'chust.namudo.uz', 'https://www.facebook.com/groups/2123442704635731', NULL, NULL),
(68, '74', 'Туйчиева Гавхарой Хайдаралиевна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '97-230-23-47', '69-633-41-82', 'yangiqurgon.namudo.uz', '-', NULL, NULL),
(69, '111', 'Саттарова Шохида Лапасовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '97-337-72-88', '97-337-72-88', 'http://bulungurmtb.uz', 't.me/bulungurmtb.uz', NULL, NULL),
(70, '113', 'Абдунабиева Хуршида Абдурашидовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '93-992-48-51', '93-992-48-51', 'http://jomboymtb.uz', 't.me/jomboymtb.uz', NULL, NULL),
(71, '112', 'Абдурахмонов Фурқат Дониёрович', 'Tuman maktabgacha ta’lim bo‘limi boshlig‘i o‘rinbosari', NULL, NULL, '90 981 89 67', '66-629 18 55', 'http://ishtixonmtb.uz', 'facebook: \"Ishtixon tuman maktabgacha ta\'lim bo\'limi\"', NULL, NULL),
(72, '114', 'Бобоев Шерали Неъматович', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '97-922-07-78', '66-414-13-70', 'http://kattmtb.uz', '-', NULL, NULL),
(73, '116', 'Қурбонова Дилдора Сирожиддиновна', '“Ta’lim sifatini nazorat qilish va metodik xizmat ko‘rsatishni tashkil etish” kafedrasi mudiri', 'Заведующая отделом «Управление качеством образования и организация методической службы»', 'Head of the Department of \"Quality Control in Education and Organization of Methodological Services\"', '97-927-99-43', '97-927-99-43', 'http://narpaymtb.uz', '-', NULL, NULL),
(74, '117', 'Аллаярова Зулфия Рахмановна', 'Profilli maktabgacha ta’limni muvofiqlashtirish, bolalar salomatligi va xavfsiz ovqatlanishini ta’minlash boshqarmasi boshlig‘i', 'Профильный руководитель отдела координации дошкольного образования, здоровья детей и безопасного питания', 'Profile Head of the Department for Coordination of Preschool Education, Child Health and Safe Nutrition', '93-355-64-89', '93-225-66-76', 'http://nurobodmtb.uz/', 'Тelegram', NULL, NULL),
(75, '118', 'Бердикулов Жасур Буронович', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '66-49-25-630', '99-311-17-66', 'http://oqdaryomtb.uz', 't.me/oqdaryomtb.uz', NULL, NULL),
(76, '120', 'Султонова Нигора Кузиевна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '93- 035-82-96', '66-425-66-20', 'http://payariqmtb.uz', 'https://t.me/paymtm_uz, https://www.facebook.com/dilmurod.raximov.798/', NULL, NULL),
(77, '121', 'Бобоноров Хусниддин Бахридинович', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99-062-94-75', '99-062-94-75', 'http://pastdargommtb.uz', 't.me/pastdargom_mtb_topshiriq', NULL, NULL),
(78, '119', 'Бобобекова Умида Худойбердиевна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '93-950-19-99', '66-403-13-49', 'http://paxtachimtb.uz', 'https://t.me/PaxtachiMTB.uz', NULL, NULL),
(79, '122', 'Бердиева Шоҳида Амонқуловна', 'Axborot va kommunikatsiya texnologiyalarini joriy etish bo‘yicha mutaxassis', 'Специалист по внедрению информационно-коммуникационных технологий', 'Information and Communication Technology Implementation Specialist', '93-337-37-53', '66-612-55-20', 'http://Samtmtb.uz', 't.me/@Samtummaktabgacha', NULL, NULL),
(80, '123', 'Шомуродов Хуснидин Нуридинович', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '93-720-76-16', '93-720-76-16', 'http://tayloqmtb.uz', 'https://www.facebook.com/groups', NULL, NULL),
(81, '124', 'Исмоилов Отабек Раббимович', '“Ta’lim sifatini nazorat qilish va metodik xizmat ko‘rsatishni tashkil etish” kafedrasi mudiri', 'Заведующая отделом «Управление качеством образования и организация методической службы»', 'Head of the Department of \"Quality Control in Education and Organization of Methodological Services\"', '90-477-41-54', '99-123-12-99', 'http://urguttumanmtb.uz', 'https://t.me/urgutmtb.uz ', NULL, NULL),
(82, '115', 'Сайфуллаева Шоира Абдуҳамидовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '97-894-24-03', '66-646-18-49', 'http://qushrabotmtb.uz', 'https://t.me/Qo\'shrabotMTB.uz', NULL, NULL),
(83, '133', 'Наркабилова Салима \nЖўраевна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(93) 763-04-57', '-', 'www.angormtb.uz', 'https://t.me/angor_mtb', NULL, NULL),
(84, '146', 'Абдурахимова Дилбар \nЙўлдошевна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(99) 182-24-79', '(76) 374-15-63', 'www.bandixonmtb.uz', '-', NULL, NULL),
(85, '134', 'Нуркелдиева Насиба \nЖўраевна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(97) 843-09-71', '-', 'www.boysun-mtm.uz', 'https://t.me/boysunmtb', NULL, NULL),
(86, '135', 'Исломова Мунавар \nҚаршиевна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(90) 267-66-21', '(76) 413-39-96', 'www.mtm-denov.uz', 'https://t.me/denovmtb https://www.facebook.com/profile.php?id=100041149536951', NULL, NULL),
(87, '136', 'Муратова Нодира \nТўлқиновна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(93) 797-13-11', '(76) 432-62-55', 'www.jarmtb.uz', 'https://t.me/https6fgh565f4fgh', NULL, NULL),
(88, '139', 'Давлатов Нурмуҳаммад \nҚурбонович', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(90) 294-90-91', '-', 'www.mtbb.uz', 'https://t.me/muzmtbmatbuot', NULL, NULL),
(89, '140', 'Шаймуратов Нурбек \nПардаевич', 'Axborot va kommunikatsiya texnologiyalarini joriy etish bo‘yicha mutaxassis', 'Специалист по внедрению информационно-коммуникационных технологий', 'Information and Communication Technology Implementation Specialist', '(91) 909-40-07', '76-47-77-441', 'www.oltinsoymtb.uz', 'https://t.me/OLTINSOYMTB, https://www.facebook.com/groups/180504793280933/', NULL, NULL),
(90, '141', 'Темиров Мовсиддин \nХусниддинович', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(91) 233-03-89', '(99) 734-97-75', 'www.mtbsariosiyo.uz', 'https://t.me/SariosiyoTMTB, https://m.facebook.com/sariosiyotuman.mtb', NULL, NULL),
(91, '144', 'Ҳамидов Азим \nПанжи ўғли', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(99) 421-64-55', '-', 'www.termiztmtb.uz', 'https://t.me/mtb_matbuoti', NULL, NULL),
(92, '145', 'Каримова Ўлмасхон \nХолбутаевна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(93) 638-88-42', '-', 'www.uzunmtb.uz', 'https://t.me/uzuntelegramkanal', NULL, NULL),
(93, '142', 'Якубова Юлдуз \nЭшмуратовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(94) 202-88-81', '(76) 322-23-55', 'www.sherobodmtb.uz', 'https://t.me/sherobod-tmtb', NULL, NULL),
(94, '143', 'Қаландарова Шахноза \nХолтўраевна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(99) 715-19-86', '-', 'www.sho\'rchimtb.uz', 'https://www.facebook.com/profile.php?id=100065247527995', NULL, NULL),
(95, '137', 'Алимова Гулсора \nХушбоқовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(94) 460-27-72', '(76) 359-35-21', 'www.qiziriqmtb.uz', 'https://t.me/mtbqiziriq', NULL, NULL);
INSERT INTO `contact` (`id`, `districtId`, `fullNameUz`, `positionUz`, `positionRu`, `positionEn`, `phone`, `jobPhone`, `site`, `social`, `created_at`, `updated_at`) VALUES
(96, '138', 'Алимарданов Акбар \nЭшбўриевич', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(93) 526-38-63', '(76) 465-25-18', 'www.qummtb.uz', 'https://t.me/QumMTB', NULL, NULL),
(97, '126', 'Рахманов Иномжон Шамсиддин ўғли', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99899-473-91-74', '99261', 'Boyovutttmtb@ umail.uz', '998994739174', NULL, NULL),
(98, '127', 'Мадаминова Дилноз Ўриновна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99899-461-51-77', '67-769-23-05', 'https://gulistontumanimtb.uz/', '99899-461-51-77', NULL, NULL),
(99, '129', 'Пирназарова Хурсаной', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '+998 90 2429902', '67-310-12-68', '-', '+998 90 2429902', NULL, NULL),
(100, '131', 'аримов Жамол Базарбоевич', 'Axborot va kommunikatsiya texnologiyalarini joriy etish bo‘yicha mutaxassis', 'Специалист по внедрению информационно-коммуникационных технологий', 'Information and Communication Technology Implementation Specialist', '99899-11-22-1', '99865', 'http://oqoltin.sirvmtb.uz/', '99899-11-22-1', NULL, NULL),
(101, '130', 'Хакимова Нилуфар Абдураимовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99891-508-39-80', '67-333-37-35', '-', '99891-508-39-80', NULL, NULL),
(102, '125', 'Абдувалиева Санобар Базарбаевна', 'Axborot va kommunikatsiya texnologiyalarini joriy etish bo‘yicha mutaxassis', 'Специалист по внедрению информационно-коммуникационных технологий', 'Information and Communication Technology Implementation Specialist', '97-020-05-84', '97-020-05-84', 'http://sardoba.sirvmtb.uz/', '97-020-05-84', NULL, NULL),
(103, '132', 'Атаева Индира Фурқатовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99897-278-0-2', '99617', '-', '99897-278-0-2', NULL, NULL),
(104, '128', 'Эрматова Гулбахор Умматовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '+998 99 4710631', '+998 99 4710631', '-', '+998 99 4710631', NULL, NULL),
(105, '127', 'Маматов Ойбек Расулжонович', 'Ta’lim sifatini ta’minlash va uslubiy xizmatni tashkil etish bo‘limi metodisti', 'Методист отдела обеспечения качества и методологии', 'Methodist, Department of Quality Assurance and Methodology', '99899-20-40-60', '67-225-48-13', 'https://gulistonshmtb.uz/', '99899-460-27-15', NULL, NULL),
(106, 'yangiyer_city', 'D.M.Zokirova', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99899-860-45-47', '67-350-31-51', 'http://yangiyer.sirvmtb.uz/', '99899-860-45-47', NULL, NULL),
(107, '161', 'Аджумерова Арзы Асановна', 'Заведующий кафедрой «Организация деятельности общественных и негосударственных дошкольных образовательных учреждений и альтернативных форм обучения»', NULL, NULL, '93-586-31-80', '71-295-14-55', 'bektemirmtb.uz', 'https://t.me/bektemir_mtb                                     https://t.me/bektemirtumanimtb', NULL, NULL),
(108, '164', 'Абдуллаева Муножат Сухбатовна', 'Методист кафедры «Организация государственных и негосударственных дошкольных образовательных учреждений и альтернативных форм обучения»', NULL, NULL, '97 602-55-22', '71 -291-48-51', 'мавжуд эмас', 't.me/mirobodmtb_bot', NULL, NULL),
(109, '165', 'Юлчиев Авазбек Махамаджанович', 'Рукуоводитель кафедрой «Организация деятельности общественных и негосударственных дошкольных образовательных учреждений и альтернативных форм обучения»', NULL, NULL, '99-352-35-48', 'мавжуд эмас', '\nhttp://mulugbek.uz/oz', 'https://www.facebook.com/groups/1555339357926032/?ref=share', NULL, NULL),
(110, '168', 'Сидиқхўжаева Шахноза Рашидовна', 'Заведующий кафедрой «Организация деятельности общественных и негосударственных дошкольных образовательных учреждений и альтернативных форм обучения»', NULL, NULL, '93-561-21-08', '71 246-52-75', 'https://www.olmazormtb.uz', 'http://facebook.com/olmazor.mtb                         https://t.me/olmazormtb', NULL, NULL),
(111, '166', 'Исабаева Захро Хикматовна', 'Заведующий кафедрой «Организация деятельности общественных и негосударственных дошкольных образовательных учреждений и альтернативных форм обучения»', NULL, NULL, '90-925.17.73', '71-230.03.24', 'sayt stmtb.uz', '@sergelimaktabgachatalimtizim', NULL, NULL),
(112, '169', 'Талипова Феруза Бахтияровна', 'Заведующий кафедрой «Организация деятельности общественных и негосударственных дошкольных образовательных учреждений и альтернативных форм обучения»', NULL, NULL, '97-705-20-11', '71-217-47-16', 'https://uchtepamtb.uz', 'http://facebook.com/uchtepatumani.mtb,                         https://t.me/angl0000', NULL, NULL),
(113, '162', 'Искандарова Гулрух Пирмаматовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '91 164-41-11', '71 270-11-86', 'www.chtmtb.uz', 't.me/chilonzormtb_bot', NULL, NULL),
(114, '167', 'Сулейманова Севара Ибрагимовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '90-928-21-28', '-', 'https://shayxontohurmtb.uz', 'http://facebook.com/shayxontohurtumani.mtb, https://t.me/angl0000', NULL, NULL),
(115, '171', 'Усмонова Дилдора Самаритдиновна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99-866-44-77', '-', 'yunusobodmtb.uz', 'https://www.facebook.com/YTMTB', NULL, NULL),
(116, '170', 'Исмаилова Муборак Тахировна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '91 136-65-50', '71 231-12-28', 'ykkasaroymtb.uz', 'E-mail Ykkasaroy@mtd,uz', NULL, NULL),
(117, '163', 'Умурзакова Гульмира Абдумумин қизи', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99-888-63-00', '99 888-63-00', 'yashnobod.mtb.uz', '-', NULL, NULL),
(118, '172', 'Каримқулова Лобар Комолиддиновна', 'Ta’lim sifatini ta’minlash va uslubiy xizmatni tashkil etish bo‘limi metodisti', 'Методист отдела обеспечения качества и методологии', 'Methodist, Department of Quality Assurance and Methodology', '91-966-01-00', '-', '-', '-', NULL, NULL),
(119, 'toshkent_region', 'Муратова Дилдора', 'methodist_coordination_and_analysis', NULL, NULL, '99-077-22-62', '202-10-11', 'toshvmtb.uz', '@Tosh.vil.MTB, https://t.me/Tosh_v_MTB_Matbuot', NULL, NULL),
(120, '174', 'Адилова Бибирабо', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '94-921-65-79', '70 645-48-80', '-', 'https://t.me/OhangaronshMTB', NULL, NULL),
(121, '175', 'Мадумарова Холида', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '94-602-37-10', '70 662-72-97', 'angrenmtb.uz', 'телеграмм:\"Angren mudiralari\"', NULL, NULL),
(122, '176', 'Камолова Матлюба', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '94-681-41-15', '70 614-38-19', '-', 'https://t.me/olmaliqMTTtopshiriqlar', NULL, NULL),
(123, '177', 'Собирова Альфия', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '97-604-06-73', '70 602-10-58', 'yangiyolmtb.uz', 'телеграмм', NULL, NULL),
(124, '178', 'Холматова Гулчехра', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '90-121-83-24', '70 913-35-22', 'bekobodmtb.uz', 'телеграмм', NULL, NULL),
(125, '179', 'Ахмедова Наргиза', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '90-906-07-26', '70 716-30-25', 'мавжуд эмас', 'телеграмм', NULL, NULL),
(126, '148', 'Юнусова Шахноза', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99-892-28-11', '70 742-73-41', 'bostonliqmtb.uz', 'телеграмм', NULL, NULL),
(127, '180', 'Бегматова Барно', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '97-543-43-34', '-', 'nurafshonmtb.uz', 'https://t.me/nurafshonmtbijro', NULL, NULL),
(128, '150', 'Ширинхонов Бегзод', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi', 'Кафедра «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99-005-64-45', '-', 'chinozmtb.uz', 'https://t.me/joinchat/FYidlZDmIpbi7Gh', NULL, NULL),
(129, '181', 'Даминова Шахноза', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '90-121-51-11', '-', '-', 'телеграмм', NULL, NULL),
(130, '156', 'Умарова Зиёда', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi', 'Кафедра «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '90-346-75-10', '70 567-20-18', '-', 'http://t.me/golosovaniya911', NULL, NULL),
(131, '154', 'Нуримбетова Шолпан', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '94-214-49-70', '-', '-', 'https://t.me/joinchat/EB0lycnTkHo1RNaI', NULL, NULL),
(132, '157', 'Юлдашева Хосият', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi', 'Кафедра «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '94-620-98-93', '70 762-31-28', 'ortachirchiqmtb.uz', 'https://t.me/yoshlarniqollabquvvatlash', NULL, NULL),
(133, '160', 'Аскарова Азиза', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '90-972-25-23', '-', '-', 'телеграмм', NULL, NULL),
(134, '153', 'Рўзибоева Одина', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '90-979-83-73', '-', '-', 'телеграмм', NULL, NULL),
(135, '159', 'Келдибаева Азиза', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99-536-97-08', '-', '-', 'https://t.me/MTTderektorlari', NULL, NULL),
(136, '151', 'Бойматова Гулчехра', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99-931-98-85', '70 959-24-67', 'qibraymtb.uz', 'https://t.me/joinchat/oun7hywTrcI4MDVI', NULL, NULL),
(137, '152', 'Жуматова Зухра', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99-514-76-82', '70 645-46-60', '-', 'https://t.me/joinchat/G0ZNFObKTWosL4jT', NULL, NULL),
(138, '149', 'Холбоева Дилобар', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi', 'Кафедра «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99-835-47-70', '70 573-56-16', '-', 'https://t.me/joinchat/F9bpzDb_w7jpocw4', NULL, NULL),
(139, '155', 'Эрназарова Гулнора', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '90-174-04-36', '70 545-26-39', '-', 'телеграмм', NULL, NULL),
(140, '147', 'Солиева Мадина', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi', 'Кафедра «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99-367-41-87', '-', '-', 'телеграмм', NULL, NULL),
(141, '158', 'Бекмуратова Лола', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi', 'Кафедра «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99-872-74-20', '-', '-', 'телеграмм', NULL, NULL),
(142, '182', 'Хамедова Гулноза Собировна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '\n99-798-79-72 \n', '-', 'kokandmtb.uz', 'Facebook: Кукон шахар мактабгача таълим булими, https://t.me/manaviyat_kokand\n', NULL, NULL),
(143, '183', 'Холматова Севарахон Дамировна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '91-206-66-06', '73-237-37-28', 'margilanmtb.uz', 'телеграмм', NULL, NULL),
(144, '27', 'Тўраев Сардорбек Муроджон ўғли', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '90-535-85-35', '-', 'bagdodmtb.uz', 'телеграмм', NULL, NULL),
(145, '28', 'Болтабоев Баҳромжон Мухторович', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '97-595-12-76', '73-612-16-27', 'beshariqmtb.uz', 'телеграмм', NULL, NULL),
(146, '29', 'Махмудова Умидахон Авазовна', 'бухгалтер', NULL, NULL, '91 695 18 17', '-', 'buvaydatummtb.uz', 'телеграмм', NULL, NULL),
(147, '30', 'Дехқонов Ойбек Камолжон ўғли', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '88 820 00 93', '73 572 15 96', 'dangaramtb.uz', 'телеграмм', NULL, NULL),
(148, '40', 'Қосимова Маҳлиё Акрамжоновна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '91 129 43 23', '73 412 15 79', 'yozyovonmtb.uz', 'телеграмм', NULL, NULL),
(149, '34', 'Тешабоева Сайёрахон Ғуломовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '91 283-19-29', '-', 'quvamtb.uz', 'телеграмм', NULL, NULL),
(150, '33', 'Маматова Шахноза Абдуллайевна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '90-537-74-83', '73-425-10-18', 'qushtepamtb.uz', 'телеграмм', NULL, NULL),
(151, '26', 'Эркабоева Мафтуна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '91-116-70-83', '73-432-13-95', 'oltiariqmtb.uz', 'телеграмм', NULL, NULL),
(152, '35', 'Юлдашева Ноҳидахон Муҳаммадёқубовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '91-396-33-86', '73-452-51-03', 'rishtonmtb.uz', 'Facebook:  RishtonMTB\nTelegram: Rishton mtb.uz\n', NULL, NULL),
(153, '36', 'Умаржонов Аскаржон Набижонович', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99-999-82-23', '-', 'soxmtb.uz', 'телеграмм', NULL, NULL),
(154, '37', 'Турсинова Ақида Муталибовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '90-787-45-53', '73-238-42-07', 'toshloqmtb.uz', 'телеграмм', NULL, NULL),
(155, '38', 'Қудратова Муяссар Холматовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '91-201-82-02', '-', 'uchkoprikmtb.uz', 'Facebook: Учкўприк тумани мактабгача таълим булими \ntelegram: https://t.me/manaviyat_uchkuprik\n', NULL, NULL),
(156, '39', 'Абдурахмонова Махмудахон Орифовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '90-556-57-31', '-', 'uzbekistonmtb.uz', 't.me/uzbekistonmtb, facebook/uzbekistanmtb\n', NULL, NULL),
(157, '31', 'Бекмирзаев Бунёджон Адхам ўғли', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99-100-17-23', '73-352-10-86', 'fargonatmtb.uz', 'телеграмм', NULL, NULL),
(158, '32', 'Мансуров Валижон Шерматович', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '90-304-26-07', '73-549-72-36', 'furqatmtb.uz', 'телеграмм', NULL, NULL),
(159, '53', 'Отамуротова Саломат Бобожоновна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '97-516-03-67', '62-31-51-017', 'http://bogottmtb.uz', '-', NULL, NULL),
(160, '54', 'Худайберганова Шахноза Эгамбергановна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99-588-87-83', '62-36-51-594', 'http://gurlanmtb.uz', 't.me/gurlanmtb', NULL, NULL),
(161, '58', 'Кутлимуратова Нафиса Бахтияровна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '88-858 58 82', '62-32-98-749', 'http://qoshkupirtmtb.uz', '-', NULL, NULL),
(162, '60', 'Матназаров Данил Валериевич', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '91-430-03-10', '62-352-11-47', 'http://urganchtmtb.uz', 'urganchtmtb', NULL, NULL),
(163, '56', 'Болтаева Дилноза Атахановна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '94-110-87-01', '62-33-25-528', 'http://hazoraspmtb.uz', '-', NULL, NULL),
(164, '57', 'Султонов Сулаймон\n Полвонназирович', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '97-510-74-48', '62-227-20-79', 'http://xivatmtb.uz', 'Facebook                xivatmtb', NULL, NULL),
(165, '55', 'Бабаджанова Зилола Мусаевна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '97-453-90-02', '62-39-92-826', 'http://хоnqа.mtb.uz', '-', NULL, NULL),
(166, '59', 'Хўжаниёзова Дилбар Рузимовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '91-432-26-60', '62-34-54-372', 'http://Shovotmtb.uz', '-', NULL, NULL),
(167, '61', 'Байжанова Садоқат Илхамовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '93-286-91-00,                            97-514-30-86', '97-363-28-27', 'http://yangiariqmtb.uz/', '-', NULL, NULL),
(168, '62', 'Ражабова Гулрух Қудратовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '97-363-92-96', '62-41-92-632', 'http://yangibozormtb.uz', 'Telegram  Ma\'mura Azadovna', NULL, NULL),
(169, '63', 'Жуманиязова Мадина Фарходовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '97-262-79-71', '62-30-53-015', 'http://tuproqqal`amtb.uz', 'Telegram                   Jumaniyazova Madina', NULL, NULL),
(170, '98', 'Юсупова Тамара Аскаровна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(97) 348-22-55', '-', 'http://beruniymtb.uz/', 'tg://resolve?domain=beruniy_tuman_MTB', NULL, NULL),
(171, '104', 'Мамбетниязова Багдагул Курбаниязовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(93) 099-78-77', '-', 'http://qonlikoi.qrmtv.uz/', 'марказлашган', NULL, NULL),
(172, 'karauzyak_district', 'Серик Жанкабулов Абилказивич', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(93) 486-20-02', '(61) 465-49-67', 'http://qorauzak.qrmtv.uz/', 'марказлашган', NULL, NULL),
(173, '101', 'Нурымбетова Айгул Есемуратовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(93) 367-27-04', '(61) 412-28-11', 'http://kegeyli.qrmtv.uz/', 'марказлашган', NULL, NULL),
(174, '105', 'Отебаева Сайра Адилбаевна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(91) 591-25-32', '-', 'http://qongirot.qrmtv.uz/', 'марказлашган', NULL, NULL),
(175, '102', 'Уразымбетов Рахманбек Бахтиярович', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(93) 775 13 95', '(61) 322 11 94', 'http://muynaq.qrmtv.uz/', 'марказлашган', NULL, NULL),
(176, '103', 'Басымбетова Улбсын Жумабаевна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(91)380-21-00                 (88)787-21-00', '(61)424-43-17', 'http://nukustuman.qrmtv.uz/', 'марказлашган', NULL, NULL),
(177, 'tahiatash_district', 'Сабирова Рахима Ешбаевна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(90) 595-76-08', '(61) 572-34-60', 'http://taqiyatas.qrmtv.uz/', 'марказлашган', NULL, NULL),
(178, '108', 'Сапарова Бибихан Салимовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(94) 145-36-50                          (99) 458-11-75', '(61)435-10-37', 'http://taqtakupir.qrmtv.uz/', 'марказлашган', NULL, NULL),
(179, '109', 'Тураханова Юлдуз           Давлет қизи', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(93) 611-03-43', '-', 'http://tortkul.qrmtv.uz/', 'марказлашган', NULL, NULL),
(180, '110', 'Бекниязова Гулайим Олалбаевна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(91) 302-36-77', '(61) 554-75-04', 'http://xodjeyli.qrmtv.uz/', 'марказлашган', NULL, NULL),
(181, '99', 'Абдрасулиев Замир Дуйсенбаевич', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(91) 271-17-77', '-', 'http://chimboy.qrmtv.uz/', 'марказлашган', NULL, NULL),
(182, '107', 'Убайдуллаев Фархат Убайдуллаевич', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(91) 260-29-21', '-', 'http://shomanay.qrmtv.uz/', 'марказлашган', NULL, NULL),
(183, '10', 'Юлдашева Гулнара Файзирахмановна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(99) 953-32-39', '(61) 585-14-72', 'http://ellikqala.qrmtv.uz/', 'марказлашган', NULL, NULL),
(184, 'bozotov', 'Сабурова Райхон Муратбаевна\n', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(93) 584-06-90', '-', '-', 'марказлашган', NULL, NULL),
(185, 'reg1', 'Айсаков Умиджон Эргашбаевич', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '91-173-74-44', '74-225-27-98', 'andijonvmtb.uz', 't.me/Andijonmtb_Matbuot, https://www.facebook.com/andijonmaktabgacha.talimboshqarmasi', '2022-02-16 13:24:54', '2022-02-16 13:24:54'),
(186, 'reg2', 'Садуллоев Шерзод Бахшиллоевич', 'Maktabgacha ta’lim faoliyatini muvofiqlashtirish va tahlil qilish boshqarmasi metodisti', 'Методист отдела координации и анализа дошкольного образования', 'Methodist, Department of Coordination and Analysis of Preschool Education', '93-080-27-37', '65-220-46-75', 'http://buxorovmtb.zn.uz', 't.me/bvmtbpress http,facebook.com/bvmtbpress', '2022-02-16 13:31:11', '2022-02-16 13:31:11'),
(187, 'reg4', 'Муродова Наргиза Нодировна', 'Maktabgacha ta’lim faoliyatini muvofiqlashtirish va tahlil qilish boshqarmasi metodisti', 'Методист отдела координации и анализа дошкольного образования', 'Methodist, Department of Coordination and Analysis of Preschool Education', '90-539-55-66', '72-226-92-14', 'jizzaxviloyatmtb.uz', 'https://t.me/jizzaxviloyatMTB', '2022-02-16 13:33:08', '2022-02-16 13:33:08'),
(188, 'reg8', 'Рахимова Юлдуз Каримовна', 'Maktabgacha ta’lim faoliyatini muvofiqlashtirish boshqarmasi boshlig‘i', 'Начальник отдела координации дошкольного образования', 'Head of Preschool Education Coordination Department', '91-217-49-34', '75-221-28-11', 'kashdu.uz', 'МТТФМТБ', '2022-02-16 13:33:08', '2022-02-16 13:33:08'),
(189, 'reg7', 'Жўраева Дилнавоз Ибрагимовна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99890-717-37-07', '79-220-17-21', 'https://navoiyshmtb.uz/', '99890-717-37-07', '2022-02-16 13:36:05', '2022-02-16 13:36:05'),
(190, 'reg6', 'Мирзалиева Дилафруз Муҳаммаджановна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini tashkil etish va ta’limning muqobil shakllari” kafedrasi metodisti', 'Методист отдела «Организация государственного и негосударственного дошкольного образования и альтернативные формы обучения».', 'Methodist of the department \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '97-594-65-56', '69-227-03-45', 'namshmtb.uz', '-', '2022-02-16 13:36:05', '2022-02-16 13:36:05'),
(191, 'reg10', 'Жиянов Фурқат Муродқобилович', 'Maktabgacha ta’lim faoliyatini muvofiqlashtirish va tahlil qilish boshqarmasi metodisti', 'Методист отдела координации и анализа дошкольного образования', 'Methodist, Department of Coordination and Analysis of Preschool Education', '93-345-46-16', '66-233-93-99', 'http://samudo.uz', 'https://www.facebook.com/pg/samudo.uz. t/me/samudouz', '2022-02-16 13:38:09', '2022-02-16 13:38:09'),
(192, 'reg14', 'Исматов Шерзод Ўктам ўғли', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '(90) 375-58-56', '(76) 224-04-68', 'www.termizmtb.uz', 'https://t.me/joinchat/iLZR98IdN-hiZmVi', '2022-02-16 13:38:09', '2022-02-16 13:38:09'),
(193, 'reg11', 'Рахманов Иномжон Шамсиддин ўғли', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '99899-473-91-74', '99261', 'Boyovutttmtb@ umail.uz', '998994739174', '2022-02-16 13:40:51', '2022-02-16 13:40:51'),
(194, 'reg14', 'Аджумерова Арзы Асановна', '“Davlat va nodavlat maktabgacha ta’lim muassasalari faoliyatini hamda ta’limning muqobil shakllarini tashkil etish” kafedrasi mudiri', 'Заведующий кафедрой «Организация государственного и негосударственного дошкольного образования и альтернативных форм обучения».', 'Head of the Department of \"Organization of public and non-governmental preschool education and alternative forms of education.\"', '93-586-31-80', '71-295-14-55', 'bektemirmtb.uz', 'https://t.me/bektemir_mtb https://t.me/bektemirtumanimtb', '2022-02-16 13:40:51', '2022-02-16 13:40:51'),
(195, 'reg13', 'Муратова Дилдора', 'Maktabgacha ta’lim faoliyatini muvofiqlashtirish va tahlil qilish boshqarmasi metodisti', 'Методист отдела координации и анализа дошкольного образования', 'Methodist, Department of Coordination and Analysis of Preschool Education', '99-077-22-62', '202-10-11', 'toshvmtb.uz', '@Tosh.vil.MTB, https://t.me/Tosh_v_MTB_Matbuot', '2022-02-16 13:44:44', '2022-02-16 13:44:44'),
(196, 'reg3', 'Умарова Нафиса Зафаровна', 'Matbuot kotibi', NULL, NULL, '91-110-00-11', '-', 'fargonamtb.uz', '-', '2022-02-16 13:44:44', '2022-02-16 13:44:44');
INSERT INTO `contact` (`id`, `districtId`, `fullNameUz`, `positionUz`, `positionRu`, `positionEn`, `phone`, `jobPhone`, `site`, `social`, `created_at`, `updated_at`) VALUES
(197, 'reg5', 'Шарипов Шуҳратбек Азизуллаевич', 'Maktabgacha ta’lim faoliyatini muvofiqlashtirish va tahlil qilish boshqarmasi metodisti', 'Методист отдела координации и анализа дошкольного образования', 'Methodist, Department of Coordination and Analysis of Preschool Education', '93-922-43-41, 91-434-43-41', '62-224-86-89', 'xorazmmtb.uz', 'Facebook Shuhrat.Sharipov4', '2022-02-16 13:46:40', '2022-02-16 13:46:40'),
(198, 'reg9', 'Дауекеева Салтанат Ораловна', 'Maktabgacha ta’lim faoliyatini muvofiqlashtirish va tahlil qilish boshqarmasi metodisti', 'Методист отдела координации и анализа дошкольного образования', 'Methodist, Department of Coordination and Analysis of Preschool Education', '(97) 500-52-89', '(61) 222-55-19', 'http://qrmtv.uz/', '@qrmtv_uz, fb.com/qrmtvuz/, instagram.com/qrmtvuz/', '2022-02-16 13:46:40', '2022-02-16 13:46:40');

-- --------------------------------------------------------

--
-- Структура таблицы `district`
--

CREATE TABLE `district` (
  `id` int NOT NULL,
  `regionId` int DEFAULT NULL,
  `districtUz` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `districtRu` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `districtEn` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `district`
--

INSERT INTO `district` (`id`, `regionId`, `districtUz`, `districtRu`, `districtEn`, `created_at`, `updated_at`) VALUES
(1, 1, 'Andijon tumani', 'Андижанский район', 'Andijan district', NULL, NULL),
(2, 1, 'Asaka tumani', 'Асакинский район', 'Asaka district', NULL, NULL),
(3, 1, 'Baliqchi tumani', 'Балыкчинский район', 'Balikchi district', NULL, NULL),
(4, 1, 'Boʻston tumani', 'Бостонский район', 'Boston district', NULL, NULL),
(5, 1, 'Buloqboshi tumani', 'Булокбошинский район', 'Buloqboshi district', NULL, NULL),
(6, 1, 'Izboskan tumani', 'Избосканский район', 'Izboskan district', NULL, NULL),
(7, 1, 'Jalaquduq tumani', 'Жалакудукский район', 'Jalaquduq district', NULL, NULL),
(8, 1, 'Xoʻjaobod tumani', 'Ходжаабадский район', 'Khojaabad district', NULL, NULL),
(9, 1, 'Qoʻrgʻontepa tumani', 'Кургантепинский район', 'Kurgantepa district', NULL, NULL),
(10, 1, 'Marhamat tumani', 'Мархаматский район', 'Marhamat district', NULL, NULL),
(11, 1, 'Oltinkoʻl tumani', 'Алтынкольский район', 'Altynkol district', NULL, NULL),
(12, 1, 'Paxtaobod tumani', 'Пахтаабадский район', 'Pakhtaobod district', NULL, NULL),
(13, 1, 'Shahrixon tumani', 'Шахриханский район', 'Shahrihan district', NULL, NULL),
(14, 1, 'Ulugʻnor tumani', 'Улугнорский район', 'Ulugnor district', NULL, NULL),
(15, 2, 'Olot tumani', 'Олотский район', 'Olot district', NULL, NULL),
(16, 2, 'Buxoro tumani', 'Бухарский район', 'Bukhara district', NULL, NULL),
(17, 2, 'Gʻijduvon tumani', 'Гиждувонский район', 'Gijduvon district', NULL, NULL),
(18, 2, 'Jondor tumani', 'Жондорский район', 'Jondor district', NULL, NULL),
(19, 2, 'Kogon tumani', 'Когонский район', 'Kogon district', NULL, NULL),
(20, 2, 'Qorakoʻl tumani', 'Каракольский район', 'Karakol district', NULL, NULL),
(21, 2, 'Qorovulbozor tumani', 'Каравулбозорский район', 'Karavulbozor district', NULL, NULL),
(22, 2, 'Peshku tumani', 'Пешку район', 'Peshku district', NULL, NULL),
(23, 2, 'Romitan tumani', 'Ромитанские тумани', 'Romitan tumani', NULL, NULL),
(24, 2, 'Shofirkon tumani', 'Шофиркон тумани', 'Shofirkon tumani', NULL, NULL),
(25, 2, 'Vobkent tumani', 'Вобкентский район', 'Vobkent district', NULL, NULL),
(26, 3, 'Oltiariq tumani', 'Алтыарыкский район', 'Altiyarik district', NULL, NULL),
(27, 3, 'Bagʻdod tumani', 'Багдадский район', 'Baghdad district', NULL, NULL),
(28, 3, 'Beshariq tumani', 'Бешарыкский район', 'Besharik district', NULL, NULL),
(29, 3, 'Buvayda tumani', 'Бувайдинский район', 'Buvayda district', NULL, NULL),
(30, 3, 'Dangʻara tumani', 'Дангаринский район', 'Dangara district', NULL, NULL),
(31, 3, 'Fargʻona tumani', 'Ферганский район', 'Fergana district', NULL, NULL),
(32, 3, 'Furqat tumani', 'Фуркатский район', 'Furqat district', NULL, NULL),
(33, 3, 'Qoʻshtepa tumani', 'Коштепинский район', 'Qoshtepa district', NULL, NULL),
(34, 3, 'Quva tumani', 'Кувинский район', 'Quva district', NULL, NULL),
(35, 3, 'Rishton tumani', 'Риштанский район', 'Rishtan district', NULL, NULL),
(36, 3, 'Soʻx tumani', 'Сохский район', 'Sokh district', NULL, NULL),
(37, 3, 'Toshloq tumani', 'Тошлокский район', 'Toshloq district', NULL, NULL),
(38, 3, 'Uchkoʻprik tumani', 'Учкоприкский район', 'Uchkoprik district', NULL, NULL),
(39, 3, 'Oʻzbekiston tumani', 'Район Узбекистана', 'District of Uzbekistan', NULL, NULL),
(40, 3, 'Yozyovon tumani', 'Язёванский район', 'Yazyovan district', NULL, NULL),
(41, 4, 'Arnasoy tumani', 'Арнасайский район', 'Arnasay district', NULL, NULL),
(42, 4, 'Baxmal tumani', 'Бахмальский район', 'Bakhmal district', NULL, NULL),
(43, 4, 'Doʻstlik tumani', 'Достликский район', 'Dostlik district', NULL, NULL),
(44, 4, 'Forish tumani', 'Форишский район', 'Forish district', NULL, NULL),
(45, 4, 'Gʻallaorol tumani', 'Галлаорольский район', 'Gallaorol district', NULL, NULL),
(46, 4, 'Sharof Rashidov tumani', 'Шароф Рашидов район', 'Sharof Rashidov district', NULL, NULL),
(47, 4, 'Mirzachoʻl tumani', 'Мирзачульский район', 'Mirzachul district', NULL, NULL),
(48, 4, 'Paxtakor tumani', 'Пахтакорский район', 'Pakhtakor district', NULL, NULL),
(49, 4, 'Yangiobod tumani', 'Янгиабадский район', 'Yangiabad district', NULL, NULL),
(50, 4, 'Zomin tumani', 'Зоминский район', 'Zomin district', NULL, NULL),
(51, 4, 'Zafarobod tumani', 'Зафарабадский район', 'Zafarobod district', NULL, NULL),
(52, 4, 'Zarbdor tumani', 'Зарбдорский район', 'Zarbdor district', NULL, NULL),
(53, 5, 'Bogʻot tumani', 'Багатский район', 'Bagat district', NULL, NULL),
(54, 5, 'Gurlan tumani', 'Гурланский район', 'Gurlan district', NULL, NULL),
(55, 5, 'Xonqa tumani', 'Хонка район', 'Xonqa district', NULL, NULL),
(56, 5, 'Hazorasp tumani', 'Хазораспский район', 'Hazorasp district', NULL, NULL),
(57, 5, 'Xiva tumani', 'Хивинский район', 'Khiva district', NULL, NULL),
(58, 5, 'Qoʻshkoʻpir tumani', 'Кошкопирский район', 'Koshkopir district', NULL, NULL),
(59, 5, 'Shovot tumani', 'Шовотский район', 'Shovot district', NULL, NULL),
(60, 5, 'Urganch tumani', 'Ургенчский район', 'Urgench district', NULL, NULL),
(61, 5, 'Yangiariq tumani', 'Янгиарикский район', 'Yangiariq district', NULL, NULL),
(62, 5, 'Yangibozor tumani', 'Янгибозарский район', 'Yangibozor district', NULL, NULL),
(63, 5, 'Tupproqqalʼa tumani', 'Туппроккальский район', 'Tupproqqalʼa district', NULL, NULL),
(64, 6, 'Chortoq tumani', 'Чартакский район', 'Chartak district', NULL, NULL),
(65, 6, 'Chust tumani', 'Чустский район', 'Chust district', NULL, NULL),
(66, 6, 'Kosonsoy tumani', 'Косонсойский район', 'Kosonsoy district', NULL, NULL),
(67, 6, 'Mingbuloq tumani', 'Мингбулакский район', 'Mingbulak district', NULL, NULL),
(68, 6, 'Namangan tumani', 'Наманганский район', 'Namangan district', NULL, NULL),
(69, 6, 'Norin tumani', 'Норинский район', 'Norin district', NULL, NULL),
(70, 6, 'Pop tumani', 'Поп тумани', 'Pop tumani', NULL, NULL),
(71, 6, 'Toʻraqoʻrgʻon tumani', 'Туракурганский район', 'Turakurgan district', NULL, NULL),
(72, 6, 'Uchqoʻrgʻon tumani', 'Учкурганский район', 'Uchkurgan district', NULL, NULL),
(73, 6, 'Uychi tumani', 'Уйчинский район', 'Uychi district', NULL, NULL),
(74, 6, 'Yangiqoʻrgʻon tumani', 'Янгикурганский район', 'Yangikurgan district', NULL, NULL),
(75, 6, 'Davlatobod tumani', 'Давлатабадский район', 'Davlatabad district', NULL, NULL),
(76, 7, 'Konimex tumani', 'Конимекс район', 'Konimex district', NULL, NULL),
(77, 7, 'Karmana tumani', 'Карманинский район', 'Karmana district', NULL, NULL),
(78, 7, 'Qiziltepa tumani', 'Кызылтепинский район', 'Kyzyltepa district', NULL, NULL),
(79, 7, 'Xatirchi tumani', 'Хатырчинский район', 'Khatirchi district', NULL, NULL),
(80, 7, 'Navbahor tumani', 'Навбахорский район', 'Navbahor district', NULL, NULL),
(81, 7, 'Nurota tumani', 'Нуратинский район', 'Nurota district', NULL, NULL),
(82, 7, 'Tomdi tumani', 'Томдинский район', 'Tomdi district', NULL, NULL),
(83, 7, 'Uchquduq tumani', 'Учкудукский район', 'Uchkuduk district', NULL, NULL),
(84, 8, 'Dehqonobod tumani ', 'Дехканабадский район', 'Dehkanabad district', NULL, NULL),
(85, 8, 'Kasbi tumani ', 'Касби тумани', 'Kasbi tumani', NULL, NULL),
(86, 8, 'Kitob tumani ', 'Книжный район', 'Book District', NULL, NULL),
(87, 8, 'Koson tumani ', 'Косонский район', 'Koson district', NULL, NULL),
(88, 8, 'Mirishkor tumani ', 'Миришкорский район', 'Mirishkor district', NULL, NULL),
(89, 8, 'Muborak tumani ', 'Муборакский район', 'Muborak district', NULL, NULL),
(90, 8, 'Nishon tumani ', 'Целевой район', 'Target district', NULL, NULL),
(91, 8, 'Chiroqchi tumani ', 'Чиракчинский район', 'Chirakchi district', NULL, NULL),
(92, 8, 'Shahrisabz tumani ', 'Шахрисабзский район', 'Shahrisabz district', NULL, NULL),
(93, 8, 'Yakkabogʻ tumani ', 'Яккабогский район', 'Yakkabog district', NULL, NULL),
(94, 8, 'Qamashi tumani ', 'Камасинский район', 'Kamashi district', NULL, NULL),
(95, 8, 'Qarshi tumani ', 'Каршинский район', 'Karshi district', NULL, NULL),
(96, 8, 'Gʻuzorkoʻkdala tumani ', 'Гузоркокдальский район', 'Guzorkokdala district', NULL, NULL),
(97, 9, 'Amudaryo tumani', 'Амударьинский район', 'Amudarya district', NULL, NULL),
(98, 9, 'Beruniy tumani', 'Берунийский район', 'Beruni district', NULL, NULL),
(99, 9, 'Chimboy tumani', 'Чимбойский район', 'Chimboy district', NULL, NULL),
(100, 9, 'Ellikqalʼa tumani', 'Элликкалинский район', 'Ellikqalʼa district', NULL, NULL),
(101, 9, 'Kegeyli tumani', 'Кегейлийский район', 'Kegeyli district', NULL, NULL),
(102, 9, 'Moʻynoq tumani', 'Мойнакский район', 'Moynak district', NULL, NULL),
(103, 9, 'Nukus tumani', 'Нукусский район', 'Nukus district', NULL, NULL),
(104, 9, 'Qanlikoʻl tumani', 'Ганлыкульский район', 'Qanlikul district', NULL, NULL),
(105, 9, 'Qoʻngʻirot tumani', 'Кунградский район', 'Kungrad district', NULL, NULL),
(106, 9, 'Qoraoʻzak tumani', 'Караозакский район', 'Karaozak district', NULL, NULL),
(107, 9, 'Shumanay tumani', 'Шуманайский район', 'Shumanay district', NULL, NULL),
(108, 9, 'Taxtakoʻpir tumani', 'Тахтакопырский район', 'Takhtakopir district', NULL, NULL),
(109, 9, 'Toʻrtkoʻl tumani', 'Турткульский район', 'Turtkul district', NULL, NULL),
(110, 9, 'Xoʻjayli tumani', 'Ходжайлийский район', 'Khojayli district', NULL, NULL),
(111, 10, 'Bulungʻur tumani', 'Булунгурский район', 'Bulungur district', NULL, NULL),
(112, 10, 'Ishtixon tumani', 'Иштихонский район', 'Ishtikhon district', NULL, NULL),
(113, 10, 'Jomboy tumani', 'Джомбойский район', 'Jomboy district', NULL, NULL),
(114, 10, 'Kattaqoʻrgʻon tumani', 'Каттакурганский район', 'Kattakurgan district', NULL, NULL),
(115, 10, 'Qoʻshrabot tumani', 'Кошрабатский район', 'Qoshrabat district', NULL, NULL),
(116, 10, 'Narpay tumani', 'Нарпайский район', 'Narpay district', NULL, NULL),
(117, 10, 'Nurobod tumani', 'Нуробадский район', 'Nurobod district', NULL, NULL),
(118, 10, 'Oqdaryo tumani', 'Акдарьинский район', 'Aqdaryo district', NULL, NULL),
(119, 10, 'Paxtachi tumani', 'Пахтачинский район', 'Pakhtachi district', NULL, NULL),
(120, 10, 'Payariq tumani', 'Пайарикский район', 'Payariq district', NULL, NULL),
(121, 10, 'Pastdargʻom tumani', 'Пастдаргомский район', 'Pastdargom district', NULL, NULL),
(122, 10, 'Samarqand tumani', 'Самаркандский район', 'Samarkand district', NULL, NULL),
(123, 10, 'Toyloq tumani', 'Тайлакский район', 'Taylaq district', NULL, NULL),
(124, 10, 'Urgut tumani', 'Ургутский район', 'Urgut district', NULL, NULL),
(125, 11, 'Sardoba tumani', 'Сардобинский район', 'Sardoba district', NULL, NULL),
(126, 11, 'Boyovut tumani', 'Бойовутский район', 'Boyovut district', NULL, NULL),
(127, 11, 'Guliston tumani', 'Гулистанский район', 'Gulistan district', NULL, NULL),
(128, 11, 'Xovos tumani', 'Хавос район', 'Havos district', NULL, NULL),
(129, 11, 'Mirzaobod tumani', 'Мирзаабадский район', 'Mirzaobod district', NULL, NULL),
(130, 11, 'Sayxunobod tumani', 'Сайхунабадский район', 'Sayxunabad district', NULL, NULL),
(131, 11, 'Oqoltin tumani', 'Околтинский район', 'Oqoltin district', NULL, NULL),
(132, 11, 'Sirdaryo tumani', 'Сырдарьинский район', 'Syrdarya district', NULL, NULL),
(133, 12, 'Angor tumani', 'Ангорский район', 'Angor district', NULL, NULL),
(134, 12, 'Boysun tumani', 'Байсунский район', 'Boysun district', NULL, NULL),
(135, 12, 'Denov tumani', 'Деновский район', 'Denov district', NULL, NULL),
(136, 12, 'Jarqoʻrgʻon tumani', 'Джаркоргонский район', 'Jarqorgon district', NULL, NULL),
(137, 12, 'Qiziriq tumani', 'Гызырикский район', 'Qizirik district', NULL, NULL),
(138, 12, 'Qumqoʻrgʻon tumani', 'Кумкурганский район', 'Kumkurgan district', NULL, NULL),
(139, 12, 'Muzrabot tumani', 'Музработский район', 'Muzrabot district', NULL, NULL),
(140, 12, 'Oltinsoy tumani', 'Олтинсойский район', 'Oltinsoy district', NULL, NULL),
(141, 12, 'Sariosiyo tumani', 'Сариоский район', 'Sariosiyo district', NULL, NULL),
(142, 12, 'Sherobod tumani', 'Шерабадский район', 'Sherabad district', NULL, NULL),
(143, 12, 'Shoʻrchi tumani', 'Шурчинский район', 'Shurchi district', NULL, NULL),
(144, 12, 'Termiz tumani', 'Термезский район', 'Termez district', NULL, NULL),
(145, 12, 'Uzun tumani', 'Длинный район', 'Long district', NULL, NULL),
(146, 12, 'Bandixon tumani', 'Бандиксонский район', 'Bandixon district', NULL, NULL),
(147, 13, 'Bekobod tumani', 'Бекабадский район', 'Bekabad district', NULL, NULL),
(148, 13, 'Boʻstonliq tumani', 'Бостанлыгский район', 'Bostanliq district', NULL, NULL),
(149, 13, 'Boʻka tumani', 'Бокинский район', 'Boka district', NULL, NULL),
(150, 13, 'Chinoz tumani', 'Чинозский район', 'Chinoz district', NULL, NULL),
(151, 13, 'Qibray tumani', 'Кибрайский район', 'Qibray district', NULL, NULL),
(152, 13, 'Ohangaron tumani', 'Охангаронский район', 'Ohangaron district', NULL, NULL),
(153, 13, 'Oqqoʻrgʻon tumani', 'Аккурганский район', 'Akkurgan district', NULL, NULL),
(154, 13, 'Parkent tumani', 'Паркентский район', 'Parkent district', NULL, NULL),
(155, 13, 'Piskent tumani', 'Пискентский район', 'Piskent district', NULL, NULL),
(156, 13, 'Quyi chirchiq tumani', 'Нижний Чирчикский район', 'Lower Chirchik district', NULL, NULL),
(157, 13, 'Oʻrta Chirchiq tumani', 'Средний Чирчикский район', 'Middle Chirchik district', NULL, NULL),
(158, 13, 'Yangiyoʻl tumani', 'Янгиюльский район', 'Yangiyul district', NULL, NULL),
(159, 13, 'Yuqori Chirchiq tumani', 'Верхне-Чирчикский район', 'Upper Chirchik district', NULL, NULL),
(160, 13, 'Zangiota tumani', 'Зангиатинский район', 'Zangiota district', NULL, NULL),
(161, 14, 'Bektemir tumani', 'Бектемирский район', 'Bektemir district', NULL, NULL),
(162, 14, 'Chilonzor tumani', 'Чиланзарский район', 'Chilanzar district', NULL, NULL),
(163, 14, 'Yashnobod tumani', 'Яшнабадский район', 'Yashnabad district', NULL, NULL),
(164, 14, 'Mirobod tumani', 'Мирабадский район', 'Mirabad district', NULL, NULL),
(165, 14, 'Mirzo Ulugʻbek tumani', 'Мирзо Улугбекский район', 'Mirzo Ulugbek district', NULL, NULL),
(166, 14, 'Sergeli tumani', 'Сергелийский район', 'Sergeli district', NULL, NULL),
(167, 14, 'Shayxontohur tumani', 'Шайхантаурский район', 'Shayhantahur district', NULL, NULL),
(168, 14, 'Olmazor tumani', 'Алмазарский район', 'Almazor district', NULL, NULL),
(169, 14, 'Uchtepa tumani', 'Учтепинский район', 'Uchtepa district', NULL, NULL),
(170, 14, 'Yakkasaroy tumani', 'Яккасарайский район', 'Yakkasaray district', NULL, NULL),
(171, 14, 'Yunusobod tumani', 'Юнусабадский район', 'Yunusabad district', NULL, NULL),
(172, 14, 'Yangihayot tumani', 'Янгихаетский район', 'Yangihayot district', NULL, NULL),
(173, 4, 'Jizzax tumani', 'Джизакский район', 'Jizzakh district', NULL, NULL),
(174, 13, 'Ohangaron shahri', 'город Ахангарон', 'Ahangaron city', NULL, NULL),
(175, 13, 'Angren shahri', 'город Ангрен', 'City of Angren', NULL, NULL),
(176, 13, 'Olmaliq shahri', 'город Алмалык', 'Almalyk city', NULL, NULL),
(177, 13, 'Yangiyo\'l shahri', 'город Янгиюль', 'Yangiyul city', NULL, NULL),
(178, 13, 'Bekobod shahri', 'город Бекабад', 'Bekabad city', NULL, NULL),
(179, 13, 'Chirchiq shahri', 'г. Чирчик', 'Chirchik city', NULL, NULL),
(180, 13, 'Nurafshon shahri', 'город Нурафшан', 'Nurafshan city', NULL, NULL),
(181, 13, 'Toshkent', 'Ташкент', 'Tashkent', NULL, NULL),
(182, 3, 'Qo\'qon shahri', 'Коканд город', 'Kokand city', NULL, NULL),
(183, 3, 'Marg\'ilon shahar', 'город Маргилан', 'Margilan city', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `education`
--

CREATE TABLE `education` (
  `id` bigint UNSIGNED NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expirationDate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dipSeries` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dipNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dipIssueDate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fileId` int NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `employee`
--

CREATE TABLE `employee` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupPEI` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `workWith` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eduId` int NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `files`
--

CREATE TABLE `files` (
  `id` bigint UNSIGNED NOT NULL,
  `hostName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baseName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orignName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_02_15_183123_region', 1),
(3, '2022_02_15_183343_petition', 1),
(4, '2022_02_15_184125_city', 1),
(5, '2022_02_15_191207_contact', 1),
(6, '2022_02_16_011552_district', 2),
(9, '2022_02_17_190018_users', 4),
(12, '2022_01_18_183846_preschools', 5),
(13, '2022_01_18_184014_education', 5),
(14, '2022_01_18_184036_files', 5),
(15, '2022_01_18_184052_photo', 5),
(16, '2022_01_18_184140_address', 5),
(17, '2022_01_18_183256_employee', 6),
(18, '2022_01_18_183339_pupil', 6),
(20, '2022_02_17_230303_role', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `petition`
--

CREATE TABLE `petition` (
  `id` bigint UNSIGNED NOT NULL,
  `regionId` int NOT NULL,
  `districtId` int NOT NULL,
  `chName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `petition`
--

INSERT INTO `petition` (`id`, `regionId`, `districtId`, `chName`, `yName`, `phone`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Javlonbek Azimjon o‘g‘li To‘ychiyev', 'Javlonbek Azimjon o‘g‘li To‘ychiyev', '+998944337566', '2022-02-16 17:06:16', '2022-02-16 17:06:16'),
(2, 1, 1, 'Javlonbek Azimjon o‘g‘li To‘ychiyev', 'Javlonbek Azimjon o‘g‘li To‘ychiyev', '+998944337566', '2022-02-16 17:06:45', '2022-02-16 17:06:45'),
(3, 2, 17, 'Javlonbek Azimjon o‘g‘li To‘ychiyev', 'Javlonbek Azimjon o‘g‘li To‘ychiyev', '+998944337566', '2022-02-16 17:33:21', '2022-02-16 17:33:21'),
(4, 1, 1, 'Javlonbek Azimjon o‘g‘li To‘ychiyev', 'Javlonbek Azimjon o‘g‘li To‘ychiyev', '+998944337566', '2022-02-16 17:40:02', '2022-02-16 17:40:02'),
(5, 1, 1, 'Javlonbek Azimjon o‘g‘li To‘ychiyev', 'Туйчиев Жавлонбек Азимжанович', '+998944337566', '2022-02-16 17:41:25', '2022-02-16 17:41:25'),
(6, 2, 23, 'To‘ychiyev Javlonbek Azimjon o‘g‘li', 'To‘ychiyev Javlonbek Azimjon o‘g‘li', '+998944337566', '2022-02-21 02:25:59', '2022-02-21 02:25:59');

-- --------------------------------------------------------

--
-- Структура таблицы `photo`
--

CREATE TABLE `photo` (
  `id` bigint UNSIGNED NOT NULL,
  `hostName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baseName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `originName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `altName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `photo`
--

INSERT INTO `photo` (`id`, `hostName`, `path`, `baseName`, `originName`, `altName`, `created_at`, `updated_at`) VALUES
(1, 'https://e7.pngegg.com/', 'pngimages/384/158/', 'png-clipart-person-logo-computer-icons-customer-service-favicon-desktop-icon-customers-drawing-miscellaneous-blue.png', 'default', 'default', '2022-02-20 13:36:27', '2022-02-20 13:36:27');

-- --------------------------------------------------------

--
-- Структура таблицы `preschools`
--

CREATE TABLE `preschools` (
  `id` bigint UNSIGNED NOT NULL,
  `namePEI` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addressId` int NOT NULL,
  `groupName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactPEI` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `pupil`
--

CREATE TABLE `pupil` (
  `id` bigint UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateBirth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metricSeries` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metricNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metricDate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `region`
--

CREATE TABLE `region` (
  `id` bigint UNSIGNED NOT NULL,
  `regionUz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `regionRu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regionEn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `region`
--

INSERT INTO `region` (`id`, `regionUz`, `regionRu`, `regionEn`, `created_at`, `updated_at`) VALUES
(1, 'Andijon viloyati', 'Андижанская область', 'Andijan region', '2021-05-22 10:06:30', '2021-05-23 17:08:10'),
(2, 'Buxoro viloyati', 'Бухарская область', 'Bukhara region', '2021-05-23 20:25:12', '2021-05-23 20:25:12'),
(3, 'Fargʻona viloyati', 'Ферганская область', 'Fergana region', '2021-05-22 10:06:30', '2021-05-23 17:08:10'),
(4, 'Jizzax viloyati', 'Джизакская область', 'Jizzakh region', '2021-05-23 20:25:12', '2021-05-23 20:25:12'),
(5, 'Xorazm viloyati', 'Хорезмская область', 'Khorezm region', '2021-05-22 10:06:30', '2021-05-23 17:08:10'),
(6, 'Namangan viloyati', 'Наманганская область', 'Namangan region', '2021-05-23 20:25:12', '2021-05-23 20:25:12'),
(7, 'Navoiy viloyati', 'Навоийская область', 'Navoi region', '2021-05-23 17:08:10', '2021-05-22 13:21:46'),
(8, 'Qashqadaryo viloyati', 'Кашкадарьинская область', 'Kashkadarya region', '2021-06-26 11:34:58', '2021-06-26 11:34:36'),
(9, 'Qoraqalpogʻiston Respublikasi	', 'Республика Каракалпакстан', 'The Republic of Karakalpakstan', '2021-05-22 10:06:30', '2021-05-22 13:21:46'),
(10, 'Samarqand viloyati', 'Самаркандская область', 'Samarkand region', '2021-06-26 11:34:36', '2021-06-22 19:15:03'),
(11, 'Sirdaryo viloyati', 'Сырдарьинская область', 'Syrdarya region', '2021-05-22 10:06:30', '2021-05-23 17:08:10'),
(12, 'Surxondaryo viloyati', 'Сурхандарьинская область', 'Surkhandarya region', '2021-06-22 19:15:48', '2021-06-26 11:34:36'),
(13, 'Toshkent viloyati', 'Ташкентская область', 'Tashkent region', '2021-05-22 10:06:30', '2021-05-23 17:08:10'),
(14, 'Toshkent shahri', 'город Ташкент', 'Tashkent city', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

CREATE TABLE `role` (
  `id` bigint UNSIGNED NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `nameUz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nameRu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nameEn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addAllUsers` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `addChild` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `createRole` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `deleteAllUsers` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `deleteChild` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `editChild` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `export` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `exportAll` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `updateAllUsers` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `viewAllUsers` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `viewChild` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `viewRole` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `role`
--

INSERT INTO `role` (`id`, `status`, `nameUz`, `nameRu`, `nameEn`, `addAllUsers`, `addChild`, `createRole`, `deleteAllUsers`, `deleteChild`, `editChild`, `export`, `exportAll`, `updateAllUsers`, `viewAllUsers`, `viewChild`, `viewRole`, `created_at`, `updated_at`) VALUES
(1, 0, 'role uz', 'role ru', 'role en', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', '2022-02-28 16:48:50', '2022-02-28 16:48:50');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `status` int DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roleId` int NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photoId` int NOT NULL DEFAULT '1',
  `appointedBy` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `status`, `name`, `roleId`, `email`, `password`, `photoId`, `appointedBy`, `created_at`, `updated_at`) VALUES
(1, 1, 'To\'ychiyev Javlonbek Azimjon og\'li', 1, 'pr@gmail.com', '$2y$10$iufZGpjgD1gVPqHi3b15ZuTa2VpdkVzUG6qu3EO4ENJ1QiSkw39Fy', 1, 1, '2022-02-20 13:31:00', '2022-02-20 13:31:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `petition`
--
ALTER TABLE `petition`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `preschools`
--
ALTER TABLE `preschools`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pupil`
--
ALTER TABLE `pupil`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `address`
--
ALTER TABLE `address`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT для таблицы `district`
--
ALTER TABLE `district`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT для таблицы `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `employee`
--
ALTER TABLE `employee`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `petition`
--
ALTER TABLE `petition`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `photo`
--
ALTER TABLE `photo`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `preschools`
--
ALTER TABLE `preschools`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pupil`
--
ALTER TABLE `pupil`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `region`
--
ALTER TABLE `region`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
