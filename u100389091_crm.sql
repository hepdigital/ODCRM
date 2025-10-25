-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 22 Eki 2025, 12:48:12
-- Sunucu sürümü: 11.8.3-MariaDB-log
-- PHP Sürümü: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `u100389091_crm`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `tax_office` varchar(100) DEFAULT NULL,
  `tax_number` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Tablo döküm verisi `customers`
--

INSERT INTO `customers` (`id`, `company_name`, `contact_person`, `email`, `phone`, `address`, `tax_office`, `tax_number`, `created_at`, `updated_at`) VALUES
(5, 'LİBYA HOLDING', '', '', '', '', NULL, NULL, '2025-01-20 06:01:15', '2025-01-20 06:01:15'),
(6, 'KARTAL PALACE TAKSİM', 'ERHAN BEY', '', '', '', NULL, NULL, '2025-01-20 07:54:17', '2025-01-20 07:54:17'),
(7, 'COZZY GRUP', '', '', '', '', NULL, NULL, '2025-01-22 05:59:19', '2025-01-22 05:59:19'),
(8, 'COORDINAT SUIT', 'İBRAHİM BEY', '', '', '', NULL, NULL, '2025-01-22 08:21:52', '2025-01-22 08:21:52'),
(9, 'DİKAWN ENDÜSTRİYEL', 'ÖZKAN BEY', '', '', '', NULL, NULL, '2025-01-23 08:00:42', '2025-01-23 08:00:42'),
(10, 'NOVA PARK SUİTE HOTEL', 'ONUR BEY', '', '', '', NULL, NULL, '2025-01-23 09:37:46', '2025-01-23 09:37:46'),
(11, 'AEROSER', 'MELEK HANIM', '', '', '', NULL, NULL, '2025-01-23 10:26:49', '2025-01-23 10:26:49'),
(12, 'ROYAL PERA HOTEL', 'YASİN BEY', '', '', '', NULL, NULL, '2025-01-23 10:46:33', '2025-01-23 10:46:33'),
(13, 'HOTEL RABİS', 'ÖMER GÜNAYDIN', '', '', '', NULL, NULL, '2025-01-27 14:02:45', '2025-01-27 14:02:45'),
(14, 'BEST OTEL ALANYA', 'SÜLEYMAN BEY', '', '', '', NULL, NULL, '2025-01-27 14:18:14', '2025-01-27 14:18:14'),
(15, 'BOSNA FİRMASI', '', '', '', '', NULL, NULL, '2025-02-04 07:52:08', '2025-02-04 07:52:08'),
(16, 'METROPOL TIP KARŞIYAKA', 'FERHAT BEY', '', '', '', NULL, NULL, '2025-02-07 07:46:51', '2025-02-07 07:46:51'),
(17, 'TRABZON PANAGİA PREMİER OTEL', 'SEHER HANIM', '', '05446733561', 'TRABZON', NULL, NULL, '2025-03-13 09:50:56', '2025-03-13 09:50:56'),
(18, 'MORFONİ MOBİLYA', 'ERAY BEY', '', '', '', NULL, NULL, '2025-03-13 11:30:11', '2025-03-13 11:30:11'),
(20, 'MONTEBELLO HOTELS VILLAS', 'HAKAN GÜNAL', '', '05364939629', '', NULL, NULL, '2025-03-26 06:23:15', '2025-03-26 06:23:15'),
(21, 'ENTEGRES Bilişim Teknolojileri', 'CEM BEY', '', '', '', NULL, NULL, '2025-03-26 12:45:16', '2025-03-26 12:45:16'),
(22, 'İZMİR  OTEL', '', '', '', '', NULL, NULL, '2025-04-07 11:52:54', '2025-04-07 11:52:54'),
(23, 'OBAM TERMAL RESORT OTEL SPA', '', '', '05303213745', '', NULL, NULL, '2025-04-07 12:21:47', '2025-04-07 12:21:47'),
(24, 'TEKCANLAR A.Ş', 'ÇAĞATAY BEY', '', '5337720494', 'İZMİR', NULL, NULL, '2025-04-09 06:52:22', '2025-04-09 06:52:22'),
(25, 'SORRISO HOTEL FATİH', 'HASAN BEY', '', '', '', NULL, NULL, '2025-04-09 09:07:44', '2025-04-09 09:07:44'),
(26, 'GRAND MOON HOTEL', 'SİNAN BEY', '', '05413753456', '', NULL, NULL, '2025-04-16 14:08:45', '2025-04-16 14:08:45'),
(27, 'DELTA OTEL', 'MELİH BEY', '', '05342634651', '', NULL, NULL, '2025-04-16 14:21:07', '2025-04-16 14:21:07'),
(29, 'MONTEBELLO HOTELS VILLAS', '', '', '', '', NULL, NULL, '2025-04-22 12:14:56', '2025-04-22 12:14:56'),
(30, 'AYVALIK BEACH  HOTEL', '', '', '', '', NULL, NULL, '2025-04-24 13:00:45', '2025-04-24 13:00:45'),
(31, 'MK GIDA PAZARLAMA TAŞ BAS YAY TİC LTD ŞTİ', 'PUFFİN SUIT', 'info@puffinsuites.com', '0(212) 227 0229', 'SİNANPAŞA MAH ÇELEBİOĞLU SK NO 9-11 BEŞİKTAŞ / İSTANBUL', NULL, NULL, '2025-05-13 08:15:36', '2025-05-13 08:15:36'),
(32, 'DOĞAN TUR TURİZM EMLAK İNŞAAT TAAH.NAKLİYAT AKARYAKIT LPG OTOGAZ İTHALAT ve İHRACAT SANAYİ VE TİCARET A.Ş.', 'Kerim KARAYALÇIN', '', '0(530) 960 24 72', 'JİVA OTEL Çalış Plajı 1104 Sok. No:14 Fethiye/ MUĞLA', NULL, NULL, '2025-05-13 09:34:29', '2025-05-13 09:34:29'),
(33, 'SALKIM HOTEL', 'KERİM BEY', '', '05334101277', '', NULL, NULL, '2025-05-13 09:42:59', '2025-05-13 09:42:59'),
(34, 'MARLEN RESİDANCE HOTEL', 'RAZİYE HANIM', '', '05367659443', '', NULL, NULL, '2025-05-14 08:01:14', '2025-05-14 08:01:14'),
(35, 'ORHAN BEY', '', '', '', '', NULL, NULL, '2025-05-15 10:56:32', '2025-05-15 10:56:32'),
(36, 'Sedora Turizm Tarım ve Gıda San. Tic. Ltd.Şti', 'Merve Hanım', '', '0(507) 077 7155', 'köyün kendisi behramkale küme evler no:361 ayvacık çanakkale', NULL, NULL, '2025-05-15 12:25:26', '2025-05-15 12:25:26'),
(37, 'Hotel Black Tulip', 'Murat bey', '', '0(542) 139 8618', '', NULL, NULL, '2025-05-16 12:15:06', '2025-05-16 12:15:06'),
(38, 'SYMBOL KAPADOKYA', 'Hatice hanım', '', '', '', NULL, NULL, '2025-05-20 06:20:46', '2025-05-20 06:20:46'),
(39, 'ŞENOCAK DIŞ TİCARET VE TUR.SAN.LTD.ŞTİ', 'Özlem Hanım', '', '0(549) 254 7702', 'TERSANE CAD N0 .111 Beyoğlu, İstanbul', NULL, NULL, '2025-05-20 07:19:32', '2025-05-20 10:25:26'),
(40, 'BİRİZ OTELCİLİK VE TURİZM TİC. LTD. ŞTİ.', 'Hakan Bey', '', '0(532) 379 59 70', 'Ortaköy mah. Mandıra sok. No:34/5 BEŞİKTAŞ /İSTANBUL', NULL, NULL, '2025-05-20 10:31:52', '2025-05-20 10:31:52'),
(41, 'HİMA TURİZM SANAYİ TİCARET LİMİTED ŞİRKETİ', 'Murat Bey', '', '0(542) 139 86 18', 'HOCAPAŞA MAH. HÜDAVENDİGAR CAD. HOTEL BLACK\r\nTULIP NO: 8 FATİH/ İSTANBUL', NULL, NULL, '2025-05-20 13:32:48', '2025-05-20 13:32:48'),
(42, 'ASİL BY TURİZM OTELCİLİK TİCARET LİMİTED ŞİRKETİ', 'Murat Bey', '', '0(542)139 86 18', 'HOCAPAŞA MAH. HÜDAVENDİGAR CAD. NO: 21 FATİH/İSTANBUL', NULL, NULL, '2025-05-20 13:37:41', '2025-05-20 13:37:41'),
(43, 'YURTSEVER TURİZM VE GIDA İNŞAAT TİCARET ANONİM ŞİRKETİ', 'Murat Bey', '', '0(542) 139 86 18', 'HOCAPAŞA MAH. KARGILI ÇIKMAZI SK. CELAL ORMAN IŞ\r\nHANI NO: 6 İÇ KAPI NO: 1 FATİH/ İSTANBUL', NULL, NULL, '2025-05-20 13:44:53', '2025-05-20 13:44:53'),
(44, 'ÖZBAR GIDA TURİZM İNŞAAT SANAYİ VE TİCARET LİMİTED ŞİRKETİ', 'Murat Bey', '', '0(542) 139 86 18', 'HOCAPAŞA MAH. HÜDAVENDİGAR ÇIKMAZI SK. NO: 1 FATİH/İSTANBUL', NULL, NULL, '2025-05-20 13:46:34', '2025-05-20 13:46:34'),
(45, 'ARMİN OTELCİLİK TURZ. İNŞ. TİC. LTD. ŞTİ.', 'Ömer Faruk KALELİ', '', '0(507) 864 9925', 'Hacıilyas mah. Agah efendi sok. 2/1 AMASYA', NULL, NULL, '2025-05-21 08:16:52', '2025-05-21 08:16:52'),
(46, 'SELCAN OFSET MAATBACILIK REKLAM TURİZM', 'Can Berkay ŞAHİN', '', '0(542) 609 5323', '', NULL, NULL, '2025-05-21 09:49:50', '2025-05-21 09:49:50'),
(47, 'MASqCOD COLLECTİON', '', '', '', '', NULL, NULL, '2025-05-22 05:16:44', '2025-05-22 05:16:44'),
(48, 'BİLEK HOTEL  LEVENT', '', '', '0(212) 324 2024', 'Sultan Selim Mahallesi, Levent, Eski Büyükdere Cd. 33/A D:34415 4, 34415 Kağıthane/İstanbul', NULL, NULL, '2025-05-22 07:35:49', '2025-05-22 07:35:49'),
(49, 'Helen Otelcilik A.Ş. TAKSİM', '', '', '0(532) 326 8695', 'Gümüssuyu Mh. Siraselviler Cd.  No:7/1 Taksim  34437 Beyoglu ISTANBUL', NULL, NULL, '2025-05-22 09:03:42', '2025-05-22 09:03:42'),
(50, 'Kemal Stone House', 'Kemal bey', '', '0(534) 795 8550', 'Tekelli mahallesi Karlık sok no:47\r\nUçhisar kasabası/NEVŞEHİR', NULL, NULL, '2025-05-23 06:21:21', '2025-05-23 06:21:21'),
(51, 'HOTEL TORUN - Kamil Alper TORUN', 'Kamil Alper TORUN', 'info@hoteltorun.com.tr', '0(212) 534 4550', 'Topkapı Mahallesi, Hamam Odaları Aralığı No: 9 Topkapı - İstanbul', NULL, NULL, '2025-05-23 10:22:34', '2025-05-23 10:22:34'),
(52, 'The print house hotel', 'Jeyhun Bey', '', '', '', NULL, NULL, '2025-05-23 10:28:14', '2025-05-23 10:28:14'),
(53, 'Murat bey', '', '', '0(542) 139 86 18', '', NULL, NULL, '2025-06-04 11:59:45', '2025-06-04 11:59:45'),
(54, 'PEL GALATA OTELCİLİK TURİZM SEYAHAT VE ORGANİZASYON HİZMETLERİ SANAYİ VE TİCARET LİMİTED ŞİRKETİ', '0(507) 565 5054', '', '', 'ŞAHKULU MAH. KÜÇÜK HENDEK CAD. NO: 11 İÇ KAPI NO: 1\r\nBEYOĞLU/ İSTANBUL', NULL, NULL, '2025-06-10 10:26:38', '2025-06-10 10:33:47'),
(55, 'EFES PRENSES TURIZM OTELCİLİK', 'MURAT BEY', '', '', '', NULL, NULL, '2025-06-13 08:36:22', '2025-06-13 08:36:22'),
(56, 'SNR OTELCİLİK MEDİCAL TEKSTİL OTO KİRALAMA TURIZM SANAYİ  TİCARET LİMİTED ŞİRKETİ', 'AYŞE HANIM', '', '05360615463', 'BURSA', NULL, NULL, '2025-06-16 12:54:15', '2025-06-16 12:54:15'),
(57, 'SNR OTELCİLİK MEDİCAL TEKSTİL OTO KİRALAMA TURIZM SANAYİ  TİCARET LİMİTED ŞİRKETİ', 'AYŞE HANIM', '', '', '', NULL, NULL, '2025-06-17 06:18:19', '2025-06-17 06:18:19'),
(58, 'SVENGALİ DESINGNS', 'MR JEREMY TABANSİ', 'jeremy@svengalidesigns.com', '+2348022239716', 'nıjerya', NULL, NULL, '2025-06-17 06:49:22', '2025-06-17 06:49:22'),
(59, 'MURAT BEY', '', '', '', '', NULL, NULL, '2025-06-17 07:35:34', '2025-06-17 07:35:34'),
(60, 'THE ABIES', 'KÜRŞAT BEY', '', '', '', NULL, NULL, '2025-06-17 09:19:24', '2025-06-17 09:19:24'),
(61, 'AYVALIK BEACH HOTEL', '', '', '', '', NULL, NULL, '2025-06-17 11:34:48', '2025-06-17 11:34:48'),
(62, 'TALEN HOTEL', '', '', '', '', NULL, NULL, '2025-06-18 05:53:55', '2025-06-18 05:53:55'),
(63, 'NEVAL TURIZM OTELCİLİK KUYUMCULUK HALICILIK VE SANAYİ VE TİCARET LİMİTED ŞİRKETİ', 'MURAT BEY', '', '05421398618', '', NULL, NULL, '2025-06-18 10:15:03', '2025-06-18 13:50:01'),
(64, 'AVEC HOTEL SEYEHAT TURIZM', '', '', '', '', NULL, NULL, '2025-06-20 14:14:56', '2025-06-20 14:14:56'),
(65, 'WALTON HOTEL GALATA', '', '', '', '', NULL, NULL, '2025-06-25 08:35:25', '2025-06-25 08:35:25'),
(66, 'WALTON HOTEL GALATA', '', '', '', '', NULL, NULL, '2025-06-25 08:35:35', '2025-06-25 08:35:35'),
(67, 'WALTON HOTEL GALATA', '', '', '', 'GALATA', NULL, NULL, '2025-06-25 08:35:45', '2025-06-25 08:35:45'),
(68, 'VEZİRKÖPRÜ BELEDİYESİ', '', '', '', '', NULL, NULL, '2025-06-26 11:20:45', '2025-06-26 11:20:45'),
(69, 'BY DEDEMAN', '', '', '', '', NULL, NULL, '2025-06-27 04:19:18', '2025-06-27 04:19:18'),
(70, 'STELLA TAKSİM', '', '', '', '', NULL, NULL, '2025-07-04 05:38:16', '2025-07-04 05:38:16'),
(71, 'LÜTFÜ BEY KONAĞI', 'LÜTFÜ BEY', '', '', '', NULL, NULL, '2025-07-08 04:55:05', '2025-07-08 04:59:32'),
(72, 'HOSTEL LEBENCH', '', '', '', '', NULL, NULL, '2025-07-08 05:01:28', '2025-07-08 05:01:28'),
(73, 'dream stonehouse', 'sultan hanım', '', '05398594925', 'nevşehir/kapadokya', NULL, NULL, '2025-07-16 09:47:04', '2025-07-16 09:47:04'),
(74, 'İKON YAPI ve GAYRİMENKUL TİC.A.Ş.', 'NEŞE HANIM', '', '05423725278', '', NULL, NULL, '2025-07-16 10:27:36', '2025-07-16 10:27:36'),
(75, 'ARAR TURİZM İNŞ.PETROL GIDA TİC.AN.ŞTİ.', 'SÜLEYMAN BEY', '', '05433400621', '', NULL, NULL, '2025-07-17 07:42:04', '2025-07-17 07:42:04'),
(76, 'buket kimya', 'sultan hanım', '', '05059489916', '', NULL, NULL, '2025-07-17 13:04:20', '2025-07-17 13:04:20'),
(77, 'HOTEL KLAS', 'HOTEL KLAS', '', '05356549644', '', NULL, NULL, '2025-07-25 09:11:01', '2025-07-25 09:11:01'),
(79, 'ZONGULDAK OTEL', '', '', '', '', NULL, NULL, '2025-07-28 06:12:03', '2025-07-28 06:12:03'),
(80, 'HUBİ HOTELCİLİK ve TURİZM LTD.ŞTİ.', 'YASİN BEY', '', '05452272664', '', NULL, NULL, '2025-07-28 11:31:46', '2025-07-28 11:31:46'),
(81, 'PRİME BOSPHORUS', 'BERK BEY', '', '05342492929', '', NULL, NULL, '2025-07-28 13:38:57', '2025-07-28 13:38:57'),
(83, 'ZHEJIANG WILLING FOREIGN TR CO MAKINA', 'EYLÜL HANIM', '', '', '', NULL, NULL, '2025-08-14 04:53:01', '2025-08-14 04:53:01'),
(84, 'ORANGE COUNTY HOTEL', 'HÜLYA HANIM', '', '', '', NULL, NULL, '2025-08-14 08:38:00', '2025-08-14 08:38:00'),
(85, 'TUBA HANIM', '', '', '', 'KAPADOKYA', NULL, NULL, '2025-08-19 12:27:24', '2025-08-19 12:27:24'),
(86, 'ÖZEL PENDİK HASTANESİ', '', '', '', '', NULL, NULL, '2025-08-20 10:31:30', '2025-08-20 10:31:30'),
(87, 'TÜLAY HANIM', '', '', '', '', NULL, NULL, '2025-08-27 04:42:16', '2025-08-27 04:42:16'),
(88, 'HOTEL quantum', '', '', '', '', NULL, NULL, '2025-09-03 07:41:46', '2025-09-03 07:41:46'),
(89, 'MEHMET CANTÜRK', 'MEHMET CANTÜRK', 'mehmetcanturk@hotmail.com', '05334988905', 'yeşiltepe mah. atik sk. venedik apt. no:11 daire:08', NULL, NULL, '2025-09-05 14:44:28', '2025-09-05 14:44:28'),
(91, 'MİSAFİR 1', '', '', '', '', NULL, NULL, '2025-10-15 10:44:04', '2025-10-15 10:44:04');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `position_x` int(11) DEFAULT 0,
  `position_y` int(11) DEFAULT 0,
  `width` int(11) DEFAULT 4,
  `height` int(11) DEFAULT 3,
  `settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`settings`)),
  `is_visible` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Tablo döküm verisi `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `user_id`, `widget_type`, `position_x`, `position_y`, `width`, `height`, `settings`, `is_visible`, `created_at`, `updated_at`) VALUES
(1, 4, 'stats_cards', 0, 0, 12, 2, '{\"show_quotes\": true, \"show_customers\": true, \"show_products\": true, \"show_revenue\": true}', 1, '2025-10-22 12:26:29', '2025-10-22 12:26:29'),
(2, 4, 'recent_quotes', 0, 2, 8, 4, '{\"limit\": 5, \"show_status\": true}', 1, '2025-10-22 12:26:29', '2025-10-22 12:26:29'),
(3, 4, 'sales_chart', 8, 2, 4, 4, '{\"period\": \"month\", \"chart_type\": \"line\"}', 1, '2025-10-22 12:26:29', '2025-10-22 12:26:29');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `email_queue`
--

CREATE TABLE `email_queue` (
  `id` int(11) NOT NULL,
  `to_email` varchar(255) NOT NULL,
  `to_name` varchar(255) DEFAULT NULL,
  `subject` varchar(500) NOT NULL,
  `body` text NOT NULL,
  `is_html` tinyint(1) DEFAULT 1,
  `status` enum('pending','sent','failed') DEFAULT 'pending',
  `attempts` int(11) DEFAULT 0,
  `max_attempts` int(11) DEFAULT 3,
  `error_message` text DEFAULT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `attempt_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` enum('info','success','warning','error','system') DEFAULT 'info',
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `action_url` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `read_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Tablo döküm verisi `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `type`, `title`, `message`, `is_read`, `action_url`, `created_at`, `read_at`) VALUES
(1, 4, 'info', 'Hoş Geldiniz!', 'CRM Pro sistemine hoş geldiniz. Sistem özelliklerini keşfetmek için dashboard\'u inceleyebilirsiniz.', 0, '/', '2025-10-22 12:26:29', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(100) NOT NULL,
  `expiry` datetime NOT NULL,
  `used` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_quantity` int(11) NOT NULL DEFAULT 0,
  `vat_rate` decimal(5,2) NOT NULL DEFAULT 0.00,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `price`, `stock_quantity`, `vat_rate`, `image_url`, `created_at`, `updated_at`) VALUES
(92, 10, 'OD.BT BİYELİ TELA TERLİK ', '\"Taban: 3,2 mm eva\r\nSaya 65gr Nonwoven kumaş, tela biyeli kenar\r\nBaskı: Baskısız\"\r\n', 6.50, 2147483647, 10.00, 'assets/uploads/products/product_92_68f7786e44cf1.jpg', '2025-01-18 19:36:06', '2025-10-21 12:11:27'),
(105, 11, 'OD.SP1 SARGILI SABUN', '\"Ambalaj: Plise sargılı.\r\nÖlçü: 34mm Opak etiket\r\nBaskı: Tek renk standart baskılı\r\nİçerik: 15gr beyaz yuvarlak sabun\"\r\n', 2.15, 2147483647, 20.00, 'assets/uploads/products/product_105_68f7786f390e5.png', '2025-01-18 19:36:06', '2025-10-21 12:11:27'),
(1724, NULL, 'BANYO LİFİ SÜRÜDÜRÜLEBİR', '\"Ambalaj: OPP Poşetli\r\nÖlçü: Standart boy\r\nBaskı: Baskısız\r\nİçerik: Oval örme lif\"\r\n', 7.30, 2147483647, 20.00, 'assets/uploads/products/product_1724_68f7786f62761.png', '2025-03-14 14:09:16', '2025-10-21 12:11:28'),
(1743, NULL, 'TRAŞ SETİ SÜRDÜRÜLEBİLİR', '\"Ambalaj: A. Bristol kutu\r\nÖlçü: 119*47*25 mm\r\nBaskı: Tek renk standart baskılı\r\nİçerik: Pro 2 tıraş bıçağı, 10ml tıraş jeli\"\r\n', 9.00, 1000000, 20.00, 'assets/uploads/products/product_1743_68f77870b54fe.png', '2025-03-14 14:09:16', '2025-10-21 12:11:29'),
(1744, 10, 'OD.LST LÜX SÜNGERLİ TELA TERLİK ', 'Taban: 3,2mm eva, 2 mm süngerli\r\nSaya: 45gr Nonwoven kumaş, 3mm süngerli\r\nBaskı: baskısız veya baskılı', 9.50, 2147483647, 10.00, 'assets/uploads/products/product_1744_68f77871dd0c3.png', '2025-03-14 14:09:16', '2025-10-21 12:11:30'),
(1798, 9, 'OD.Ş1 ŞAMPUAN 30 ML', '\"Ambalaj: Silindir siyah veya şeffaf  şişe, mini siyah kapak.\r\nÖlçü: 40*90mm Opak etiket\r\nBaskı: Tek renk standart baskılı\r\nİçerik: 30 ml PRIME  esanslı\"\r\n', 2.90, 2147483647, 20.00, 'assets/uploads/products/product_1798_68f77872b1d28.png', '2025-05-06 15:04:18', '2025-10-21 12:11:30'),
(1799, 9, ' OD.D1 DUŞ JELİ 30 ML', '\"Ambalaj: Silindir siyah veya şeffaf şişe, mini siyah kapak.\r\nÖlçü: 40*90mm Opak etiket\r\nBaskı: Tek renk standart baskılı\r\nİçerik: 30ml Standart esanslı\"\r\n', 2.90, 2147483647, 20.00, 'assets/uploads/products/product_1799_68f77872c1315.png', '2025-05-06 15:05:28', '2025-10-21 12:11:30'),
(1800, 9, 'OD.S1 SAÇ KREMİ 30 ML', '\"Ambalaj: Silindir siyah veya şeffaf şişe, mini siyah kapak.\r\nÖlçü: 40*90mm Opak etiket\r\nBaskı: Tek renk standart baskılı\r\nİçerik: 30 ml Standart esanslı\"\r\n', 3.00, 2147483647, 20.00, 'assets/uploads/products/product_1800_68f77872d00f7.png', '2025-05-06 15:06:31', '2025-10-21 12:11:30'),
(1801, 9, 'OD.V1 VUCUT LOSYONU 30 ML ', '\"Ambalaj: Silindir siyahveya şeffaf  şişe, mini siyah kapak.\r\nÖlçü: 40*90mm Opak etiket\r\nBaskı: Tek renk standart baskılı\r\nİçerik: 30 ml Standart esanslı\"\r\n', 3.00, 2147483647, 20.00, 'assets/uploads/products/product_1801_68f77872de532.png', '2025-05-06 15:07:01', '2025-10-21 12:11:30'),
(1802, 9, 'OD.Ş2 ŞAMPUAN 35 ML ', '\"Ambalaj: Silindir siyahveya şeffaf şişe, mini siyah kapak.\r\nÖlçü: 40*90mm Opak etiket\r\nBaskı: Tek renk standart baskılı\r\nİçerik: 35ml Standart esanslı\"\r\n', 2.90, 2147483647, 20.00, 'assets/uploads/products/product_1802_68f77872ef462.png', '2025-05-08 08:57:15', '2025-10-21 12:11:31'),
(1803, 9, 'OD.D2 DUŞ JELİ 35 ML ', '\"Ambalaj: Silindir siyah veya şeffaf şişe, mini siyah kapak.\r\nÖlçü: 40*90mm Opak etiket\r\nBaskı: Tek renk standart baskılı\r\nİçerik: 35ml Standart esanslı\"\r\n', 2.90, 500000, 20.00, 'assets/uploads/products/product_1803_68f778730b063.png', '2025-05-08 08:57:35', '2025-10-21 12:11:31'),
(1804, 9, 'OD.S2 SAÇ KREMİ 35 ML', '\"Ambalaj: Silindir siyah veya şeffaf şişe, mini siyah kapak.\r\nÖlçü: 40*90mm Opak etiket\r\nBaskı: Tek renk standart baskılı\r\nİçerik: 35ml Standart esanslı\"\r\n', 3.00, 500000, 20.00, 'assets/uploads/products/product_1804_68f778731b4c9.png', '2025-05-08 08:57:50', '2025-10-21 12:11:31'),
(1805, 9, 'OD.V2 VUCUT LOSYONU 35 ML', '\"Ambalaj: Silindir siyah veya şeffaf şişe şişe, mini siyah kapak.\r\nÖlçü: 40*90mm Opak etiket\r\nBaskı: Tek renk standart baskılı\r\nİçerik: 35ml Standart esanslı\"\r\n', 3.00, 500000, 20.00, 'assets/uploads/products/product_1805_68f778732ad2b.png', '2025-05-08 08:58:05', '2025-10-21 12:11:31'),
(1806, 7, ' OD.ABDB DUŞ BONESİ SÜRDÜRÜLEBİLİR', 'Ambalaj: A. Bristol kutu\r\nÖlçü: 53*53*24 mm\r\nBaskı: Tek renk standart baskılı veya otel logolu\r\nİçerik: 1 adet akordeon bone', 1.90, 2147483647, 20.00, 'assets/uploads/products/product_1806_68f778733b12f.png', '2025-05-08 09:12:44', '2025-10-21 12:11:31'),
(1807, 7, 'OD.ABTRP TÖRPÜ SÜRDÜRÜLEBİLİR', 'Ambalaj: A. Bristol kutu\r\nÖlçü: 130*20*8 mm\r\nBaskı: Tek renk standart baskılı veya otel logolu\r\nİçerik: Uzun boy törpü', 1.90, 100000, 20.00, 'assets/uploads/products/product_1807_68f778734bb0e.png', '2025-05-08 09:13:17', '2025-10-21 12:11:31'),
(1808, 7, 'OD.ABBK2 BAKIM SETİ SÜRDÜLEBİLİR', 'Ambalaj: A. Bristol kutu\r\nÖlçü: 78*65*65 mm\r\nBaskı: Tek renk standart baskılı  veya otel logolu\r\nİçerik: 3\'lü Kulak pamuğu + Duş bonesi + Makyaj Pamuğu ', 3.00, 2147483647, 20.00, 'assets/uploads/products/product_1808_68f778735a900.png', '2025-05-08 09:14:40', '2025-10-21 12:11:31'),
(1809, NULL, 'AYAKKABI TEMİZLEME  KESESİ', 'Model: Kese\r\nÖlçü: 15*20 cm\r\nBaskı: Baskısız\r\nİçerik: Tela ayakkabı temizleme kesesi', 7.50, 1000000, 20.00, 'assets/uploads/products/product_1809_68f778736a117.png', '2025-05-08 09:15:38', '2025-10-21 12:11:31'),
(1810, 13, 'OD.KRK KURŞUN KALEM ', 'Model: Köşeli\r\nÖlçü: Standart boy\r\nBaskı: Baskısız veya otel logolu\r\nİçerik: Natürel vernikli', 4.25, 2147483647, 20.00, 'assets/uploads/products/product_1810_68f7787378fda.png', '2025-05-08 09:21:05', '2025-10-21 12:11:31'),
(1811, 7, 'OD.ABBA BARDAK ALTLIĞI', 'Model: Yuvarlak\r\nÖlçü: 80 mm\r\nBaskı: Tek renk standart baskılı veya otel logolu \r\nİçerik: Laminasyonlu kağıt\r\n', 0.85, 2147483647, 20.00, 'assets/uploads/products/product_1811_68f7787388610.png', '2025-05-08 09:22:37', '2025-10-21 12:11:31'),
(1812, 7, 'OD.ABDND DND KARTI SÜRDÜRÜLEBİLİR', 'Ambalaj: A. Bristol kutu\r\nÖlçü: 80*235 mm\r\nBaskı: Tek renk standart baskılı veya otel logolu\r\nİçerik: 300 gr A.Bristol kağıt\r\n', 3.75, 2147483647, 20.00, 'assets/uploads/products/product_1812_68f7787398d8c.png', '2025-05-08 09:26:54', '2025-10-21 12:11:31'),
(1813, 13, 'OD.TÜK TÜKENMEZ KALEM ', '\"Model: Çevirmeli\r\nÖlçü: Standart boy\r\nBaskı: Baskısız veya otel logolu\r\nİçerik: PVC Beyaz / Siyah\"\r\n', 4.00, 2147483647, 20.00, 'assets/uploads/products/product_1813_68f77873a75f1.png', '2025-05-08 09:27:21', '2025-10-21 12:11:31'),
(1814, 7, 'OD.ABBK BARDAK KAPAĞI', 'Ambalaj: 6 mic PE\r\nÖlçü: 15*25 cm\r\nBaskı: Tek renk standart baskılı veya otel logolu ', 1.10, 2147483647, 20.00, 'assets/uploads/products/product_1814_68f77873b5b2b.png', '2025-05-08 10:02:28', '2025-10-21 12:11:31'),
(1816, 10, 'OD.PHT PETEK HAVLU TERLİK', '\"Taban: 3,2mm eva, 3 mm süngerli\r\nSaya: 3mm süngerli petek havlu kumaş\r\nBaskı: Baskısız  veya baskılı\r\n', 11.00, 2147483647, 10.00, 'assets/uploads/products/product_1816_68f77873c5141.png', '2025-05-08 10:15:42', '2025-10-21 12:11:31'),
(1817, 10, 'OD.SPTSPA TERLİK', '\"Taban: 3mm eva, kaymaz taban\r\nSaya: 2mm eva\r\nBaskı: Baskısız veya baskılı \r\n', 8.00, 2147483647, 10.00, 'assets/uploads/products/product_1817_68f77873d3a31.png', '2025-05-08 10:16:05', '2025-10-21 12:11:31'),
(1818, 10, 'OD.POHT POLYESTER HAVLU TERLİK', 'Taban: 3,2mm eva, 3 mm süngerli\r\nSaya: 3mm süngerli polyester havlu kumaş\r\nBaskı: Baskısız veya baskılı\r\n', 11.00, 2147483647, 10.00, 'assets/uploads/products/product_1818_68f77873e2949.png', '2025-05-08 10:16:29', '2025-10-21 12:11:31'),
(1819, 10, 'OD.DBLPO ÇİFT KAT POLYESTER HAVLU TERLİK', 'Taban: 3mm eva, 3mm süngerli kaymaz taban\r\nSaya: 3mm süngerli çift kat havlu kumaş\r\nBaskı: Baskısız veya baskılı', 13.00, 2147483647, 10.00, 'assets/uploads/products/product_1819_68f77873f18f3.png', '2025-05-08 10:17:26', '2025-10-21 12:11:32'),
(1820, 10, 'OD.DBLPE ÇİFT KAT PETEK HAVLU', 'Taban: 3mm eva, 3mm süngerli kaymaz taban\r\nSaya: 3mm süngerli çift kat havlu kumaş\r\nBaskı: Baskısız tela kılıf içerisinde\r\n', 13.00, 2147483647, 10.00, 'assets/uploads/products/product_1820_68f778740c4fc.png', '2025-05-08 10:17:53', '2025-10-21 12:11:32'),
(1821, 12, 'OD.BRD BARDAK POŞETİ ', 'PP SERİ  BASKISIZ VEYA OTEL LOGOLU ', 0.65, 2147483647, 20.00, 'assets/uploads/products/product_1821_68f778741a815.png', '2025-05-08 14:11:57', '2025-10-21 12:11:32'),
(1829, 7, 'OD.ABSBN SABUN KUTULU', 'Ambalaj: A. Bristol kutu\r\nÖlçü: 50*50*17mm\r\nBaskı: Tek renk standart baskılı veya otel logolu \r\nİçerik: 15gr beyaz yuvarlak sabun', 3.00, 2147483647, 20.00, 'assets/uploads/products/product_1829_68f778742a378.png', '2025-05-08 17:41:50', '2025-10-21 12:11:32'),
(1830, 12, 'OD.ÇMŞ ÇAMAŞIR TORBASI', 'Ambalaj: 8 mic PE\r\nÖlçü: 40*50 cm\r\nBaskı: Tek renk standart baskılı veya otel logolu \r\nİçerik: El geçmeli', 2.00, 2147483647, 20.00, 'assets/uploads/products/product_1830_68f7787438b99.png', '2025-05-08 17:42:09', '2025-10-21 12:11:32'),
(1831, 12, 'OD.HJY HİJYEN TORBASI', 'Ambalaj: 6 mic PE\r\nÖlçü: 13*23 cm\r\nBaskı: Tek renk standart baskılı veya otel logolu\r\nİçerik: ', 0.80, 2147483647, 20.00, 'assets/uploads/products/product_1831_68f7787446e85.png', '2025-05-08 17:42:31', '2025-10-21 12:11:32'),
(1833, NULL, 'BANYO LİFİ', 'Ambalaj: OPP Poşetli\r\nÖlçü: Standart boy\r\nBaskı: Baskısız\r\nİçerik: Oval örme lif', 3.00, 2147483647, 10.00, 'assets/uploads/products/product_1833_68f778745438a.png', '2025-05-08 17:43:11', '2025-10-21 12:11:32'),
(1834, 7, 'OD.ABKP KULAK PAMUĞU', 'Ambalaj: A. Bristol kutu\r\nÖlçü: 80*30*4 mm\r\nBaskı: Tek renk standart baskılı veya otel logolu \r\nİçerik: 3\'lü kulak pamuğu poşetli', 1.50, 2147483647, 20.00, 'assets/uploads/products/product_1834_68f7787463ad0.png', '2025-05-08 17:43:35', '2025-10-21 12:11:32'),
(1836, 7, 'OD.ABTR TIRAŞ SETİ', 'Ambalaj: A. Bristol kutu\r\nÖlçü: 119*47*25 mm\r\nBaskı: Tek renk standart baskılı veya otel logolu \r\nİçerik: Pro 2 tıraş bıçağı, 10ml tıraş jeli', 9.00, 2147483647, 20.00, 'assets/uploads/products/product_1836_68f77874722f1.png', '2025-05-08 17:45:16', '2025-10-21 12:11:32'),
(1837, 7, 'OD.ABBK1 BAKIM SETİ', 'Ambalaj: A. Bristol kutu\r\nÖlçü: 78*65*65 mm\r\nBaskı: Tek renk standart baskılı veya otel logolu\r\nİçerik: 3\'lü Kulak pamuğu + Duş bonesi + 2\'li disk Makyaj Pamuğu + Hijyen torbası + Dikiş seti', 2.50, 2147483647, 20.00, 'assets/uploads/products/product_1837_68f7787480dd6.png', '2025-05-08 17:45:45', '2025-10-21 12:11:32'),
(1838, 7, 'OD.ABTAR TARAK', 'Ambalaj: A. Bristol kutu\r\nÖlçü: 150*36*8 mm\r\nBaskı: Tek renk standart baskılı veya otel logolu \r\nİçerik: Tarak poşetli', 3.00, 2147483647, 20.00, 'assets/uploads/products/product_1838_68f778749122c.png', '2025-05-08 17:46:10', '2025-10-21 12:11:32'),
(1839, 7, 'OD.ABMP MAKYAJ PAMUĞU', 'Ambalaj: A. Bristol kutu\r\nÖlçü: 53*53*24 mm\r\nBaskı: Tek renk standart baskılı\r\nİçerik: 2\'li disk pamuk poşetli', 1.90, 2147483647, 20.00, 'assets/uploads/products/product_1839_68f77874a093f.png', '2025-05-08 17:58:14', '2025-10-21 12:11:32'),
(1840, 7, 'OD.ABDS DİKİŞ SETİ', 'Ambalaj: A. Bristol kutu\r\nÖlçü: 69*65 mm\r\nBaskı: Tek renk standart baskılı veya otel logolu \r\nİçerik: 6 renk iğne ve iplik', 3.00, 2147483647, 20.00, 'assets/uploads/products/product_1840_68f77874b188b.png', '2025-05-08 17:58:37', '2025-10-21 12:11:32'),
(1841, 7, 'OD.ABDŞ DİŞ SETİ', 'Ambalaj: A. Bristol kutu\r\nÖlçü: 119*47*25 mm\r\nBaskı: Tek renk standart baskılı veya otel logolu \r\nİçerik: Katlanır fırça, 10ml diş macunu', 8.00, 2147483647, 10.00, 'assets/uploads/products/product_1841_68f77874c1cfc.png', '2025-05-08 17:59:10', '2025-10-21 12:11:32'),
(1842, NULL, 'AYAKKABI CİLASI POŞETLİ', 'Ambalaj: OPP Poşetli\r\nÖlçü: Orta boy\r\nBaskı: Baskısız\r\nİçerik: Cila süngeri', 3.00, 2147483647, 20.00, 'assets/uploads/products/product_1842_68f77874d0bf4.png', '2025-05-08 17:59:32', '2025-10-21 12:11:32'),
(1843, 7, 'OD.AYÇ AYAKKABI ÇEKECEĞİ', 'Ambalaj: Beyaz / Siyah\r\nÖlçü: Standart boy\r\nBaskı: Baskısız veya otel  logolu \r\nİçerik: PVC ayakkabı çekeceği', 1.80, 2147483647, 20.00, 'assets/uploads/products/product_1843_68f77874e0553.png', '2025-05-08 17:59:57', '2025-10-21 12:11:32'),
(1844, 7, 'OD.KLB KLOZET BANDI ŞERİT', 'Model: Şerit\r\nÖlçü: 4*70 cm\r\nBaskı: Tek renk standart baskılı veya otel logolu \r\nİçerik: 1. hamur kağıt', 1.00, 2147483647, 20.00, 'assets/uploads/products/product_1844_68f77874efbda.png', '2025-05-08 18:00:50', '2025-10-21 12:11:33'),
(1845, NULL, 'KLOZET BANDI ÇİCEK', 'Model: Şerit\r\nÖlçü: Özel kesim\r\nBaskı: Tek renk standart baskılı\r\nİçerik: Çiçek model sticker', 3.00, 2147483647, 20.00, 'assets/uploads/products/product_1845_68f778750b5bd.png', '2025-05-08 18:01:10', '2025-10-21 12:11:33'),
(1846, NULL, 'İKRAM KARTI', 'Ambalaj: A. Bristol kutu\r\nÖlçü: 55*95 mm\r\nBaskı: Tek renk standart baskılı', 3.00, 100000, 20.00, 'assets/uploads/products/product_1846_68f778751b188.png', '2025-05-08 18:01:49', '2025-10-21 12:11:33'),
(1855, 6, 'ALUPACK SABUN 15 GR ', '\"Ambalaj : 140 gr Alupack ambalaj\r\nÖlçü: 80*110 mm\r\nBaskı : Tek renk çift taraf baskılı\r\nİçerik: 6 renk iplik ve iğne\"\r\n', 1.00, 1000000, 20.00, 'assets/uploads/products/product_1855_68f778752b097.png', '2025-05-09 05:42:06', '2025-10-21 12:11:33'),
(1859, NULL, 'SABUN SÜRDÜRÜLEBİLİR', '\"Ambalaj : FSC\'li Kraft ambalaj\r\nÖlçü: 95*75mm\r\nBaskı : Tek renk standart baskılı\r\nİçerik: 20gr Dikdörtgen Tırtıklı Kekikli Sabun\"\r\n', 1.00, 1000000, 20.00, 'assets/uploads/products/product_1859_68f778753b2e6.png', '2025-05-12 07:13:39', '2025-10-21 12:11:33'),
(1860, NULL, 'DİKİŞ SETİ SÜRDÜRÜLEBİLİR', '\"Ambalaj : FSC\'li Kraft ambalaj\r\nÖlçü: 95*75mm\r\nBaskı : Tek renk standart baskılı\r\nİçerik: 6renk iplive iğne\"\r\n', 1.00, 100000, 20.00, 'assets/uploads/products/product_1860_68f778754a7ee.png', '2025-05-12 07:14:15', '2025-10-21 12:11:33'),
(1861, NULL, 'DİKİŞ SETİ İTHAL ', '\"Ambalaj : FSC\'li Kraft ambalaj\r\nÖlçü: 95*75mm\r\nBaskı : Tek renk standart baskılı\r\nİçerik: \"\r\n', 1.00, 1000000000, 20.00, 'assets/uploads/products/product_1861_68f778755a1d3.png', '2025-05-12 07:14:56', '2025-10-21 12:11:33'),
(1862, NULL, 'DUŞ BONESİ SÜRDÜRÜLEBİLİR', '\"Ambalaj : FSC\'li Kraft ambalaj\r\nÖlçü: 95*75mm\r\nBaskı : Tek renk standart baskılı\r\nİçerik: 1 adet akordeon bone\"\r\n', 1.00, 2147483647, 20.00, 'assets/uploads/products/product_1862_68f778756a8f7.png', '2025-05-12 07:15:35', '2025-10-21 12:11:33'),
(1864, NULL, 'MNBAR 40 LT Blok Kapılı İnverter Sistem Retro Minibar', 'Brüt Hacim: 40LT\nNet Hacim: 34LT\nÜrün Boyutları (Y x G x D) mm: 56.5 x 43.0 x 42.0\nEnerji Tüketimi (kWh/yıl): 1 / 24h\nNet Ağırlık: 15.5kg\nGürültü Seviyesi (dB): 0\nSoğutma Sistemi: Absorbe', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77986609dc.jpg', '2025-06-17 00:29:14', '2025-10-21 12:16:06'),
(1866, NULL, 'MNBAR 30 lt Blok Kapılı Minibar-Absorbe', 'Brüt Hacim: 30LT\nNet Hacim: 28LT\nÜrün Boyutları (Y x G x D) mm: 53.5 x 40.0 x 42.5\nEnerji Tüketimi (kWh / yıl): 0.9 / 24 saat\nNet Ağırlık: 14.5 kg\nGürültü Seviyesi dB: 0\nSoğutma Sistemi: Absorbe', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77986c1a5a.jpg', '2025-06-17 00:29:14', '2025-10-21 12:16:07'),
(1868, NULL, 'MNBAR 40 lt Blok Kapılı Minibar-Absorbe', 'Brüt Hacim: 40 lt\nNet Hacim: 34 lt\nÖlçü: 565 x 430 x 420 mm (Y x G x D)\nEnerji Tüketimi: 0.1 kWh / 24h\nAğırlık: Net 13.5 kg\nGürültü Seviyesi: 0 dB\nSoğutma Sistemi: Absorpsiyon.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77987471ac.jpg', '2025-06-17 00:29:14', '2025-10-21 12:16:07'),
(1874, NULL, 'MNBAR 30 LT Blok Kapı Kompressör Sistem Minibar', 'Brüt Hacim (lt): 35\nNet Hacim (lt): 33\nÜrün boyutu (Y x G x D) mm: 52.0 x 40.0 x 43.0\nEnerji Tüketimi (kWh/yıl): 0.23\nNet Ağırlık: 17 kg\nGürültü Seviyesi (dB): 29/34\nSoğutma Sistemi: KOMPRESÖR - 1500RPM\nSoğutucu Gaz: R600a\nSoğutma Aralığı: +2°C / +8°C', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77987bda58.jpg', '2025-06-17 00:29:14', '2025-10-21 12:16:08'),
(1876, NULL, 'MNBAR 30 lt Cam Kapılı Kompresör Sistem  Minibar', 'Kapasite: 35 lt brüt- 33 lt net\nÖlçüler: 52.0 x 40.0 x 43.0 mm (Y x G x D)\nEnerji: Yıllık 0.24 kWh enerji tüketimi\nAğırlık: 15 kg net\nSes Seviyesi: 29 / 34 db\nSoğutma Sistemi: Kompresör - 1500RPM\nSoğutucu Gaz: R600a\nSoğutma Aralığı: +2°C / +8°C.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779881a7b0.jpg', '2025-06-17 00:29:14', '2025-10-21 12:16:08'),
(1878, NULL, 'MNBAR 40 lt Blok Kapılı Kompresör Sistem Minibar', 'Net Hacim (lt): 38\nÜrün boyutu (Y x G x D) mm: 55.0 x 43.0 x 45.0\nEnerji Tüketimi (kWh/yıl): 0.28\nNet Ağırlık: 18.0 kg\nGürültü Seviyesi (dB): 29/34\nSoğutma Sistemi: KOMPRESÖR - 1500RPM\nSoğutucu Gaz: R600a\nSoğutma Aralığı: +2°C / +8°C', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7798895c22.jpg', '2025-06-17 00:29:14', '2025-10-21 12:16:09'),
(1879, NULL, 'MNBAR  30 lt Blok Kapılı İnverter Sistem Minibar', 'Brüt Hacim (lt): 35\nNet Hacim (lt): 33\nÜrün boyutu (Y x G x D) mm: 52.0 x 40.0 x 43.0\nEnerji Tüketimi (kWh/yıl): 0.23\nNet Ağırlık: 17 kg\nGürültü Seviyesi (dB): 29/34\nSoğutma Sistemi: KOMPRESÖR - 1500RPM\nSoğutucu Gaz: R600a\nSoğutma Aralığı: +2°C / +8°C', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7798900a20.jpg', '2025-06-17 00:29:14', '2025-10-21 12:16:09'),
(1881, NULL, 'MNBAR 40 lt Cam Kapılı Kompresör Sistem Minibar', 'Brüt Hacim (lt): 40\nNet Hacim (lt): 38\nÜrün boyutu (Y x G x D) mm: 55.0 x 43.0 x 45.0\nEnerji Tüketimi (kWh/yıl): 0.26\nNet Ağırlık: 16.0 kg\nGürültü Seviyesi (dB): 29/34\nSoğutma Sistemi: KOMPRESÖR - 1500RPM\nSoğutucu Gaz: R600a\nSoğutma Aralığı: +2°C / +8°C', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7798977b8d.jpg', '2025-06-17 00:29:14', '2025-10-21 12:16:09'),
(1884, NULL, 'MNBAR 30 lt Cam Kapılı İnverter Sistem Minibar', 'Brüt Hacim (lt): 35\nNet Hacim (lt): 33\nÜrün boyutu (Y x G x D) mm: 52.0 x 40.0 x 43.0\nEnerji Tüketimi (kWh/yıl): 0.24\nNet Ağırlık: 15 kg\nGürültü Seviyesi (dB): 29/34\nSoğutma Sistemi: KOMPRESÖR - 1500RPM\nSoğutucu Gaz: R600a\nSoğutma Aralığı: +2°C / +8°C', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77989ccc7f.jpg', '2025-06-17 00:29:14', '2025-10-21 12:16:10'),
(1886, NULL, 'MNBAR  40 lt Blok Kapılı İnverter Sistem Minibar', 'Brüt Hacim (lt): 40\nNet Hacim (lt): 38\nÜrün boyutu (Y x G x D) mm: 55.0 x 43.0 x 45.0\nEnerji Tüketimi (kWh / 24h): 0.28\nNet Ağırlık: 18 kg\nGürültü Seviyesi (dB): 29\nSoğutma Sistemi: KOMPRESÖR - 1500RPM\nSoğutucu Gaz: R600a\nSoğutma Aralığı: +2°C / +8°C', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7798a2e0ee.jpg', '2025-06-17 00:29:14', '2025-10-21 12:16:10'),
(1888, NULL, 'MNBAR 40 lt Cam kapılı İnverter Sistem Minibar', 'Brüt Hacim (lt): 40\nNet Hacim (lt): 38\nÜrün boyutu (Y x G x D) mm: 55.0 x 43.0 x 45.0\nEnerji Tüketimi (kWh/yıl): 0.26\nNet Ağırlık: 16 kg\nGürültü Seviyesi (dB): 29\nSoğutma Sistemi: KOMPRESÖR - 1500RPM\nSoğutucu Gaz: R600a\nSoğutma Aralığı: +2°C / +8°C', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7798a9d845.jpg', '2025-06-17 00:29:14', '2025-10-21 12:16:11'),
(1889, NULL, 'MNBAR 60 lt Cam Kapılı İnverter Sistem Minibar', 'Brüt Hacim (lt): 60\nNet Hacim (lt): 58\nÜrün boyutu (Y x G x D) mm: 61.0 x 46.0 x 48.0\nEnerji Tüketimi (kWh/yıl): 0.32\nNet Ağırlık: 19 kg\nGürültü Seviyesi (dB): 29\nSoğutma Sistemi: KOMPRESÖR - 1500RPM\nSoğutucu Gaz: R600a\nSoğutma Aralığı: +2°C / +8°C', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7798b05070.jpg', '2025-06-17 00:29:14', '2025-10-21 12:16:11'),
(1891, NULL, '60 Lt Blok Kapı Absorbe Sistem Siyah Mnbar', 'Brüt Hacim: 60LT\nNet Hacim: 58LT\nÜrün Boyutları (Y x G x D) mm: 61.0 x 46.0 x 48.0\nEnerji Tüketimi (kWh/yıl): 0.1 / 24h\nNet Ağırlık: 20kg\nGürültü Seviyesi (dB): 0\nSoğutma Sistemi: Absorbe', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7798b56206.jpg', '2025-06-17 00:29:14', '2025-10-21 12:16:11'),
(1893, NULL, '60 Lt Cam Kapı Absorbe Sistem Mnbar', 'Brüt Hacim: 60LT\nNet Hacim: 58LT\nÜrün Boyutları (Y x G x D) mm: 61.0 x 46.0 x 48.0\nEnerji Tüketimi (kWh/yıl): 0.1 / 24h\nNet Ağırlık: 20kg\nGürültü Seviyesi (dB): 0\nSoğutma Sistemi: Absorbe', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7798bd469e.jpg', '2025-06-17 00:29:14', '2025-10-21 12:16:12'),
(1895, NULL, '30 LT BLOK KAPI ABSORBE MİNİBAR İÇİ SİYAH', 'Brüt Hacim: 30LT\nNet Hacim: 28LT\nÜrün Boyutları (Y x G x D) mm: 53.5 x 40.0 x 42.5\nEnerji Tüketimi (kWh/yıl): 0.9 / 24h\nNet Ağırlık: 14.5kg\nGürültü Seviyesi (dB): 0\nSoğutma Sistemi: Absorbe', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7798c3fd2c.jpg', '2025-06-17 00:29:14', '2025-10-21 12:16:12'),
(1897, NULL, '30 LT CAM KAPI ABSORBE MNBAR İÇİ SİYAH', 'Brüt Hacim: 30LT\nNet Hacim: 28LT\nÜrün Boyutları (Y x G x D) mm: 53.5 x 40.0 x 42.5\nEnerji Tüketimi (kWh/yıl): 0.9 / 24h\nNet Ağırlık: 15.5kg\nGürültü Seviyesi (dB): 0\nSoğutma Sistemi: Absorbe', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7798c9c8a5.jpg', '2025-06-17 00:29:14', '2025-10-21 12:16:13'),
(1899, NULL, '40 LT BLOK KAPI ABSORBE SİYAH MNBAR İÇİ SİYAH', 'Brüt Hacim: 40LT\nNet Hacim: 34LT\nÜrün Boyutları (Y x G x D) mm: 56.5 x 43.0 x 42.0\nEnerji Tüketimi (kWh/yıl): 1 / 24h\nNet Ağırlık: 15.5kg\nGürültü Seviyesi (dB): 0\nSoğutma Sistemi: Absorbe', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7798d08c1f.jpg', '2025-06-17 00:29:14', '2025-10-21 12:16:13'),
(1901, NULL, '40 LT CAM KAPI ABSORBE MNBAR İÇİ SİYAH', 'Brüt Hacim: 40LT\nNet Hacim: 34LT\nÜrün Boyutları (Y x G x D) mm: 56.5 x 43.0 x 42.0\nEnerji Tüketimi (kWh/yıl): 1 / 24h\nNet Ağırlık: 15.5kg\nGürültü Seviyesi (dB): 0\nSoğutma Sistemi: Absorbe', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7798d659b8.jpg', '2025-06-17 00:29:14', '2025-10-21 12:16:13'),
(1903, NULL, '40 LT TERMO ELEKTRİK MİNİBAR BLOK KAPILI', 'Ürün: 40 LT Blok Kapılı Termoelektrik Minibar\nİklim Sınıfı: N (16°C / 32°C)\nÇalışma Sıcaklığı: +7°C / +20°C\nEnerji Tüketimi: 0.26 kWh/24h\nGüç: 63 W\nVoltaj/Frekans: 220-240V AC; 50/60 Hz\nEnerji Sınıfı: F\nEnerji Verimliliği İndeksi: 125\nDış Boyutlar (GxDxY): 430 x 450 x 550 mm\nPaketlenmiş Boyutlar (GxDxY): 440 x 460 x 590 mm\nBrüt Hacim: 40 L\nNet Hacim: 38 L', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7798dc5ddd.jpg', '2025-06-17 00:29:14', '2025-10-21 12:16:14'),
(1908, NULL, '80 LT MİNİ BUZDOLABI - FLAT CAM KAPILI KOMPR', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7798e3ec9f.jpg', '2025-06-17 00:29:14', '2025-10-21 12:16:14'),
(1910, NULL, '80 LT MİNİ BUZDOLABI BLOK KAPI KOMPR', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7798eaca66.jpg', '2025-06-17 00:29:14', '2025-10-21 12:16:15'),
(1911, 2, 'PRIME Otel tipi Saç kurutma Makinası Duvara Monte', 'Gerilim: 220 volt\r\nGüç: 2200 Watt güç kontrolü\r\nTasarım: 20 cm boyu ile kompakt tasarım\r\nMotor: Uzun ömürlü İtalyan AC motor (2000 saat ömür)\r\nKorumalı Rezistans: Termostat korumalı rezistans\r\nHava Üfleme: 88.50 m³/saat\r\nBasınç: 278.00 mmH2O\r\nButon: Bas-bırak buton\r\nAyarlamalar: 2 Hız – 3 sıcaklık ayarı\r\nAparat: 1 Adet üfleme yönlendirme aparatı\r\nErgonomi: Ergonomik tasarım ile rahat tutuş\r\nKablo Uzunluğu: 3m\r\nKablo Özelliği: Uzun süre formunu koruyabilen spiral kablo\r\nBağlantı: Gizli elektrik bağlantısına elverişli askı.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7798f1aa2b.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:15'),
(1914, 3, 'Fantom Prokettle Çelik Kettle Su ısıtıcı', 'Tipi: Paslanmaz Çelik Su Isıtıcı\nKapasite: 1.2LT\nMalzeme: 304 Kalite Paslanmaz Çelik\nGüç: 1500 Watt\nElektrik: 220-240 V AC\nFrekans: 50-60 Hz\nRezistans: Paslanmaz Çelik Gizli Rezistans\nOtomatik Kapanma: Suyun Kaynamasıyla\nGüvenlik: Susuz Çalışmayı Önleyen Emniyet Sistemi\nGaranti Süresi: 2 Yıl', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7798f88a2f.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:15'),
(1915, NULL, 'Jvd Corseto Espresso Makinası kapsül sistemli', 'Tipi: Kapsül Sistemli\nGüç: 1100 Watt\nSu Kapasitesi: 0.850 ml\nMenşei: Fransa\nÖlçüler: L 140 x H 290 x D 370 mm\nGaranti Süresi: 2 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7798fe97c2.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:16'),
(1918, NULL, 'Gigaset Otel Masa Tipi Telefon', 'Telefon Tipi: Otel ve Masa Tipi Telefon\nÖzellikler: HandsFree (Eller Serbest)\n10 adet çift tuş arama hafızası: \nmüzikli arama bekletme: \nGaranti Süresi: 2 Yıl', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77990628ee.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:16'),
(1919, NULL, 'JVD Prestige Otel Tipi Ütü Masası', 'Mekanizma: Yüksellik Ayarlı\nMalzeme: Boyalı Çelik\nDepolama: Kaymaz Pedler\nYükseltme Ayarı: 4 Kademe\nÖlçüker: Genişlik\nÜretim Yeri: MADE IN FRANCE\nGaranti Süresi: 3 Yıl', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77990ddb86.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:17'),
(1922, NULL, 'Metal Valizlik - Arkalıksız', 'Yüzey Malzemesi: Metal Üzeri Krom Kaplama\nGaranti Süresi: 2 Yıl\nGüvenlik Özelliği: Dayanıklı Emniyet Kemeri Bağlantısı\nYüzey Kaplama Türü: Polisajlı Kromaj\nAçıldığında Ara Mesafe: 43 cm (Yükseklik)\n52 cm (Genişlik: 64 cm).', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7799147edb.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:17'),
(1924, NULL, 'Deri Kaplı Çöp Kovası', 'Malzeme: 304 Kalite Paslanmaz Çelik\nTip: Otel Tipi Deri Çerçeveli Çöp Kovası\nÖlçü: 7 lt\nGaranti: 3 Yıl\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77991c6437.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:18'),
(1926, NULL, 'İntessa XL Katlanır Otel Yatak', 'Genişlik: 90 cm\nUzunluk: 200 cm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7799230ae4.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:18'),
(1927, NULL, 'İntessa Laptop Tipi Dijital Motorlu Otel Kasası F40 PANEL', 'Tip: Panel tipi\nKilit Sistemi: Motorlu kilitleme mekanizması\nHafıza: 1000 olay hafızası\nSes Önleme: Ses önleyici contalar\nAçılış: Kod/Şifre ile açılır\nAydınlatma: Otomatik dahili LED aydınlatma\nZemin: Zemini halı kaplıdır\nMontaj: Montaj delikleri (arka ve taban)\nGüç Kaynağı: 4xAA pil ile çalışma\nMenteşe: Gizli menteşe sistemi\nBoya: 1.sınıf elektrostatik toz boya\nYükseklik: 20 cm\nGenişlik: 45 cm\nDerinlik: 33 cm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779928dc44.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:18'),
(1929, NULL, 'İntessa Laptop Tipi Lazer Kasa', 'Yükseklik: 18 cm\nGenişlik: 38 cm\nDerinlik: 43 cm', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77992ee8f1.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:19'),
(1931, 2, 'Platinum Pure Saç Kurutma Makinası Duvara Monte Siyah Renk', 'Renk: Siyah\nGerilim: 220 Volt\nMotor Tipi: Dc motor\nGüç: 1350 Watt\nMalzeme: Mat Krom\nKablo Uzunluğu: 3 Metre\nFonksiyon: Bas/bırak buton - 2 kademe hız ayarı - Termostad korumalı rezistans.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7799348d77.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:19'),
(1933, 2, 'Concept Pure Otel Tipi Saç Kurutma Makinası', 'Güç: 1350 Watt\nMontaj Tipi: Duvara Monte\nAşırı Isınma Emniyeti: Evet\nRenk: Beyaz\nKablo Uzunluğu: 300 cm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779939ba0b.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:20'),
(1935, NULL, 'Ahşap Görünümlü Abs Askı', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7799406f83.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:20'),
(1937, NULL, 'Ahşap Görünümlü Abs Siyah Askı', 'Malzeme: Abs\nRenk: Siyah', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779945a9b5.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:20'),
(1938, NULL, 'Ahşap Görünümlü Abs Siyah Askı', 'Malzeme: Abs\nRenk: Siyah', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779949f27e.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:20'),
(1939, NULL, 'Butik Krom Askı', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77994e54b1.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:21'),
(1942, NULL, 'Butik Krom Askı  Gri', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7799550129.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:21'),
(1943, NULL, 'Butik Soft Askı Siyah', 'Malzeme: ABS\nRenk: Siyah', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77995b3f41.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:22'),
(1945, NULL, 'Krom Askı  Abs  - Sarı', 'Malzeme: Krom\nRenk: Sarı.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77996141d8.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:22'),
(1947, NULL, 'Krom Flok Süet Ceket Pantolon Askısı', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779967ecb2.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:22'),
(1950, NULL, 'Krom Kaban Kürk Askısı', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77996dfdda.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:23'),
(1952, NULL, 'ONVO- 32 inch  8243  Interaktif Otel TV – 82 cm', 'Ekran Çözünürlüğü: 1366x768 (HD)\nEkran Boyutu: 32 inç\nEbatlar: 730 x 85.38 x 430 mm\nAğırlık: 4 kg\nKoli Ölçüsü: 772 x 115 x 490 mm\nHacim: 0.044 m³\nPanel Tipi: LED\nFonksiyonlar: Tüm merkezi TV sistemleri ile uyumlu- Dahili uydu alıcı - Dahili SmartSuite yazılımı - Dahili Wi-Fi', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7799749b39.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:23'),
(1954, NULL, 'Essenza Plus Kahve Makinası Nespresso', 'Kapasite: 4 Farklı Fincan Boyutu\nEbatlar: C Serisi (L x H x W)\nMakine ağırlığı: ~3.6 kg\nIsınma süresi: ~3o saniye\nAtık Kapsül Haznesi: 9-11 kapsül\nSu tankı kapasitesi: 1 litre\nKireç bakım uyarısı: Var\nÖzellikler: Sıcak su - Dönebilir su tankı- Mobil fincan ızgarası', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77997ad468.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:24'),
(1955, NULL, 'İntessa Laptop Kasa Hsl-p-1', 'Kullanıcı Şifresi: 4-6 Haneli\nAçılabilme Özellikleri: Master Şifre ve Master Anahtar İle\nGüvenlik: CEU Cihazı İle Açılabilme\nOtomatik Kilitleme: 5 Hatalı Şifre Girişinde\nMontaj Kolaylığı: Mobilya İçin Dübeller İle\nRenk Seçenekleri: Krem\nSiyah ve Koyu Gri: \nKaplama: Elektrostatik Toz Boya\nAydınlatma: LED Standart\nÜretim Yeri: Made in Türkiye', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779980c663.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:24'),
(1958, 2, 'İntessa Otel Tipi Saç Kurutma Makinası  Çekmece İçi', 'Gerilim: 220 volt\nGüç: 2000 Watt güç kontrolü\nTasarım: 20 cm boyu ile kompakt tasarım\nMotor: Uzun ömürlü İtalyan AC motor (2000 saat ömür)\nKorumalı Rezistans: Termostat korumalı rezistans\nHava Üfleme: 88.50 m³/saat\nBasınç: 278.00 mmH2O\nButon: Bas-bırak buton\nAyarlamalar: 2 hız – 3 sıcaklık ayarı\nAparat: 1 adet üfleme yönlendirme aparatı\nErgonomi: Ergonomik tasarım ile rahat tutuş\nKablo Uzunluğu: 3m\nKablo Özelliği: Uzun süre formunu koruyabilen spiral kablo.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779986044f.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:24'),
(1959, NULL, 'Gigaset Otel Duvar Tipi Banyo Telefonu', 'Bildirim: Sesli - Işıklı\nZil Ayarı: Var\nFlash: Ayalanabilir\nTekrar Arama: Var\nSesise Alma: Var\nAktarma: Var', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77998e0610.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:25'),
(1961, NULL, 'JVD Venüs Otel Tipi Ütü', 'Motor Gücü: 1250 Watt\nYatar Durumda Otomatik Kapanma Süresi: 30 Saniye\nDikey Durumda Otomatik Kapanma Süresi: 8 Dakika\nİşlev: 2 İşlevli Buharlaştırma\nOtomatik Kopukluk Sistemi: Var (Sıcaklık Koruma İçin)\nSap Türü: Ergonomik\nÜretim Yeri: MADE IN FRANCE\nGaranti Süresi: 2 Yıl', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7799964427.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:25'),
(1964, NULL, 'Metal Valizlik Arkalıksız  Altın', 'Güvenlik Özelliği: Dayanıklı Emniyet Kemeri Bağlantısı\nYüzey Kaplama Türü: Polisajlı Kromaj\nAçıldığında Ölçüsü: H.520 x W.640 x D.430 mm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77999c746e.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:26'),
(1966, NULL, 'Prizma Otel Tipi Kettle , Abs Tepsili mini 0,75 ml.', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7799a4d40f.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:26'),
(1968, 5, 'Ahşap Deri Kemerli Valizlik', 'Malzeme: Egzotik Masif Ağaç\nTip: Katlanabilir ve Taşınabilir\nÖlçü: İstenilen ölçü ve renge göre imalata uygun\nÖzellikler: Eğimli arkalığı sayesinde duvar çizimlerini önler- deri kemerli- şık ve tasarım\nGaranti: 2 Yıl\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7799aaf1f7.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:27'),
(1970, NULL, 'İntessa Eco Katlanır Yatak', 'Genişlik: 75 cm\nUzunluk: 180 cm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7799b1830d.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:27'),
(1972, NULL, 'İntessa Laptop Tipi Dijital Motorlu Otel Kasası KF06 PANEL', 'Tip: Panel tipi\nKilit Sistemi: Motorlu kilitleme mekanizması\nHafıza: 105 olay hafızası\nSes Önleme: Ses önleyici contalar\nAçılış: Kod/Şifre ile açılır\nAydınlatma: Otomatik dahili LED aydınlatma\nZemin: Zemini halı kaplıdır\nMontaj: Montaj delikleri (arka ve taban)\nGüç Kaynağı: 4xAA pil ile çalışma\nMenteşe: Gizli menteşe sistemi\nBoya: 1.sınıf elektrostatik toz boya\nYükseklik: 20 cm\nGenişlik: 45 cm\nDerinlik: 33 cm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7799b6ae9e.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:27'),
(1974, NULL, 'Masa Üstü Ledli Makyaj - Traş Aynası', 'Montaj: Duvara monte\nHareketlilik: Mafsallı\nGüç Kaynağı: Elektrikli\nRenk: Krom - Parlak\nBüyüteç: 3X büyüteçli\nGaranti: Yedek parça Garantisi\nÜretim Yeri: Türkiye\nGenel Garanti: 3 yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7799bbc868.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:28'),
(1976, NULL, 'Deri Kaplı Çemberli Çöp Kovası', 'Malzeme: Suni deri\nUyumluluk: Her ebata uygulanabilir\nRenk: Değişik renk deri alternatifleri mevcuttur\nStil: Şık ve dekoratif\nDayanıklılık: Sağlam ve kullanışlı\nGaranti: 2 Yıl firma garantisi\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7799c1dfaa.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:28'),
(1978, NULL, 'Ahşap Görünümlü Abs Askı - BEYAZ', 'Malzeme: Abs\nRenk: Beyaz.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7799c7d61f.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:28'),
(1980, NULL, 'İntessa Laptop Kasa Hsl-p 2', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7799cc1d7d.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:29'),
(1982, NULL, 'ONVO- 42 inch  Interaktif Otel TV – 106 cm', 'Ekran Çözünürlüğü: 1366x768 (HD)\nEkran Boyutu: 42 inç\nEbatlar: 966.5 x 92 x 558.7 mm\nAğırlık: 7.2 kg\nKoli Ölçüsü: 1025 x 120 x 645mm\nHacim: 0.079 m3\nPanel Tipi: LED\nFonksiyonlar: Tüm merkezi TV sistemleri ile uyumlu- Dahili uydu alıcı - Dahili SmartSuite yazılımı - Dahili Wi-Fi', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7799d21f18.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:29'),
(1984, 2, 'JVD Clipper II Duvara monte Traş Prizli Saç Kurutma makinesi', 'Bağlantı tipi: Duvara monte\nGüç: 1400W\nModel: İyonizerli\nElektrik: 220V-240V 50-60Hz\nHava akımı: 60-90 m3/h 3 kademe\nKordon: Sarkmaya karşı özel uzatılabilir kalın spiral\nGüvenlik: Aşırı ısınma/devre koruması\nRenk: Beyaz ve Siyah Renk Alternatifi\nMenşei: MADE IN FRANCE\nGaranti: 3 YIL.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7799dc7142.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:30'),
(1986, NULL, 'Essenza Mini Kahve Makinası Nespresso', 'Hızlı ön ısınma süresi: 25sn\nSu Kapasitesi: 0\n6 L: \nÖlçüler: 11x20-5x32.5 cm (GxDxY)\nÖzellik: Otomatik ve programlanabilir 9 dk. Sonra otomatik kapanma\nKireç çözme uyarısı: Var\nBasınç: 19 bar basınç pompası', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7799e309b3.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:30'),
(1988, NULL, 'JVD Iconic Drawer Otel tipi Kasa', 'Tipi: Motorlu Tam Otomatik Kasa\nGövde: 2 mm Çelik\nKapı: 4 mm Çelik\nÖlçüler: H.130 x L.400 x D.350 mm\nOtomatik Blokaj: 4 Hatalı Girişimde 15 Dakika\nManuel Müdahale: Acil Durumlarda\nEl Printeri İle Son 100 İşlemi Görme: \nMenşei: Fransa\nGaranti Süresi: 3 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7799e8e420.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:31'),
(1990, NULL, 'JVD Duchesse Paslanmaz Kettle', 'Tipi: JVD Duchesse Paslanmaz Kettle\nKapasite: 0.8 lt\nKullanım: Otel Kullanımına Uygun Kablosuz Kullanım\nDönüş: 360 Derece Dönebilen\nOtomatik Kapanma: Suyun Kaynamasıyla\nEmniyet: Suyun Bitmesiyle Otomatik Emniyet Sistemi\nAçma/Kapama: Tutma Bölümündeki Düğme ile\nİç Gövde Malzemesi: 304 Kalite Paslanmaz Çelik\nRezistans: Gizli Rezistans\nMenşei: Fransa\nYüzey: Satine ve Parlak Yüzey Seçenekleri\nGaranti Süresi: 3 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7799f123d0.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:31'),
(1991, NULL, 'Gigaset Masaüstü Telefon DA-310', 'Tipi: Masaüstü\nHızlı Arama: 4 adet\nTekrar Arama Özelliği: Var\nMelodi: 3 Farklı\nTon(DTMF) ve Darbeli (DP) Arama: Var\nİşitme Cihazı Uyumu: Var\nTelefon Rehberi: Var\nGaranti: 24 Ay.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7799f73894.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:31'),
(1994, NULL, 'JVD Vivo Otel Tipi Buharlı Ütü', 'Gücü: 2000 W\nOtomatik Kapanma Süresi (Yatay): 30 Saniye\nOtomatik Kapanma Süresi (Dikey): 8 Dakika\nTaban Malzemesi: Seramik\nKullanım Kolaylığı: Hafif ve Kullanışlı\nÜretim Menşei: Fransa\nGaranti Süresi: 3 Yıl', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f7799fc7561.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:32'),
(1995, NULL, 'Metal Valizlik  Arkalıklı', 'Malzeme: Krom Valizlik\nYüzey Malzemesi: Metal Üzeri Krom Kaplama\nGaranti Süresi: 2 Yıl\nGüvenlik Özelliği: Dayanıklı Emniyet Kemeri Bağlantısı\nYüzey Kaplama Türü: Polisajlı Kromaj\nAçıldığında Ara Mesafe: 43 cm (Yükseklik)\n72 cm (Genişlik: 64 cm)\nÜretim Yeri: MADE IN TURKEY.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779a0315ad.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:32'),
(1998, NULL, 'Deri Kaplı Kare Konik Kova', 'Özellikler: İstenilen renk ve ölçü değişikliği. Şık ve dekoratif. Sağlam ve kullanışlı\nGaranti: 2 Yıl Firma Garantisi\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779a08d925.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:32'),
(2000, NULL, 'İntessa Mezzo Yatak', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779a0eab5b.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:33'),
(2001, NULL, 'İntessa Otel Tipi Dijital Motorlu Kartlı Kasa', 'Tip: Panel tipi\nKilit Sistemi: Motorlu kilitleme mekanizması\nHafıza: 240 olay hafızası\nSes Önleme: Ses önleyici contalar\nAçılış: Kod/Şifre ile açılır\nAydınlatma: Silikon aydınlatmalı tuş takımı ve otomatik dahili LED aydınlatma\nZemin: Zemini halı kaplıdır\nMontaj: Montaj delikleri (arka ve taban)\nGüç Kaynağı: 4xAA pil ile çalışma\nMenteşe: Gizli menteşe sistemi\nBoya: 1.sınıf elektrostatik toz boya.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779a156204.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:33'),
(2003, NULL, 'Ütü Masası Aparatı', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779a1b5772.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:34'),
(2005, NULL, 'Kare Konik Deri Çift Bölmeli Çöp Kovası', 'Model: Konik\nKaplama: Deri\nRenk: İstenilen renkte üretim\nBölme: Çift bölmeli.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779a21692a.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:34'),
(2008, NULL, 'Deri Kaplı Kare Konik Kova - 3', 'Ölçüler: Genişlik 24 cm- Derinlik 24 cm- Boy 30 cm\nRenk ve Ölçü: İstenilen renk ve ölçü değişikliği\nTasarım: Şık ve Dekoratif\nDayanıklılık: Sağlam Kullanışlı\nGaranti: 2 Yıl Firma Garantisi\nÜretim Yeri: Türkiye', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779a2761f5.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:34'),
(2009, NULL, 'ONVO- 50 inch Interaktif Otel TV – 127 cm', 'Ekran Çözünürlüğü: 3840 x 2160 (HD)\nEkran Boyutu: 50 inç\nEbatlar: 1121.4 x 84.6 x 647.3 mm\nAğırlık: 9.2 kg\nKoli Ölçüsü: 1210 x140 x780mm\nHacim: 0.132 m³\nFonksiyonlar: Tüm merkezi TV sistemleri ile uyumlu- Dahili uydu alıcı - Dahili SmartSuite yazılımı - Dahili Wi-Fi- Kişiselleştirilebilen Arayüz', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779a2c7973.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:35'),
(2012, 2, 'JVD Brittony Saç Kurutma Makinesi', 'Bağlantı tipi: Çekmece içi\nGüç: 1600W\nModel: İyonizerli\nElektrik: 220V-240V 50-60Hz\nHava akımı: 60-90 m3/h 3 kademe\nKordon: Sarkmaya karşı özel uzatılabilir kalın spiral\nGüvenlik: Aşırı ısınma/devre koruması\nRenk: Beyaz ve Siyah Renk Alternatifi\nMenşei: MADE IN FRANCE\nGaranti: 3 YIL', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779a36a6c8.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:35'),
(2013, NULL, 'Deri Kaplı Klenex Kutusu', 'Tip: Tezgah Üstü\nMalzeme: Suni Deri\nRenk: Kahve - İstenilen renk seçeneği\nÖlçü: 240x60x140mm\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779a3ca0f0.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:36'),
(2018, NULL, 'Otel Tipi Gigaset DA 210', 'Tipi: Duvara Monte\nHızlı Arama: 10 adet\nTekrar Arama Özelliği: Var\nMelodi: 3 Farklı\nSes Yüksekliği: 4 Kademe\nOda Dinlenme / Bebek Telsizi: Var\nTelefon Rehberi: Var\nGaranti: 24ay', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779a4357b5.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:36'),
(2020, NULL, 'JVD Ütü Ve Ütü Masası Montaj Aparatı', 'Montaj: Demonte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779a48923b.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:36'),
(2022, NULL, 'Paslanmaz Valizlik  Arkalıksız', 'Malzeme: 04 Kalite Paslanmaz Çelik\nGaranti Süresi: 3 Yıl Paslanmama ve Kararmama Garantisi\nGüvenlik Özelliği: Dayanıklı Emniyet Kemeri Bağlantısı\nAçık Ölçüler: 43 cm (Yükseklik)\n: 52 cm (Genişlik)\n: 64 cm (Derinlik)\nÜretim Yeri: MADE IN TURKEY.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779a4ebfe9.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:37'),
(2024, NULL, 'İntessa Hazan Yatak', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779a575fe2.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:37'),
(2027, NULL, 'Pixie Kahve Makinası Nespresso', 'Kullanılmış kapsül haznesi: 10\nSu Haznesi: 0.7 L kapasiteli hareketli su haznesi\nÖlçüler: 11.1 cmx23.5cmx32.6cm\nÖzellikler: Katlanabilir fincan ızgarası- 9 dakikada otomatik kapanma.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779a5e2c64.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:38'),
(2029, NULL, 'İntessa Laptop tipi Dijital Motorlu Safe Otel Kasası KF35 PANEL', 'Tip: Panel tipi\nKilit Sistemi: Motorlu kilitleme mekanizması\nHafıza: 1000 olay hafızası\nSes Önleme: Ses önleyici contalar\nAçılış: Kod/Şifre ile açılır\nAydınlatma: Silikon aydınlatmalı tuş takımı ve otomatik dahili LED aydınlatma\nZemin: Halı kaplıdır\nMontaj: Montaj delikleri (arka ve taban)\nGüç Kaynağı: 4xAA pil ile çalışma\nMenteşe: Gizli menteşe sistemi\nBoya: 1.sınıf elektrostatik toz boya', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779a656330.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:38'),
(2032, NULL, 'ONVO- 55 inch  Interaktif Otel TV – 140 cm', 'Ekran Çözünürlüğü: 3840 x 2160 (HD)\nEkran Boyutu: 55 inç\nEbatlar: 1244.3 x82.4 x719.1 mm\nAğırlık: 12.3 kg\nKoli Ölçüsü: 1335 x150 x805 mm\nHacim: 0.161 m³\nFonksiyonlar: Tüm merkezi TV sistemleri ile uyumlu- Dahili uydu alıcı - Dahili SmartSuite yazılımı - Dahili Wi-Fi- Kişiselleştirilebilen Arayüz', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779a6ac314.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:39'),
(2034, 2, 'Fakir Noble Ac Profesyonel Saç Kurutma Makinesi', 'Tip: Duvar Tipi\nRenk: Siyah\nAsma Kancalı: Duvara monte edilerek kullanılabilir\nGüç: 2200 W\nHız Ayarı: 2 Kademe\nIsı Ayarı: 3 Kademe\nMotor: Profesyonel AC Motor\nSoğuk Hava: Soğuk hava üfleme fonksiyonu.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779a729a6e.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:39'),
(2036, 2, 'JVD İbiza Saç Kurutma Makinası Mat Siyah', 'Güç: 1875 W\nRenk: Mat Siyah\nBağlantı tipi: Çekmece içi serbest model\nKordon: Spiral kablolu\nHava akımı: 2 kademeli\nSıcaklık seçenekleri: 3 adet\nMenşei: Fransa\nGaranti: 3 YIL', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779a77d2b5.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:39'),
(2038, NULL, 'Deri Kaplı Kleenex Kutusu Yatay', 'Tip: Tezgah Üstü\nRenk: Koyu Kahve - İstenilen renk yapılabilir\nÖlçü: 240x60x140 mm\nUyumluluk: Standart kleenex peçetelerine uygun\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779a7d9c4a.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:40'),
(2040, NULL, 'Beko Buharlı Ütü', 'Damlama Önleme: Var (BEU 2922)\nKireç Önleme: Var\nOtomatik Kapanma: Var\nSu Doldurma Kapasitesi: 240 ml\nSürekli Buhar: 25 gr/dk\nŞok Buhar: 110 gr/dk\nTaban: Seramik\nÜrün Rengi: Mavi\nWatt: 2200.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779a845dca.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:40'),
(2042, NULL, 'İntessa Ütü Masası Dolap içi Montaj aparatlı', 'Montaj Aparatı: Var\nKumaş Türü: Yanmaz\nYükseklik Ayarı: 4 Farklı Ayarlanabilir Yükseklik\nKullanım Kolaylığı: Hafif ve Kullanışlı\nÜretim Menşei: TÜRKİYE\nGaranti Süresi: 3 Yıl', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779a88a21b.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:40'),
(2044, NULL, 'Metal Valizlik Arkalıklı Altın', 'Güvenlik Özelliği: Dayanıklı Emniyet Kemeri Bağlantısı\nYüzey Kaplama Türü: Polisajlı Kromaj\nAçıldığında Ölçüler: H.520 mm x W.640 mm x D.430 mm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779a8d099c.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:41'),
(2046, NULL, 'İntessa Blue Yatak', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779a9473d1.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:41'),
(2047, NULL, 'İntessa Yarı Otomatik Otel Tipi Kasa', 'Panel Tipi: H2 - H3\nSes Yalıtımı: Ses önleyici contalar\nZemin: Zemini halı kaplıdır\nMontaj: Montaj delikleri (arka ve taban)\nGüç Kaynağı: 4xAA pil ile çalışma\nMenteşe: Gizli menteşe sistemi\nBoya: 1.sınıf elektrostatik toz boya\nYükseklik: 20 cm\nGenişlik: 45 cm\nDerinlik: 33 cm\nOpsiyonel Özellikler: Elektrik bağlantısı ile çalışma - Dahili priz - Yaylı Kapak - Harici Pil Ünitesi', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779a9b4a7f.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:42'),
(2048, NULL, 'İntessa Yarı Otomatik Otel Tipi Kasa', 'Panel Tipi: H2 - H3\nSes Yalıtımı: Ses önleyici contalar\nZemin: Zemini halı kaplıdır\nMontaj: Montaj delikleri (arka ve taban)\nGüç Kaynağı: 4xAA pil ile çalışma\nMenteşe: Gizli menteşe sistemi\nBoya: 1.sınıf elektrostatik toz boya\nYükseklik: 20 cm\nGenişlik: 45 cm\nDerinlik: 33 cm\nOpsiyonel Özellikler: Elektrik bağlantısı ile çalışma - Dahili priz - Yaylı Kapak - Harici Pil Ünitesi', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779aa13939.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:42'),
(2049, 2, 'Cocoon Saç Kurutma Makinası Traş Prizli', 'Tip: Duvara asılabilir\nKademe: 2 kademeli\nAçma/Kapama: On/Off butonu\nTraş Prizi: Traş makinesi için özel priz\nVoltaj: 220V-240V 50Hz\nGüç: 1600W.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779aa65165.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:42'),
(2052, 2, 'Cocoon Saç Kurutma Makinası', 'Tip: Duvara asılabilir\nKademe: 2 kademeli ısı ayarı\nAçma/Kapama: On/Off butonu\nVoltaj: 220V-240V 50Hz\nGüç: 1600W.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779aab630f.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:43'),
(2053, 2, 'İntessa Saç Kurutma Makinası 1600 Watt Traş Prizli Duvara Monte', 'Güç: 1600 Watt\nMontaj: Duvara monte\nVoltaj: 220 Volt\nPriz: Traş prizli\nKablo: Spiral kablo\nKontrol: Bas çek Buton\nHız Ayarı: 2 kademe.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779ab18269.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:43'),
(2055, NULL, 'Arzum Steampro Plus Buharlı Ütü', 'Damlama Önleme: Var\nKireç Önleme: Var\nOtomatik Kapanma: Var\nSu Doldurma Kapasitesi: 420 ml\nSürekli Buhar: 40 gr/dk\nŞok Buhar: 170 gr/dk\nTaban: Supreme Glide Ceramic\nÜrün Rengi: Siyah\nWatt: 2400.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779ab68a02.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:43'),
(2058, NULL, 'PRIME Laptop Kasa - Prizli', 'Kilitleme Mekanizması: Motorlu\r\nOlay Hafızası: 1000\r\nSes Önleyici Contalar: Var\r\nAçılma Sistemi: Kod/Şifre\r\nAydınlatma: Otomatik Dahili Led\r\nZemin: Halı Kaplı\r\nMontaj Deliklikleri: Arka ve Taban\r\nPil: 4xAA\r\nMenteşe Sistemi: Gizli\r\nBoya: 1.sınıf Elektrostatik Toz Boya\r\nYükseklik: 20 cm\r\nGenişlik: 45 cm\r\nDerinlik: 33 cm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779abbb6d6.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:44'),
(2060, 2, 'Otello Pro Energy - Beyaz Saç Kurutma Makinası', 'Hava Basıncı: 285 mmH2O\nSes Seviyesi: 68 Db\nBas Bırak Butonu: Evet\nGüç: 1600-2000 Watt\nAğırlık: 582 Gr.\nSıcaklık Ayarı: 3\nHız Ayarı: 1\nÜfleme: 94\n5 m3/h.:', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779ac24111.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:44'),
(2061, NULL, 'ONVO- 65 inch  Interaktif Otel TV – 165 cm', 'Ekran Çözünürlüğü: 3840 x 2160 (HD)\nEkran Boyutu: 65 inç\nEbatlar: 1461.9 x 94.8 x 843.1 mm\nAğırlık: 12.3 kg\nKoli Ölçüsü: 1590x 170x 955 mm\nHacim: 0.258 m³\nFonksiyonlar: Tüm merkezi TV sistemleri ile uyumlu- Dahili uydu alıcı - Dahili SmartSuite yazılımı - Dahili Wi-Fi- Kişiselleştirilebilen Arayüz', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779ac74204.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:44');
INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `price`, `stock_quantity`, `vat_rate`, `image_url`, `created_at`, `updated_at`) VALUES
(2064, 2, 'JVD Brittony Saç Kurutma Makinesi', 'Bağlantı tipi: Çekmece içi\nGüç: 1600W İyonizerli\nElektrik: 220V-240V 50-60Hz\nHava Akımı: 60-90 m3/h 3 Kademeli\nKordon: Sarkmaya karşı özel uzatılabilir kalın spiral\nGüvenlik: Aşırı ısınma/devre koruması\nRenk: Gümüş\nMenşei: MADE IN FRANCE\nGaranti: 3 YIL.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779ace3244.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:45'),
(2065, NULL, 'Deri Kaplı Çöp Kovası', 'Tip: Otel Tipi\nMalzeme: Suni Deri Kaplı\nÖzellikler: Değişik renk deri alternatifleri ile her ebata uygulanabilir\nTasarım: Şık ve Dekoratif. Sağlam ve Kullanışlı\nGaranti: 2 Yıl Firma Garantisi\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779ad4cd22.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:45'),
(2068, NULL, 'JVD Trustee Otel Tipi Şifreli Kasa', 'Tipi: Motorlu Tam Otomatik Kasa\nGövde: 2 mm Çelik\nKapı: 4 mm Çelik\nÖlçüler: H 195 x L 355 x D 270 mm\nOtomatik Blokaj: 4 Hatalı Girişimde 15 Dakika\nManuel Müdahale: Acil Durumlarda\nEl Printeri İle Son 100 İşlemi Görme: \nMenşei: Fransa\nGaranti Süresi: 3 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779adba4ab.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:46'),
(2070, NULL, 'JVD Diva Paslanmaz Çelik Çift Katmanlı Kettle Siyah', 'Kapasite: 1000 ml\nKullanım: Otel Tipi Kablosuz Kullanıma Uygun\nRezistans: Gizli Rezistans\nDönüş: 360 Derece Dönebilen Gövde\nMenşei: Fransa\nGaranti Süresi: 3 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779ae45bd3.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:46'),
(2072, NULL, 'Stilevs Otel Tipi Ütü', 'Güç: 2600 Watt\nTaban Malzemesi: Granit\nOtomatik Kapanma: Var\nDamlatmama Özelliği (Anti Drip): Var\nKendi Kendini Temizleme: Var\nEk Fonksiyonlar: Şok Buhar ve Sprey\nDikey Ütüleme: Var.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779aebf328.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:47'),
(2074, NULL, 'Paslanmaz Valizlik  Arkalıklı', 'Malzeme: 304 Kalite Paslanmaz Çelik\nGaranti Süresi: 3 Yıl Paslanmama ve Kararmama Garantisi\nGüvenlik Özelliği: Dayanıklı Emniyet Kemeri Bağlantısı\nAçık Ölçüler: 43 cm (Yükseklik)\nToplam Yükseklik: 52+20 cm\nGenişlik: 64 cm\nÜretim Yeri: MADE IN TURKEY.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779af380f6.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:47'),
(2076, NULL, 'Üçlü Geri Dönüşüm Ünitesi', 'Malzeme: 304 Kalite Paslanmaz Çelik\nKova Malzemesi: Galvaniz İç Kovalı\nGöz Sayısı: 3 Ayrı Gözlü\nKullanım Alanı: Dış Mekan Genel Kullanım Mekanlar için İdeal\nÖlçüler: 80 cm x 35 cm x 90 cm', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779af99cfd.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:48'),
(2078, NULL, 'İntessa Hotel Baza', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779b01369b.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:48'),
(2080, NULL, 'ONVO 32 inch Hd Ready Hotel Tv', 'Ekran Çözünürlüğü: 1366 x 768 Hd Ready\nEkran Boyutu: 32 inç- 82 Ekran\nHafıza: 8 Gb Rom / 8 Gb Ram\nFonksiyonlar: Android Smart - 4 Core Processor- 200 Hz.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779b071a54.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:48'),
(2082, 2, 'JVD Lineo Katlanabilir Saç kurutma Makinası', 'Güç: 1600 W\nBağlantı Tipi: Çekmece içi serbest model\nKordon: Spiral kablolu\nKatlanabilir: \nİyonizerli sistem: \nHava akımı: 2 kademeli\nSıcaklık seçenekleri: 3 adet\nMenşei: Fransa\nKatlanmış Ölçüsü: L.240 x H.250 x D.85 mm\nAçılmış Ölçüsü: L.240 x H.135 x D.85 mm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779b0dd380.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:49'),
(2084, NULL, 'Deri Kaplı Çöp Kovası', 'Malzeme: Paslanmaz Çember\nSuni Deri Kaplı: \nKapasite: 5 lt\nÖzellikler: Değişik renk deri alternatifleri\nGaranti: 2 Yıl Firma Garantisi\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779b1498d8.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:49'),
(2085, NULL, 'JVD Diva Paslanmaz Çelik Çift Katmanlı Kettle Krom Siyah', 'Kapasite: 1000 ml\nKullanım Tipi: Otel Tipi Kablosuz Kullanıma Uygun\nRezistans: Gizli Rezistans\nGövde: 360 Derece Dönebilen\nMenşei: Fransa\nGaranti Süresi: 3 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779b1a6b46.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:50'),
(2088, NULL, 'İntessa Otel Tipi Ütü Masası', 'Kumaş Türü: Yanmaz\nYükseklik Ayarı: Ayarlanabilir\nMaksimum Yükseklik (Yerden): 80 cm\nÖlçüler: 113 x 35 cm\nÜretim Yeri: Made in Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779b229821.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:50'),
(2089, 5, 'Ahşap Arkalıklı Valizlik - Bavulluk', 'Malzeme: Egzotik Masif Ağaç\nYüzey Kaplama: Mobilya Cilalı\nÜretim Esnekliği: İstenilen Renk ve Ölçüye Göre Üretim Esnekliği\nTaşıma Özelliği: Kolay Katlanma ve Taşıma Özelliği\nEğimli Arkalık: Duvar Çizimlerini Önleyen Eğimli Arkalık\nGaranti Süresi: 3 Yıl', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779b28699b.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:50'),
(2092, NULL, 'İntessa Spring Baza', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779b2f0bad.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:51'),
(2094, NULL, 'ONVO 42 inch Hd Ready Hotel Tv', 'Ekran Çözünürlüğü: 1920 x 1080 Hd Ready\nEkran Boyutu: 42 inç- 82 Ekran\nHafıza: 8 Gb Rom / 8 Gb Ram\nFonksiyonlar: Android Smart - 4 Core Processor- 400 Hz.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779b3592fa.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:51'),
(2096, 2, 'JVD Clipper II Duvara Monte Saç Kurutma Makinesi', 'Bağlantı tipi: Duvara monte\nGüç: 1400W\nModel: İyonizerli\nElektrik: 220V-240V 50-60Hz\nHava akımı: 60-90 m3/h 3 kademe\nKordon: Özel uzatılabilir kalın spiral\nGüvenlik: Aşırı ısınma ve devre koruması\nRenk: Beyaz ve Siyah\nMenşei: Fransa\nGaranti: 3 Yıl', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779b3f11d9.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:52'),
(2098, NULL, 'JVD Zenith Otel Tipi Kettle Su Isıtıcı 0,8 ml. Siyah', 'Kapasite: 800 ml\nKullanım Tipi: Otel Tipi Kablosuz Kullanıma Uygun\nRezistans: Gizli Rezistans\nGövde: 360 Derece Dönebilen\nMenşei: Fransa\nGaranti Süresi: 3 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779b459f1b.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:52'),
(2099, NULL, 'İntessa Otel Tipi Ütü Masası - 2', 'Kumaş Türü: Yanmaz\nYükseklik Ayarı: Ayarlanabilir\nMaksimum Yükseklik (Yerden): 80 cm\nÖlçüler: 113 x 35 cm\nÜretim Yeri: Made in Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779b4c3f19.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:53'),
(2101, 5, 'Ahşap Valizlik Arkalıklı - Lamalı - Deri Kemerli', 'Malzeme: Fırınlanmış İthal Egzotik Ağaç\nGüvenlik Özelliği: Dayanıklı Emniyet Kemeri Bağlantısı - 3 adet Deri Kemerli\nYüzey Kaplama: Mobilya Cilalı.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779b53bc49.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:53'),
(2104, NULL, 'ONVO 43 inch Hd Ready Hotel Tv', 'Ekran Çözünürlüğü: 1920 x 1080 Hd Ready\nEkran Boyutu: 43 inç- 82 Ekran\nHafıza: 8 Gb Rom / 8 Gb Ram\nFonksiyonlar: Android Smart - 4 Core Processor- 400 Hz.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779b5aa0a7.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:54'),
(2106, 2, 'JVD Calisto Saç Kurutma Makinası', 'Güç: 2000 W\nMotor: Fırçasız\nBağlantı tipi: Çekmece içi serbest model\nKordon: Spiral kablolu\nHava akımı: 2 kademeli\nSıcaklık seçenekleri: 3 adet\nMenşei: Fransa.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779b617000.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:54'),
(2108, NULL, 'Çekmece İçi Üstten Açmalı Kasa', 'Tipi: 3-6 Haneli Kod\nEkran: 6 Haneli LED Segment\nPil Durumu Gösterimi: Düşük Pil Durumu\nTuş Takımı: Sert ve Silinmez Plastik\nKilit Sistemi: Motorlu Otomatik Kilit\nÇelik Kilit Sistemi: \nBoyutlar: 150 x 430 x 350 mm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779b6748f0.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:54'),
(2109, NULL, 'JVD Zenith Otel Tipi Kettle Su Isıtıcı 0,8 ml. Krem', 'Kapasite: 800 ml\nKullanım Tipi: Otel Tipi Kablosuz Kullanıma Uygun\nRezistans: Gizli Rezistans\nGövde: 360 Derece Dönebilen\nMenşei: Fransa\nGaranti Süresi: 3 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779b6efe2b.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:55'),
(2112, NULL, 'JVD Ütü Ve Ütü Masası Montaj Aparatı', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779b75b43a.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:55'),
(2113, 5, 'Ahşap Valizlik Arkalıklı Lamalı', 'Malzeme: Fırınlanmış İthal Egzotik Ağaç\nGüvenlik Özelliği: Dayanıklı Emniyet Kemeri Bağlantısı - 3 Kemerli\nYüzey Kaplama: Mobilya Cilalı.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779b7b81be.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:56'),
(2116, NULL, 'ONVO 50 inch Hd Ready Hotel Tv', 'Ekran Çözünürlüğü: 3480 x 2160 Hd Ready\nEkran Boyutu: 50 inç- 127 Ekran\nHafıza: 8 Gb Rom / 8 Gb Ram\nFonksiyonlar: Android Smart - 4 Core Processor- 1000 Hz.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779b821fb3.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:56'),
(2118, NULL, 'İntessa Yarı Otomatik Kasa', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779b8bbd1c.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:57'),
(2120, 2, 'JVD Brittony Saç Kurutma makinesi', 'Bağlantı tipi: Duvara monte\nGüç: 1600W\nModel: İyonizerli\nElektrik: 220V-240V 50-60Hz\nHava akımı: 60-90 m3/h 3 kademe\nKordon: Sarkmaya karşı özel uzatılabilir kalın spiral\nGüvenlik: Aşırı ısınma/devre koruması\nRenk: Beyaz ve Siyah Renk Alternatifi\nMenşei: MADE IN FRANCE\nGaranti: 3 YIL.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779b91a0b3.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:57'),
(2122, NULL, 'Deri Kaplı Hoşgeldin Tepsisi', 'Malzeme: Deri Kaplı\nÖzellikler: İstenilen ölçü ve renkte imalat. Kettle için özel ölçü ve çay kahve kutusu\nGaranti: 2 Yıl Firma Garantisi\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779b983fb2.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:57'),
(2124, NULL, 'Otel Tipi Laptop Kasa  Krem', 'Renk: Siyah / Fil dişi\nKirama Opsiyonu: Bilgisayar üzerinden\nGövde Sac Kalınlığı: 1.80 mm\nKapı Sac Kalınlığı: 4 mm\nKilit Mekanizması: Motorlu\nEkran: 6 haneli dijital\nŞifre Tanımlama: 3-6 haneli kullanıcı şifresi\n6 haneli master şifre: \nAcil Durum: Master anahtar (acil durumda kasayı anahtarla açabilme)\nŞifre Görünürlüğü: Giriş yapılan şifrenin ekranda görünme/görünmemesi\nOtomatik Kilitleme: Şifrenin 4 kez üst üste yanlış girilmesi ile otomatik kilitleme (15 dk.)\nİzleme: Son 100 işlemi ekranda görebilme\nPil Durumu: Güç durumunu sorgulama (zayıf / dolu)\nMontaj: Alt ve arka kısımdan montaj imkanı\nKaplama: Paslanmaya karşı elektrostatik toz boya\nZemin: Halıfleks\nPil Sayısı: 4 adet.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779b9d6aed.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:58'),
(2126, NULL, 'JVD Premium Otel Tipi Ütü Masası', 'Kumaş Türü: Yanmaz\nYükseklik Ayarı: Ayarlanabilir\n4 Farklı Yükseklik Seviyesi: \nKullanım Kolaylığı: Hafif ve Kullanışlı\nÜretim Menşei: Fransa\nGaranti Süresi: 3 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779ba5d106.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:58'),
(2128, 5, 'Ahşap Valizlik Arkalıksız', 'Malzeme: Fırınlanmış İthal Egzotik Ağaç\nGüvenlik Özelliği: Dayanıklı Emniyet Kemeri Bağlantısı - 4 Bant\nYüzey Kaplama: Mobilya Cilalı\nÜretim Esnekliği: İstenilen Renk ve Ebatta Üretilme Esnekliği\nAçık Durumda Ölçüler: Ara Mesafe\nH: 52 cm\nGenişlik: 56\n5 cm: \nArkalıklı Modeller İçin: Arkalık Yüksekliği İstenirse 12 cm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779baba730.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:59'),
(2130, NULL, 'Fakir Avanti Buharlı Ütü', 'Güç: 2800 W\nTaban: Seramik taban\nŞok buhar: 150 Gr.\nDevamlı buhar: 35 Gr/Dk.\nFonksiyonlar: Otomatik kapanma- Ayarlanabilir termostat- Buhar ayarı - Dikey buhar çıkışı - Kendi kendini temizleme özelliği\nSu Tankı: 480 ml su tankı kapasitesi', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779bb39476.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:59'),
(2132, 5, 'Ahşap Valizlik Arkalıksız Lamalı - Deri Kemerli', 'Malzeme: Fırınlanmış İthal Egzotik Ağaç\nÖzellik: Dayanıklı Emniyet Kemeri Bağlantısı (3 Adet Deri Kemerli)\nYüzey: Ahşap Mobilya Cilalı', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779bb8e6a9.jpg', '2025-06-17 00:33:03', '2025-10-21 12:16:59'),
(2134, 2, 'Asos Saç kurutma Makinası - Traş prizli', 'Türü: Duvara Monte\nGerilim: 220 Volt\nMotor Tipi: Dc motor\nGüç: 1350 Watt\nHız Ayarları: 2 kademe\nKontrol: Bas-bırak buton\nKablo uzunluğu: 3 metre\nFonksiyonlar: Termostad korumalı rezistans\nGizli elektrik bağlantısı için askı - Askıda traş makinesi bağlantı prizi (110-220 volt) - Güvenlik şalteri (yerine konulduğunda çalışmayı engeller):', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779bbec5ea.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:00'),
(2136, NULL, 'ONVO 55 inch Hd Ready Hotel Tv', 'Ekran Çözünürlüğü: 3480 x 2160 Hd Ready\nEkran Boyutu: 55 inç- 140 Ekran\nHafıza: 8 Gb Rom / 8 Gb Ram\nFonksiyonlar: Android Smart - 4 Core Processor- 1000 Hz.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779bc53f2f.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:00'),
(2137, 2, 'JVD Alteo Saç Kurutma Makinesi - Siyah Mat', 'Bağlantı tipi: Çekmece içi model\nGüç: 1875W\nElektrik: 230V 50-60Hz\nHava akımı: 70-100 m3/h 2 kademe üfleme hızı\nSıcaklık seçenekleri: 3 adet (1\'i soğuk)\nİyonizasyon sistemi: \nKordon: Sarkmaya karşı özel uzatılabilir kalın spiral\nGüvenlik: Aşırı ısınma/devre koruması\nRenk: Siyah - Mat\nMenşei: MADE IN FRANCE\nGaranti: 3 YIL.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779bcbdb8d.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:01'),
(2140, NULL, 'Etna Buharlı Ütü', 'Güç: 2600W\nBuhar Performansı: 190g/dak\nSu Haznesi Kapasitesi: 350ml\nÜtü Tabanı: Seramik\nKireç Önleme: Var\nDamlama Önleme: Var (anti-drip)\nDikey Ütüleme: Var (elbiseler ve perdeler için)\nGüvenlik Özelliği: Yatay pozisyonda 30 sn- dikey pozisyonda 8 dk hareketsiz kalma süresinde otomatik kapanma.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779bd26eea.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:01'),
(2141, NULL, 'JVD Diva Paslanmaz Çelik Çift Katmanlı Kettle Beyaz', 'JVD Diva paslanmaz çelik çift katmanlı kettle: \nbeyaz rengi ve şık tasarımıyla dikkat çeker. Güçlü performansı ve hızlı ısıtma özelliğiyle mutfaklarda kullanıcıların favorisidir. Pratik kullanımı ve dayanıklı yapısıyla uzun süre kullanıma uygundur.:', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779bd94259.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:02'),
(2144, NULL, 'İntessa Katlanır Valizlik', 'Tip: Otel Tipi Katlanabilir Valizlik\nTasarım: 2019 Tasarımı\nÖzellikler: İstenilen Ölçü ve Renk Seçenekleri Mevcut.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779be17574.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:02'),
(2145, NULL, 'ONVO 65 inch Hd Ready Hotel Tv', 'Ekran Çözünürlüğü: 3480 x 2160 Hd Ready\nEkran Boyutu: 65 inç- 165 Ekran\nHafıza: 8 Gb Rom / 8 Gb Ram\nFonksiyonlar: Android Smart - 4 Core Processor- 1000 Hz.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779be77a8c.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:02'),
(2148, 2, 'Fantom Saç Kurutma Makinası Siyah', 'Güç: 1000W\nFrekans: 50-60 Hz\nBağlantı Tipi: Duvara monte\nKontrol: Tek tuş ile\nÖzellikler: Hava yönlendirici\nEmniyet Sistemi: Fazla Isınmaya Karşı Otomatik Kapanma.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779bef3623.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:03'),
(2150, 3, 'Fantom Kettle- ABS İkram Ünitesi', 'Malzeme: ABS Gövde\nTepsı Ölçüleri: 333x384x40 mm\nGaranti Süresi: 2 Yıl', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779bf6a6ce.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:03'),
(2151, NULL, 'İntessa Katlanır Valizlik', 'Tip: Otel Tipi Katlanabilir Valizlik\nTasarım: 2019 Tasarımı\nÖzellikler: İstenilen Ölçü ve Renk Seçenekleri Mevcut.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779bfba9a9.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:04'),
(2154, 2, 'JVD Clipper II Traş Prizli Saç Kurutma Makinesi', 'Tip: Duvara Monte Kurutma Cihazı\nGüç: 1400W İyonizerli\nElektrik Gereksinimi: 220V-240V - 50-60 Hz\nHava Akımı: 3 Kademeli\n60-90 m3/h: \nKablo: Sarkmaya Karşı Özel Uzatılabilir Kalın Spiral Kordon\nGüvenlik: Aşırı Isınma ve Devre Koruması\nRenk Seçenekleri: Beyaz ve Siyah\nÜretim Yeri: FRANSA\nGaranti Süresi: 3 YIL.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779c027760.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:04'),
(2156, 3, 'JVD Paslanmaz Kettle Siyah Tepsi', 'Tepsi Malzemesi: Melamin\nTepsi Ek Özellik: Küçük Çay Kahve Kutusu\nKettle Malzeme: Paslanmaz Çelik - Rezistanslı\nKapasite: 800 ml\nFonksiyon: Otomatik Kapanma Sigortası\nÜretim Yeri: Fransa\nGaranti: 3 Yıl', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779c07a42a.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:04'),
(2158, 2, 'JVD Alteo Saç Kurutma Makinesi - Duvara Monte', 'Bağlantı tipi: Duvara monte\nGüç: 1875W\nElektrik frekansı: 50-60 Hz\nHava akımı: 60-90 m3/h 2 kademe üfleme hızı\nSıcaklık seçenekleri: 3 adet\nKordon: Sarkmaya karşı özel uzatılabilir kalın spiral kordon\nGüvenlik: Aşırı ısınma/devre koruması\nModel seçeneği: Traş prizli ve prizsiz alternatifi\nMenşei: MADE IN FRANCE\nGaranti: 3 YIL.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779c0d8c73.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:05'),
(2160, 3, 'Fantom Kettle- ABS İkram Ünitesi', 'Ürün Materyali: ABS\nÜretim: Kettle\nÇay: \nKahve: \nŞeker ve Fincan Bölmeleri: \nTepsi Ölçüleri: 333x384x40 mm\nGaranti Süresi: 2 Yıl', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779c141a50.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:05'),
(2162, NULL, 'Metal Mat Siyah Valizlik', 'Tip: Paslanmaz Arkalıklı Valizlik\nMalzeme: 304 Kalite Paslanmaz Çelik\nGaranti: 3 Yıl Paslanma ve Kararmama Garantisi\nÖzellikler: Dayanıklı Emniyet Kemeri Bağlantısı\nÖlçüler: Açıkken\nÜretim Yeri: TÜRKİYE.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779c1a2bec.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:06'),
(2164, 2, 'JVD Alteo Saç Kurutma Makinesi - Traş Prizli', 'Bağlantı Tipi: Duvara monte\nGüç: 1875W\nElektrik: 110V\nHava akımı: 60-90 m3/h 2 kademe üfleme hızı\nSıcaklık seçenekleri: 3 adet\nKordon: Sarkmaya karşı özel uzatılabilir kalın spiral kordon\nGüvenlik: Aşırı ısınma/devre koruması\nRenk: Beyaz\nModel seçeneği: Traş prizli ve prizsiz alternatifi.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779c217f5d.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:06'),
(2166, 3, 'JVD Paslanmaz Kettle Siyah Tepsi', 'Materyal: Siyah Melamin\nKettle: Paslanmaz Çelik 800 ml\nOtomatik Kapanma Sigortası: Su Bittiğinde\nRezistanslı: \nTasarım Ödülü: 2013\nÜretim Yeri: MADE IN FRANCE\nGaranti Süresi: 3 Yıl', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779c2844dd.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:07'),
(2170, 5, 'Ahşap Valizlik Katlanır', 'Özellikler: Katlanabilir yeni tasarım\nİmalat: İstenilen ölçü ve renkte imalat yapılabilir\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779c306d4f.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:07'),
(2172, 4, 'Ahşap Kettle sunum Ünitesi Elips Diva', 'Ürün: Ahşap Kettle Sunum Ünitesi Elips Diva\r\nMalzeme: Masif Kayın Ağacı\r\nCila: İpekmat Mobilya Cilalı\r\nÜretim Yöntemi: CNC Laser Kesim\r\nBölmeler: Çay - Kahve - İkramlık - Fincan - Kaşık\r\nKettle Modeli: 1 Litre JVD Diva Paslanmaz Kettle (Çift Katmanlı - Dışarı Isı Vermez)\r\nKettle Türü: Otel Kullanımına Uygun Kablosuz Kullanım\r\nOtomatik Kapanma: Var\r\nİç Gövde: Paslanmaz Çelik\r\nÖlçüler: 20 x 49 mm\r\nGaranti: 2 Yıl İmalatçı Firma Garantisi.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779c36539a.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:07'),
(2174, 2, 'JVD Caraibe Hortumlu Saç Kurutma Mak. Traş Prizli', 'Bağlantı tipi: Duvara monte\nGüç: 1000W\nElektrik: 230V 50-60 Hz\nHava akımı: 80 m3/h\nİyonizasyon sistemi: Var\nKordon: Sarkmaya karşı özel uzatılabilir hortum\nGüvenlik: Aşırı ısınma/devre koruması\nRenk: Beyaz\nPriz: Traş prizli 110V\nMenşei: MADE IN FRANCE\nGaranti: 3 YIL.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779c3e1707.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:08'),
(2175, 2, 'Fantom Saç Kurutma Makinası', 'Güç: 1000W\nFrekans: 50-60 Hz\nBağlantı Tipi: Duvara monte\nKontrol: Tek tuş ile\nÖzellikler: Hava yönlendirici\nEmniyet Sistemi: Fazla Isınmaya Karşı Otomatik Kapanma.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779c44ce5c.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:08'),
(2178, 5, 'Ahşap Valizlik Katlanır', 'Tasarım: 2019 Tasarım\nİmalat: İstenilen ölçü ve renk seçeneği\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779c49d876.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:08'),
(2180, 4, 'Fantom Sunum Ünitesi', 'Ürün: Fantom Kettle İkram Tepsisi\r\nMalzeme: ABS Gövde\r\nBölmeler: Kettle - Çay - Kahve - Şeker - Fincan\r\nKettle Modeli: 1\r\n2 Litre Fantom 2500KT Paslanmaz Kettle: \r\nKettle Türü: Otel Kullanımına Uygun Kablosuz Kullanım\r\nOtomatik Kapanma: Var\r\nİç Gövde: Paslanmaz Çelik\r\nKapak: Paslanmaz Çelik\r\nRezistans: Var\r\nTepsi Ölçüleri: 199x543x50 mm\r\nGaranti Süresi: 2 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779c4f3c0e.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:09'),
(2181, NULL, 'JVD Kettle Set-ZenLine-Black', 'Ürün: Melamin Servis Tepsisi – Küçük Çay\nKahve Kutusu: \nKettle Modeli: JVD Melamin 800 ml Kapasiteli\nRezistans: Gizli Rezistanslı\nKullanım: Otel Kullanımına Uygun\nRenk Seçenekleri: Krem\nBeyaz: \nSiyah: \nMenşei: France\nGaranti Süresi: 3 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779c55cbbd.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:09'),
(2183, 2, 'Platinum Pure Saç Kurutma Makinası', 'Güç: 1350 Watt\nBağlantı Tipi: Duvara Monte\nKordon: Spiral Kablolu\nKontrol: Bas/Bırak Buton\nHız Ayarı: 2 Kademe\nMenşei: Made in Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779c5b0f2d.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:10'),
(2185, NULL, 'JVD Kettle Set-ZenLine-Ivory', 'Ürün: Melamin Servis Tepsisi – Küçük Çay\nKahve Kutusu: \nKettle Modeli: JVD Melamin 800 ml Kapasiteli\nRezistans: Gizli Rezistanslı\nKullanım: Otel Kullanımına Uygun\nRenk Seçenekleri: Krem\nBeyaz: \nSiyah: \nMenşei: France\nGaranti Süresi: 3 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779c62981e.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:10'),
(2188, NULL, 'Deri Kaplı Karşılama Tepsisi- DİVA', 'Ürün: Deri Kaplı Karşılama Tepsisi - DİVA\nKettle Modeli: 1 lt JVD Diva Paslanmaz (Çift Katman - Dışarıya Isı Vermeme)\nTepsi: Ahşap Üzeri Deri Kaplama\nÖlçüler: 29 x 40 cm\nRenk Seçenekleri: İstenilen Renk Üretim\nMenşei: France\nGaranti Süresi: 3 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779c6a1b3a.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:10'),
(2189, 2, 'JVD Clipper II Duvara monte Saç Kurutma Makinesi', 'Tip: Duvara Monte ve Çekmece İçi Kurutma Cihazı\nGüç: 1400W\nİyonizerli: \nElektrik Gereksinimi: 220V-240V / 50-60 Hz\nHava Akımı: 3 Kademeli- 60-90 m3/h\nKablo: Sarkmaya Karşı Özel Uzatılabilir Kalın Spiral Kordon\nGüvenlik: Aşırı Isınma ve Devre Koruması\nRenk Seçenekleri: Beyaz ve Siyah\nEk Özellikler: Traş Prizli ve Prizsiz Alternatifi\nÜretim Yeri: FRANSA\nGaranti Süresi: 3 YIL.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779c70020f.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:11'),
(2192, 4, 'Ahşap Kettle Sunum Ünitesi Junior', 'Ürün: Ahşap Kettle Sunum Ünitesi Junior\r\nMateryal: Masif Kayın Ağacı\r\nCila: İpekmat Mobilya Cilalı\r\nÜretim: CNC Laser Kesim İle Çay Kahve İçin İkramlık ve Fincan Kaşık İçin Bölmeler\r\nKettle: 0\r\n8 Litre JVD Paslanmaz Kettle: \r\nKullanım: Otel Kullanımına Uygun Kablosuz Kullanım\r\nÖzellik: Otomatik Kapanma\r\nRezistans: İtalyan Otter Marka\r\nİç Gövde: Paslanmaz Çelik\r\nÖlçüler: 35 x 23 cm\r\nGaranti Süresi: 2 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779c7697bd.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:11'),
(2193, 2, 'JVD Clipper II Çekmece içi Saç Kurutma Makinesi', 'Tip: Çekmece İçi Saç Kurutma Makinası\nGüç: 1400W- İyonizerli\nElektrik Gereksinimi: 220V-240V / 50-60 Hz\nHava Akımı: 3 Kademeli 60-90 m3/h\nKablo: Sarkmaya Karşı Özel Uzatılabilir Kalın Spiral Kordon\nGüvenlik: Aşırı Isınma ve Devre Koruması\nRenk Seçenekleri: Beyaz Siyah ve Gümüş Gri\nÜretim Yeri: FRANSA\nGaranti Süresi: 3 YIL.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779c7e3a11.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:12'),
(2196, NULL, 'Ahşap Karşılama Tepsisi - Elips Siyah Diva', 'Ürün: Ahşap Karşılama Tepsisi - Elips Siyah Diva\nCila: Ahşap Mobilya Cilalı\nRenk: İstenilen Renk\nÖlçüler: 50x20 cm\nKettle: 1000 ml Kapasiteli Paslanmaz Çelik Kettle - DİVA (Çift Katmanlı).', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779c85ab2c.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:12'),
(2198, 2, 'JVD Brittony Saç Kurutma Makinesi', 'Tip: Duvara Monte veya Çekmece İçi Saç Kurutma Makinası\nGüç: 1600W  İyonizerli\nElektrik Gereksinimi: 220V-240V / 50-60 Hz\nHava Akımı: 3 Kademeli- 60-90 m3/h\nKablo: Sarkmaya Karşı Özel Uzatılabilir Kalın Spiral Kordon\nGüvenlik: Aşırı Isınma ve Devre Koruması\nRenk Seçenekleri: Beyaz ve Siyah\nEk Özellikler: Traş Prizli ve Prizsiz Alternatifler\nÜretim Yeri: FRANSA\nGaranti Süresi: 3 YIL.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779c8d2eb0.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:13'),
(2199, NULL, 'Ahşap Karşılama Ünitesi -Antresit JVD', 'Ürün: Ahşap Karşılama Ünitesi - Antresit JVD\nCila: Ahşap Mobilya Cilalı\nRenk: İstenilen Renk\nÖlçüler: 29x40 cm\nKettle: 0\n800 ml JVD Duchesse Kettle Set.:', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779c932aca.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:13'),
(2202, 2, 'JVD Alteo Saç Kurutma Makinesi', 'Tip: Çekmece İçi Saç Kurutma Makinası (Normal Fişli Serbest Kullanım)\nGüç: 1875W\nElektrik Gereksinimi: 230V / 50-60 Hz\nÜfleme Hızı: 2 Kademeli 70-100 m3/h\nSıcaklık Seçenekleri: 3 (1 soğuk dahil)\nİyonizasyon: Var\nKablo: Sarkmaya Karşı Özel Uzatılabilir Kalın Spiral Kordon\nRenk Seçenekleri: Beyaz- Siyah ve Gümüş\nGüvenlik: Aşırı Isınma ve Devre Koruması\nYüzey Rengi: Siyah Mat\nÜretim Yeri: FRANSA\nGaranti Süresi: 3 YIL.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779c982ad6.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:14'),
(2204, NULL, 'Ahşap Karşılama Ünitesi Antrasit - Diva', 'Ürün: Ahşap Karşılama Ünitesi - Antresit JVD\nCila: Ahşap Mobilya Cilalı\nRenk: İstenilen Renk\nÖlçüler: 29x40 cm\nKettle: 0\n800 ml JVD Duchesse Kettle Set:', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779ca09101.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:14'),
(2205, 2, 'JVD Lineo Saç Kurutma Makinası', 'Tip: Katlanabilir Çekmece İçi Serbest Saç Kurutma Makinası\nRenk: Siyah\nKablo: Spiral\nGüç: 1600W\nÜfleme Kademeleri: 2\nSıcaklık Seçenekleri: 3\nKatlanmış Ölçüler: U x Y x D\nAçık Ölçüler: U x Y x D\nÜretim Yeri: FRANSA\nGaranti Süresi: 3 YIL.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779ca50781.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:14'),
(2208, 3, 'Fantom Kettle- Melamin İkram Ünitesi', 'Gövde: ABS\nBölmeler: Sabit Kettle Bölmesi - Çay Kahve Şeker ve Fincan Bölmesi\nElektrik Kablosu: Var\nKapasite: 1\n2 Litre Fantom 2500KT Paslanmaz Kettle: \nKullanım: Kablosuz\nGüvenlik: Otomatik Kapanma\nMalzeme: Paslanmaz İç Gövde\nKapak: Paslanmaz\nMenşei: PRC\nTepsi Ölçüleri: 350x380x77 mm\nGaranti Süresi: 2 Yıl', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779caa3a4a.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:15'),
(2209, 2, 'JVD İbiza Saç Kuturma Makinası', 'Tip: Çekmece İçi Serbest Saç Kurutma Makinası\nRenk: Siyah\nKablo: Spiral\nGüç: 1875W\nÜfleme Kademeleri: 2\nSıcaklık Seçenekleri: 3\nÜretim Yeri: Fransa\nGaranti Süresi: 3 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779cb10128.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:15'),
(2212, 4, 'Fantom Sunum Ünitesi', 'Gövde: ABS\r\nBölme: Kettle - Çay - Kahve - Şeker - Fincan\r\nKapasite: 1\r\n2 litre Premier Paslanmaz Kettle: \r\nKullanım: Kablosuz\r\nGüvenlik: Otomatik Kapanma\r\nMalzeme: Paslanmaz İç Gövde ve Kapak\r\nRezistans: Var\r\nTepsi Ölçüleri: 333x384x40 mm\r\nGaranti Süresi: 2 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779cb56318.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:15'),
(2213, 2, 'JVD Neptüne Saç Kurutma Makinesi', 'Güç: 1900 W\nTip: Duvara Monte Saç Kurutma Makinası\nRenk: Beyaz\nBoyutlar: Destek- W.138 x H.1153 x D.148 mm/ Saç kurutma makinesi- L. 150 x H.348 x D.384 mm\nRenk Seçenekleri: Beyaz- Mavi- Kırmızı\nÜretim Yeri: Fransa\nGaranti Süresi: 3 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779cbb5cd8.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:16'),
(2215, 4, 'Nespresso Kahve Makinası Sunum Tepsisi', 'Model: Nespresso\r\nMalzeme: Ahşap\r\nBölümler: Kettle - Kaşık - Bardak - Kahve\r\nÖlçü: İsteğe Özel', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779cc220e3.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:16'),
(2217, NULL, 'Haira Saç Kurutma Makinası', 'Güç: 1200W\nHız Ayarı: 2 Kademe\nSıcaklık Ayarı: 2 Kademe\n1. Kademe: 600W\n2. Kademe: 1200W\nButon: Bas-Çek\nRenk Seçenekleri: Siyah - Beyaz\nKablo: Silikon Spiral\nMotor: DC\nGüç Kaynağı: AC\nÜfleme: 87 m³/H\nSes Seviyesi: 72dB\nAğırlık: 685 gr\nGaranti: 3 yıl', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779cca1d35.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:16'),
(2219, NULL, 'Ahşap Kettle Set - JVD Kettle', 'Malzeme: Masif Kayın Ağacı\nCila: İpekmat Mobilya Cilalı\nKesim: CNC Laser ile\nBölme: Çay Kahve İkramlık Bölmeleri ve Fincan Kaşık Bölmeleri (CNC Laser Kesim)\nKapasite: 1\n2 Litre Kleo Paslanmaz Kettle: \nKullanım: Otel Kullanımına Uygun Kablosuz Kullanım\nGüvenlik: Otomatik Kapanma Özelliği\nMalzeme: Paslanmaz İç Gövde\nRezistans: İtalyan Otter Marka\nÖlçüler: 500x200x30 mm\nGaranti Süresi: 2 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779cce5124.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:17'),
(2222, 2, 'Haira Saç kurutma Makinası - Traş prizli', 'Güç: 1600W\nTraş Prizi: 110 / 220V\nHız Ayarı: 2 Kademe\nSıcaklık Ayarı: 3 Kademe\n1. Kademe: 400 Watt\n2. Kademe: 800 Watt\n3. Kademe: 1600 Watt\nButon: Bas/Çek\nRenk Seçenekleri: Siyah - Beyaz\nKablo: Silikon Spiral\nMotor: DC\nGüç Kaynağı: AC\nÜfleme: 87 m³/H\nSes Seviyesi: 74dB\nAğırlık: 1.203 gr\nGaranti: 3 yıl', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779cd78799.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:17'),
(2224, 3, 'JVD Maestro Kettle set Siyah', 'Gövde: Mat Krom Paslanmaz Çelik\nKapasite: 800 ml\nRezistans: Gizli\nKablosuz Kullanım: Uygun\nTepsi: Yüksek Kalite Melamin\nİmalat: Montajlı\nBölmeler: Hoşgeldin Tepsisi - Çay Kahve Kutusu - Fincan Takımı\nMenşei: France\nGaranti Süresi: 3 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779cdc9647.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:18'),
(2225, 2, 'Haira Saç kurutma Makinası - Çekmece içi', 'Güç: 1200W\nHız Ayarı: 2 Kademe\nSıcaklık Ayarı: 2 Kademe\n1. Kademe: 600 Watt\n2. Kademe: 1200 Watt\nButon: Bas-Çek\nRenk Seçenekleri: Siyah - Beyaz\nKablo: Silikon Spiral\nMotor: DC\nGüç Kaynağı: AC\nÜfleme: 87 m³/H\nSes Seviyesi: 72dB\nAğırlık: 685 gr\nGaranti: 3 yıl', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779ce5a9be.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:18'),
(2228, NULL, 'Abs Plastik Hoşgeldin Tepsisi', 'Uyum: Bütün Su Isıtıcılarına Uyumlu\nHazne Bölümleri: Kettle Alt Haznesi Çapına Göre 4 Farklı Boy (14cm\n15cm- 16cm- 17cm): \nİsteğe Bağlı: Sabitlenebilir Tepsi\nEk Parça: Bardak Altı Paslanmaz Çelik Parça Aksesuarı\nTasarım: Compact Tasarım (Tepsi Ölçüleri\nMalzeme: 1. Sınıf Kalite LG ABS Plastik.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779cead16c.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:19'),
(2233, 5, 'Ahşap valizlik Arkalıksız  - Ayakkabılıklı', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779cf190d3.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:19'),
(2236, 5, 'Ahşap Arkalıksız Valizlik', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779cf6ad6d.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:19'),
(2238, 4, 'Ahşap Kettle Sunum Ünitesi', 'Ürün Materyali: Masif kayın\r\nCila: İpekmat\r\nÜretim: Cnc laser kesim\r\nBölümler: Çay - kahve - ikramlık - fincan - kaşık\r\nGaranti: 2 yıl\r\nÖlçüler: 20 x 40 mm', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779cfbba67.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:20'),
(2240, 4, 'Ahşap Kettle Sunum Ünitesi', 'Ürün Materyali: Masif kayın\r\nCila: İpekmat\r\nÜretim: CNC lazer kesim\r\nBölümler: Çay\r\nkahve: \r\nikramlık: \r\nfincan: \r\nkaşık: \r\nGaranti: 2 yıl\r\nÖlçüler: 258 x 40 mm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d027a4c.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:20'),
(2242, NULL, 'Ahşap Tepsi', 'Malzeme: Masif kayın ağacı\nKaplama: İpekmat mobilya cilası\nİşleme: CNC lazer kesim\nBölmeler: Çay ve kahve için ikramlık bölme - Fincan ve kaşık için bölme\nGaranti: 2 yıl (İmalatçı firma garantisi).', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d09691b.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:20'),
(2245, NULL, 'Ahşap Tepsi', 'Malzeme: Masif kayın ağacı\nKaplama: İpekmat mobilya cilası\nİşleme: CNC lazer kesim\nBölmeler: Çay ve kahve için ikramlık bölme - Fincan ve kaşık için bölme\nGaranti: 2 yıl (İmalatçı firma garantisi).', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d0ea075.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:21'),
(2248, 4, 'Ahşap Kettle Sunum Ünitesi', 'Malzeme: Masif Kayın Ağacı\r\nCila Türü: İpekmat Mobilya Cilası\r\nÖzel Kesim Detayları: CNC Laser ile Çay/Kahve ve Fincan/Kaşık Bölmeleri\r\nGaranti Süresi: 2 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d14a1ff.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:21'),
(2257, 4, 'Ahşap Kettle Sunum Ünitesi', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d1aa69b.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:22'),
(2260, 4, 'Ahşap Sunum Tepsisi', 'Malzeme: Masif Kayın Ağacı\r\nKaplama: İpekmat Mobilya Cilası\r\nTasarım: Cnc Laser Kesim\r\nKullanım: Çay ve Kahve İkramı- Fincan ve Kaşık Yerleşimi\r\nGaranti: İmalatçı Firma Garantisi ile 2 Yıl\r\nÖlçüler: İstenen Ölçüde İmalat', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d206ee0.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:22'),
(2262, 4, 'Ahşap Sunum Tepsisi', 'Malzeme: Masif Kayın Ağacı\r\nKaplama: İpekmat Mobilya Cilası\r\nTasarım: Cnc Laser Kesim\r\nKullanım: Çay ve Kahve İkramı - Fincan ve Kaşık Yerleşimi\r\nGaranti: İmalatçı Firma Garantisi ile 2 Yıl\r\nÖlçüler: İstenen Ölçüde İmalat', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d2669a6.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:22'),
(2264, 4, 'Ahşap Sunum Tepsisi', 'Malzeme: Masif Kayın Ağacı\r\nKaplama: İpekmat Mobilya Cilası\r\nTasarım: Cnc Laser Kesim\r\nKullanım: Çay ve Kahve İkramı- Fincan ve Kaşık Yerleşimi\r\nGaranti: İmalatçı Firma Garantisi ile 2 Yıl\r\nÖlçüler: İstenen Ölçüde İmalat', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d2c7021.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:23'),
(2266, 4, 'Abs Sunum Tepsisi', 'Malzeme: ABS Plastik', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d332b2b.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:23'),
(2268, 4, 'Ahşap Sunum Tepsisi', 'Malzeme: Masif Kayın Ağacı\r\nKaplama: İpekmat Mobilya Cilası\r\nTasarım: Cnc Laser Kesim\r\nKullanım: Çay ve Kahve İkramı - Fincan ve Kaşık Yerleşimi\r\nGaranti: İmalatçı Firma Garantisi ile 2 Yıl\r\nÖlçüler: İstenen Ölçüde İmalat', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d390600.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:23'),
(2270, 4, 'Ahşap  Sunum Tepsisi', 'Malzeme: Masif Kayın Ağacı\r\nKaplama: İpekmat Mobilya Cilası\r\nTasarım: Cnc Laser Kesim\r\nKullanım: Çay ve Kahve İkramı - Fincan ve Kaşık Yerleşimi\r\nGaranti: İmalatçı Firma Garantisi ile 2 Yıl\r\nÖlçüler: İstenen Ölçüde İmalat', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d3e1263.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:24'),
(2272, NULL, 'Ahşap Sunum Tepsisi', 'Malzeme: Masif Kayın Ağacı\nKaplama: İpekmat Mobilya Cilası\nTasarım: Cnc Laser Kesim\nKullanım: Çay ve Kahve İkramı - Fincan ve Kaşık Yerleşimi\nGaranti: İmalatçı Firma Garantisi ile 2 Yıl\nÖlçüler: İstenen Ölçüde İmalat', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d44b4d0.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:24'),
(2274, NULL, 'Ahşap Sunum Tepsisi', 'Malzeme: Masif Kayın Ağacı\nKaplama: İpekmat Mobilya Cilası\nTasarım: Cnc Laser Kesim\nKullanım: Çay ve Kahve İkramı - Fincan ve Kaşık Yerleşimi\nGaranti: İmalatçı Firma Garantisi ile 2 Yıl\nÖlçüler: İstenen Ölçüde İmalat', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d4a9286.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:25'),
(2276, NULL, 'Ahşap Sunum Tepsisi', 'Malzeme: Masif Kayın Ağacı\nKaplama: İpekmat Mobilya Cilası\nTasarım: Cnc Laser Kesim\nKullanım: Çay ve Kahve İkramı - Fincan ve Kaşık Yerleşimi\nGaranti: İmalatçı Firma Garantisi ile 2 Yıl\nÖlçüler: İstenen Ölçüde İmalat', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d512c4d.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:25'),
(2278, NULL, 'Ahşap Sunum Tepsisi', 'Malzeme: Masif Kayın Ağacı\nKaplama: İpekmat Mobilya Cilası\nTasarım: Cnc Laser Kesim\nKullanım: Çay ve Kahve İkramı - Fincan ve Kaşık Yerleşimi\nGaranti: İmalatçı Firma Garantisi ile 2 Yıl\nÖlçüler: İstenen Ölçüde İmalat', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d572c8a.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:25'),
(2280, NULL, 'Ahşap Sunum Tepsisi', 'Malzeme: Masif Kayın Ağacı\nKaplama: İpekmat Mobilya Cilası\nTasarım: Cnc Laser Kesim\nKullanım: Çay ve Kahve İkramı - Fincan ve Kaşık Yerleşimi\nGaranti: İmalatçı Firma Garantisi ile 2 Yıl\nÖlçüler: İstenen Ölçüde İmalat', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d5cf9d0.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:26'),
(2281, NULL, 'Ahşap Sunum Tepsisi', 'Malzeme: Masif Kayın Ağacı\nKaplama: İpekmat Mobilya Cilası\nTasarım: Cnc Laser Kesim\nKullanım: Çay ve Kahve İkramı - Fincan ve Kaşık Yerleşimi\nGaranti: İmalatçı Firma Garantisi ile 2 Yıl\nÖlçüler: İstenen Ölçüde İmalat', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d638542.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:26'),
(2284, 4, 'Ahşap Sunum Tepsisi', 'Malzeme: Masif Kayın Ağacı\r\nKaplama: İpekmat Mobilya Cilası\r\nTasarım: Cnc Laser Kesim\r\nKullanım: Çay ve Kahve İkramı - Fincan ve Kaşık Yerleşimi\r\nGaranti: İmalatçı Firma Garantisi ile 2 Yıl\r\nÖlçüler: İstenen Ölçüde İmalat', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d6966c3.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:27'),
(2286, NULL, 'Ahşap Sunum Tepsisi', 'Malzeme: Masif Kayın Ağacı\nKaplama: İpekmat Mobilya Cilası\nTasarım: Cnc Laser Kesim\nKullanım: Çay ve Kahve İkramı - Fincan ve Kaşık Yerleşimi\nGaranti: İmalatçı Firma Garantisi ile 2 Yıl\nÖlçüler: İstenen Ölçüde İmalat', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d710fde.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:27'),
(2288, NULL, 'Ahşap Sunum Tepsisi', 'Malzeme: Masif Kayın Ağacı\nKaplama: İpekmat Mobilya Cilası\nTasarım: Cnc Laser Kesim\nKullanım: Çay ve Kahve İkramı - Fincan ve Kaşık Yerleşimi\nGaranti: İmalatçı Firma Garantisi ile 2 Yıl\nÖlçüler: İstenen Ölçüde İmalat', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d76e355.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:27'),
(2290, NULL, 'Ahşap Sunum Tepsisi', 'Malzeme: Masif Kayın Ağacı\nKaplama: İpekmat Mobilya Cilası\nTasarım: Cnc Laser Kesim\nKullanım: Çay ve Kahve İkramı - Fincan ve Kaşık Yerleşimi\nGaranti: İmalatçı Firma Garantisi ile 2 Yıl\nÖlçüler: İstenen Ölçüde İmalat', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d7ce6a5.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:28'),
(2291, NULL, 'Ahşap Sunum Tepsisi Çekmeceli', 'Malzeme: Masif Kayın Ağacı\nKaplama: İpekmat Mobilya Cilası\nTasarım: Çekmeceli-Cnc Laser Kesim\nKullanım: Çay ve Kahve İkramı - Fincan ve Kaşık Yerleşimi\nGaranti: İmalatçı Firma Garantisi ile 2 Yıl\nÖlçüler: İstenen Ölçüde İmalat', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d82c7a6.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:28'),
(2293, NULL, 'Ahşap Sunum Tepsisi', 'ahşap kettle sunum ünitesi: \nsıcak içecek sunumu: \nşık ahşap sunum standı: \notel odası ekipmanları: \nkarşılama tepsisi:', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d87ecd4.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:28'),
(2295, 4, 'Ahşap Sunum Tepsisi', 'Malzeme: Masif Kayın Ağacı\r\nKaplama: İpekmat Mobilya Cilası\r\nTasarım: Cnc Laser Kesim\r\nKullanım: Çay ve Kahve İkramı - Fincan ve Kaşık Yerleşimi\r\nGaranti: İmalatçı Firma Garantisi ile 2 Yıl\r\nÖlçüler: İstenen Ölçüde İmalat', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d8cf397.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:29'),
(2297, 4, 'Ahşap Sunum Tepsisi', 'Malzeme: Masif Kayın Ağacı\r\nKaplama: İpekmat Mobilya Cilası\r\nTasarım: Cnc Laser Kesim\r\nKullanım: Çay ve Kahve İkramı - Fincan ve Kaşık Yerleşimi\r\nGaranti: İmalatçı Firma Garantisi ile 2 Yıl\r\nÖlçüler: İstenen Ölçüde İmalat', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d92f501.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:29'),
(2300, NULL, 'Plastik Karşılama Tepsisi', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d982193.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:29'),
(2301, NULL, 'Plastik Karşılama Tepsisi', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779d9e3464.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:30'),
(2302, NULL, 'Plastik Karşılama Tepsisi', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779da4ee51.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:30'),
(2303, NULL, 'Plastik Karşılama Tepsisi', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779daaf821.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:31'),
(2304, NULL, 'Plastik Karşılama Tepsisi', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779db16068.jpg', '2025-06-17 00:33:03', '2025-10-21 12:17:31'),
(2305, NULL, 'FANTOM PROCART TEMİZLİK ARABASI TEK KOVALI -311', 'Kullanım: Hastane - Otel - Restaurant - Okul\nTekerlekler: Frenli ve Sessiz\nÖzellikler: Pres Ayağı ve Dik Pres\nKovalar: 4 Adet 6 Litrelik', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779db79fbc.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:31'),
(2308, NULL, 'KAT ARABASI ÇİFT TORBALI BRANDALI ORM', 'Torba Sayısı: Çift\nGövde Kenarları: Branda Malzemeden\nTekerlekli: Evet.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779dbd9fb7.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:32'),
(2310, NULL, 'KATLANIR ÇAMAŞIR ARABASI PASLANMAZ  ORM', 'Malzeme: AISI 304 paslanmaz boru ve katlanır iskelet\nÖlçüler: 54x50x92 (E-B-Y)\nFonksiyon: Çarpma lastiği - İkisi frenli dört adet hareketli tekerlek.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779dc3831a.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:32'),
(2312, NULL, 'ISLAK KİRLİ ÇAMAŞIR ARABASI', 'Özellikler: Plastik kaplamalı gövde- Dört adet hareketli tekerlek\nÖlçüler: E', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779dc88a4e.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:32'),
(2314, NULL, 'KAT ARABASI ÇİFT TORBALI - ÜSTTEN AÇILIR  ORM', 'En: 59 cm\nBoy: 99/163 cm (Katlı/Açılmış)\nYükseklik: 132 cm\nİskelet: Elektrostatik boyalı dkp profil\nGövde: Mdflam.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779dceba67.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:33'),
(2315, NULL, 'KAT ARABASI ÇİFT TORBALI KAPAKLI ORM', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779dd56105.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:33'),
(2317, NULL, 'KATLANIR ÇAMAŞIR ARABASI E.STATİK BOYALI  ORM', 'Malzeme: Elektrostatik boyalı dkp boru - katlanır iskelet\nÖlçüler: 54x50x92 (E-B-Y)\nFonksiyon: Çarpma lastiği - İkisi frenli dört adet hareketli tekerlek.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779dda7fae.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:34'),
(2319, NULL, 'Fantom Procart 110 Atık Toplama Arabası', 'Tekerlekler: Frenli ve tamponlu\nHareket: Sessiz\nAtık toplama hacmi: 120 lt', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779de086b1.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:34'),
(2322, NULL, 'Çift Torbalı Kat Arabası', 'Ürün Adı: Kat Arabası - Çift Torba\nBoyama Türü: Statik Boyalı\nYapı Malzemesi: Metal konstrüksiyon\nRaf Sistemi: Ahşap raf sistemi\nModel: Çift Torbalı model\nTorba Malzemesi: Kaliteli\nÜretim Yeri: Yerli Üretim\nGaranti Süresi: 2 Yıl', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779de729bf.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:34'),
(2324, NULL, 'KİRLİ ÇAMAŞIR ARABASI ORM', 'Malzeme: Elektrostatik boyalı dkp boru ve profil iskelet\nÖlçüler: 60x90x90 (E-B-Y)\nFonksiyon: Çarpma lastiği - İkisi frenli dört adet hareketli tekerlek.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779deed3d7.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:35'),
(2326, 1, 'Fantom Procart Servis Arabası 250', 'Tekerlekler: Frenli ve tamponlu\nHareket: Sessiz\nKullanım hacmi: 120 lt', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779df589b8.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:35'),
(2327, NULL, 'KAT ARABASI  ÇİFT TORBALI -DAR  ORM', 'Malzeme: Mdflam Gövde-Elektrostatik boyalı dkp profil iskelet\nÖlçüler: 55x66/121x130 (E-B-Y)\nEk Özellik: 5 bölümlü üst buklet kutusu - Katlanabilir yan kollar - Kilitli kapak\nFonksiyon: İkisi frenli dört adet hareketli tekerlek- Çarpma Lastiği.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779dfc714e.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:36'),
(2332, NULL, 'Fantom Procart Kat Arabası 3 Katlı - 430', 'Tekerlekler: Frenli ve tamponlu\nHareket: Sessiz\nKapasite: 2 adet 120 lt', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779e030932.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:36'),
(2336, NULL, 'ÇAMAŞIR ARABASI ORM', 'Malzeme: Elektrostatik boyalı dkp boru ve profil iskelet\nÖlçüler: 53x53x104 (E-B-Y)\nFonksiyon: Çarpma lastiği - İkisi frenli dört adet hareketli tekerlek.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779e09278f.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:36'),
(2338, NULL, 'Fantom Procart Temizlik Arabası 350', 'Tekerlekler: Frenli ve tamponlu\nHareket: Sessiz\nKapasite: 60 lt atık toplama hacmi', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779e0f3657.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:37'),
(2340, NULL, 'ELBİSE ASKI ARABASI', 'Malzeme: Elektrostatik boyalı dkp boru iskelet\nÖlçüler: 67x152x175 (E-B-Y)\nFonksiyon: Çarpma lastiği - İkisi frenli dört adet hareketli tekerlek.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779e168c11.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:37'),
(2342, NULL, 'PLASTİK ÇAMAŞIR ARABASI 280 LT ORM', 'Malzeme: Elektrostatik boyalı şase\nÖlçüler: 67x90x80 (E-B-Y)\nKapasite: 280 Lt. Plastik Hazne\nFonksiyon: Tahliye musluğu - Dört adet poliamid hareketli tekerlek', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779e1b8c03.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:38'),
(2344, NULL, 'Fantom Procart Atık Toplama Arabası İkili 120', 'Tekerlekler: Frenli ve tamponlu\nHareket: Sessiz\nKapasite: 120 lt atık toplama', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779e215046.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:38'),
(2348, NULL, 'OTEL KAT TEMİZLİK ARABASILUX BRANDA KUMAŞLI - JT', 'Çekmece: 5x10 lt\nMalzeme: Paslanmaz Boyalı Gövde\nÖlçüler: 1160x610x1480 mm\nTekerlekler: 4x150 mm (çift rulmanlı)', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779e28683f.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:38'),
(2350, NULL, 'Fantom Procart Çamaşır Toplama Arabası 52', 'Tekerlekler: Frenli ve tamponlu\nHareket: Sessiz\nKapasite: 60 lt', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779e2e6629.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:39'),
(2352, NULL, 'ISLAK ÇAMAŞIR ARABASI - PASLANMAZ ORM', 'Malzeme: AISI 304 kalite paslanmaz gövde\nÖlçüler: 61x61x75 (E-B-Y)\nFonksiyon: Dört adet hareketli tekerlek.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779e364c59.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:39'),
(2354, NULL, 'OTEL KAT TEMİZLİK ARABASIPLASTİK KAPAKLI JT', 'Gövde: Paslanmaz Boyalı Plastik\nÖlçüler: 1160x610x1480 mm\nÇekmece: 5x10 lt\nTekerlekler: 4x150 mm (çift rulmanlı)', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779e3b7300.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:40'),
(2356, NULL, 'Fantom Yük Taşıma Arabası', 'Tekerlekler: Frenli ve tamponlu\nHareket: Sessiz', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779e41316f.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:40');
INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `price`, `stock_quantity`, `vat_rate`, `image_url`, `created_at`, `updated_at`) VALUES
(2358, NULL, 'TORBALI PASPAS ARABASI ORM', 'Malzeme: Elektrostatik boyalı dkp boru iskelet\nÖlçüler: 45x98x105 (E-B-Y)\nEk Özellik: İki adet kova ve pres aparatı- Kirli torbası- Çıkarılabilir plastik kaplama sepet\nFonksiyon: Çarpma lastiği- İkisi frenli dört adet hareketli tekerlek.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779e4756ca.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:40'),
(2359, NULL, 'OTEL KAT TEMİZLİK ARABASILUX STORE KAPAKLI  JT', 'Gövde: Paslanmaz Boyalı Plastik\nBoyut: 1160x610x1480 mm\nTekerlekler: 4x150 mm (çift rulmanlı)', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779e4d5e73.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:41'),
(2362, 1, 'Fantom Procart Servis Arabası 230', 'Taşıma Kapasitesi: 250 kg\nTekerlekler: 2 x Ø150 mm Frenli\n: 2 x Ø150 mm Frensiz\n: 1 x Ø150 mm Orta\nGövde ve Sırt: Plastik ve Kauçuk\nRaf Sayısı: 4\nRaf Yapısı: 3 adet 3 tarafı kapalı\n: 1 adet 4 tarafı açık üst raf\nİtme Sapı: İki taraflı ayrılabilir.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779e53f546.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:41'),
(2364, NULL, 'TEMİZ ÇAMAŞIR ARABASI ORM', 'Malzeme: Elektrostatik boyalı dkp boru iskelet\nÖlçüler: 92x58x177 (E-B-Y)\nEk Özellik: Dört adet mdflam raf- Fermuarlı branda\nFonksiyon: İkisi frenli dört adet hareketli tekerlek.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779e5a9738.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:42'),
(2366, NULL, 'FANTOM PROCART TEMİZLİK ARABASI 353', 'Kullanım Alanı: Hastane - Otel - Restoran - Okul\nTekerlekler: Frenli - Tamponlu - Sessiz\nKapasite: 2x60LT', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779e613372.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:42'),
(2368, NULL, 'OTEL KAT TEMİZLİK ARABASIÇAMAŞIR ARABASI JT', 'Gövde: Paslanmaz Boyalı Gövde\nBoyut: 1160x610x1480 mm\nÇamaşır Torbası: 1x100 lt-1x200 lt\nTekerlekler: 4x150 mm (çift rulmanlı)', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779e672bbc.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:42'),
(2370, NULL, 'Fantom Profesyonel Elektrik Süpürgesi', 'Motor Gücü: 850 W\nMotor Tipi: DRY / SINGLE STAGE\nEmiş: 2150 mmSS\nFonksiyon: Sessiz\nFiltreleme: Toz Torbalı / H.E.P.A\nVoltaj / Frekans: 220-230 V AC / 50-60 Hz\nKablo Uzunluğu: 15 m / 2 x 0.75 mm²\nTank Tipi: Çelik\nTank Kapasitesi: 11lt\nToz Torba Kapasitesi: 13 lt\nKilit Tipi: PP\nHortum Uzunluğu: 240 cm\nHortum Çapı: Ø34 mm\nBoru Takımı: Çelik Ø34 mm\nTekerlekler: 1 x Ø50 mm ÖN / 2 x PVC Ø100 mm ARKA\nAlt Gövde: CPP ARABA GÖVDE\nÜrün Net Ağırlık: 10.2 kg\nKoli Brüt Ağırlık: 11.2 kg\nÜrün Ölçüleri: Ø 470 x 355 mm\nKoli Ölçüleri: 410 x 510 x 390 mm', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779e6d6a38.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:43'),
(2371, 1, 'Fantom Procart Servis Arabası 3203', 'Ürün Gövde Yapısı: CPP gövde\nÜrün Gövde Kalınlığı: 6 mm\nÜrün Ölçüleri (En- Boy- Yükseklik): 53 x 152 x 108 cm\nÜrün Ağırlık: 44\n5 kg: \nTaşıma Kapasitesi: 325 kg\nÇöp Bölmesi Özelliği: IMPERTEX 420 branda\nÇöp Bölme Hacmi: 120 lt\nÇöp Kapağı: GÖREV çizelgelikli çöp kapağı\natıkları sınıflandıran renk etiketi: \nTekerlekler: 2 x Ø150 mm frenli\n6 x Ø150 mm frensiz: \ngövde plastik: \nsırt kauçuk ve tamponlu: \nRaf Sayısı: 4\nRaf Yapısı: 3 adet 3 tarafı kapalı orta raf ve 1 adet 4 tarafı açık raf\nTemizlik Kovası: Üst gövdeye gömülü 4 adet 6 lt. kapaklı\nÇekmece: 2 adet seperatörlü ve kapaklı\nİtme Sapi: 1 tarafı gövdeye sabit ve 1 tarafı ayrılabilir.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779e72a05e.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:43'),
(2374, NULL, 'Tek Torbalı Kat Arabası', 'Ürün Adı: Tek Torbalı Kat Arabası\nBoyama Türü: Statik Boyalı\nYapı Malzemesi: Metal konstrüksiyon\nRaf Sistemi: Ahşap raf sistemi\nÖlçüler: 80x50x130 cm\nGaranti Süresi: 2 Yıl', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779e796b85.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:44'),
(2376, NULL, 'Çift Torbalı Çamaşır Toplama Arabası', 'Yapı Malzemesi: Elektro Statik Boyalı DKP İskelet\nEk Özellikler: Çarpma Lastiği\nİkisi Frenli Dört Adet Tekerlek: \nGaranti Süresi: 2 Yıl', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779e819385.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:44'),
(2378, NULL, 'Pirinç Valiz Taşıma Arabası', 'Model: Askılı Valiz Taşıma Arabası Malzeme', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779e88ab4f.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:45'),
(2379, NULL, 'Paslanmaz Valiz Taşıma Arabası', 'Malzeme: Komple 304 kalite paslanmaz çelik malzemeden imal\nModel: Kubbeli Model\nKaplama: Alt yüzey halıfleks kaplama\nTekerlek Sistemi: İthal teker sistemi\nÜretim Yeri: Yerli Üretim\nGaranti Süresi: 2 Yıl', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779e906ffb.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:45'),
(2382, NULL, 'Katlanabilir Pirinç Valiz Taşıma Arabası', 'Malzeme: Pirinç\nModel: Kubbeli Model\nKaplama: Alt yüzey halıfleks kaplama\nTekerlek Sistemi: İthal teker sistemi\nÜretim Yeri: Yerli Üretim\nGaranti Süresi: 2 Yıl\nÖlçüler: E', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779e969634.jpg', '2025-06-17 00:35:09', '2025-10-21 12:17:45'),
(2384, NULL, 'Çamaşır Kurutmalık', 'Ölçüler: Genişlik 1200mm\nYükseklik: 157mm\nDerinlik: 30mm\nAçık Derinlik: 600mm\nAğırlık: 5.2kg\nÇamaşır Kapasitesi: 55kg', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779e9cb331.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:46'),
(2386, NULL, 'Dikdörtgen  Tekli Sahil Duşu - Paslanmaz', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779ea27e82.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:46'),
(2388, NULL, 'Dikdörtgen  Tekli Sahil Duşu - Paslanmaz', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779ea6ba5e.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:46'),
(2390, NULL, 'El Duşu Metal Siyah', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779eac0bd2.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:47'),
(2392, NULL, 'Metal Siyah Boyalı El Duşu', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779eb22161.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:47'),
(2394, NULL, 'Üçlü Geri Dönüşüm Ünitesi', 'Malzeme: 304 Kalite Paslanmaz Çelik\nKova Malzemesi: Galvaniz İç Kovalı\nGöz Sayısı: 3 Ayrı Gözlü\nAtık Bölmeleri: Plastik\nKağıt: \nCam Atık Bölmeleri: \nKullanım Alanı: Dış Mekan Genel Kullanım Mekanlar için İdeal\nÖlçüler: Yükseklik\nDerinlik: 30 cm\nGenişlik: 90 cm\nGaranti Süresi: 3 Yıl\nÜretim Yeri: Made in Türkiye', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779eb75a24.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:47'),
(2396, NULL, 'Zeus Sıvı Sabunluk', 'Malzeme: 304 Kalite Paslanmaz Çelik\nGaranti Süresi: 2 Yıl Firma Garantisi\nKapasite: 200 ml\nYüzey: Parlak\nDolum: Kolay', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779ebe2fec.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:48'),
(2398, NULL, 'Bebek Altı Değiştirme Ünitesi', 'Ağırlık: 9\n5 kg: \nBağlantı tipi: Duvara monte\nKullanım Şekli: Yatay\nAntibakteriyel gövde: \nEmniyet kemerli sistem ile güvenlikli: \nKolay ve pratik kullanım: \nÖlçüler ; Ürün Kapalı Durumda: 85 x 51 x 10 cm Menşei', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779ec4242f.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:48'),
(2400, NULL, 'Bedensel Engelli Yatay L YatayDikey Tutunma Barı', 'Malzeme: 304 Kalite Paslanmaz Çelik\nYüzey: Mat\nMontaj: Duvara Özel\nÖlçüler: Uygulanabilir\nGaranti: 2 Yıl Firma\nBoru Çapı: 32 mm\nBoyutlar: 800 x 400 mm\nÜretim Yeri: Türkiye', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779ec9f2cf.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:49'),
(2402, NULL, 'Kare Dörtlü Havuz Sahil Duşu', 'Ürün: Paslanmaz Kare Dörtlü Sahil-Havuz Duş Ünitesi\nÖzellikler: Zaman Ayarlı Su Akıtma Sistemi\nMalzeme: 304 Kalite Paslanmaz Çelik\nMontaj: Yere Montajlı\nDeğişiklik: Yapılabilir\nEk Özellik: Ayak Yıkama Ünitesi Eklenebilir\nGaranti Süresi: 5 Yıl\nÜretim Yeri: TÜRKİYE\nEbatlar: 150 mm x 150 mm x 2050 mm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779ed0a10e.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:49'),
(2404, NULL, 'Dyson Airblade DB-AB14', 'Ürün Adı: DYSON AIRBLADE DB - AB14 Jet El Kurutma Makinası\nGiriş Voltajı/Frekansı: 220-253V 50 Hz\nMotor Gücü: 1600 W\nMotor Tipi: Dyson dijital motor - fırçasız DC Motor\nMotor Çalışma Hızı: 6.000/sn\nMotor Hızı: 90.000 Devir/Dk.\nSağlıklı Kaplama Tipi: Yüzeyde ve hava çıkış perdelerinde kalıpla zararsız katkı maddesi içerir\nGövde Rengi: Gri veya Beyaz\nHEPA Filtre (cam elyafı ve polar ön katman): \nZararlı Maddelerden Arındırma Oranı: %99.9\nEl Kurutma Süresi: 10 saniye (Ölçümler Ulusal Sanitasyon Kurumu Protokol P.335’e dayanmaktadır)\nAralıksız Çalışma Süresi: 30 saniye\nHava Üfleme Hızı: 690 km\nGaranti: Standart 5 yıl parça 1 yıl işçilik garantisi\nEk Özellikler: %50 Daha Sessiz.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779ed59845.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:49'),
(2406, NULL, 'Otel Tipi Çamaşır İpi Aparatı', 'Malzeme: 304 Kalite Paslanmaz Çelik\nİp Uzunluğu: 240 cm ve Sabitlemeli\nYüzey: Parlak\nGaranti: 2 Yıl\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779edd6419.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:50'),
(2408, NULL, 'Kağıt Verici Kombi Set  Manuel', 'Özellikler: Sıva Altı / Sıva Üstü Opsiyonlu- 400 Kağıt Kapasitesi- Çöp Kova Hazneli\nEbatlar (Sıva Altı): 93 x 1376 x 387 mm\nEbatlar (Sıva Üstü): 195 x 1422 x 433 mm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779ee3303b.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:50'),
(2410, NULL, 'Akıllı Kapak Klozet Fırçası', 'Malzeme: 304 Kalite Paslanmaz Çelik\nMontaj: Duvara Monte veya Yerde Serbest\nModel: Silindir\nYüzey: Parlak\nFırça: Değiştirilebilir Siyah Kıl Fırça\nSap: Metal\nGaranti: 3 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779eea0d85.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:51'),
(2412, NULL, 'GSC9 Sensörlü Paslanmaz 9 lt Çöp Kovası', 'Hacim: 9 Litre\nTip: Sensörlü\nKullanım: Manuel olarak açıp kapanabilme\nAksesuar: Kapak askı aparatlı\nMalzeme: Parmak izi bırakmayan paslanmaz çelik', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779ef0a06a.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:51'),
(2414, NULL, 'Paslanmaz Dış mekan Kova Kafes Tipi', 'Çöp Kovası Türü: Boru Ayaklı Dış Mekan Çöp Kovası\nMalzeme: 304 Paslanmaz Çelik\nBoyutlar: 42 x 42 x 75 cm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779ef5cf67.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:51'),
(2416, NULL, 'Tekli Sıva Üstü Wc Kağıtlık', 'Malzeme: 304 Kalite Paslanmaz Çelik\nYüzey: Mat\nMontaj: Duvara Monte\nGaranti: 2 Yıl Firma Garantisi.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779efbf5a4.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:52'),
(2418, NULL, 'Paslanmaz Çelik Sahil Havuz Duşu', 'Malzeme: Paslanmaz Çelik (Mat Satine - Parmak İzi Yapmaz)\nAyak Yıkama Tablası: 60x60 cm IROKO Ahşap\nÖlçü: İstenilen Ölçüde Değişiklik Mümkün\nBatarya: Zaman Ayarlı ve Mix Batarya Seçenekleri\nEk Özellikler: Zaman Ayarlı Ayak Yıkama (Opsiyonel).', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f01c456.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:52'),
(2420, NULL, 'Ayak Basmalı Dezenfektan Ünitesi', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f07a548.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:52'),
(2422, NULL, 'Fotoselli Dezenfektan Ünitesi', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f0cccd8.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:53'),
(2424, NULL, 'Lüks Manuel Dirsek Kumandalı Dezenfektan Aparatı', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f146579.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:53'),
(2426, NULL, 'Manuel Alttan Çekmeli Sıvı Sabunluk', 'Malzeme: 304 Kalite Paslanmaz Çelik\nKapasite: 500 ml\nÖzellik: Sabun ve şampuan kullanımına uygun', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f199de3.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:53'),
(2428, NULL, 'Manuel Alttan Çekmeli Sıvı Sabunluk  ikili - üçlü', 'Malzeme: 304 Kalite paslanmaz çelik\nKapasite: 2500 ml.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f1eea6e.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:54'),
(2430, NULL, 'Beşli Geri Dönüşüm Ünitesi', 'Malzeme: 304 Paslanmaz Çelik + Ahşap\nKova Malzemesi: Boyalı Galvaniz İç Kovalı\nÖlçüler: 35 cm x 140 cm\nYükseklik: 80 cm\nEk Özellik: Gizli Tekerlekli.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f2568ef.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:54'),
(2432, NULL, 'Class Sıvı Sabunluk', 'Malzeme: Ms 58 Kalite Prinç Üzeri Krom Kaplama\nGaranti Süresi: 2 Yıl Firma Garantisi\nKapasite: 400 ml\nYüzey: Parlak Cam Yüzey\nDolum: Kolay', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f29a913.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:54'),
(2434, NULL, 'İkili Duvara Monte L Tutamak', 'Malzeme: 304 Kalite Paslanmaz Çelik\nYüzey: Mat\nMontaj: Duvara\nÖzel Ölçüler: Uygulanabilir\nGaranti: 2 Yıl Firma\nBoru Çapı: 32 mm\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f2e0bdb.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:55'),
(2436, NULL, 'Ekonomik Ringa Sahil Duşu', 'Ürün: Eko Ringa Sahil Havuz Duşu\nÖzellikler: Ürünümüz demonte olarak gönderilmektedir. Ayak Yıkama Ünitesi\nKullanım Alanı: Daha çok bireysel kullanılan havuz kenarı ve bahçeler için uygundur. Toplu kullanım için diğer modellerimizi tercih edebilirsiniz.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f34beb7.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:55'),
(2438, NULL, 'Xinda Paslanmaz Fotoselli Jet El kurutma Makinası', 'Voltaj: 220V-240V 50 Hz\nGüç: 1000W\nAkım: 4.7A\nGüvenlik: IP22\nKapasite: 97m3/h\nHava Hızı: 82m/s\nSes Seviyesi: 76dB\nBoyutlar: 185x142x310mm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f39bc73.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:56'),
(2440, NULL, 'Fotoselli Kağıt Verici Kombi Set - Sıva Üstü', 'Özellikler: 4 x 1.5 V DC Pil ile Çalışır. Kağıt Boyu Ayarlı (200 mm- 250 mm- 300 mm)\nFonksiyonlar: Kağıt Verici ve Çöp Kovası için Aynı Anahtar\nEbatlar: Y * G * D = 1250 x 320 x 150 (225) mm\nAğırlık: 12.2 kg\nMontaj Seçeneği: Sıva Üstü 2\'li Kombinasyon.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f408887.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:56'),
(2442, NULL, 'Kare Klozet Fırçası Akıllı Kapak', 'Malzeme: 304 Kalite Paslanmaz Çelik\nMontaj: Duvara Monte Alternatifli\nModel: Duvara Monte veya Yerde Serbest\nKapak: Kare Akıllı Kapak\nYüzey: Parlak\nFırça: Değiştirilebilir Siyah Kıl Fırça.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f466024.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:56'),
(2444, NULL, 'GSC12 Sensörlü Paslanmaz 12 lt Çöp Kovası', 'Hacim: 12 Litre\nTip: Sensörlü\nKullanım: Otomatik açılıp kapanabilme\nAksesuar: Kapak askı aparatlı\nMalzeme: Parmak izi bırakmayan paslanmaz çelik', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f4b9359.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:57'),
(2446, NULL, 'Paslanmaz Kolon Küllük', 'Malzeme: 430 Kalite Paslanmaz Çelik\nÖzellik: Özel Tasarım İzmaritlik\nBoyutlar: Çöp Haznesi - Çap\nYükseklik: 60 cm\nGaranti Süresi: 2 Yıl\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f517d27.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:57'),
(2448, NULL, 'Abs Kağıt verici', 'Renk: Siyah\nMontaj: Duvara Monte\nKilit: Anahtarlı\nUzunluk: 400 Metre\nMenşei: Fransa\nGaranti: 3 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f576ace.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:57'),
(2450, NULL, 'Paslanmaz Çelik Sahil Havuz Duşu', 'Malzeme: Paslanmaz çelik (Mat Satine - Parmak İzi Yapmaz)\nAyak Yıkama Tablası: 60x60 cm IROKO ahşap\nÖlçü: İstenilen ölçüde değişiklik mümkündür\nBatarya: Zaman ayarlı ve mix batarya seçenekleri\nEk Özellikler: Zaman ayarlı ayak yıkama (opsiyonel).', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f5d31a5.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:58'),
(2452, NULL, 'Fotoselli Üçlü Geri Dönüşüm Seti', 'Malzeme: Paslanmaz Çelik\nÖlçüler: Genişlik\nDerinlik: 38 cm\nYükseklik: 64 cm\nModel Seçenekleri: 2 Li\n4 Lü: \n5 Li modeller mevcuttur.:', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f641c9c.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:58'),
(2454, NULL, 'Krom Küre Sıvı Sabunluk', 'Malzeme: 304 Kalite Paslanmaz Çelik\nGaranti Süresi: 2 Yıl Firma Garantisi\nKapasite: 350 ml\nYüzey: Parlak Yüzey\nDolum: Kolay.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f686815.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:58'),
(2456, NULL, 'Bedensel Engelli Tutunma Barı - Paslanmaz', 'Yüzey: Mat Satine\nMontaj: Duvara\nGaranti: 2 Yıl Firma\nÖzel Ölçüler: Uygulanabilir\nBoru Çapı: 32 mm\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f6e5e73.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:59'),
(2458, NULL, 'Dikdörtgen İkili Plaj ve Havuz Duşu', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f7538e1.jpg', '2025-06-17 00:37:53', '2025-10-21 12:17:59'),
(2460, NULL, 'JVD Zephyr El Kurutma Makinası', 'Güç: 2300 W\nRenkler: Siyah- Mavi- Kırmızı- Turkuaz- Yeşil- Beyaz\nModel: JVD Zephyr el kurutma makinesi\nGövde Malzemesi: ABS plastik\nRenk Seçenekleri: 3 renk alternatifi\nMenşei: Fransa\nGaranti Süresi: 3 yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f7a568c.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:00'),
(2462, NULL, 'Fotoselli Kağıt Verici Kombi Set - Sıva Altı', 'Özellikler: 4 x 1.5 V DC Pil ile Çalışır\nKağıt Boyu Ayarlı (200 mm- 250 mm- 300 mm): \nFonksiyonlar: Kağıt Verici ve Çöp Kovası için Aynı Anahtar\nEbatlar: Y * G * D = 1250 x 320 x 150 (225) mm\nAğırlık: 12.2 kg\nMontaj Seçeneği: Sıva Üstü 2\'li Kombinasyon.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f81017b.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:00'),
(2463, NULL, 'Kare Klozet Fırçası', 'Malzeme: 304 Kalite Paslanmaz Çelik\nMontaj: Duvara Monte Alternatifli\nModel: Duvara Monte veya Yerde Serbest\nYüzey: Parlak\nFırça: Değiştirilebilir Siyah Kıl Fırça.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f870ebb.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:00'),
(2465, NULL, 'Amortisörlü Pedallı Çöp Kovası', 'ip: Soft Kapak- Yavaş Kapanan\nKullanım Alanı: Ev- Ofis- Hastane- Otel- AVM\nMalzeme: 430 ve 304 Kalite Paslanmaz Çelik alternatifli üretim', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f8c1b49.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:01'),
(2468, NULL, 'Ahşap Gülen Surat Çöp Kovası', 'Malzeme: Paslanmaz Çelik Ayaklar\nÖzellik: İstenilen Ölçüde Üretim Esnekliği.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f91f138.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:01'),
(2470, NULL, 'Kağıt Havlu Dispenseri-200 lük', 'Malzeme: 304 Kalite Paslanmaz Çelik\nYüzey: Mat veya Parlak\nKapasite: 200 Kağıt\nUyum: Tüm Z Tipi Kağıt Havlulara Uygun\nMontaj: Duvara Monte\nGaranti: 2 Yıl\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f9823ce.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:01'),
(2472, NULL, 'Koku Makinası', 'Malzeme: ABS (Kaliteli Malzeme)\nBoyutlar: Kutu Ebadı\nAğırlık: 1\n95 kg.:', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779f9e2174.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:02'),
(2474, NULL, 'Üçlü Geri Dönüşüm Ünitesi', 'Malzeme: 304 Kalite Paslanmaz Çelik\nKova Malzemesi: Galvaniz İç Kovalı\nGöz Sayısı: 3 Ayrı Gözlü\nKullanım Alanı: Dış Mekan Genel Kullanım Mekanlar için İdeal\nÖlçüler: 80 cm x 35 cm x 90 cm', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779fa5a1af.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:02'),
(2476, NULL, 'Montajlı Diana Krom Sıvı Sabunluk', 'Malzeme: Ms 58 Kalite Prinç Üzeri Krom Kaplama\nGaranti Süresi: 5 Yıl Firma Garantisi\nMontaj: Duvara Monte\nKapasite: 250 ml\nYüzey: Parlak Yüzey\nDolum: Kolay.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779fac7bc6.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:03'),
(2478, NULL, 'Bedensel Engelli YerDuvar L Tutunma Barı  Çift Ayak', 'Malzeme: 304 Kalite Paslanmaz Çelik\nYüzey: Mat\nMontaj: Duvara\nÖzellik: Sağa Sola Dönebilen Ayaklı\nÖzel Ölçüler: Uygulanabilir\nGaranti: 2 Yıl Firma\nBoru Çapı: 32 mm\nBoyutlar: 300 x 300 mm\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779fb37b8e.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:03'),
(2480, NULL, 'Lüks Ahşap Sahil , Havuz Duşu', 'Malzeme: Paslanmaz çelik alt yapı üzerine ahşap egzotic masif ağaçtan imal edilmiş\nGaranti: 3 Yıl\nMenşei: Made İn TÜRKİYE', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779fb9bb74.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:04'),
(2482, NULL, 'JVD Master Hot Air El Kurutma Makinası', 'Giriş Voltajı/Frekansı: 230V 50-60 Hz\nMotor Gücü: 2600 W\nHava Tipi: Sıcak hava üflemeli\nGövde Malzemesi: Alüminyum\nGövde Rengi: Mat-Krom ve Beyaz alternatifi\nGaranti Süresi: 3 yıl\nÜretim Yeri: Fransa.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779fc14c8d.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:04'),
(2484, NULL, 'Kombi Set fotoselli kağıt verici + el kurutma Mak.', 'Ürün: Ankastre (Sıvaüstü olarak da dizayn edilebilir)\nMalzeme: 304 Paslanmaz Çelik\nFonksiyonlar: Fotoselli Rulo Kağıt Vericili (4 x 1.5 V DC Pilli / Elektrikli 200 mm- 250 mm- 300 mm K. Boyu Ayarlı) 2500W GSQ250A Tipi El Kurutma Makinalı- 23 L Taşınabilir Çöp Kovalı\nAnahtar: Kağıt Verici- El Kurutma Makinası ve Çöp Kovası için Aynı Anahtar\nMontaj Seçeneği: Ankastre Yuvası (1600 x 320 x 150 mm)\nAğırlık: 21.5 kg.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779fc7e634.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:04'),
(2486, NULL, 'Klozet Fırçası Lüks Çift Bardaklı Akıllı Kapak', 'Malzeme: 304 Kalite Paslanmaz Çelik\nMontaj: Duvara Monte Alternatifli\nÜretim: Kaynaklı\nModel: Duvara Monte veya Serbest\nŞekil: Silindir\nYüzey: Parlak\nFırça: Değiştirilebilir Siyah Kıl Fırça', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779fcd00fc.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:05'),
(2488, NULL, 'Paslanmaz Pedallı Çöp Kovası', 'Model: Paslanmaz Çelik Pedallı Çöp Kovası\nKullanım Alanı: Ev- Ofis- Hastane- Otel odaları- AVM genel mekanları gibi\nMalzeme: 430 ve 304 Kalite Paslanmaz Çelik alternatifli üretim\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779fd203bc.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:05'),
(2490, NULL, 'Kare Çöp Kovası', 'Malzeme: 304 Kalite Paslanmaz Çelik\nÖlçüler: 40 x 40 x 80 cm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779fd7c5dd.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:05'),
(2492, NULL, 'Clenex Mendil kutusu Abs - Siyah boyalı', 'Malzeme: ABS Plastik\nRenk: Boyalı.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779fddf93f.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:06'),
(2494, NULL, 'Fotoselli Dezenfektan Verici', 'Malzeme: Paslanmaz Çelik\nTip: Fotoselli Dezenfektan Verici\nKapasite: 1000 ml\nGaranti: 2 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779fe4d171.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:06'),
(2496, NULL, 'Üçlü Tıbbi Geri Dönüşüm Kovası', 'Özellik: Pedallı\nÖlçüler: 35 cm x 85 cm x 75 cm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779fe9dcdb.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:07'),
(2497, NULL, 'Montajlı Diana Cam Sıvı Sabunluk', 'Gövde Malzemesi: Cam Gövde / Krom Pompa\nMontaj: Duvara Monte\nGaranti Süresi: 5 Yıl Firma Garantisi\nKapasite: 250 ml\nDolum: Kolay Dolum.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779ff1458e.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:07'),
(2500, NULL, 'Ayarlanabilir Engelli Aynası', 'Malzeme: 304 Kalite Paslanmaz Çelik\nYüzey: Mat\nMontaj: Duvara\nÖzellik: Ayarlanabilir Yatay\nÖzel Ölçüler: Uygulanabilir\nGaranti: 2 Yıl\nBoyutlar: 600 x 746 x 122 mm\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779ff67273.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:07'),
(2502, NULL, 'Ekonomik Sahil ve Bahçe Duşu', 'Ürün: Sahil Havuz Duşu\nMalzeme: Özel Deck Ağaçtan İmal Edilmiştir\nÖzellikler: İstenilen Renk ve Ölçülerde İmalat Yapılabilir', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f779ffc829b.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:08'),
(2504, NULL, 'JVD Expair Jet El Kurutma Makinesi', 'Giriş Voltajı/Frekansı: 230V 50-60 Hz\nMotor Gücü: 1200 W\nGövde Yapısı: Alüminyum\nKaplama Tipi: Anti-bakteriyel\nDış Yüzey Koruma Oranı: %99.9\nYüzey Rengi: Beyaz\nMetalik Gri ve Siyah alternatifi: \nFiltre: HEPA Filtre\nEl Kurutma Süresi: 10 Saniye\nHava Üfleme Hızı: 600 km/h\nÜretim Yeri: Fransa\nGaranti Süresi: 3 yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a0034378.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:08'),
(2506, NULL, 'Kombi Set  Z Katlama Disp. 600 lük + el kurutma Mak.', 'Ürün: Ankastre (Sıvaüstü olarak da dizayn edilebilir)\nMalzeme: 304 Paslanmaz Çelik\nKapasite: 800 adet Z / 800 adet Z katlı kağıt havlu\nFonksiyonlar: 2500W GSQ250A Tipi El Kurutma Makinalı- 23 L Taşınabilir Çöp Kovalı\nAnahtar: Z Kağıt Verici- El Kurutma Makinası ve Çöp Kovası için Tek Anahtarlı\nMontaj Seçeneği: Ankastre Yuvası (1600 x 320 x 150 mm)\nAğırlık: 21.5 kg.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a00a6ba9.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:09'),
(2508, NULL, 'Lux Kare Klozet Fırçası - Kaynaklı', 'Malzeme: 304 Kalite Paslanmaz Çelik\nMontaj: Duvara Monte veya Yerde Serbest Model Alternatifli\nKapak Şekli: Kare Akıllı Kapak\nYüzey: Parlak\nFırça: Değiştirilebilir Siyah Kıl Fırça.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a0110ded.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:09'),
(2510, NULL, 'Yanmaz Çöp Kovası Siyah Boyalı', 'Renk: Siyah\nKapasite: 7 LT\nYangına Dayanıklılık: Yanmaz\nKullanım Tipi: Otel Tipi', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a01617a6.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:09'),
(2512, NULL, 'Clenex Peçetelik Dispanseri Abs Krom', 'Malzeme: ABS Plastik\nYüzey: Krom Parlak\nKaplama: Deri kaplanabilir.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a01a9575.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:10'),
(2514, NULL, 'Hijyen Paspas', 'Malzeme: Paslanmaz Çelik\nTip: Hijyen Paspas\nUygunluk: Özel Üretim İçin Uygun', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a021696a.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:10'),
(2516, NULL, 'Ahşap Sahil Duşu', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a02740a2.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:10'),
(2518, NULL, 'Ahşap Sahil Duşu Duvar Tipi', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a02c85c3.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:11'),
(2519, NULL, 'Ahşap Sahil Duşu', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a0335c06.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:11'),
(2522, NULL, 'Ahşap Sahil Duşu', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a03a50ee.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:11'),
(2524, NULL, 'Fotoselli Sıvı Sabunluk abs- krom görünümlü 850ML.', 'Kapasite: 850 ML\nTip: Fotoselli-pilli\nGövde: Krom görünümlü ABS Plastik\nÖzellik: Hydro alkolik dezenfektanla çalışır\nGaranti: 2 yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a03ec1b8.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:12'),
(2526, NULL, 'Cam Küre Sıvı Sabunluk', 'Malzeme: MS 58 Kalite Prinç Üzeri Krom Kaplama\nGaranti: 2 Yıl Firma Garantisi\nKapasite: 350 ml\nYüzey: Cam Yüzey\nDolum: Kolay Dolum.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a0448ae6.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:12'),
(2528, NULL, 'Duvara Monte Hareketsiz Mafsallı Tutamak', 'Malzeme: 304 Kalite Paslanmaz Çelik\nYüzey: Mat\nMontaj: Duvara Sabit\nÖzel Ölçüler: Adetli siparişlerde uygulanabilir\nGaranti: 2 Yıl\nBoru Çapı: 32 mm\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a048f2a4.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:13'),
(2530, NULL, 'Yuvarlak Üçlü Havuz Sahil Duşu', 'Ürün: Sahil Havuz Duşu  Malzeme\nGaranti: 5 Yıl\nMenşei: Made in Türkiye', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a0504edd.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:13'),
(2532, NULL, 'COPT’AIR Jet El Kurutma Makinası', 'Güç: 1200 W\nKurutma Süresi: 10-15 saniye\nHava Debisi: 450m³/h\nEk Özellikler: LED aydınlatma efekti ve antibakteriyel filtre\nÜretim Yeri: Fransa.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a0555f3b.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:13'),
(2534, NULL, 'Wc Sıva Üstü Kombi Set', 'Ürün: Duvara Montajlı - Sıva Üstü\nMalzeme: 304 Kalite Paslanmaz Çelik\nKapasite: 9 Lt Taşınabilir Çöp Kovası\nForm: Dikdörtgen\nKağıt Verici: 800 Adet Z - 600 Adet C\nGüvenlik: Kilit Mekanizmalı\nÖlçüler: 100 x 260 x 1005 mm\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a05b6821.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:14'),
(2536, NULL, 'Akıllı Kapak Klozet Fırçası Kenetli Eko Model', 'Malzeme: 304 Kalite Paslanmaz Çelik\nMontaj: Duvara Monte veya Yerde Serbest\nModel: Silindir\nYüzey: Parlak\nFırça: Değiştirilebilir Siyah Kıl Fırça\nSap Malzemesi: Metal\nGaranti Süresi: 3 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a06204d2.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:14'),
(2538, NULL, 'Paslanmaz Otel Tipi Çemberli Çöp Kovası', 'Tip: Otel Tipi Çemberli Çöp Kovası\nKullanım Yerleri: Ev- Ofis- Hastane- Otel odaları ve AVM genel mekanları\nKalite Seçenekleri: 430 kalite ve 304 kalite Paslanmaz Çelik\nMalzeme: 304 Kalite Paslanmaz Çelik', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a0672005.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:14'),
(2540, NULL, 'Çöp Kovası  Küllüklü', 'Malzeme: 304 ss Paslanmaz Çelik\nBoyutlar: 42 x 42 x 75 cm\nMenşei: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a06dcd23.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:15'),
(2541, NULL, 'Mat Black Z Katlı Kağıt verici', 'Malzeme: ABS Plastik\nMontaj: Duvara monte\nRenk: Siyah\nKilit: Anahtarlı\nMenşei: Fransa\nGaranti: 3 yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a0746088.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:15'),
(2544, NULL, 'Dörtlü Geri Dönüşüm Ünitesi', 'Malzeme: 304 Kalite Paslanmaz Çelik\nKova Malzemesi: Galvaniz İç Kovalı\nGöz Sayısı: 4 Ayrı Gözlü\nAtık Bölmeleri: Cam\nMetal: \nPlastik: \nKağıt Atık Bölmeleri: \nKullanım Alanı: Dış Mekan Genel Kullanım Mekanlar için İdeal\nÖlçüler: \nYükseklik: 80 cm\nDerinlik: 30 cm\nGenişlik: 110 cm\nGaranti Süresi: 3 Yıl\nÜretim Yeri: Made in Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a07a5603.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:15'),
(2546, NULL, 'Set Üstü Sıvı Sabunluk', 'Malzeme: 304 Kalite Paslanmaz Çelik\nGaranti: 2 Yıl Firma Garantisi\nKapasite: 500 ml\nYüzey: Parlak Yüzey\nDolum: Kolay Dolum\nÖzel Özellik: Sabun Göstergesi.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a07eab9f.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:16'),
(2548, NULL, 'Bedensel Engelli Köşe Tutunma Barı - Paslanmaz', 'Malzeme: 304 Kalite Paslanmaz Çelik\nYüzey: Mat\nMontaj: Duvara\nÖzel Ölçüler: Uygulanabilir\nGaranti: 2 Yıl\nBoru Çapı: 32 mm\nBoyut: 800x600\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a0858923.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:16'),
(2550, NULL, 'Sıva altı Kağıt Havluluk Kombi Set', 'Ürün: Kağıt Havluluk Kombi Set\nMontaj: Duvara montajlı - Sıva Üstü\nForm: Dikdörtgen\nGüvenlik: Kilitli Mekanizma\nMalzeme: 304 Paslanmaz Çelik\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a08ba93b.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:17'),
(2552, NULL, 'Silindir Üçlü Palmiye Havuz Sahil Duşu', 'Malzeme: 304 Kalite Paslanmaz Çelik\nMontaj: Yere\nÖzellik: Değişiklik Yapılabilir\nEk Özellik: Ayak Yıkama Ünitesi Eklenebilir\nGaranti Süresi: 5 Yıl\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a0924c81.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:17'),
(2554, NULL, 'JVD STELLAIR Jet El Kurutma Makinesi', 'Giriş Voltajı/Frekansı: 220-253V 50 Hz\nMotor Gücü: 1200 W\nMotor Çalışma Hızı: 6.000/sn\nGövde: Antibakteriyel\nGövde Rengi: Gri veya Beyaz\nFiltre: HEPA filtre (cam elyafı ve polar ön katman)\nEl Kurutma Süresi: 10 saniye\nHava Üfleme Hızı: 600km\nGaranti Süresi: 3 yıl\nÜretim Yeri: Fransa.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a0992611.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:18'),
(2555, NULL, 'Ulltralüks Akıllı kapak Klozet Fırçası', 'Malzeme: 304 ve 430 Kalite Paslanmaz Çelik Alternatifli\nÜretim: Kaynaklı ve Kenetli İki Alternatifli\nMontaj: Duvara Monte veya Serbest Model Alternatifli\nModel: Silindir\nYüzey: Parlak\nFırça: Değiştirilebilir Siyah Kıl Fırça.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a0a34db6.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:18'),
(2558, NULL, 'Yaylı Çatı Kapak Duvara Monte Kova', 'Tip: Yaylı Çatı Kapak Paslanmaz Çelik Çöp Kovası\nKalite Seçenekleri: 430 Kalite veya 304 Kalite Paslanmaz Çelik\nYüzey: Mat veya Satine\nÖzel İmalat: Özel Ölçülerde ve Özel Hammaddeden İmal edilebilme Olanağı\nKullanım Yerleri: Ev- Ofis- Hastane- Otel odaları ve AVM genel mekanları\nMontaj: Duvara monte veya askılı çöp kovası\nMalzeme: 304 Kalite Paslanmaz Çelik.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a0a7904f.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:18'),
(2559, NULL, 'Ahşap Dış Mekan Çöp Kovası', 'Renk: İstenilen Renk Boyalı\nAyaklar: Yüksek Ayaklı\nTasarım: Ahşap Tasarım\nÜretim Yeri: Türkiye', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a0acb632.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:19'),
(2560, NULL, 'Ahşap Dış Mekan Çöp Kovası', 'Renk: İstenilen Renk Boyalı\nAyaklar: Yüksek Ayaklı\nTasarım: Ahşap Tasarım\nÜretim Yeri: Türkiye', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a0b43fda.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:19'),
(2562, NULL, '2 li Wc Kağıt Dispanseri', 'Malzeme Kalitesi: 304 Kalite\nMalzeme Kalınlığı: 0.8 mm\nMalzeme: Paslanmaz Çelik\nKapasite: 2 rulo tuvalet kağıdı.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a0ba3d29.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:20'),
(2564, NULL, 'Sıvı Sabun-Batigon Verici Dirsek Basmalı', 'Malzeme: Metal İç Hazne Plastik Beyaz Gövde\nTip: Dirsek Kumandalı\nÖzellikler: Dezenfektan- Sıvı Sabun ve Batigon Kullanımına Uygun\nÇıkarılabilir Hazneli: \nÖlçüler: 80 x 300 x 335 mm (Yükseklik x Genişlik x Derinlik)', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a0c29eaa.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:20'),
(2566, NULL, 'Fotoselli Dezenfektan Verici PLS', 'Malzeme: Plastik\nTip: Fotoselli Dezenfektan Verici\nKullanım: Pilli\nMontaj: Duvara Monte\nKapasite: 1000 ml\nGaranti Süresi: 3 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a0c8cc4d.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:20'),
(2567, NULL, 'İkili Geri Dönüşüm Ünitesi', 'Malzeme: 304 Kalite Paslanmaz Çelik\nKova Malzemesi: Galvaniz İç Kovalı\nGöz Sayısı: 2 Ayrı Gözlü\nAtık Bölmeleri: Kağıt ve Cam Bölmeleri\nKullanım Alanı: Dış Mekan Genel Kullanım Mekanlar için İdeal\nÖlçüler: \nYükseklik: 78 cm\nDerinlik: 30 cm\nGenişlik: 57 cm\nGaranti Süresi: 3 Yıl\nÜretim Yeri: Made in Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a0cd1ef8.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:21'),
(2570, NULL, 'Stark Sıvı Sabunluk', 'Malzeme: 304 Kalite Paslanmaz Çelik\nGaranti: 2 Yıl Firma Garantisi\nKapasite: 200 ml\nYüzey: Parlak Yüzey\nDolum: Kolay Dolum.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a0d48c12.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:21'),
(2572, NULL, 'Kombi set Sıva üstü', 'Ürün: Sıva Üstü 2’li Kombinasyon\nMalzeme: 304 Paslanmaz Çelik\nKapasite: 200 Adet Z Havlu Kapasiteli\nÇöp Kovası: 10L Taşınabilir\nAğırlık: 8 Kg.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a0d9bb51.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:22'),
(2574, NULL, 'Bedensel Engelli Mafsallı Tutunma Barı', 'Malzeme: 304 Kalite Paslanmaz Çelik\nYüzey: Mat\nAçılıp Kapanma Özelliği: Var\nMontaj: Duvara\nÖzel Ölçüler: Uygulanabilir\nGaranti: 2 Yıl\nBoru Çapı: 32 mm\nUzunluk: 700 mm\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a0e0ad8e.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:22'),
(2575, NULL, 'DYSON Airblade Tap El Kurutma Makinası', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a0e5e2a7.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:22'),
(2578, NULL, 'Ekonomik Klozet Fırçası', 'Malzeme: 304 ve 430 Kalite Paslanmaz Çelik Alternatifli\nMontaj: Yerde Serbest Model ve Duvara Monte Alternatifi\nModel: Silindir\nYüzey: Parlak\nFırça: Değiştirilebilir Siyah Kıl Fırça.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a0ebb598.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:23'),
(2580, NULL, 'Paslanmaz Pedallı Çöp Kovası  Delikli', 'Tip: Paslanmaz Pedallı Çöp Kovası - Delikli\nKullanım Yerleri: Ev- Ofis- Hastane- Otel odaları ve AVM genel mekanları\nKalite Seçenekleri: 430 Kalite ve 304 Kalite Paslanmaz Çelik\nYüzey: Parlak Yüzey / Delikli\nİç Kova: Plastik iç kovalı\nMalzeme: 304 Kalite Paslanmaz Çelik\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a0f1c382.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:23'),
(2582, NULL, 'Kare Paslanmaz Küllük', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a0f9b3ca.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:24'),
(2584, NULL, 'İkili Sıva Altı Paslanmaz Tuvalet Kağıtlık', 'Malzeme Kalitesi: 304 Kalite Paslanmaz Çelik\nMontaj Tipi: Duvara Monte\nGaranti Süresi: 2 Yıl Firma Garantisi\nBoyutlar: 325 x 165 x 50 mm\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a100886a.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:24'),
(2587, NULL, 'Paslanmaz Kare Sıvı Sabunluk', 'Malzeme: 304 Kalite Paslanmaz Çelik\nGaranti: 2 Yıl Firma Garantisi\nKapasite: 400 ml\nYüzey: Parlak Yüzey\nDolum: Kolay Dolum.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a106a2fa.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:24'),
(2590, NULL, 'Kombi Set - Sıva Üstü', 'Ürün Adı: Ankastre 2’li Kombinasyon\nMalzeme: 304 Paslanmaz Çelik\nHavlu Kapasitesi: 800 Adet Z\nÇöp Kovası Kapasitesi: 23L\nAğırlık: 12.3 Kg.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a10bd6e3.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:25'),
(2592, NULL, 'Dikdörtgen Tekli Sahil Havuz Duşu', 'Malzeme: 304 Kalite Paslanmaz Çelik\nMontaj: Yere\nÖzellik: Değişiklik Yapılabilir\nEk Özellik: Ayak Yıkama Ünitesi Eklenebilir\nGaranti Süresi: 5 Yıl\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a113571e.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:25'),
(2594, NULL, 'Bedensel Engelli Ahşap Duş  Küvet Oturağı', 'Malzeme: 304 Kalite Paslanmaz Çelik\nYüzey: Mat\nMontaj: Duvara\nAçılıp Kapanma Özelliği: Var\nAyak Destek: Altta\nOturma Yüzeyi: Sudan Etkilenmeyen Ahşap\nGaranti: 2 Yıl\nÖzel Ölçüler: İmalata Uygun\nBoru Çapı: 32 mm\nBoyut: 400 x 400 mm\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a11881d8.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:25'),
(2595, NULL, 'Butonlu El Kurutma Makinası', 'Model: GSQ250C\nVoltaj: 220V-240V / 50Hz\nGüç: 2500W\nAkım: 11.5A\nGüvenlik: IPX1- CLASS I\nKapasite: 270m3/h\nBoyutlar: 270x240x200mm', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a11f1f4c.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:26'),
(2598, NULL, 'Art Tipi Sivri Kapak Klozet fırçası', 'Malzeme: 304 ve 430 Kalite Paslanmaz Çelik Alternatifli\nMontaj: Montajsız Serbest ve Duvara Monte Model\nÜretim: Kaynaklı ve Kenetli İki Alternatifli\nModel: Silindir\nYüzey: Parlak\nFırça: Değiştirilebilir Siyah Kıl Fırça.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a125dd26.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:26'),
(2600, NULL, 'Paslanmaz Kapaksız Açık Çöp Kovası', 'Tip: Paslanmaz Otel Tipi Açık Ağızlı Kapaksız Çöp Kovası\nKullanım Yerleri: Ev- Ofis- Hastane- Otel odaları ve AVM genel mekanları\nKalite Seçenekleri: 430 Kalite ve 304 Kalite Paslanmaz Çelik\nMalzeme: 304 Kalite Paslanmaz Çelik\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a12a2f46.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:27'),
(2602, NULL, 'Çöp Kovası  İzmaritlikli', 'Malzeme: Paslanmaz Çelik\nÖlçüler: 40 x 40 x 80 cm\nİzmaritlik: Paslanmaz İzmaritlik\nMenşei: Made in Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a130f245.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:27'),
(2604, NULL, 'Mini Jumbo WC Kağıtlık', 'Malzeme Kalitesi: 430/304 Kalite Paslanmaz Çelik\nYüzey: Mat\nMontaj Tipi: Duvara Monte\nUyum: Her Marka Kağıda Uygun\nÇap: 22.5 cm\nGaranti Süresi: 2 Yıl Firma Garantisi\nÖzellikler: Kilitli- Kalan Kağıt Göstergesi\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a137ad33.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:27'),
(2606, NULL, 'İkili Geri Dönüşüm Ünitesi', 'Malzeme: 304 Kalite Paslanmaz Çelik\nKova Malzemesi: Galvaniz İç Kovalı\nGöz Sayısı: 2 Ayrı Gözlü\nAtık Bölmeleri: Kağıt ve Cam Bölmeleri\nKullanım Alanı: Dış Mekan Genel Kullanım Mekanlar için İdeal\nÖlçüler: Yükseklik\nDerinlik: 30 cm\nGenişlik: 57 cm\nGaranti Süresi: 3 Yıl\nÜretim Yeri: Made in Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a13d7785.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:28'),
(2608, NULL, 'Ankastre Sıvı Sabunluk', 'Malzeme: Ms 58 Kalite Prinç Üzeri Krom Kaplama\nMontaj: Tezgah Üstüne Montajlı\nHacim: 1 Lt. Hacimli\nDolum: Kolay Dolum\nGaranti: 2 Yıl Firma Garantisi\nUyumluluk: Özel Ölçü ve Ebatlara Uygun', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a1427b3a.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:28'),
(2610, NULL, 'Kombi Set - Sıva altı  Ankastre', 'Malzeme: 304 Paslanmaz Çelik\nKağıt Verici Kapasitesi: 800 Adet Z / 600 Adet Z Katlı\nÖlçüler: YxGxD=1300x370x160 mm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a146e79a.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:28'),
(2612, NULL, 'Üstten Basmalı Diktörtgen Ayak Yıkama Ünitesi', 'Malzeme: 304 Kalite Paslanmaz Çelik\nMontaj: Yere\nEk Özellik: Dikdörtgen Ayak Yıkama Ünitesi\nZaman Ayarlı Su Akıtma Sistemi: \nGaranti Süresi: 5 Yıl\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a14d1742.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:29'),
(2614, NULL, 'Bedensel Engelli Ayna', 'Montaj: Duvara\nMalzeme: 304 Kalite Paslanmaz Çelik\nYüzey: Mat\nAyarlanabilirlik: Yatay\nÖzel Ölçüler: Uygulanabilir\nGaranti: 2 Yıl\nBoyut: 500 x 700 mm\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a15377db.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:29'),
(2616, NULL, 'Xinda Fotoselli Jet El Kurutma Makinesi', 'Özellik: Fotoselli\nMotor: High-speed DC Brushless Jet Motor\nFiltre: HEPA Filtreli\nMotor Gücü: 1400W\nGövde: ABS\nVoltaj: 220V-240V / 50Hz\nGüvenlik: IP22\nSes Seviyesi: 78 db\nKapasite: 200m3/h\nHava Hızı: 110km/h\nBoyutlar: 680x300x250 mm\nGaranti Süresi: 2 yıl\nMenşei: PRC', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a1597bdf.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:30'),
(2617, NULL, 'Paslanmaz Kapaksız Açık Çöp Kovası - Delikli', 'Kullanım Yerleri: Ev- Ofis- Hastane- Otel odaları ve AVM genel mekanları\nKalite Seçenekleri: 430 Kalite ve 304 Kalite Paslanmaz Çelik\nYüzey: Parlak\nİç Kova: Plastik İç Kovalı\nMalzeme: 304 Kalite Paslanmaz Çelik\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a16005e6.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:30'),
(2620, NULL, 'Lobi Küllük', 'Malzeme: 430 Kalite Paslanmaz Çelik\nYükseklik: 70 cm\nGaranti: 2 Yıl Firma Garantisi\nYüzey: Parlak Yüzey\nMenşei: Made in Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a166e2c3.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:30'),
(2622, NULL, 'Jumbo WC Kağıtlık', 'Malzeme Kalitesi: 430/304 Kalite Paslanmaz Çelik\nYüzey: Mat\nMontaj Tipi: Duvara Monte\nUyum: Her Marka Kağıda Uygun\nÇap: 27.5 cm\nGaranti Süresi: 2 Yıl Firma Garantisi\nÖzellikler: Kilitli- Kalan Kağıt Göstergesi\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a16ca5d5.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:31'),
(2624, NULL, 'Dirsek Basmalı El Dezenfektan Ünitesi Paslanmaz', 'Malzeme: Paslanmaz Çelik\nTip: Dezenfektan Verici Aparat\nKapasite: 1 Litre', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a1735c22.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:31'),
(2626, NULL, 'Üçlü Geri Dönüşüm Ünitesi', 'Malzeme: 304 Kalite Paslanmaz Çelik\nKova Malzemesi: Galvaniz İç Kovalı\nGöz Sayısı: 3 Ayrı Gözlü\nKullanım Alanı: Dış Mekan Genel Kullanım Mekanlar için İdeal\nÖlçüler: Yükseklik\nÇap: 24 cm\nGaranti Süresi: 3 Yıl\nÜretim Yeri: Made in Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a179270c.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:32'),
(2628, NULL, 'Montajlı Mini Sıvı Sabunluk', 'Malzeme: 304 Kalite Paslanmaz Çelik\nGaranti: 5 Yıl Firma Garantisi\nMontaj: Duvara Monte\nYüzey: Parlak Yüzey\nKapasite: 200 ml\nÜretim Yeri: Made in TÜRKİYE', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a1809b57.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:32'),
(2629, NULL, 'Sıva Üstü Z katlı Kombine set', 'Malzeme: 304 Kalite Paslanmaz Çelik\nÖlçüler: 750x385x155 mm\nKağıt Kapasitesi: 500 Adet Z Havlu.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a184fe9c.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:32'),
(2632, NULL, 'Kare Duvara Monte Plaj ve Havuz Duşu', 'Malzeme: 304 Kalite Paslanmaz Çelik\nMontaj: Duvara\nEk Özellik: Zaman Ayarlı Su Akıtma Sistemi- Diktörtgen Ayak Yıkama Ünitesi\nEbatlar: 70 x 140 x 940 mm\nGaranti Süresi: 5 Yıl\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a18ae0bb.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:33'),
(2634, NULL, 'Bedensel Engelli Plastik Duş Oturağı - Hava Sülkülasyonlu', 'Malzeme: 304 Kalite Paslanmaz Çelik\nOturma Bölümü: Hava Silülasyonlu- Antibakteriyel Steril\nMontaj: Duvara\nAçılıp Kapanma Özelliği: Var\nAyak: Alttan Destekli\nRenk: Krem\nGaranti: 2 Yıl\nÖzel Ölçüler: İmalata Uygun\nBoru Çapı: 32 mm\nBoyut: 400 x 400 mm\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a190ae41.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:33'),
(2636, NULL, 'Xinda Fotoselli Jet El Kurutma Makinesi', 'Özellik: Fotoselli Jet Motorlu\nMotor Gücü: 900W\nGövde: Alüminyum\nVoltaj: 220V-240V / 50Hz\nGüvenlik: IP22\nKapasite: 200m³/h\nHava Hızı: 106m/s\nBoyutlar: 280x300x174 mm\nGaranti Süresi: 2 yıl\nÜretim Yeri: PRC', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a1968486.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:33'),
(2638, NULL, 'Paslanmaz Akrobat Klozet fırçası', 'Malzeme: 304 Kalite Paslanmaz Çelik\nMontaj: Duvara Monte Montajlı ve Serbest Model Alternatifli\nÜretim: Kaynaklı\nTip: Silindir\nYüzey: Parlak\nFırça: Değiştirilebilir Siyah Kıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a19b884a.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:34'),
(2639, NULL, 'Döner Kapaklı Çöp Kovası', 'Tip: Paslanmaz Pratik Döner Kapaklı Çöp Kovası\nKullanım Yerleri: Ev- Ofis- Hastane- Otel ve AVM genel mekanlar\nKalite Seçenekleri: 430 Kalite ve 304 Kalite Paslanmaz Çelik\nYüzey: Parlak\nÖzel Özellik: Çöp Poşetini tutmak için tel çember\nMalzeme: 430 Kalite Paslanmaz Çelik.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a1a28546.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:34'),
(2642, NULL, 'Kadeh Küllük  İzmaritlik', 'Malzeme: 430 Kalite Paslanmaz Çelik\nYükseklik: 65 cm\nİç Hazne: Çıkabilen İç Hazne\nYüzey: Parlak Yüzey\nGaranti: 2 Yıl Firma Garantisi\nÜretim Yeri: Made in Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a1a86660.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:34'),
(2644, NULL, 'Tekli Sıva Altı Paslanmaz Tuvalet Kağıtlık', 'Malzeme Kalitesi: 304 Kalite Paslanmaz Çelik\nMontaj Tipi: Duvara Monte\nYüzey: Mat\nGaranti Süresi: 2 Yıl Firma Garantisi\nBoyutlar: 163 x 165 x 50 mm\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a1ad8ec1.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:35'),
(2646, NULL, 'Atık Pil Geri Dönüşüm Kutusu', 'Malzeme: 304 Kalite Paslanmaz Çelik\nKova Malzemesi: Galvaniz İç Kovalı\nKullanım Alanı: Dış Mekan Genel Kullanım Mekanlar için İdeal\nÖlçüler: Yükseklik\nÇap: 35 cm\nGaranti Süresi: 3 Yıl\nÜretim Yeri: Made in Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a1b3a81f.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:35'),
(2648, NULL, 'Paslanmaz Dikey Köpük Verici', 'Hacim: 1000 ml\nMalzeme: Paslanmaz Çelik\nPompa: Pirinç Pompa', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a1b7e872.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:35');
INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `price`, `stock_quantity`, `vat_rate`, `image_url`, `created_at`, `updated_at`) VALUES
(2650, NULL, 'Sıva Altı Z Kağıtlık - Çöp Kovası', 'Malzeme: 304 Kalite Paslanmaz Çelik\nKalınlık: 0.6 mm\nÜretim Metodu: Nokta Kaynaklı\nÖzellikler: Dayanıklı ve Sağlam\nKağıt Havlu Dispanseri: 400 lü\nÜretim Yeri: Made İn TÜRKİYE.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a1be5d82.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:36'),
(2652, NULL, 'Ahşap Lüks Sahil Havuz Duşu', 'Malzeme: Ahşap ve 304 Kalite Paslanmaz Çelik Alt Yapı\nÖzellikler: Lüks Tasarım- Masif Egzotik Ağaç İmalat- Emprenye Edilmiş (Çürümeye ve Dış Etkilere Karşı Koruma)- Özel Cila Kaplaması- Opsiyonel İkili veya Dörtlü Bataryalı- Zaman Ayarlı Su Akıtma Sistemi İsteğe Bağlı- Ayak Yıkama Ünitesi Eklenebilir\nGaranti Süresi: 3 Yıl\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a1c46e69.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:36'),
(2653, NULL, 'Bedensel Engelli Mafsallı Tuvalet Kağıtlıklı', 'Malzeme: 304 Kalite Paslanmaz Çelik\nYüzey: Mat\nAçılıp Kapanma Özelliği: Var\nMontaj: Duvara\nÖzel Ölçüler: Uygulanabilir\nGaranti: 2 Yıl\nBoru Çapı: 32 mm\nUzunluk: 700 mm\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a1cb42bb.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:37'),
(2656, NULL, 'Xinda Fotoselli El Kurutma Makinesi', 'Özellik: Dijital Devre\nDarbeye  Karşı Dayanıklı: \nGiriş Voltajı/Frekansı: 220 - 240V / 50Hz\nMotor Gücü: 1300W\nHava Üfleme: Sıcak Hava Üflemeli\nÜfleme Gücü: 270m³/h\nGövde: 304 Paslanmaz Çelik\nGövde Rengi: Satine\nBoyutlar: 251x236x100 mm\nGaranti Süresi: 2 Yıl\nÜretim Yeri: PRC', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a1d1fc18.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:37'),
(2658, NULL, 'Endüstriyel Pedallı Kova', 'Malzeme: 430 Kalite Paslanmaz Çelik\nMenteşe: Prinç\nPedal: Metal\nİç Kova: Yok\nÖzel Özellik: Poşet Sıkıştırma Çemberi\nGaranti: 2 Yıl\nYüzey: Parlak.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a1d747f7.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:37'),
(2660, NULL, 'Yerden Boru Küllük', 'Malzeme: 304 Kalite Paslanmaz Çelik\nBoyut: 10 x 80 cm\nÜretim Yeri: Made in Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a1dded2e.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:38'),
(2662, NULL, 'Sıva Altı Manuel Dispanser Kağıt Verici', 'Malzeme: 304 Kalite Paslanmaz Çelik\nKapasite: 400 - 600 kağıt\nTip: Z Kağıt Verici.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a1e4cc3a.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:38'),
(2664, NULL, 'Üçlü Boyalı Geri Dönüşüm Çöp Kovası', 'Yüzey Kaplama: Metal Üzeri Renkli Boyalı\nKova Malzemesi: Galvaniz İç Kovalı\nGöz Sayısı: 3 Ayrı Gözlü\nKullanım Alanı: Dış Mekan Genel Kullanım Mekanlar için İdeal\nÖlçüler: Yükseklik\nÇap: 30 cm\nGenişlik (Stand): 106 cm\nGaranti Süresi: 3 Yıl\nÜretim Yeri: Made in Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a1eb6065.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:39'),
(2666, NULL, 'ZYQ120 Fotoselli Sıvı sabunluk', 'Malzeme: 304 Kalite Paslanmaz Çelik\nKaplama: Saten ve Krom Kaplama\nPil Tipi: 4x1.5V LR6\nHacim: 1200 mL\nÖzellikler: Dayanıklı ve darbeye karşı korunumlu- Estetik- Duş jeli- Şampuan- yıkama losyonu vb. kullanımına uygun. Hırsızlık önleyici kilit tertibatlı.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a1f14f02.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:39'),
(2667, NULL, 'Üstten Basmalı Ayak Yıkama Ünitesi', 'Malzeme: 304 Kalite Paslanmaz Çelik\nMontaj: Yere\nEk Özellik: Ayak Yıkama Ünitesi\nZaman Ayarlı Su Akıtma Sistemi: \nGaranti Süresi: 5 Yıl\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a1f8328d.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:39'),
(2669, NULL, 'Bedensel Engelli Açılı Tutamak  Yatay Düz Tutamak', 'Malzeme: 304 Kalite Paslanmaz Çelik\nYüzey: Mat\nMontaj: Duvara\nÖzel Ölçüler: Uygulanabilir\nGaranti: 2 Yıl Firma\nBoru Çapı: 32 mm\nBoyut: 300 x 300 mm.\nÜretim Yeri: Türkiye', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a1fcb266.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:40'),
(2672, NULL, 'Xinda Fotoselli El Kurutma Makinesi', 'Özellik: Dijital Devre- Kızılötesi Sensör- Darbeye ve Vandalizme Karşı Dayanıklı\nGiriş Voltajı/Frekansı: 230V / 50-60Hz\nMotor Gücü: 2500W\nHava Üfleme: Sıcak Hava Üflemeli\nÜfleme Gücü: 270m³/h\nGövde: 304 Paslanmaz Çelik\nGövde Rengi: Satine\nBoyutlar: 270x240x200 mm\nGaranti Süresi: 2 Yıl\nÜretim Yeri: PRC', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a2027d50.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:40'),
(2674, NULL, 'Montajlı Cam Akrobat Klozet Fırçası', 'Malzeme: 304 Kalite Paslanmaz Çelik\nMontaj: Duvara Monte Montajlı\nMalzeme: Buzlu Cam\nTip: Silindir\nYüzey: Parlak\nFırça: Değiştirilebilir Beyaz Kıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a207a40e.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:40'),
(2676, NULL, 'Sallanır Üçgen Kapaklı Çöp Kovası  Çatı Kapak', 'Malzeme: 430 Kalite veya 304 Kalite Paslanmaz Çelik\nYüzey: Mat veya Satin\nÖzel Özellik: Özel Ölçülerde ve Özel Hammaddeden İmal Edilebilme Olanağı\nKullanım Alanı: Ev- Ofis- Hastane- Otel Odaları ve AVM Genel Mekanlar\nTercih Edilen Kalite: 304 Kalite Paslanmaz Çelik\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a20cd6ee.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:41'),
(2678, NULL, 'Kağıt Verici - Abs', 'Malzeme: ABS Plastik\nRenk: Mat Siyah\nMontaj: Duvara Monte\nGaranti Süresi: 3 Yıl', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a213cbea.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:41'),
(2680, NULL, 'Fantom ProCycl Geri Dönüşüm Ünitesi - Tekli', 'Hacim: 80 lt\nGövde Malzemesi: Dayanıklı Sert ABS Gövde\nGaranti Süresi: 2 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a2199d5f.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:42'),
(2682, NULL, 'Fotoselli Ankastre Sabun Verici', 'Tür: Fotoselli Elektrikli\nYapı: Ankastre\nMalzeme: Brass Gövde Üzeri Krom Kaplama\nKapasite: 1500 mL', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a220f92e.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:42'),
(2683, NULL, 'Yuvarlak El Duş Sistemi - Ayak Yıkamalı', 'Malzeme: 304 Kalite Paslanmaz Çelik\nMontaj: Yere\nEk Özellik: Ayak Yıkama Ünitesi- Zaman Ayarlı Su Akıtma Sistemi\nFirma Garantisi: 5 Yıl\nDeğişiklik Yapılabilir: \nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a226edcc.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:42'),
(2685, NULL, 'GSQ250 Fotoselli El Kurutma Makinesi', 'Özellik: 360 Derece Dönebilen Boyun- Dijital Devre- Kızılötesi Sensör- Darbeye ve Vandalizme Karşı Dayanıklı\nGiriş Voltajı/Frekansı: 230V / 50-60Hz\nMotor Gücü: 2500W\nHava Üfleme: Sıcak Hava Üflemeli\nÜfleme Gücü: 270m³/h\nGövde: 304 Paslanmaz Çelik\nGövde Rengi: Satine\nBoyutlar: 270x240x200 mm\nGaranti Süresi: 2 Yıl\nÜretim Yeri: PRC', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a22bf2e8.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:43'),
(2688, NULL, 'Ofis Tipi Kova', 'Kapasite: 5 Litre\nKullanım Alanı: Ofis Tipi\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a2337ad3.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:43'),
(2690, NULL, 'Klozet Kapak Örtüsü Dispanseri', 'Malzeme: 304 Kalite Paslanmaz Çelik\nMontaj: Duvara Monte\nKapasite: 250 Kağıt\nUyumluluk: Her Marka Ürüne Uygun\nGaranti Süresi: 2 Yıl Firma Garantisi\nÜretim Yeri: Made in TÜRKİYE', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a2397ab5.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:44'),
(2692, NULL, 'Fantom ProCycl Geri Dönüşüm Ünitesi - Üçlü', 'Hacim: 80 lt\nGövde Malzemesi: Dayanıklı Sert ABS Gövde\nGaranti Süresi: 2 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a2404fa7.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:44'),
(2694, NULL, 'Tekli Krom Şampuanlık', 'Montaj: Duvara Monte\nTür: Tekli Sıvı Sabunluk - Şampuanlık\nKaplama: Krom Kaplı Alternatif\nİçerik: Şampuan & Duş Jeli\nKapasite: 0.170 mL & 0.380 mL', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a248c8ea.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:45'),
(2696, NULL, 'Xinda Fotoselli Jet El Kurutma Makinesi', 'Motor: Fotoselli Jet Motorlu- Infrared Işıklı\nMotor Gücü: 900W\nGövde: Paslanmaz Çelik\nVoltaj: 220V-240V / 50Hz\nGüvenlik: IP22\nKapasite: 140m³/h\nHava Hızı: 64m³/h\nBoyutlar: 268x240x176 mm\nGaranti Süresi: 2 Yıl\nÜretim Yeri: PRC', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a25102b2.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:45'),
(2698, NULL, 'Otel Tipi Yanmaz Çöp Kovası', 'Kullanım Yeri: Otel Oda İçi\nÇöp Kovası Türü: Yanmaz\nMalzeme: 304 Kalite Paslanmaz Çelik\nYükseklik Ayarı: Değiştirilebilir\nGaranti Süresi: 3 Yıl\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a257a132.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:45'),
(2700, NULL, 'ABS Klenex Kutusu', 'Malzeme: ABS\nRenk/Yüzey: Krom Parlak', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a25da838.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:46'),
(2702, NULL, 'İkili Geri Dönüşüm Ünitesi D. Kapaklı', 'Malzeme: 1 mm 304 Paslanmaz Çelik\nÖlçüler: 33 cm x 64 cm x 83cm\nÖzellik: Döner Kapaklı\nTekerlek: Gizli Tekerlekli\nBoya: Boyalı Galvaniz İç Kovalı\nKişiselleştirilebilir: Kurum Logolu', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a26480f9.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:46'),
(2704, NULL, 'JVD CYRSTAL Sıvı Sabun Makinası 405 ml.', 'Montaj: Duvara monte\nMalzeme: ABS Plastik\nTip: Manuel\nPompa: Silikon\nÖzellik: Çıkarılabilir hazne.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a268c98f.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:47'),
(2706, NULL, 'Xinda Alüminyum Gövde  Jet El Kurutma Makinası', 'Voltaj: 220V-240V / 50Hz\nGüç: 800W\nGövde: Alüminyum\nAkım: 3.6A\nGüvenlik: IP22\nKapasite: 75m³/h\nHava Hızı: 85m/s\nSes Seviyesi: 70dB\nAğırlık: 3.3Kg\nBoyutlar: 228x278x154mm', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a2704880.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:47'),
(2708, NULL, '50 Lt Atom Endüstriyel Tip Çöp Kovası', 'Malzeme: 430 ve 304 Kalite Paslanmaz Çelik\nKapasite Seçenekleri: 40 lt- 50 lt- 60 lt\nİç Kova: Metal İç Kova Sistemi\nYüzey: Parlak\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a2748ca4.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:47'),
(2712, NULL, 'İkili Geri Dönüşüm Ünitesi', 'Malzeme: 1 mm 304 Paslanmaz Çelik\nÖlçüler: 33 cm x 64 cm\nYükseklik: 82 cm\nSeçenekler: 3\'lü ve 4\'lü seçenekler de mevcuttur.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a279bb14.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:47'),
(2714, NULL, 'JVD YALISS Köpük Verici', 'Kapasite: 1000 ml\nOtomatik kapanır kapak: \nÇıkarılabilir tank için kolay temizlik: \nGeniş açılımıyla seviye görüntüleme: \nAkış hızı: Doz başına 1 ml (jel)\nMalzeme: ABS\nGüç kaynağı: 4 x 1.5 V pil tipi LR14 (dahil değil)\nSeviye görselleştirme: \nTuş kilidi: \nHACCP yaklaşımına uyum: \n2 yıl garanti: \nBoyut: W.158 x H.296 x D.106 mm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a27df7e9.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:48'),
(2716, NULL, 'Dyson Airblade V', 'Giriş Voltajı/Frekansı: 220-253V 50 Hz (Tek Faz)\nMotor Gücü: 1000 W\nMotor Tipi: Dyson dijital motor - Fırçasız DC Motor\nMotor Hızı: Dakikada 90.000 rpm (Dakika Devir Sayısı)\nÇalışma Modu Elektrik Sarfiyatı (10 Sn.): 0.0044 kW\nGövde Yapısı: Polycarbonate\nSağlıklı Kaplama Tipi: Zararsız özelliğe sahip İyonize edilmiş gümüş ile makinenin yüzeyi ve hava çıkış perdeleri korunmuştur\nDış Yüzeyi: %99.9 oranında sağlıksız maddelerden korunur\nYüzey Rengi: Sprey Nikel ve Beyaz\nHEPA 12 Filtre: %99.9 oranında bakterilerden arındırır\nYakınlık Algılayıcı: Kapasitif sensör ile dokunmadan çalışma\nEl Kurutma Süresi: 10 Saniye\nAralıksız Maksimum Çalışma Periyodu: 30 Saniye (National Sanitation Foundation P.335 ölçümlerine dayanmaktadır)\nHava Üfleme Hızı: 690 km/Sa\nMakine Derinliği: 100 mm\nMakine Uzunluğu: 394 mm\nMakine Genişliği: 234 mm\nGaranti: 5 Yıl Parça- 1 Yıl İşçilik Garantisi', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a285627e.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:48'),
(2718, NULL, 'Paslanmaz Fotoselli Kağıt Havlu Dispenseri', 'Çalışma Modu: Pilli/Elektrikli Fotoselli\nPil Kapasitesi: 4x1.5 DC Pilli/Elektrikli\nUzunluk Ayarı: 200-250-300 mm\nKağıt Boyu: 21 cm\nMalzeme: 304 Paslanmaz Çelik Gövde', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a28a5424.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:49'),
(2720, NULL, 'İkili Geri Dönüşüm Kovası', 'Malzeme: 1 mm 304 Paslanmaz Çelik\nÖlçüler: 33 cm x 64 cm\nYükseklik: 82 cm\nSeçenekler: 3\'lü ve 4\'lü seçenekler de mevcuttur.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a29119ce.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:49'),
(2722, NULL, 'GS60S Fotoselli Ankastre Sabun Verici', 'Malzeme: Brass Gövde Üzeri Krom Kaplama\nKapasite: 1000 ml.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a2956cc1.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:49'),
(2723, NULL, 'JET El kurutma Makinası', 'Voltaj: 220V-240V / 50Hz\nGüç: 850W\nAkım: 6A\nGövde Malzemesi: ABS\nGüvenlik: IP22\nKapasite: 220m3/h\nHava Hızı: 95m/s\nSes Seviyesi: 78dB\nAğırlık: 11Kg\nBoyutlar: 650x292x250mm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a29b602a.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:50'),
(2726, NULL, 'Paslanmaz Clinex Kutusu', 'Malzeme: 304 Paslanmaz Çelik\nYüzey: Parlak (Mat yapılabilir)\nÖlçüler: Standart Kleenex ölçüsünde\nDolum Kolaylığı: Altta bulunan kızak sayesinde rahat dolum sağlanır\nÖzel Tasarım: Özel ölçü ve tasarımlar yapılabilir\nÜretim Yeri: Made in Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a2a2157f.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:50'),
(2728, NULL, 'İkili Geri Dönüşüm Ünitesi', 'Malzeme: 1.2 mm 304 Paslanmaz Çelik\nÖlçüler: 30 cm x 60 cm x 90 cm\nSeçenekler: 3\'lü ve 4\'lü seçenekler de mevcuttur.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a2a752aa.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:50'),
(2730, NULL, 'Ankastre Sıvı Sabunluk- ithal', 'Boyut: 13.5 cm\nKapasite: 1000 mL\nMalzeme: Paslanmaz çelik boru. Kromajlı gövde ve pompa kafası.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a2abbe64.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:51'),
(2732, NULL, 'JVD - OURAGAN Fotoselli El Kurutma Makinesi', 'Giriş Voltajı/Frekansı: 220-253V 50 Hz\nMotor Gücü: 2500 W\nHava Üfleme: Sıcak\nÖzellik: Oyar Başlıklı Boyunlu\nGövde: Antibakteriyel\nGövde Rengi: Gri\nGaranti: 3 Yıl\nÜretim Yeri: Fransa.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a2b349cb.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:51'),
(2734, NULL, 'Tekli Sıva Üstü Paslanmaz Tuvalet Kağıtlık', 'Malzeme: 304 Kalite Paslanmaz Çelik\nMontaj: Duvara Monte\nYüzey: Mat\nBoyutlar: 163 x 165 x 50 mm\nGaranti: 2 Yıl Firma Garantisi\nÜretim Yeri: Made in Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a2b9ebf4.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:51'),
(2738, NULL, 'Üçlü Geri Dönüşüm Ünitesi', 'Genişlik: 92 cm\nDerinlik: 33 cm\nYükseklik: 71 cm\nLitre: 135 L (Set)\nMalzeme: 304 Kalite Paslanmaz Çelik Kova\nKapaklar: Elektrostatik Boyalı\nAyaklar: Lama Demiri Ayaklar\nİç Kova: H\nÇap: 30 cm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a2bedc92.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:52'),
(2740, NULL, 'ZYQ110 Fotoselli Dezenfektan Verici', 'Tür: Fotoselli\nGüç Kaynağı: Pilli (4 adet AA pil- 1.5V)\nElektrikli (AC fişli adaptör): \nKullanım Alanı: Duş jeli- şampuan- yıkama losyonu vb. kullanımına uygun\nKapasite: 1100 mL\nÖzellikler: Hijyenik\nkonforlu ve verimli.:', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a2c3b9e1.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:52'),
(2742, NULL, 'JVD Zephyr El Kurutma Makinesi', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a2c80a72.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:52'),
(2743, NULL, 'Kağıt Havlu Dispenseri-400 lük', 'Malzeme: 430 Kalite Paslanmaz Çelik\nYüzey: Mat (İsteğe Göre Parlak da Yapılabilir)\nKapasite: 400 Kağıt\nUyum: Tüm Z Katlı Kağıt Havlulara Uygun\nMontaj: Duvara Monte\nGaranti: 2 Yıl Firma Garantisi\nÖzellik: Kağıdın Çıkış Noktası Özenle İşlenmiştir\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a2ce3292.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:53'),
(2746, NULL, 'Xinda Jet El Kurutma Makinesi', 'Çalışma: Fotoselli Jet Motorlu\nEk Özellik: Infrared Işıklı\nMotor Gücü: 890W\nGövde: Paslanmaz Çelik\nVoltaj: 220V-240V / 50Hz\nGüvenlik: IP22\nKapasite: 96m3/h\nHava Hızı: 106m/s\nAğırlık: 3.8 kg\nBoyutlar: 235x268x235 mm\nÜretim Yeri: PRC.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a2d4ba8b.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:53'),
(2748, NULL, 'İkili Krom Şampuanlık', 'Tür: Duvara Monte İkili Sıvı Sabunluk -  Şampuanlık\nYüzey Kaplama: Krom Kaplı\nKullanım Alanı: Şampuan & Duş jeli\nKapasiteler: 0.170 ml & 0.380 ml.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a2daadf2.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:54'),
(2750, NULL, 'Hijyen Ped Kutusu - Abs Krom parlak', 'Malzeme: Krom Parlak Gövde-  ABS Gövde (Krom Kaplama Plastik Modelleri İçin İrtibata Geçebilirsiniz)\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a2e2e84a.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:54'),
(2752, NULL, 'JVD - TORNADE Fotoselli El Kurutma Makinesi', 'Giriş Voltajı/Frekansı: 220-253V 50 Hz\nMotor Gücü: 2600 W\nEk Özellik: Sıcak Hava Üflemeli\nGövde: Antibakteriyel\nGövde Rengi: Gri\nGaranti: 3 Yıl\nÜretim Yeri: Fransa.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a2e8d5c1.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:55'),
(2754, NULL, 'Ankastre Köpük Sabunluk', 'Malzeme: Prinç üzeri krom kaplama\nKapasite: 1000 ml dolum.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a2f08849.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:55'),
(2756, NULL, 'İkili Sıva Üstü Paslanmaz Tuvalet Kağıtlık', 'Malzeme: 304 Kalite Paslanmaz Çelik\nMontaj: Duvara Monte\nGaranti: 2 Yıl Firma Garantisi\nBoyutlar: 325 x 165 x 50 mm\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a2f4f9e3.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:55'),
(2758, NULL, 'GS50F Ankastre Fotoselli Köpük Verici', 'Ürün Tipi: Fotoselli- Elektrikli Ankastre Köpük Verici\nMalzeme: Brass Gövde Üzeri Krom Kaplama\nKapasite: 1000 ml', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a2fb030a.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:56'),
(2762, NULL, 'Paslanmaz Dikey Kilitli Sıvı Sabunluk', 'Malzeme: 304 Kalite Paslanmaz Çelik\nGaranti: 2 Yıl Firma Garantisi\nDolum Sistemi: Üstten Kilitli Sistem Dolum\nYüzey: Mat\nMontaj: Duvara Monte\nKapasite: 1 Lt. / 500 ml\nÖzellik: Sabun Seviyesi Göstergesi\nÜretim Yeri: Türkiye', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a301c02a.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:56'),
(2763, NULL, 'Paslanmaz Yatay Sıvı Sabunluk', 'Malzeme: 304 Kalite Paslanmaz Çelik\nGaranti: 2 Yıl Firma Garantisi\nDolum Sistemi: Üstten Kilitli Sistem Dolum\nYüzey: Mat\nMontaj: Duvara Monte\nKapasite: 1 Lt. / 500 ml\nÖzellik: Sabun Seviyesi Göstergesi\nÜretim Yeri: Türkiye', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a307d965.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:56'),
(2766, NULL, 'Montajlı Akro Sıvı Sabunluk', 'Malzeme: 304 Kalite Paslanmaz Çelik Gövde\nGaranti: 5 Yıl Firma Garantisi\nMontaj: Duvara Monte\nYüzey: Parlak\nDolum Kolaylığı: Kolay Dolum\nKapasite: 300 ml\nÜretim Yeri: Türkiye', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a30e8be8.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:57'),
(2767, NULL, 'Montajlı Bride Cam Sıvı Sabunluk', 'Malzeme: Cam Gövde / Krom Pompa\nMontaj: Duvara Monte\nGaranti: 5 Yıl Firma Garantisi\nKapasite: 300 ml\nDolum Kolaylığı: Kolay Dolum\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a3147ebd.jpg', '2025-06-17 00:37:53', '2025-10-21 12:18:57'),
(2772, NULL, 'Leon Kapaklı Kağıtlık', 'Malzeme: Pirinç üzeri krom kaplama\nTip: Duvara monte kağıtlık.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a31aaf1d.jpg', '2025-06-17 00:40:30', '2025-10-21 12:18:58'),
(2774, NULL, 'Lisa Kapaklı Kağıtlık', 'Tip: Duvara Monte\nMalzeme: Krom Kaplama', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a3217178.jpg', '2025-06-17 00:40:30', '2025-10-21 12:18:58'),
(2776, NULL, 'Emo Kapaklı Kağıtlık', 'Tip: Duvara Monte\nMalzeme: Pirinç Üzeri Krom Kaplama', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a3268098.jpg', '2025-06-17 00:40:30', '2025-10-21 12:18:58'),
(2778, NULL, 'Ledli Dekoratif Banyo Aynası', 'Montaj: Duvara Monte\nYüzey Özelliği: İstenilen şekilde kumlama\nIşıklandırma: LED\'li - Gün Işığı\nKasa Malzemesi: Ahşap veya Alüminyum\nAskı Aparatı: Ahşap veya Alüminyum\nÖlçü ve Renk Seçenekleri: İstenilen Renk ve Ölçüde İmalat\nYedek Parça Garantisi: Mevcut\nÜretim Yeri: TÜRKİYE\nGaranti Süresi: 3 yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a32c56b4.jpg', '2025-06-17 00:40:30', '2025-10-21 12:18:59'),
(2780, NULL, 'Ledli Işıklı Makyaj - Traş Aynası', 'Montaj: Duvara Monte\nÖzellik: Mafsallı- Elektrikli\nYüzey: Krom - Parlak\nBüyüteç: 3X büyüteçli\nGaranti: 3 Yıl Garanti - Yedek Parça Garantisi\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a3316067.jpg', '2025-06-17 00:40:30', '2025-10-21 12:18:59'),
(2781, NULL, 'İkili Havluluk', 'Malzeme: Ms 58 Kalite Prinç Üzeri Krom Kaplama\nMontaj: Duvara Monte\nGaranti Süresi: 5 Yıl Firma Garantisi\nÖlçüler: Uzunluk 50 cm- Duvardan Açıklık 11 cm\nÖzel İmalat: Özel Ölçü ve Ebatlar Uygulanabilir.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a33751d3.jpg', '2025-06-17 00:40:30', '2025-10-21 12:18:59'),
(2783, NULL, 'Kalın Lamalı Şampuanlık', 'Malzeme: Prinç Üzeri Krom Kaplama\nMontaj: Duvara Monte\nGaranti Süresi: 5 Yıl Kaplama Garantisi.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a33d2f37.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:00'),
(2786, NULL, 'Arte Serisi Kapaklı Kağıtlık', 'Malzeme: Pirinç üzeri krom kaplama\nBağlantı Tipi: Duvara monte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a3422dff.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:00'),
(2788, NULL, 'Arte Serisi Kapaklı Kağıtlık - Siyah', 'Malzeme: Pirinç üzeri krom kaplama\nBağlantı Tipi: Duvara monte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a3473e7e.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:00'),
(2790, NULL, 'Dark Serisi Kapaklı Kağıtlık', 'Malzeme: PVD kaplama\nBağlantı Tipi: Duvara monte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a34d8353.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:01'),
(2792, NULL, 'Polo Serisi Kapaklı Kağıtlık', 'Kaplama: Krom\nKullanım: Duvara monte.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a3527ba8.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:01'),
(2794, NULL, 'Kare Ledli Makyaj Aynası', 'Tip: Duvara Monte Otel Tipi\nHareketli: Mafsallı\nAydınlatma: Led Işıklı - Gün Işığı\nGüç Kaynağı: Elektrikli\nRenk: Krom - Parlak\nBüyüteç: 3X büyüteçli\nGaranti: 3 Yıl\nÜretim Yeri: Türkiye', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a357b4b7.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:01'),
(2796, NULL, 'Lama Özel süngerlik  şampuanlık', 'Malzeme: Pirinç üzeri krom kaplama', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a35cd209.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:02'),
(2798, NULL, 'Tekli Şampuanlık - Srn', 'Mazleme: Krom Kaplama Ölçü', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a362d473.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:02'),
(2800, NULL, 'İkili Şampuanlık -  Srn', 'Malzeme: Krom Kaplama\nÖlçü: 20x20 cm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a367ed18.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:02'),
(2802, NULL, 'Lama Özel Süngerlik Gold', 'Malzeme: Krom Kaplama\nRenk: Gold', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a36d1d39.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:03'),
(2803, NULL, 'LAMA ÖZEL SÜNGERLİK  SİYAH RENK  - SRN', 'Malzeme: Krom Kaplama\nRenk: Siyah', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a37353c5.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:03'),
(2806, NULL, 'Kristal Ledli Hareketli Makyaj Aynası', 'Özellikler: Paslanmaz çelik -  Elektrikli – 3 x Büyüteçli', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a37a150e.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:03'),
(2808, NULL, 'Prenses Set Üstü Makyaj Aynası', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a37f2cc3.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:04'),
(2810, NULL, 'Vega Tekli Askılık', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a385e675.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:04'),
(2812, NULL, 'Vega İkili Askılık', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a38bb8b9.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:05'),
(2814, NULL, 'Vega Üçlü Askılık', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a39111be.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:05'),
(2815, NULL, 'Vega Kapaklı Tuvalet Kağıtlığı', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a3964102.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:05'),
(2816, NULL, 'Vega Kapaklı Tuvalet Kağıtlığı', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a39c5250.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:06'),
(2818, NULL, 'Vega Tuvalet Kağıtlığı', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a3a332a9.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:06'),
(2820, NULL, 'Vega Boru Tipi Tuvalet Kağıtlığı', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a3a9115c.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:06'),
(2821, NULL, 'Vega Uzun Havluluk', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a3ad67d3.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:07'),
(2823, NULL, 'Vega Yuvarlak Havluluk', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a3b28434.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:07'),
(2826, NULL, 'Vega Katı Sabunluk', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a3b87eda.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:07'),
(2828, NULL, 'Vega Metal Katı Sabunluk', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a3bce1c5.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:08'),
(2829, NULL, 'Vega Oval Diş Fırçalık', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a3c29638.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:08'),
(2832, NULL, 'Vega Düz Diş Fırçalık', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a3c89480.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:08'),
(2834, NULL, 'Vega Sıvı Sabunluk', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a3ce82b9.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:09'),
(2836, NULL, 'Vega Havluluk', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a3d57467.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:09'),
(2838, NULL, 'Vega İkili Döner Havluluk', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a3da9929.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:09'),
(2839, NULL, 'Arya Krom Etajer', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a3ded3ac.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:10'),
(2844, NULL, 'Arya Krom Sabunluk', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a3e40172.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:10'),
(2846, NULL, 'Arya Krom Diş Fırçalık', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a3e93161.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:10'),
(2849, NULL, 'Arya Krom Kısa Havluluk', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a3ee4049.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:11'),
(2852, NULL, 'Arya Krom Yuvarlak Havluluk', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a3f43fc7.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:11'),
(2853, NULL, 'Arya Krom Uzun Havluluk', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a3f97a1f.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:11'),
(2856, NULL, 'Arya Krom Tuvalet Kağıtlık', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a3fed056.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:12'),
(2857, NULL, 'Arya Krom Kapaklı Tuvalet Kağıtlık', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a4050a2b.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:12'),
(2862, NULL, 'Arya Krom İkili Askılık', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a40a3844.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:13'),
(2864, NULL, 'Arya Krom Set Askılık', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a410151a.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:13'),
(2868, NULL, 'Arya Krom İkili Döner Havluluk', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a4151233.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:13'),
(2870, NULL, 'Arya Krom Yedek Bekletme', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a41a48ed.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:13'),
(2874, NULL, 'Arya Siyah Etajer', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a41f3f77.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:14'),
(2876, NULL, 'Arya Siyah Sabunluk', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a4254afb.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:14'),
(2878, NULL, 'Arya Siyah Diş Fırçalık', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a42a720f.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:15'),
(2880, NULL, 'Arya Siyah Klozet Fırçası', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a430553c.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:15'),
(2882, NULL, 'Arya Siyah Kısa Havluluk', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a43557a9.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:15'),
(2884, NULL, 'Arya Siyah Yuvarlak Havluluk', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a43a675b.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:16'),
(2886, NULL, 'Arya Siyah Uzun Havluluk', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a4404e8d.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:16'),
(2887, NULL, 'Arya Siyah Tuvalet Kağıtlık', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a4457b00.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:16'),
(2890, NULL, 'Arya Siyah Kapaklı Tuvalet Kağıtlık', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a44ab0a5.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:17'),
(2892, NULL, 'Arya Siyah Askılık', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a450a2c7.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:17'),
(2894, NULL, 'Arya Siyah İkili Askılık', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a454db2f.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:17'),
(2896, NULL, 'Arya Siyah Set Askılık', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a45a1d4a.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:18'),
(2898, NULL, 'Arya Siyah Rozetli Süngerlik', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a4600ee3.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:18'),
(2900, NULL, 'Arya Siyah İkili Döner Havluluk', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a4654e45.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:18'),
(2902, NULL, 'Arya Siyah Yedek Bekletme', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a46a82ea.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:18'),
(2904, NULL, 'Arya Altın Etajer', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a46ec145.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:19'),
(2905, NULL, 'Arya Altın Etajer', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a473a5ba.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:19'),
(2908, NULL, 'Arya Altın Sabunluk', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a478d7db.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:19'),
(2910, NULL, 'Arya Altın Diş Fırçalık', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a47ded15.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:20'),
(2912, NULL, 'Arya Altın Klozet Fırçası', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a483c357.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:20'),
(2914, NULL, 'Arya Altın Kısa Havluluk', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a488ddf6.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:20'),
(2916, NULL, 'Arya Altın Yuvarlak Havluluk', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a48de32a.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:21'),
(2918, NULL, 'Arya Altın Uzun Havluluk', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a493b951.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:21'),
(2920, NULL, 'Arya Altın Tuvalet Kağıtlık', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a498d948.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:21'),
(2922, NULL, 'Arya Altın Kapaklı Tuvalet Kağıtlık', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a49e0e09.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:22'),
(2923, NULL, 'Arya Altın Askılık', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a4a3fffb.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:22'),
(2926, NULL, 'Arya Altın İkili Askılık', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a4a90aa4.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:22'),
(2928, NULL, 'Arya Altın Set Askılık', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a4ae4adc.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:23'),
(2930, NULL, 'Arya Altın Rozetli Süngerlik', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a4b4249f.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:23'),
(2932, NULL, 'Arya Altın İkili Döner Havluluk', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a4ba4835.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:24'),
(2933, NULL, 'Arya Altın Yedek Bekletme', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a4c00e90.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:24'),
(2936, NULL, 'Leon Kapaksız Kağıtlık', 'Malzeme: Pirinç üzeri krom kaplama\nÜrün: Tip', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a4c50e4a.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:24'),
(2937, NULL, 'Lisa Yedek Bekletmelik', 'Tip: Duvara Monte\nMalzeme: Pirinç Üzeri Krom Kaplama', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a4cafbf7.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:25'),
(2939, NULL, 'Paslanmaz Ledli Işıklı Makyaj Traş Aynası - Kare', 'Montaj: Duvara Monte- Otel Tipi\nÖzellik: Mafsallı- Led Işıklı - Gün Işığı- Elektrikli\nYüzey: Krom - Parlak\nBüyüteç: 3X Büyüteçli\nGaranti: 3 Yıl Garanti-  Yedek Parça Garantisi\nÜretim Yeri: Türkiye.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a4d109ec.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:25'),
(2942, NULL, 'Led Işıklı Otel Banyo Aynası', 'Montaj: Duvara Monte\nYüzey Özelliği: İstenilen şekilde kumlama\nIşıklandırma: LED\'li - Gün Işığı\nKasa Malzemesi: Ahşap veya Alüminyum\nAskı Aparatı: Ahşap veya Alüminyum\nÖlçüler: 80x120x5 cm\nÖzel İmalat: İstenilen Ölçüde İmalat\nYedek Parça Garantisi: Mevcut\nÜretim Yeri: TÜRKİYE\nGaranti Süresi: 3 yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a4d6e254.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:25'),
(2944, NULL, 'Üçlü Oval Süngerlik Şampuanlık', 'Malzeme: Ms 58 Kalite Prinç Üzeri Krom Kaplama\nMontaj: Duvara Monte\nYüzey: Parlak Yüzey\nGaranti Süresi: 5 Yıl Firma Garantisi\nÖzellikler: Özel Tasarım ve Ölçülere Uygun', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a4db0c67.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:26'),
(2946, NULL, 'Emo Tekli Bornozluk', 'Tip: Duvara Monte\nMalzeme: Pirinç Üzeri Krom Kaplama', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a4e0d323.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:26'),
(2950, NULL, 'Ledli Işıklı Traş - Makyaj Aynası Siyah', 'Montaj: Duvara monte\nHareketlilik: Mafsallı\nGüç Kaynağı: Elektrikli\nRenk: Siyah\nBüyüteç: 3X büyüteçli\nGaranti: Yedek parça Garantisi\nÜretim Yeri: Türkiye\nGenel Garanti:', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a4e6c96f.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:26'),
(2951, NULL, 'Led Işıklı Makyaj - Traş Aynası Beyaz', 'Montaj: Duvara monte\nHareketlilik: Mafsallı\nGüç Kaynağı: Elektrikli\nRenk: Beyaz\nBüyüteç: 3X büyüteçli\nGaranti: Yedek parça Garantisi\nÜretim Yeri: TURKIYE\nGenel Garanti: 3 Yıl', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a4eeaeb0.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:27'),
(2954, NULL, 'Arte Serisi Yedek Bekletmelik', 'Malzeme: Pirinç üzeri krom kaplama\nBağlantı Tipi: Duvara monte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a4f3da2a.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:27'),
(2955, NULL, 'Arte Serisi Açık Tuvalet Kağıtlık - Siyah', 'Malzeme: PVD kaplama\nBağlantı Tipi: Duvara monte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a4f8caaa.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:27'),
(2958, NULL, 'Dark Serisi Açık Kağıtlık', 'Malzeme: PVD kaplama\nBağlantı Tipi: Duvara monte.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a4fdf0dc.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:28'),
(2960, NULL, 'Polo Serisi Açık Kağıtlık', 'Kaplama: Krom\nKullanım: Duvara monte.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a503ce1d.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:28'),
(2962, NULL, 'Leon Açık Havluluk', 'Tip: Duvara Monte Açık Havluluk\nMalzeme: Pirinç Üzeri Krom Kaplama.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a508f04c.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:28'),
(2964, NULL, 'Lisa Tekli Bornozluk', 'Kaplama: Krom\nMontaj: Duvara monte.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a50e24f2.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:29'),
(2966, NULL, 'JVD Cosmos Makyaj Aynası', 'Montaj: Duvara Monte\nGövde: Prinç üzeri krom\nOtomatik Kapanma: 3 dakikada kapanma\nAydınlatma: Ledli\nKullanım: Pilli- dokunmatik\nMafsallı: Tek mafsallı - istenilen yöne hareket edebilme\nMenşei: Fransa.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a51510f2.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:29'),
(2968, NULL, 'Led Işıklı Otel Banyo Aynası', 'Montaj: Duvara Monte\nYüzey Özelliği: İstenilen şekilde kumlama\nIşıklandırma: LED\'li - Gün Işığı\nKasa Malzemesi: Ahşap veya Alüminyum\nAskı Aparatı: Ahşap veya Alüminyum\nÖlçüler: 60x80x4 cm\nÖzel İmalat: İstenilen Ölçüde İmalat\nYedek Parça Garantisi: Mevcut\nÜretim Yeri: TÜRKİYE\nGaranti Süresi: 3 yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a51b13da.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:29'),
(2970, NULL, 'Süngerlikli Küvet Tutamağı', 'Malzeme: Ms 58 Kalite Prinç Üzeri Krom Kaplama\nMontaj: Duvara Monte\nGaranti Süresi: 5 Yıl Firma Garantisi\nÖzellikler: Özel Ölçü ve Ebatlar Uygulanabilir.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a5200112.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:30'),
(2972, NULL, 'İkili Oval Süngerlik ve Şampuanlık', 'Malzeme: Ms 58 Kalite Prinç Üzeri Krom Kaplama\nMontaj: Duvara Monte\nYüzey: Parlak Yüzey\nGaranti Süresi: 5 Yıl Firma Garantisi\nÖzellikler: Askılıklı\nÖlçüler: 15x15 cm- 18x18 cm- 22x22 cm', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a5251e80.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:30'),
(2974, NULL, 'Emo Yedek Bekletmelik', 'Tip: Duvara Monte\nMalzeme: Pirinç Üzeri Krom Kaplama', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a52b243d.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:31'),
(2976, NULL, 'Arte Serisi Tekli Bornozluk', 'Malzeme: Pirinç üzeri krom kaplama\nBağlantı Tipi: Duvara monte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a531aa1a.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:31'),
(2978, NULL, 'Arte Serisi İkili Bornozluk - Siyah', 'Malzeme: PVD kaplama\nBağlantı Tipi: Duvara monte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a536d1f0.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:31'),
(2980, NULL, 'Dark Serisi İkili Bornozluk', 'Malzeme: PVD kaplama\nBağlantı Tipi: Duvara monte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a53b0d6b.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:32'),
(2982, NULL, 'Polo Serisi İkili Bornozluk', 'Kaplama: Krom\nKullanım: Duvara monte.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a541b22c.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:32'),
(2984, NULL, 'Leon İkili Bornozluk', 'Tip: Duvara Monte İkili Bornozluk Pimli\nMalzeme: Pirinç Üzeri Krom Kaplama.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a5462a81.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:32'),
(2985, NULL, 'Lisa Yuvarlak Havluluk', 'Kaplama: Krom\nMontaj: Duvara monte.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a54c3e1b.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:33'),
(2988, NULL, 'JVD Cosmos Makyaj Aynası Çift Mafsallı', 'Montaj: Duvara Monte\nGövde: Prinç üzeri krom\nOtomatik Kapanma: 3 dakikada kapanma\nAydınlatma: Ledli\nKullanım: Pilli- dokunmatik\nMafsallı: Çift mafsallı- istenilen yöne hareket edebilme\nMenşei: Fransa.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a552f9de.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:33'),
(2990, NULL, 'Küvet Tutamağı', 'Malzeme: Ms 58 Kalite Prinç Üzeri Krom Kaplama\nMontaj: Duvara Monte\nGaranti Süresi: 5 Yıl Firma Garantisi\nÖzellikler: Özel Ölçü ve Ebatlar Uygulanabilir.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a55910eb.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:33'),
(2992, NULL, 'Tekli Kapalı Süngerlik ve Şampuanlık', 'Malzeme: Ms 58 Kalite Prinç Üzeri Krom Kaplama\nMontaj: Duvara Monte\nYüzey: Parlak Yüzey\nGaranti Süresi: 5 Yıl Firma Garantisi\nÖzellikler: Özel Tasarım Ve Ölçülere Uygun', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a55e17a4.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:34'),
(2993, NULL, 'Emo Kapaksız Kağıtlık', 'Tip: Duvara Monte\nMalzeme: Pirinç Üzeri Krom Kaplama', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a5633d0c.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:34'),
(2996, NULL, 'Arte Serisi İkili Bornozluk', 'Malzeme: Pirinç üzeri krom kaplama\nBağlantı Tipi: Duvara monte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a5694b24.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:34'),
(2998, NULL, 'Arte Serisi Yuvarlak Havluluk - Siyah', 'Malzeme: PVD kaplama\nBağlantı Tipi: Duvara monte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a56e9570.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:35'),
(3000, NULL, 'Dark Serisi Açık Uzun Havluluk', 'Malzeme: PVD kaplama\nBağlantı Tipi: Duvara monte.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a57462de.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:35'),
(3002, NULL, 'Polo Serisi Yedek Bekletmelikli Tuvalet Kağıtlık', 'Malzeme: Krom Kaplama\nBağlantı Tipi: Duvara monte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a5797e0f.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:35'),
(3003, NULL, 'Leon Uzun Havluluk', 'Tip: Duvara Monte\nMalzeme: Pirinç Üzeri Krom Kaplama\nÖlçüler: 40 / 50 cm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a57e7d7a.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:36'),
(3006, NULL, 'Lisa Uzun Havluluk', 'Kaplama: Krom\nMontaj: Duvara monte\nÖlçüler: 40/50 cm alternatifli.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a5848308.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:36'),
(3008, NULL, 'JVD Galaxy Makyaj Aynası Çift Mafsallı', 'Montaj: Duvara Monte\nGövde Malzemesi: Prinç üzeri krom\nOtomatik Kapanma: 3 dakikada kapanma\nAydınlatma: LEDli\nKullanım: Pilli- dokunmatik\nMafsallı: Çift mafsallı- istenilen yöne hareket edebilme\nMenşei: Fransa.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a58991f1.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:37'),
(3011, NULL, 'Lama Köşe Süngerlik-Paslanmaz', 'Malzeme: Paslanmaz 304 SS\nTip: Köşe Süngerlik\nEbatlar: A', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a5907058.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:37'),
(3013, NULL, 'Emo Uzun Havluluk', 'Ölçü: 40/50 cm\nMalzeme: Pirinç Üzeri Krom\nTip: Duvara Monte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a59575a8.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:37'),
(3015, NULL, 'Arte Serisi Uzun Havluluk', 'Malzeme: Pirinç üzeri krom kaplama\nBağlantı Tipi: Duvara monte\nUzunlu: 40-50 cm', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a59b40e6.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:38'),
(3017, NULL, 'Arte Serisi Uzun Havluluk - Siyah', 'Malzeme: PVD kaplama\nBağlantı Tipi: Duvara monte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a5a1101b.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:38'),
(3020, NULL, 'Dark Serisi  Uzun Havluluk', 'Malzeme: PVD kaplama\nBağlantı Tipi: Duvara monte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a5a6165b.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:38'),
(3021, NULL, 'Polo Serisi Uzun Havluluk', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a5ab13d5.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:39'),
(3024, NULL, 'JVD Eclips Makyaj Aynası', 'Montaj: Duvara Monte\nGövde Malzemesi: Prinç üzeri krom\nOtomatik Kapanma: 3 dakikada kapanma\nAydınlatma: LEDli\nKullanım: Pilli- dokunmatik\nMafsallı: Çift mafsallı\nYön Ayarlanabilirliği: İstenilen yöne hareket edebilme\nMenşei: Fransa.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a5b10d77.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:39'),
(3025, NULL, 'VIP Uzun Havluluk - 50 cm.', 'Malzeme: Ms 58 Kalite Prinç Üzeri Krom Kaplama\nMontaj: Duvara Monte\nGaranti Süresi: 5 Yıl Firma Garantisi\nÖzellikler: Özel Ölçü ve Ebatlar Uygulanabilir\nBoyutlar: Uzunluk 50 cm- Duvardan 8 cm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a5b70fdf.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:39'),
(3027, NULL, 'İkili Açık Süngerlik Şampuanlık', 'Malzeme: Ms 58 Kalite Prinç Üzeri Krom Kaplama\nMontaj: Duvara Monte\nYüzey: Parlak\nGaranti: 5 Yıl Firma Garantisi\nUygunluk: Özel Tasarım ve Ölçülere Uygun.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a5bc269c.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:40'),
(3029, NULL, 'Arte Serisi Yuvarlak Havluluk', 'Malzeme: Pirinç üzeri krom kaplama\nBağlantı Tipi: Duvara monte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a5c37db8.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:40'),
(3033, NULL, 'Dark Serisi Cam Klozet Fırçası', 'Malzeme: PVD kaplama\nBağlantı Tipi: Duvara monte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a5c8b56f.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:40'),
(3036, NULL, 'Polo Serisi Yuvarlak Havluluk', 'Malzeme: Krom kaplama\nBağlantı Tipi: Duvara monte.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a5cdd20f.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:41'),
(3037, NULL, 'JVD Galaxy Makyaj Aynası - Masa üstü', 'Tasarım: Masa üstü- Yuvarlak ayna\nGövde Malzemesi: Prinç üzeri krom\nOtomatik Kapanma: 3 dakikada kapanma\nAydınlatma: LEDli\nKullanım: Pilli- dokunmatik\nMenşei: Fransa.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a5d3e2fe.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:41'),
(3039, NULL, 'VIP Destekli Raf Havluluk', 'Malzeme: Ms 58 Kalite Prinç Üzeri Krom Kaplama\nMontaj: Duvara Monte\nGaranti Süresi: 5 Yıl Firma Garantisi\nÖzellikler: Özel Ölçü ve Ebatlar Uygulanabilir\nBoyutlar: Uzunluk 50 cm- duvardan 11 cm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a5da8615.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:42'),
(3042, NULL, 'Tel Süngerlik Şampuanlık', 'Malzeme: Ms 58 Kalite Prinç Üzeri Krom Kaplama\nMontaj: Duvara Monte\nYüzey: Parlak\nGaranti: 5 Yıl Firma Garantisi\nUygunluk: Özel Tasarım ve Ölçülere Uygun.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a5e0595b.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:42'),
(3044, NULL, 'Arte Serisi İkili Döner Havluluk', 'Malzeme: Pirinç üzeri krom kaplama\nBağlantı Tipi: Duvara monte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a5e47650.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:42'),
(3046, NULL, 'Arte Serisi Katı Sabunluk - Siyah', 'Malzeme: PVD kaplama\nBağlantı Tipi: Duvara monte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a5e98aeb.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:42'),
(3048, NULL, 'Polo Serisi Cam Etajer', 'Tip: Duvara Monte\nMalzeme: Krom Kaplama', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a5eeaa8a.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:43'),
(3050, NULL, 'Arte Serisi İkili Bornozluk', 'Malzeme: Pirinç üzeri krom kaplama\nBağlantı Tipi: Duvara monte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a5f5b02c.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:43');
INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `price`, `stock_quantity`, `vat_rate`, `image_url`, `created_at`, `updated_at`) VALUES
(3052, NULL, 'JVD Eclips Ledli Makyaj-Traş Aynası - Kare', 'Tasarım: Kare şeklinde\nMontaj: Duvara monte\nMafsallı: Hareketli bağlantıları mevcut\nMalzeme: Parlak krom kaplama\nAydınlatma: LED ışıklı\nBüyütme: 3X büyüteçli\nGüç Kaynağı: Pille çalışma\nKullanım Kolaylığı: Dokunmatik ışık düğmesi\nOtomatik Kapanma: Işığın otomatik olarak kapanması\nMenşei: Fransa', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a5faa474.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:44'),
(3054, NULL, 'Paslanmaz İkili Döner Havluluk', 'Malzeme: Ms 58 Kalite Prinç Üzeri Krom Kaplama\nMontaj: Duvara Monte\nGaranti Süresi: 5 Yıl Firma Garantisi\nÖzellikler: Özel Ölçü ve Ebatlar Uygulanabilir\nBoyutlar: Yükseklik 14 cm- Açılmış Uzunluk 38 cm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a6011639.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:44'),
(3055, NULL, 'Rozetli Tel Süngerlik', 'Malzeme: Pirinç Üzeri Krom Kaplama\nMontaj: Duvara Monte.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a606cd29.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:44'),
(3058, NULL, 'Arte Serisi Cam Diş Fırçalık - Siyah', 'Malzeme: PVD kaplama\nBağlantı Tipi: Duvara monte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a60d00f2.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:45'),
(3059, NULL, 'Arte Serisi Açık Tuvalet Kağıtlık', 'Malzeme: Pirinç üzeri krom kaplama\nBağlantı Tipi: Duvara monte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a612ed47.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:45'),
(3061, NULL, 'Polo Serisi Yedek Bekletme', 'Malzeme: Krom Kaplama Tip', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a617df4f.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:45'),
(3064, NULL, 'Mafsallı Makyaj - Traş Aynası - Çift Taraflı', 'Montaj: Duvara monte\nMontaj Aparatı: Lamalı montaj aparatı mevcut\nYükseklik Ayarı: Yükseklik ayarlanabilir\nMafsallı: Hareketli bağlantıları mevcut\nMalzeme: Parlak krom kaplama üzeri prinç\nBüyütme: 3X büyüteçli\nÇift Taraflı: Her iki taraf kullanılabilir', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a61ce94e.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:46'),
(3066, NULL, 'Tek Bölmeli Dikdörtgen Şampuanlık', 'Malzeme: Pirinç Üzeri Krom Kaplama\nÜrün: Dikdörtgen Şampuanlık\nEbat: A', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a6244399.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:46'),
(3068, NULL, 'Polo Serisi Cam Klozet Fırçalık', 'Malzeme: Krom Kaplama\nMontaj: Duvara Monte\nÖzellik: Cam Taşlı', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a62b1b96.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:47'),
(3070, NULL, 'Küvet Tutamağı 30 cm', 'Ürün: 30 Cm Küvet Tutamağı\nMalzeme: Pirinç üzeri Krom Kaplama', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a6306f41.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:47'),
(3071, NULL, 'Mafsallı Makyaj - Traş Aynası - Çift Taraflı', 'Montaj: Duvara monte\nMafsallı: Hareketli bağlantıları mevcut\nMalzeme: Parlak krom kaplama\nBüyütme: 3X büyüteçli\nÇift Taraflı: Her iki taraf kullanılabilir\nYedek Parça Garantisi: Yedek parçalar için garanti mevcut.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a635aae8.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:47'),
(3073, NULL, 'Destekli Raf Havluluk', 'Malzeme: Ms 58 Kalite Prinç Üzeri Krom Kaplama\nMontaj: Duvara Monte\nGaranti Süresi: 5 Yıl Firma Garantisi\nÖzellikler: Özel Ölçü ve Ebatlar Uygulanabilir\nBoyutlar: Duvardan Yükseklik 27.5 cm- Uzunluk 50 cm- Destek Açısı 17 cm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a63c9d96.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:48'),
(3076, NULL, 'Tekli Oval Köşe Süngerlik', 'Malzeme: Pirinç Üzeri Krom Kaplama\nÜrün: Tekli Oval Köşe Süngerlik\nÖlçüler: 18 x 18 cm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a642a5d5.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:48'),
(3078, NULL, 'Polo Serisi Diş Fırçalık', 'Malzeme: Krom Kaplama\nMontaj: Duvara Monte\nÖzellik: Cam Taslı', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a6494a0a.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:48'),
(3080, NULL, 'JVD Galaxy Kare Masa Üstü Makyaj Aynası', 'Montaj: Masa üstü\nGövde Malzemesi: Prinç üzeri krom kaplama\nKapanma Süresi: 3 dakikada kapanma özelliği\nIşıklandırma: Led ışıklı\nEnerji Kaynağı: Pilli dokunmatik\nMenşei: Fransa.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a64e5990.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:49'),
(3082, NULL, 'U Destekli Raf Havluluk', 'Montaj: Duvara Monte\nMalzeme: Prinç Üzeri Krom Kaplama\nGaranti Süresi: 5 Yıl Firma Garantisi\nÖzellikler: İstenilen Değişiklik Yapılabilir- Yedek Parça Garantisi\nYüzey: Parlak\nKullanım: Dekoratif- Kullanışlı- Şık ve Sağlam.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a6552fe9.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:49'),
(3084, NULL, 'Oval Tel Süngerlik Şampuanlık Rozetsiz', 'Malzeme: Ms 58 Kalite Prinç Üzeri Krom Kaplama\nÜrün: Duvara Monte\nYüzey: Parlak\nGaranti: 5 Yıl Firma Garantisi\nUyum: Özel Tasarım ve Ölçülere Uygun.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a65a4ed3.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:50'),
(3086, NULL, 'Polo Serisi Dörtlü Askılık', 'Malzeme: Krom Kaplama\nMontaj: Duvara Monte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a661a8af.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:50'),
(3087, NULL, 'JVD Galaxy Ledli Makyaj-Traş Aynası - Kare', 'Montaj: Duvara monte\nMafsallı: Kalın lamalı mafsallı\nGövde Malzemesi: Krom kaplama parlak\nIşıklandırma: Led ışıklı\nBüyütme: 3X büyüteçli\nEnerji Kaynağı: Pille çalışma- dokunmatik ışık düğmesi\nMenşei: Fransa\nGaranti: 3 yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a666db2a.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:50'),
(3089, NULL, 'Lamalı Raf Havluluk', 'Montaj: Duvara Monte\nMalzeme: Prinç Üzeri Krom Kaplama\nGaranti Süresi: 5 Yıl Kaplama Garantisi.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a66cbc08.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:51'),
(3091, NULL, 'Üçlü Açık Süngerlik Şampuanlık', 'Malzeme: Ms 58 Kalite Prinç Üzeri Krom Kaplama\nÜrün: Duvara Monte\nYüzey: Parlak\nGaranti: 5 Yıl Firma Garantisi\nUyum: Özel Tasarım ve Ölçülere Uygun.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a672a53e.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:51'),
(3094, NULL, 'Polo Serisi Katı Sabunluk', 'Malzeme: Krom Kaplama\nMontaj: Duvara Monte\nÖzellik: Cam Taslı', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a679ad7a.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:51'),
(3096, NULL, 'JVD Eclips Ledli Makyaj-Traş Aynası - Yuvarlak', 'Montaj: Duvara monte\nMafsallı: Evet\nGövde Malzemesi: Krom kaplama parlak\nIşıklandırma: Led ışıklı\nBüyütme: 3X büyüteçli\nEnerji Kaynağı: Pille çalışma- dokunmatik ışık düğmesi\nMenşei: Fransa\nGaranti: 3 yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a67ec5dc.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:52'),
(3098, NULL, 'Raflı Havluluk', 'Montaj: Duvara Monte\nGaranti Süresi: 5 Yıl Firma Garantisi\nÖzellikler: Özel Ölçü ve Ebatlar Uygulanabilir\nUzunluk: 50 cm\nDuvara Olan Mesafe: 11 cm.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a68555b7.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:52'),
(3100, NULL, 'Tekli Açık Süngerlik Şampuanlık 15 x 15', 'Malzeme: Ms 58 Kalite Prinç Üzeri Krom Kaplama\nÜrün: Duvara Monte\nYüzey: Parlak\nÖlçüler: 15 x 15 cm\nGaranti: 5 Yıl Firma Garantisi\nUyum: Özel Tasarım ve Ölçülere Uygun.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a68b3700.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:53'),
(3102, NULL, 'Polo Serisi İkili Döner Havluluk', 'Malzeme: Krom Kaplama\nMontaj: Duvara Monte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a69132f9.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:53'),
(3104, NULL, 'JVD Eclips Makyaj-Traş Aynası - Kare', 'Montaj: Duvara monte\nMafsallı: Evet\nGövde Malzemesi: Krom kaplama parlak\nMenşei: Fransa\nGaranti: 3 yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a696d9fd.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:53'),
(3106, NULL, 'Paslanmaz Kızaklı Balkon Askılığı Üçlü', 'Malzeme: 304 Paslanmaz Çelik\nÖzellikler: Kızaklı Açılıp Kapanma Özelliği\nGaranti Süresi: 5 Yıl Firma Garantisi.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a69cf662.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:54'),
(3108, NULL, 'Tel Katı Sabunluk', 'Malzeme: Ms 58 Kalite Prinç Üzeri Krom Kaplama\nÜrün: Duvara Monte\nYüzey: Parlak\nGaranti: 5 Yıl Firma Garantisi\nUyum: Özel Tasarım Ve Ölçülere Uygun.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a6a2e447.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:54'),
(3110, NULL, 'Polo Serisi Kağıt Havluluk - Kapaksız', 'Malzeme: Krom Kaplama\nMontaj: Duvara Monte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a6a9d2d0.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:54'),
(3111, NULL, 'Paslanmaz Işıksız Makyaj - Traş Aynası - Tek Taraflı', 'Montaj: Duvara monte\nMafsallı: Evet\nKaplama Seçenekleri: Krom- Altın ve Bakır kaplama alternatifleri\nBüyütme: 3X\nIşıksız: Doğru\nYön: Tek taraflı\nMenşei: Türkiye\nGaranti: 3 yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a6aec174.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:55'),
(3113, NULL, 'Üçlü Döner Havluluk', 'Malzeme: 304 Paslanmaz Çelik\nMontaj: Duvara Monte\nGaranti Süresi: 5 Yıl Firma Garantisi\nÖzel Üretim: Özel Ölçü ve Ebatlar Uygulanabilir.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a6b49dde.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:55'),
(3116, NULL, 'Düz Tel Süngerlik Krom', 'Malzeme: Krom Tel Süngerlik\nEbat: A', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a6b8fd1f.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:55'),
(3118, NULL, 'Polo Serisi Rozetli Süngerlik', 'Malzeme: Krom Kaplama\nMontaj: Duvara Monte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a6bf0972.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:56'),
(3119, NULL, 'Polo Serisi Cam Sıvı Sabunluk', 'Montaj: Duvara Monte\nMalzeme: Metal Bölümleri Krom Kaplama\nÖzellik: Buzlu Cam', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a6c5cbae.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:56'),
(3120, NULL, 'Polo Serisi Cam Sıvı Sabunluk', 'Montaj: Duvara Monte\nMalzeme: Metal Bölümleri Krom Kaplama\nÖzellik: Buzlu Cam', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a6cae069.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:57'),
(3122, NULL, 'Altın Kaplama Ledli Işıklı Makyaj - Traş Aynası', 'Montaj: Duvara Monte\nMalzeme: Paslanmaz Çelik üzeri Altın - Gold Kaplama\nMafsallı: Evet\nIşıklandırma: LED\'li\nRenk Seçenekleri: Krom\nAltın: \nBakır: \nBüyütme: 3X büyüteçli\nYedek Parça Garantisi: Var\nÜretim Yeri: TÜRKİYE\nGaranti Süresi: 3 yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a6d0ae1f.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:57'),
(3124, NULL, 'Polo Serisi Tekli Bornozluk', 'Malzeme: Krom Kaplama\nMontaj: Duvara Monte', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a6d822e6.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:57'),
(3126, NULL, 'Altın Kaplama Eskitme Ledli Işıklı Makyaj - Traş Aynası', 'Montaj: Duvara Monte\nMalzeme: Paslanmaz Çelik üzeri Altın - Gold Kaplama\nEskitme: Evet\nMafsallı: Var\nIşıklandırma: LED\'li\nRenk Seçenekleri: Krom- Altın- Eskitme Altın- Bakır\nBüyütme: 3X büyüteçli\nYedek Parça Garantisi: Mevcut\nÜretim Yeri: TÜRKİYE\nGaranti Süresi: 3 yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a6ddf9ba.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:58'),
(3127, NULL, 'Bakır Kaplama Ledli Işıklı Makyaj - Traş Aynası', 'Montaj: Duvara Monte\nMalzeme: Paslanmaz Çelik üzeri Bakır Kaplama\nMafsallı: Var\nIşıklandırma: LED\'li\nRenk Seçenekleri: Krom- Altın- Eskitme Altın- Bakır\nBüyütme: 3X büyüteçli\nYedek Parça Garantisi: Mevcut\nÜretim Yeri: TÜRKİYE\nGaranti Süresi: 3 yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a6e4bbd0.jpg', '2025-06-17 00:40:30', '2025-10-21 12:19:58'),
(3129, 3, 'Fantom Prokettle Çelik Kettle Su ısıtıcı', 'Tipi: Paslanmaz Çelik Su Isıtıcı\nKapasite: 1.2LT\nMalzeme: 304 Kalite Paslanmaz Çelik\nGüç: 1500 Watt\nElektrik: 220-240 V AC\nFrekans: 50-60 Hz\nRezistans: Paslanmaz Çelik Gizli Rezistans\nOtomatik Kapanma: Suyun Kaynamasıyla\nGüvenlik: Susuz Çalışmayı Önleyen Emniyet Sistemi\nGaranti Süresi: 2 Yıl', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a6e904f5.jpg', '2025-06-17 00:42:22', '2025-10-21 12:19:58'),
(3132, NULL, 'Marco Ecosmart PB10 Hi Deck Sıcak Su Sistemi', 'Malzeme: Karbon Çelik\nSıcaklık Kontrolü: LCD ekran ile\nAyarlanabilir Sıcaklık: Var\nAnlık Sıcaklık Okuması: Var\nSökülebilir Damlama Tepsisi: Var\nElektronik Kontrol: Var\nFiltre Değişim Uyarısı: Var\nBasma Düğmeli: Var\n16 oz Take Away Bardak Uyumluluğu: Var (Hi-Deck)\nGüç (kW): 2\n8: \nTank Kapasitesi (lt): 10\nSaatlik Üretim (lt): 28\nTesisat Gereksinimi: 3/4\" BSP\nAğırlık (kg): 14.5\nGenişlik/Yükseklik/Derinlik (mm): 210/675/464', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a6eed090.jpg', '2025-06-17 00:42:22', '2025-10-21 12:19:59'),
(3134, 3, 'TROYA PRO Otel Tipi 1.2 lt Paslanmaz Kettle', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a6f6770f.jpg', '2025-06-17 00:42:22', '2025-10-21 12:19:59'),
(3136, NULL, 'Jvd Modus Vivendi 1000 ML. Abs Kettle', 'Kapasite: 1000 ml\nRenk Seçenekleri: Siyah\nMavi: \nSarı: \nGövde Malzemesi: ABS Plastik\nKullanım Tipi: Otel Tipi Kablosuz\nTaban: 360 Derece Dönebilen\nRezistans: Gizli\nÜretim Yeri: Fransa\nGaranti: 2 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a6fe00f1.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:00'),
(3138, 3, 'Jvd Divine Paslanmaz Kettle 1 lt', 'Üretim Yeri: Fransa', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a703da67.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:00'),
(3142, 1, 'Servis Arabası ORM', 'Malzeme: Ahşap Gövde\nÖlçüler: 54x103x82 (E-B-Y)\nFonksiyon: Servis çekmecesi - İkisi frenli dört adet hareketli tekerlek.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a709e9e3.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:01'),
(3146, NULL, 'Minibar Arabası', 'Malzeme: Sunta\nKapak Tipi: LAM Kapaklı\nGüvenlik: Anahtarlı\nÖlçüler: 858 x 520 x 1300 mm', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a710b610.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:01'),
(3149, 1, 'Sıcak Servis Arabası ORM', 'Malzeme: Ahşap Gövde\r\nÖlçüler: 54x103x103 (E-B-Y)\r\nFonksiyon: Jel yakıtlı Chafing Dish - İkisi frenli dört adet hareketli tekerlek.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a718e9cc.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:02'),
(3152, NULL, 'TEPSİ ARABASI', 'Malzeme: AISI 304 Kalite paslanmaz çelik gövde\nÖlçüler: 57x43x160 (E-B-Y)\nFonksiyon: 15 adet 37x53 selfrom tepsi taşıma kapasitesi', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a7204569.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:02'),
(3153, 3, 'Fantom Prokettle Çelik Kettle Su Isıtıcı', 'Kapasite: 1.2 lt\nMalzeme: 304 kalite paslanmaz çelik - Gizli rezistans Güç\nVoltaj: 220-240 v-ac\nFrekans: 50-60 hz\nFonksiyon: Suyun kaynaması ile otomatik kapanma - Susuz çalışmayı önleyen emniyet sistemi\nGaranti: 2 Yıl', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a7258cb9.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:02'),
(3156, 3, 'JVD Duchesse Paslanmaz Kettle', 'Tipi: JVD Duchesse Paslanmaz Kettle\nKapasite: 0.8 lt\nKullanım: Otel Kullanımına Uygun Kablosuz Kullanım\nDönüş: 360 Derece Dönebilen\nOtomatik Kapanma: Suyun Kaynamasıyla\nEmniyet: Suyun Bitmesiyle Otomatik Emniyet Sistemi\nAçma/Kapama: Tutma Bölümündeki Düğme ile\nİç Gövde Malzemesi: 304 Kalite Paslanmaz Çelik\nRezistans: Gizli Rezistans\nMenşei: Fransa\nYüzey: Satine ve Parlak Yüzey Seçenekleri\nGaranti Süresi: 3 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a72a9659.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:03'),
(3158, 1, 'İçki Servis Arabası ORM', 'Malzeme: Ahşap Gövde\nÖlçüler: 54x103x87 (E-B-Y)\nÖzellik: 3 adet paslanmaz şişe soğutucu. Ahşap şişe ve bardak teşhir aparatı\nFonksiyon: İkisi frenli dört adet hareketli tekerlek.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a7314e39.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:03'),
(3160, NULL, 'TEPSİ ARABASI  ORM', 'Malzeme: Mdflam kaplamalı\nelektrostatik boyalı dkp profil iskelet: \nÖlçüler: Tepsi ölçüsüne göre değişmektedir\nEk Özellik: 14 adet tepsi taşıma kapasitesi - İkisi frenli dört adet hareketli tekerlek.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a73772ae.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:03'),
(3164, NULL, 'TEPSİ ARABASI İKİLİ ORM', 'Malzeme: AISI 304 Kalite paslanmaz çelik gövde\nÖlçüler: 57x83x160 (E-B-Y)\nEk Özellik: 30 adet 37x53 selfrom tepsi taşıma kapasitesi', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a73c7584.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:04'),
(3168, 3, 'İntessa Otel tipi 1.2 lt Paslanmaz Kettle, Abs Tepsili', 'Kapak: Geniş kapak ile rahat temizleme imkanı\nGüvenlik: Susuz çalışmayı önleyen emniyet sistemi\nRezistans: Gizli rezistans\nKablo: 0.8 mt kablo uzunluğu.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a742522c.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:04'),
(3170, NULL, 'TABAK ARABASI ORM', 'Malzeme: Elektrostatik boyalı profil iskelet\nÖlçüler: 70x70x185 (E-B-Y)\nFonksiyon: 100 tabak taşıma kapasitesi- Farklı tabak ölçülerine göre ayarlanabilir\nEk Özellik: Tabakların kaymasını önleyen ayarlanabilir halkalar ve çarpma lastiği', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a7479389.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:04'),
(3171, 1, 'Servis Arabası ORM', 'Malzeme: Ahşap Gövde\nÖlçüler: 50x90x77 (E-B-Y)\nFonksiyon: 2 adet çekmece (6 Bölmeli)  - İkisi frenli dört adet hareketli tekerlek.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a74d7ef3.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:05'),
(3174, NULL, 'JVD Diva Paslanmaz Çelik Çift Katmanlı Kettle Siyah', 'Kapasite: 1000 ml\nKullanım: Otel Tipi Kablosuz Kullanıma Uygun\nRezistans: Gizli Rezistans\nDönüş: 360 Derece Dönebilen Gövde\nMenşei: Fransa\nGaranti Süresi: 3 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a75435e9.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:05'),
(3176, NULL, 'BOŞ TOPLAMA ARABASI ORM', 'Malzeme: AISI 304 Kalite paslanmaz iskelet\nÖlçüler: 55x85x90 (E-B-Y)\nEk Özellik: İkisi frenli dört adet hareketli tekerlek.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a75bb9e3.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:06'),
(3182, NULL, 'JVD Diva Paslanmaz Çelik Çift Katmanlı Kettle Krom Siyah', 'Kapasite: 1000 ml\nKullanım Tipi: Otel Tipi Kablosuz Kullanıma Uygun\nRezistans: Gizli Rezistans\nGövde: 360 Derece Dönebilen\nMenşei: Fransa\nGaranti Süresi: 3 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a762f788.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:06'),
(3184, NULL, 'ÜÇ RAFLI MUTFAK ARABASI ORM', 'Malzeme: AISI 304 Kalite paslanmaz iskelet\nÖlçüler: 55x86x90 (E-B-Y)\nEk Özellik: İkisi frenli dört adet hareketli tekerlek.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a76a6655.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:07'),
(3186, 1, 'Servis Arabası ORM', '', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a770fe58.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:07'),
(3188, NULL, 'JVD Diva Paslanmaz Çelik Çift Katmanlı Kettle Siyah', 'Kapasite: 1000 ml\nMalzeme: Paslanmaz çelik (çift katmanlı)\nRenk: Siyah\nFonksiyon: Gizli Rezistans- 360 derece dönebilen gövde\nÜretim Yeri: Fransa\nGaranti: 3 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a776310d.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:07'),
(3190, NULL, 'JVD Zenith Otel Tipi Kettle Su Isıtıcı 0,8 ml. Siyah', 'Kapasite: 800 ml\nKullanım Tipi: Otel Tipi Kablosuz Kullanıma Uygun\nRezistans: Gizli Rezistans\nGövde: 360 Derece Dönebilen\nMenşei: Fransa\nGaranti Süresi: 3 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a77c0177.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:08'),
(3192, NULL, 'BASKET TAŞIMA ARABASI ORM', 'Malzeme: AISI 304 Kalite paslanmaz iskelet\nÖlçüler: 55x50x90 (E-B-Y)\nEk Özellik: İkisi frenli dört adet hareketli tekerlek.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a783a128.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:08'),
(3194, NULL, 'MİNİBAR ARABASI -RAFLI ORM', 'Malzeme: Mdflam gövde-Elektrostatik boyalı dkp profil iskelet\nÖlçüler: 59x99x128 (E-B-Y)\nEk Özellik: Yükseklik ayarlı raflar - Kilitli stor kapak\nFonksiyon: Merkezde 5. manevra tekerleği - Dört tarafı çevrili yumuşak çarpma lastiği - 4 adet Ø 200 mm poliamid\nmerkezdeki 5. tekerlek kauçuk.:', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a788af48.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:08'),
(3196, 1, 'İçki Servis Arabası ORM', 'Malzeme: Ahşap Gövde\nÖlçüler: 52x94x97 (E-B-Y)\nFonksiyon: Servis çekmecesi - İkisi frenli dört adet hareketli tekerlek\nEk Özellik: 2 adet paslanmaz buz kovası- Ahşap şişelik - Bardak rafı', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a78eb192.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:09'),
(3198, NULL, 'JVD Zenith Otel Tipi Kettle Su Isıtıcı 0,8 ml. Krem', 'Kapasite: 800 ml\nKullanım Tipi: Otel Tipi Kablosuz Kullanıma Uygun\nRezistans: Gizli Rezistans\nGövde: 360 Derece Dönebilen\nMenşei: Fransa\nGaranti Süresi: 3 Yıl.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a7959f93.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:09'),
(3200, NULL, 'TABAK TAŞIMA ARABASI ORM', 'Kapasite: Tabak çapına göre 250-450 adet taşıma kapasitesi\nÖlçüler: 71x110x80 (E-B-Y)\nEk Özellik: Ayarlanabilir 6 bölmeli - Tabak çapı 32 cm ye kadar ayarlanabilir', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a79ba4f5.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:10'),
(3202, NULL, 'MİNİBAR ARABASI ORM', 'Malzeme: Mdflam gövde-Elektrostatik boyalı dkp profil iskelet\nÖlçüler: 55x90x130 (E-B-Y)\nEk Özellik: 270˚ açılabilen kilitli kapaklar\nFonksiyon: Çarpma lastiği - İkisi frenli dört adet hareketli tekerlek.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a7a17c13.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:10'),
(3204, NULL, 'ODA SERVİS ARABASI YUVARLAK ORM', 'Malzeme: Mdflam Tabla\nÖlçüler: 90x75x130 (E-B-Y)\nFonksiyon: İkisi frenli dört adet hareketli tekerlek\nEk Özellik: Elektrostatik boyalı dkp boru- katlanabilir ve iç içe istiflenebilir iskelet', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a7a68f35.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:10'),
(3206, NULL, 'ÇATAL BIÇAK ARABASI ORM', 'Malzeme: AISI 304 kalite paslanmaz gövde\nÖlçüler: 54x100x85 (E-B-Y)\nEk Özellik: Servis takımları için 6 bölüm\nFonksiyon: Kilitlenebilir katlanabilir ve ayrılabilir üst kapak - İkisi frenli dört adet tekerlek.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a7ac49a5.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:11'),
(3210, NULL, 'JVD Diva Paslanmaz Çelik Çift Katmanlı Kettle Beyaz', 'JVD Diva paslanmaz çelik çift katmanlı kettle: \nbeyaz rengi ve şık tasarımıyla dikkat çeker. Güçlü performansı ve hızlı ısıtma özelliğiyle mutfaklarda kullanıcıların favorisidir. Pratik kullanımı ve dayanıklı yapısıyla uzun süre kullanıma uygundur.:', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a7b2edc4.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:11'),
(3212, NULL, 'PLASTİK ÇÖP ARABASI ORM', 'Malzeme: Plastik\nÖlçüler: 54x50x92 (E-B-Y)\nKapasite: 120 Lt. iç hacim', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a7bab19d.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:12'),
(3214, NULL, 'FLAMBE ARABASI ORM', 'Malzeme: AISI 304 kalite paslanmaz profil iskelet ve Paslanmaz çelik üst tezgah\nÖlçüler: 60x117x92 (E-B-Y)\nEk Özellik: Tek gözlü cam ankastre ocak - Gaz emniyet ventili - Sos aparatı - Çekmece - Servis Çekmecesi - Çöp dolabı\nFonksiyon: İkisi frenli dört adet tekerlek.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a7c0db90.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:12'),
(3216, NULL, 'FLAMBE ARABASI ÇİFT OCAKLI ORM', 'Malzeme: Ahşap gövde ve Laminat kaplamalı üst tezgah\nÖlçüler: 57x135x85 (E-B-Y)\nEk Özellik: 2 adet Tek gözlü ocak - Gaz emniyet ventili - Sos aparatı - Çekmece\nFonksiyon: İkisi frenli dört adet tekerlek.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a7c6de87.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:12'),
(3218, 3, 'JVD Paslanmaz Kettle Siyah Tepsi', 'Tepsi Malzemesi: Melamin\nTepsi Ek Özellik: Küçük Çay Kahve Kutusu\nKettle Malzeme: Paslanmaz Çelik - Rezistanslı\nKapasite: 800 ml\nFonksiyon: Otomatik Kapanma Sigortası\nÜretim Yeri: Fransa\nGaranti: 3 Yıl', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a7ce4d02.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:13'),
(3220, NULL, 'MS PASTA ARABASI MOTOR SOĞUTMALI ORM', 'Malzeme: Ahşap-Paslanmaz Sac\nÖlçüler: 54x103x135 (E-B-Y)\nSoğutma: Termostat kontrollü fanlı soğutma sistemi - 3/8 Hp kompresör - R-134 gaz\nEk Özellik: Servis çekmecesi - Çift yönden açılabilen plexiglass kapak - Gizli led aydınlatma\nFonksiyon: İkisi frenli dört adet tekerlek.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a7d4c62c.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:13'),
(3222, 3, 'JVD Paslanmaz Kettle Siyah Tepsi', 'Materyal: Siyah Melamin\nKettle: Paslanmaz Çelik 800 ml\nOtomatik Kapanma Sigortası: Su Bittiğinde\nRezistanslı: \nTasarım Ödülü: 2013\nÜretim Yeri: MADE IN FRANCE\nGaranti Süresi: 3 Yıl', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a7dba790.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:14'),
(3224, NULL, 'PEYNİR & TATLI ARABASI ORM', 'Malzeme: Ahşap Gövde\nÖlçüler: 48x97x110 (E-B-Y)\nEk Özellik: Servis çekmecesi - Pleksiglass rolltop kapak - Ahşap\nüst teşhir rafı: \nFonksiyon: İkisi frenli dört adet hareketli tekerlek.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a7e483e1.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:14'),
(3225, NULL, 'SERVANT ORM', 'Malzeme: Mdflam Gövde\nÖlçüler: 44x84x106 (E-B-Y)\nEk Özellik: 6 Bölmeli 2 Çekmece- 2 Kapaklı Dolap\nFonksiyon: İkisi frenli dört adet hareketli tekerlek.', 100.00, 10000, 20.00, 'assets/uploads/products/product_68f77a7ea67b3.jpg', '2025-06-17 00:42:22', '2025-10-21 12:20:15'),
(3228, 6, 'SABUN 15 GR', '\"Ambalaj : 140 gr Alupack ambalaj\r\nÖlçü: 50*110 mm\r\nBaskı : Tek renk çift taraf baskılı\r\nİçerik: 15 gr beyaz sabun\"\r\n', 3.00, 100000000, 20.00, 'assets/uploads/products/product_68f77a7f052bd.png', '2025-07-01 05:21:20', '2025-10-21 12:20:15'),
(3229, 6, 'DİKİŞ SETİ', '\"Ambalaj : 140 gr Alupack ambalaj\r\nÖlçü: 80*110 mm\r\nBaskı : Tek renk çift taraf baskılı\r\nİçerik: 6 renk iplik ve iğne\"\r\n', 1.00, 2147483647, 20.00, 'assets/uploads/products/product_68f77a7f15547.png', '2025-07-01 05:24:47', '2025-10-21 12:20:15'),
(3230, 6, 'KULAK PAMUĞU', '\"Ambalaj : 140 gr Alupack ambalaj\r\nÖlçü: 50*110 mm\r\nBaskı : Tek renk çift taraf baskılı\r\nİçerik: 3\'lü kulak pamuğu\"\r\n', 1.00, 2147483647, 20.00, 'assets/uploads/products/product_68f77a7f2523c.png', '2025-07-01 05:25:28', '2025-10-21 12:20:15'),
(3231, 6, 'DUŞ BONESİ', '\"Ambalaj : 140 gr Alupack ambalaj\r\nÖlçü: 80*110 mm\r\nBaskı : Tek renk çift taraf baskılı\r\nİçerik: Akordeyon bone\"\r\n', 1.00, 2147483647, 20.00, 'assets/uploads/products/product_68f77a7f338b6.png', '2025-07-01 05:26:06', '2025-10-21 12:20:15'),
(3235, 6, 'MAKYAJ PAMUĞU', '\"Ambalaj : 140 gr Alupack ambalaj\r\nÖlçü: 80*110 mm\r\nBaskı : Tek  renk çift taraf baskılı\r\nİçerik: 2\'li disk pamuk\"\r\n', 1.00, 2147483647, 20.00, 'assets/uploads/products/product_68f77a7f42c67.png', '2025-07-01 05:27:11', '2025-10-21 12:20:15'),
(3236, 6, 'TÖRPÜ', '\"Ambalaj : 140 gr Alupack ambalaj\r\nÖlçü: 50*110 mm\r\nBaskı : Tek renk çift taraf baskılı\r\nİçerik: Kısa boy törpü\"\r\n', 1.00, 2147483647, 20.00, 'assets/uploads/products/product_68f77a7f50b64.png', '2025-07-01 05:27:50', '2025-10-21 12:20:15'),
(3237, 6, 'AYYAKABI CİLA SÜNGERİ', '\"Ambalaj : 140 gr Alupack ambalaj\r\nÖlçü: 90*130 mm\r\nBaskı : Tek renk çift taraf baskılı\r\nİçerik: Orta boy cila süngeri\"\r\n', 1.00, 2147483647, 20.00, 'assets/uploads/products/product_68f77a7f5ef31.png', '2025-07-01 05:28:28', '2025-10-21 12:20:15'),
(3238, 6, 'BANYO LİFİ', '\"Ambalaj : 140 gr Alupack ambalaj\r\nÖlçü: 140*210 mm\r\nBaskı : Tek renk çift taraf baskılı\r\nİçerik: Oval örme lif\"\r\n', 1.00, 2147483647, 20.00, 'assets/uploads/products/product_68f77a7f6e618.png', '2025-07-01 05:29:06', '2025-10-21 12:20:15'),
(3239, 6, 'A.3 DİŞ SETİ', '\"Ambalaj : 140 gr Alupack ambalaj\r\nÖlçü: 90*160 mm\r\nBaskı : Tek renk çift taraf baskılı\r\nİçerik: Katlanır fırça ve 10 ml diş macunu\"\r\n', 1.00, 2147483647, 20.00, 'assets/uploads/products/product_68f77a7f7d821.png', '2025-07-01 05:29:40', '2025-10-21 12:20:15'),
(3240, 6, ' A.2 TRAŞ SETİ', '\"Ambalaj : 140 gr Alupack ambalaj\r\nÖlçü: 90*160 mm\r\nBaskı : Tek renk çift taraf baskılı\r\nİçerik: Pro 2 tıraş bıçağı ve 10 ml tıraş jeli\"\r\n', 1.00, 2147483647, 20.00, 'assets/uploads/products/product_68f77a7f8ce70.png', '2025-07-01 05:30:04', '2025-10-21 12:20:15'),
(3241, 6, ' A.1 TARAK', '\"Ambalaj : 140 gr Alupack ambalaj\r\nÖlçü: 50*160 mm\r\nBaskı : Tek renk çift taraf baskılı\r\nİçerik: Uzun boy tarak\"\r\n', 1.00, 2147483647, 20.00, 'assets/uploads/products/product_68f77a7f9ba29.png', '2025-07-01 05:31:23', '2025-10-21 12:20:15'),
(3242, NULL, 'SABUN  15 GR', '\"Ambalaj : Soft touch buzlu ambalaj\r\nÖlçü: 70*100+25 mm\r\nBaskı : Tek renk çift taraf baskılı + etiket\r\nİçerik:15 gr beyaz yuvarlak sabun\"\r\n', 1.00, 2147483647, 20.00, 'assets/uploads/products/product_68f77a7fac4d1.png', '2025-07-01 06:40:58', '2025-10-21 12:20:15'),
(3243, NULL, 'SABUN 20 GR ', '\"Ambalaj : Soft touch buzlu ambalaj\r\nÖlçü: 70*100+25 mm\r\nBaskı : Tek renk çift taraf baskılı + etiket\r\nİçerik:20gr kare kekikli sabun\"\r\n', 1.00, 2147483647, 20.00, 'assets/uploads/products/product_68f77a7fbba66.png', '2025-07-01 06:41:45', '2025-10-21 12:20:15'),
(3244, NULL, 'HIJYEN TORBASI', '\"Ambalaj : Soft touch buzlu ambalaj\r\nÖlçü: 70*100+25 mm\r\nBaskı : Tek renk çift taraf baskılı + etiket\r\nİçerik: Hijyen torbası\"\r\n', 1.00, 2147483647, 20.00, 'assets/uploads/products/product_68f77a7fcac84.png', '2025-07-01 06:42:23', '2025-10-21 12:20:15'),
(3245, NULL, 'DİKİŞ SETİ', '\"Ambalaj : Soft touch buzlu ambalaj\r\nÖlçü: 70*100+25 mm\r\nBaskı : Tek renk çift taraf baskılı + etiket\r\nİçerik: 6 renk iplik ve iğne\"\r\n', 1.00, 2147483647, 20.00, 'assets/uploads/products/product_68f77a7fda24d.png', '2025-07-01 06:52:58', '2025-10-21 12:20:15'),
(3246, NULL, 'TIRNAK MAKASI SETİ', '\"Ambalaj : Soft touch buzlu ambalaj\r\nÖlçü: 40*100+25 mm\r\nBaskı : Tek renk çift taraf baskılı + etiket\r\nİçerik: Orta boy tırnak makası\"\r\n', 1.00, 2147483647, 20.00, 'assets/uploads/products/product_68f77a7fe97e6.png', '2025-07-01 06:54:31', '2025-10-21 12:20:16'),
(3247, NULL, 'KULAK PAMUGU', '\"Ambalaj : Soft touch buzlu ambalaj\r\nÖlçü: 40*100+25 mm\r\nBaskı : Tek renk çift taraf baskılı + etiket\r\nİçerik: 3\'lü kulak pamuğu\"\r\n', 1.00, 2147483647, 20.00, 'assets/uploads/products/product_68f77a8004879.png', '2025-07-01 06:55:12', '2025-10-21 12:20:16'),
(3248, NULL, 'KONDOM', '\"Ambalaj : Soft touch buzlu ambalaj\r\nÖlçü: 70*100+25 mm\r\nBaskı : Tek renk çift taraf baskılı + etiket\r\nİçerik: OKEY marka kondom\"\r\n', 1.00, 2147483647, 0.00, 'assets/uploads/products/product_68f77a8014143.png', '2025-07-01 06:56:14', '2025-10-21 12:20:16'),
(3249, NULL, 'DUŞ BONESİ', '\"Ambalaj : Soft touch buzlu ambalaj\r\nÖlçü: 70*100+25 mm\r\nBaskı : Tek renk çift taraf baskılı + etiket\r\nİçerik: 1 adet akordeyon duş bonesi\"\r\n', 1.00, 2147483647, 20.00, 'assets/uploads/products/product_68f77a8023be8.png', '2025-07-01 06:57:51', '2025-10-21 12:20:16'),
(3250, NULL, 'MAKYAJ PAMUGU', '\"Ambalaj : Soft touch buzlu ambalaj\r\nÖlçü: 70*100+25 mm\r\nBaskı : Tek renk çift taraf baskılı + etiket\r\nİçerik: 2\'li disk pamuk + 3\'lü kulak pamuğu\"\r\n', 1.00, 2147483647, 0.00, 'assets/uploads/products/product_68f77a8031737.png', '2025-07-01 06:58:25', '2025-10-21 12:20:16'),
(3251, NULL, 'BAKIM SETİ VANITY KIT', '\"Ambalaj : Soft touch buzlu ambalaj\r\nÖlçü: 70*100+25 mm\r\nBaskı : Tek renk çift taraf baskılı + etiket\r\nİçerik: 2\'li disk pamuk + 3\'lü kulak pamuğu\"\r\n', 1.00, 2147483647, 20.00, 'assets/uploads/products/product_68f77a803f171.png', '2025-07-01 06:58:53', '2025-10-21 12:20:16'),
(3252, NULL, 'AYAKKABI CİLA SÜNGERİ', '\"Ambalaj : Soft touch buzlu ambalaj\r\nÖlçü: 100*100+25 mm\r\nBaskı : Tek renk çift taraf baskılı + etiket\r\nİçerik: Orta boy cila süngeri\"\r\n', 1.00, 2147483647, 20.00, '', '2025-07-01 07:00:29', '2025-07-01 07:00:29'),
(3253, NULL, 'AYYAKABI BEZİ', '\"Ambalaj : Soft touch buzlu ambalaj\r\nÖlçü: 100*100+25 mm\r\nBaskı : Tek renk çift taraf baskılı + etiket\r\nİçerik: 15*25 cm ayakkabı bezi\"\r\n', 1.00, 2147483647, 20.00, 'assets/uploads/products/product_68f77a804e75f.png', '2025-07-01 07:01:32', '2025-10-21 12:20:16'),
(3254, NULL, 'TRAŞ SETİ', '\"Ambalaj : Soft touch buzlu ambalaj\r\nÖlçü: 70*150+25 mm\r\nBaskı : Tek renk çift taraf baskılı + etiket\r\nİçerik: Pro 2 tıraş bıçağı  ve 10 ml tıraş jeli\"\r\n', 1.00, 2147483647, 20.00, '', '2025-07-01 07:52:33', '2025-07-01 07:52:33'),
(3256, NULL, 'KİBRİT (LOGOSUZ)', '', 6.95, 2147483647, 20.00, '', '2025-09-05 14:31:02', '2025-09-05 14:31:02'),
(3258, 5, 'demo ürün', 'demo ürün', 500.00, 2, 10.00, 'https://crm.hepsigazebo.com/assets/uploads/products/product_68f8d1aab9232.png', '2025-10-22 12:44:26', '2025-10-22 12:44:26');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Tablo döküm verisi `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `created_at`) VALUES
(1, 'Servis Arabası', '2025-06-18 09:38:33'),
(2, 'Saç Kurutma Makinesi', '2025-06-18 11:28:05'),
(3, 'KETTLE', '2025-06-18 12:02:30'),
(4, 'SUNUM TEPSİ', '2025-06-18 12:05:06'),
(5, 'AHŞAP VALİZLİKLER', '2025-06-24 15:18:12'),
(6, 'ALUPACK AMBALAJ', '2025-07-01 05:19:08'),
(7, 'AMERIKAN BRISTOL KUTU', '2025-07-01 05:52:18'),
(8, 'SOFT TOUCH BUZLU AMBALAJ', '2025-07-01 06:40:26'),
(9, 'ŞİŞE ÜRÜNLER', '2025-07-08 05:05:28'),
(10, 'TERLİK', '2025-07-08 05:12:49'),
(11, 'SARGILI SABUN', '2025-10-14 06:15:08'),
(12, 'ÇAMAŞIR TORBASI', '2025-10-14 06:27:15'),
(13, 'KALEM GRUBU', '2025-10-14 06:36:47'),
(14, 'POŞETLİ ÜRÜNLER', '2025-10-14 06:52:10');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `quotes`
--

CREATE TABLE `quotes` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quote_number` varchar(50) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `vat_amount` decimal(10,2) NOT NULL,
  `status` enum('draft','sent','accepted','rejected') DEFAULT 'draft',
  `valid_until` date DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Tablo döküm verisi `quotes`
--

INSERT INTO `quotes` (`id`, `customer_id`, `quote_number`, `total_amount`, `vat_amount`, `status`, `valid_until`, `notes`, `created_by`, `created_at`, `updated_at`) VALUES
(258, 11, 'TKL-20250910-68C121C0366EB', 480.00, 80.00, 'draft', '2025-10-10', '', 4, '2025-09-10 06:59:12', '2025-09-10 06:59:12'),
(259, 64, 'TKL-20251017-68F16C586B0C1', 26400.00, 4400.00, 'draft', '2025-11-20', 'Bu teklif 30 gün geçerlidir.\nFiyatlara KDV dahildir.\nTeslimat süresi sipariş onayından sonra 5 iş günüdür.', 4, '2025-10-16 22:06:16', '2025-10-16 22:06:16'),
(260, 14, 'TKL-20251021-68F7770EDE5C0', 360.00, 60.00, 'accepted', '2025-11-20', 'Bu teklif 30 gün geçerlidir.\nFiyatlara KDV dahildir.\nTeslimat süresi sipariş onayından sonra 5 iş günüdür.', 4, '2025-10-21 12:05:34', '2025-10-22 12:16:16');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `quote_items`
--

CREATE TABLE `quote_items` (
  `id` int(11) NOT NULL,
  `quote_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `vat_rate` decimal(5,2) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Tablo döküm verisi `quote_items`
--

INSERT INTO `quote_items` (`id`, `quote_id`, `product_id`, `quantity`, `unit_price`, `vat_rate`, `total_amount`, `created_at`) VALUES
(1944, 258, 2562, 1, 100.00, 20.00, 480.00, '2025-09-10 06:59:12'),
(1945, 258, 1895, 1, 100.00, 20.00, 480.00, '2025-09-10 06:59:12'),
(1946, 258, 1897, 1, 100.00, 20.00, 480.00, '2025-09-10 06:59:12'),
(1947, 258, 1899, 1, 100.00, 20.00, 480.00, '2025-09-10 06:59:12'),
(1948, 259, 2562, 100, 100.00, 20.00, 26400.00, '2025-10-16 22:06:16'),
(1949, 259, 1899, 120, 100.00, 20.00, 26400.00, '2025-10-16 22:06:16'),
(1950, 260, 2562, 1, 100.00, 20.00, 360.00, '2025-10-21 12:05:34'),
(1951, 260, 1903, 1, 100.00, 20.00, 360.00, '2025-10-21 12:05:34'),
(1952, 260, 2274, 1, 100.00, 20.00, 360.00, '2025-10-21 12:05:34');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `setting_key` varchar(50) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `setting_key`, `setting_value`, `created_at`, `updated_at`) VALUES
(1, 'company_name', 'Firma Adı A.Ş.', '2025-01-16 15:12:53', '2025-01-16 15:12:53'),
(2, 'company_address', 'Örnek Mahalle, Örnek Sokak No:1', '2025-01-16 15:12:53', '2025-01-16 15:12:53'),
(3, 'company_phone', '+90 123 456 7890', '2025-01-16 15:12:53', '2025-01-16 15:12:53'),
(4, 'company_email', 'info@firmaadi.com', '2025-01-16 15:12:53', '2025-01-16 15:12:53'),
(5, 'company_tax_office', 'Vergi Dairesi', '2025-01-16 15:12:53', '2025-01-16 15:12:53'),
(6, 'company_tax_number', '1234567890', '2025-01-16 15:12:53', '2025-01-16 15:12:53'),
(7, 'quote_note_template', 'Bu teklif 30 gün geçerlidir.\nFiyatlara KDV dahildir.\nTeslimat süresi sipariş onayından sonra 5 iş günüdür.', '2025-01-16 15:12:53', '2025-01-16 15:12:53');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `system_logs`
--

CREATE TABLE `system_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `table_name` varchar(100) DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  `old_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`old_values`)),
  `new_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`new_values`)),
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(11) NOT NULL,
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` enum('text','email','password','number','boolean') DEFAULT 'text',
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Tablo döküm verisi `system_settings`
--

INSERT INTO `system_settings` (`id`, `setting_key`, `setting_value`, `setting_type`, `description`, `created_at`, `updated_at`) VALUES
(1, 'smtp_host', '', 'text', 'SMTP Sunucu Adresi', '2025-10-22 12:26:29', '2025-10-22 12:26:29'),
(2, 'smtp_port', '587', 'number', 'SMTP Port', '2025-10-22 12:26:29', '2025-10-22 12:26:29'),
(3, 'smtp_username', '', 'email', 'SMTP Kullanıcı Adı', '2025-10-22 12:26:29', '2025-10-22 12:26:29'),
(4, 'smtp_password', '', 'password', 'SMTP Şifre', '2025-10-22 12:26:29', '2025-10-22 12:26:29'),
(5, 'smtp_encryption', 'tls', 'text', 'SMTP Şifreleme (tls/ssl)', '2025-10-22 12:26:29', '2025-10-22 12:26:29'),
(6, 'smtp_from_email', '', 'email', 'Gönderen E-posta', '2025-10-22 12:26:29', '2025-10-22 12:26:29'),
(7, 'smtp_from_name', 'CRM Pro', 'text', 'Gönderen Adı', '2025-10-22 12:26:29', '2025-10-22 12:26:29'),
(8, 'notification_email_enabled', '0', 'boolean', 'E-posta Bildirimleri Aktif', '2025-10-22 12:26:29', '2025-10-22 12:26:29'),
(9, 'notification_system_enabled', '1', 'boolean', 'Sistem Bildirimleri Aktif', '2025-10-22 12:26:29', '2025-10-22 12:26:29'),
(10, 'low_stock_threshold', '10', 'number', 'Düşük Stok Uyarı Eşiği', '2025-10-22 12:26:29', '2025-10-22 12:26:29'),
(11, 'quote_expiry_days', '30', 'number', 'Teklif Geçerlilik Süresi (Gün)', '2025-10-22 12:26:29', '2025-10-22 12:26:29'),
(12, 'backup_enabled', '0', 'boolean', 'Otomatik Yedekleme Aktif', '2025-10-22 12:26:29', '2025-10-22 12:26:29'),
(13, 'backup_frequency', 'daily', 'text', 'Yedekleme Sıklığı', '2025-10-22 12:26:29', '2025-10-22 12:26:29'),
(14, 'system_timezone', 'Europe/Istanbul', 'text', 'Sistem Saat Dilimi', '2025-10-22 12:26:29', '2025-10-22 12:26:29'),
(15, 'date_format', 'd.m.Y', 'text', 'Tarih Formatı', '2025-10-22 12:26:29', '2025-10-22 12:26:29'),
(16, 'currency_symbol', '₺', 'text', 'Para Birimi Sembolü', '2025-10-22 12:26:29', '2025-10-22 12:26:29'),
(17, 'items_per_page', '10', 'number', 'Sayfa Başına Kayıt Sayısı', '2025-10-22 12:26:29', '2025-10-22 12:26:29');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `two_factor_codes`
--

CREATE TABLE `two_factor_codes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(6) NOT NULL,
  `expiry` datetime NOT NULL,
  `used` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `full_name`, `role`, `last_login`, `created_at`, `updated_at`) VALUES
(4, 'admin', '$2y$10$eK4.jN3LFWFLxNbsaLycv.DraBITjVkKfsa2TJYj2oHezF/qCv84m', 'admin@example.com', 'OtelDeposu', 'admin', '2025-10-22 11:59:49', '2025-01-16 16:30:51', '2025-10-22 11:59:49'),
(6, 'TUĞBA ÖZCAN', '$2y$10$WMHAIGelwjlcX8uwMk.d1.E4pwPwQx0qVhc95shAFkXiPSr9MoHFq', 'info@hepsibuklet.com', 'TUĞBA ÖZCAN', 'user', '2025-06-25 14:07:31', '2025-06-24 15:07:07', '2025-06-25 11:07:31');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_permissions`
--

CREATE TABLE `user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_activity_logs_user` (`user_id`);

--
-- Tablo için indeksler `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Tablo için indeksler `email_queue`
--
ALTER TABLE `email_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `created_at` (`created_at`);

--
-- Tablo için indeksler `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_login_attempts_ip` (`ip_address`),
  ADD KEY `idx_login_attempts_username` (`username`);

--
-- Tablo için indeksler `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `is_read` (`is_read`),
  ADD KEY `created_at` (`created_at`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_category` (`category_id`);

--
-- Tablo için indeksler `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `quote_number` (`quote_number`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `idx_quotes_customer` (`customer_id`);

--
-- Tablo için indeksler `quote_items`
--
ALTER TABLE `quote_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_quote_items_quote` (`quote_id`),
  ADD KEY `idx_quote_items_product` (`product_id`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_key` (`setting_key`);

--
-- Tablo için indeksler `system_logs`
--
ALTER TABLE `system_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `action` (`action`),
  ADD KEY `created_at` (`created_at`);

--
-- Tablo için indeksler `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_key` (`setting_key`);

--
-- Tablo için indeksler `two_factor_codes`
--
ALTER TABLE `two_factor_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Tablo için indeksler `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- Tablo için AUTO_INCREMENT değeri `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `email_queue`
--
ALTER TABLE `email_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3259;

--
-- Tablo için AUTO_INCREMENT değeri `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- Tablo için AUTO_INCREMENT değeri `quote_items`
--
ALTER TABLE `quote_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1953;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `system_logs`
--
ALTER TABLE `system_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `two_factor_codes`
--
ALTER TABLE `two_factor_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Tablo kısıtlamaları `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD CONSTRAINT `dashboard_widgets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `password_resets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `quotes`
--
ALTER TABLE `quotes`
  ADD CONSTRAINT `quotes_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `quotes_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Tablo kısıtlamaları `quote_items`
--
ALTER TABLE `quote_items`
  ADD CONSTRAINT `quote_items_ibfk_1` FOREIGN KEY (`quote_id`) REFERENCES `quotes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quote_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Tablo kısıtlamaları `system_logs`
--
ALTER TABLE `system_logs`
  ADD CONSTRAINT `system_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Tablo kısıtlamaları `two_factor_codes`
--
ALTER TABLE `two_factor_codes`
  ADD CONSTRAINT `two_factor_codes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD CONSTRAINT `user_permissions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
