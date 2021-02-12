-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 12 fév. 2021 à 18:34
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `loobv_preprod`
--

-- --------------------------------------------------------

--
-- Structure de la table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'W9cqc6kpluxcXQsuHxwJfD09uT1gogXY', 1, '2020-11-19 05:55:58', '2020-11-19 05:55:57', '2020-11-19 05:55:58'),
(2, 2, 'VASk385nfsJjuPN6toeYYzi098NRZYo5', 1, '2020-11-19 05:55:58', '2020-11-19 05:55:58', '2020-11-19 05:55:58'),
(3, 3, 'IXmLeNuRr3pFTASHEfXWojfJXaMxDHSq', 1, '2020-11-19 05:55:58', '2020-11-19 05:55:58', '2020-11-19 05:55:58'),
(4, 4, 'CQMhRjE8wTYmU2vOUzrEB9BelCxUCRLU', 1, '2020-11-19 05:55:58', '2020-11-19 05:55:58', '2020-11-19 05:55:58'),
(5, 5, 'g7jGpzddFZdbrL5617QLNKcW8IYmLVUt', 1, '2020-11-19 05:55:58', '2020-11-19 05:55:58', '2020-11-19 05:55:58'),
(6, 6, 'uKZoLy3g1UrG6Vz8jOUzKxFv33A8fMxx', 1, '2020-11-19 05:55:58', '2020-11-19 05:55:58', '2020-11-19 05:55:58'),
(7, 7, 'vKxucHe47jzw2Wh5DdIYOEkjxtJOdpVc', 1, '2020-12-13 20:36:21', '2020-12-13 20:36:21', '2020-12-13 20:36:21'),
(8, 8, 'u7zjWylbe2TkKVoOZfsgX9O5jYTdM5jE', 1, '2021-02-08 15:40:44', '2021-02-08 15:40:44', '2021-02-08 15:40:44');

-- --------------------------------------------------------

--
-- Structure de la table `booking`
--

CREATE TABLE `booking` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) NOT NULL,
  `booking_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` bigint(20) DEFAULT NULL,
  `total` double(16,5) NOT NULL,
  `number_of_guest` int(11) NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buyer` bigint(20) DEFAULT NULL,
  `owner` bigint(20) DEFAULT NULL,
  `payment_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkout_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` bigint(20) NOT NULL,
  `end_date` bigint(20) NOT NULL,
  `start_time` bigint(20) NOT NULL,
  `end_time` bigint(20) NOT NULL,
  `created_date` bigint(20) NOT NULL,
  `total_minutes` bigint(20) NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` text COLLATE utf8mb4_unicode_ci DEFAULT '\'\\\'\\\'\''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `booking`
--

INSERT INTO `booking` (`ID`, `booking_id`, `booking_description`, `service_id`, `total`, `number_of_guest`, `first_name`, `last_name`, `email`, `phone`, `address`, `buyer`, `owner`, `payment_type`, `checkout_data`, `token_code`, `currency`, `note`, `start_date`, `end_date`, `start_time`, `end_time`, `created_date`, `total_minutes`, `status`, `confirm`, `service_type`, `number`, `transaction_id`) VALUES
(1, 41612975832, 'Booking at Honda Civic', 4, 600.00000, 0, 'Marshall', 'Lott', 'cuhuxam@mailinator.com', '+1 (101) 757-1927', 'At ut odit et conseq', 8, 1, 'attente de paiement', 'YToxMTp7czo5OiJzZXJ2aWNlSUQiO2k6NDtzOjEzOiJzZXJ2aWNlT2JqZWN0IjtzOjM0MjQ6Ik86ODoic3RkQ2xhc3MiOjM3OntzOjc6InBvc3RfaWQiO2k6NDtzOjEwOiJwb3N0X3RpdGxlIjtzOjExOiJIb25kYSBDaXZpYyI7czo5OiJwb3N0X3NsdWciO3M6MTE6ImhvbmRhLWNpdmljIjtzOjEyOiJwb3N0X2NvbnRlbnQiO3M6MTM2NjoiPHAgc3R5bGU9ImJveC1zaXppbmc6IGJvcmRlci1ib3g7IG1hcmdpbjogMHB4IDBweCAxMHB4OyBjb2xvcjogIzVlNmQ3NzsgZm9udC1mYW1pbHk6IFBvcHBpbnMsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTRweDsgYmFja2dyb3VuZC1jb2xvcjogI2ZmZmZmZjsiPlRoZSBjb21wYW55IGNvbnRpbnVlZCB0byB3b3JrIGF0IGl0cyByZWd1bGFyIHBhY2UuIEluIDE5NzIsIHRoZSBQMjUwIFVycmFjbywgdGhlIDQwMCBHVCBKYXJhbWEsIHRoZSA0MDAgR1QgRXNwYWRhIGFuZCB0aGUgUDQwMCBNaXVyYSBTViB3ZXJlIGluIGZ1bGwgcHJvZHVjdGlvbi4gVGhhdCB5ZWFyLCBpbiBhbiBhdHRlbXB0IHRvIGltcHJvdmUgc2FsZXMgdGhhdCB3ZXJlIGZyYW5rbHkgcXVpdGUgZGlzYXBwb2ludGluZyB1bnRpbCB0aGVuLCB0aGUgSmFyYW1hIGhhbmQgYSAzNjUtaHAgZW5naW5lIGFuZCB3YXMgZHViYmVkIHRoZSBKYXJhbWEgUy48L3A+DQo8cCBzdHlsZT0iYm94LXNpemluZzogYm9yZGVyLWJveDsgbWFyZ2luOiAwcHggMHB4IDEwcHg7IGNvbG9yOiAjNWU2ZDc3OyBmb250LWZhbWlseTogUG9wcGlucywgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4OyBiYWNrZ3JvdW5kLWNvbG9yOiAjZmZmZmZmOyI+SW4gMTk3MiwgdGhlIFVycmFjbywgd2hpY2ggaGFkIGV4cGVyaWVuY2VkIHNldmVyYWwgaW5pdGlhbCBzbG93ZG93bnMsIHdhcyBmaW5hbGx5IHB1dCBpbnRvIHByb2R1Y3Rpb24uIEFsbW9zdCBpbmV2aXRhYmx5LCB0aGUgUyB2ZXJzaW9uIGFsc28gYXJyaXZlZCBpbiBPY3RvYmVyIG9mIHRoYXQgeWVhci4gSW4gdGhpcyBjYXNlLCB0aGUgZ29hbCB3YXMgbm90IHRvIGVuaGFuY2UgdGhlIGNhciZyc3F1bztzIHBlcmZvcm1hbmNlIGJ1dCB0byBpbXByb3ZlIGl0cyBvdmVyYWxsIHF1YWxpdHksIHdoaWNoIGhhZCBiZWVuIG5lZ2xlY3RlZCBpbiB0aGUgaGFzdGUgdG8gc3RhcnQgcHJvZHVjdGlvbi48L3A+DQo8cCBzdHlsZT0iYm94LXNpemluZzogYm9yZGVyLWJveDsgbWFyZ2luOiAwcHggMHB4IDEwcHg7IGNvbG9yOiAjNWU2ZDc3OyBmb250LWZhbWlseTogUG9wcGlucywgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4OyBiYWNrZ3JvdW5kLWNvbG9yOiAjZmZmZmZmOyI+VGhlIHByb2R1Y3Rpb24gbW9kZWwgb2YgdGhlIENvdW50YWNoIHdhcyBjb2RlbmFtZWQgTFAgNDAwIGJlY2F1c2UgaXRzIFYxMiAmbmRhc2g7IHBvc2l0aW9uZWQgbG9uZ2l0dWRpbmFsbHkgYmVoaW5kIHRoZSBjb2NrcGl0ICZuZGFzaDsgd2FzIGluY3JlYXNlZCB0byBhbiBpZGVhbCBkaXNwbGFjZW1lbnQgb2YgNCBsaXRyZXMgKDM5MjkgY2MpLiBUaGlzIG1vZGVsIGRlYnV0ZWQgYXQgdGhlIDE5NzMgR2VuZXZhIE1vdG9yIFNob3cuPC9wPiI7czoxNjoicG9zdF9kZXNjcmlwdGlvbiI7czozMzQ6IkluIDE5NzIsIHRoZSBVcnJhY28sIHdoaWNoIGhhZCBleHBlcmllbmNlZCBzZXZlcmFsIGluaXRpYWwgc2xvd2Rvd25zLCB3YXMgZmluYWxseSBwdXQgaW50byBwcm9kdWN0aW9uLiBBbG1vc3QgaW5ldml0YWJseSwgdGhlIFMgdmVyc2lvbiBhbHNvIGFycml2ZWQgaW4gT2N0b2JlciBvZiB0aGF0IHllYXIuIEluIHRoaXMgY2FzZSwgdGhlIGdvYWwgd2FzIG5vdCB0byBlbmhhbmNlIHRoZSBjYXLigJlzIHBlcmZvcm1hbmNlIGJ1dCB0byBpbXByb3ZlIGl0cyBvdmVyYWxsIHF1YWxpdHksIHdoaWNoIGhhZCBiZWVuIG5lZ2xlY3RlZCBpbiB0aGUgaGFzdGUgdG8gc3RhcnQgcHJvZHVjdGlvbi4iO3M6NjoiYXV0aG9yIjtpOjE7czoxMDoiY3JlYXRlZF9hdCI7czoxMDoiMTU4NjI0NTA5MyI7czoxMjoibG9jYXRpb25fbGF0IjtkOjQ4Ljg1NjU4O3M6MTI6ImxvY2F0aW9uX2xuZyI7ZDoyLjM1MTgzO3M6MTY6ImxvY2F0aW9uX2FkZHJlc3MiO3M6MTM6IlBhcmlzLCBGcmFuY2UiO3M6MTM6ImxvY2F0aW9uX3pvb20iO3M6MjoiMTIiO3M6MTQ6ImxvY2F0aW9uX3N0YXRlIjtOO3M6MTc6ImxvY2F0aW9uX3Bvc3Rjb2RlIjtOO3M6MTY6ImxvY2F0aW9uX2NvdW50cnkiO3M6NjoiRnJhbmNlIjtzOjEzOiJsb2NhdGlvbl9jaXR5IjtzOjU6IlBhcmlzIjtzOjc6ImdhbGxlcnkiO3M6MjM6IjI5NCwyOTcsMjkyLDI5NSwyOTMsMjk2IjtzOjEyOiJ0aHVtYm5haWxfaWQiO3M6MzoiMjk0IjtzOjg6InF1YW50aXR5IjtpOjU7czoxMDoiZXF1aXBtZW50cyI7czoyOTg6ImE6NDp7aTo5MDthOjM6e3M6NjoiY2hvb3NlIjtzOjM6InllcyI7czo1OiJwcmljZSI7czozOiIwLjIiO3M6NjoiY3VzdG9tIjtiOjA7fWk6OTM7YTozOntzOjY6ImNob29zZSI7czozOiJ5ZXMiO3M6NToicHJpY2UiO3M6MzoiMC4yIjtzOjY6ImN1c3RvbSI7YjowO31pOjg5O2E6Mzp7czo2OiJjaG9vc2UiO3M6MzoieWVzIjtzOjU6InByaWNlIjtzOjM6IjAuMiI7czo2OiJjdXN0b20iO2I6MDt9aTo4ODthOjM6e3M6NjoiY2hvb3NlIjtzOjM6InllcyI7czo1OiJwcmljZSI7czozOiIwLjUiO3M6NjoiY3VzdG9tIjtiOjA7fX0iO3M6ODoiY2FyX3R5cGUiO3M6MjoiNjAiO3M6ODoiZmVhdHVyZXMiO3M6MTc6IjgxLDgyLDgzLDg0LDg1LDg2IjtzOjEyOiJib29raW5nX2Zvcm0iO3M6MTU6Imluc3RhbnRfZW5xdWlyeSI7czoxMDoiYmFzZV9wcmljZSI7ZDo2MDtzOjE5OiJlbmFibGVfY2FuY2VsbGF0aW9uIjtzOjI6Im9uIjtzOjEzOiJjYW5jZWxfYmVmb3JlIjtpOjQ7czoxOToiY2FuY2VsbGF0aW9uX2RldGFpbCI7czoyOTQ6IlRoZSBtYWluIGNoYXJhY3RlcmlzdGljIG9mIHRoZSBob3VzZSBpcyBob3cgbGl0dGxlIGl0IGltcGFjdHMgb24gdGhlIHN1cnJvdW5kaW5ncyBpbiBvcmRlciB0byBwcmVzZXJ2ZSB0aGUgbmF0dXJlLiBTaW1wbGUgZGVzaWducywgaGFuZCBjcmFmdGVkIGZ1cm5pdHVyZSwgY2xheSB0aWxlcyAodHlwaWNhbCBNYWpvcmNhbiBtYXRlcmlhbCB0aGF0IHRlbGxzIHRoZSBzdG9yaWVzIGxpdmVkIHRoZXJlKSBhbmQgYmVhbXMgY3JlYXRlIGEgc3BhY2Ugd2hlcmUgY29tZm9ydCBhbmQgdHJhZGl0aW9uIGdvIHRvZ2V0aGVyLiI7czo2OiJyYXRpbmciO047czoxMToiaXNfZmVhdHVyZWQiO3M6Mjoib24iO3M6OToicGFzc2VuZ2VyIjtpOjQ7czoxMDoiZ2Vhcl9zaGlmdCI7czo0OiJBdXRvIjtzOjc6ImJhZ2dhZ2UiO2k6ODtzOjQ6ImRvb3IiO2k6NDtzOjU6InZpZGVvIjtzOjQzOiJodHRwczovL3d3dy55b3V0dWJlLmNvbS93YXRjaD92PTJvYkwxb1BwRVBJIjtzOjY6InN0YXR1cyI7czo3OiJwdWJsaXNoIjtzOjk6InBvc3RfdHlwZSI7czozOiJjYXIiO3M6MTU6ImRpc2NvdW50X2J5X2RheSI7czo2OiJhOjA6e30iO3M6MTQ6Imluc3VyYW5jZV9wbGFuIjtOO30iO3M6MTE6InNlcnZpY2VUeXBlIjtzOjM6ImNhciI7czo5OiJiYXNlUHJpY2UiO2Q6NjAwO3M6MTQ6ImVxdWlwbWVudFByaWNlIjtpOjA7czoxNDoiaW5zdXJhbmNlUHJpY2UiO2k6MDtzOjg6InN1YlRvdGFsIjtkOjYwMDtzOjM6InRheCI7YToyOntzOjg6ImluY2x1ZGVkIjtzOjI6Im9uIjtzOjM6InRheCI7ZDoxODt9czo2OiJhbW91bnQiO2Q6NjAwO3M6ODoiY2FydERhdGEiO2E6MTM6e3M6NToiY2FySUQiO2k6NDtzOjY6Im51bWJlciI7aToxO3M6OToic3RhcnREYXRlIjtpOjE2MTMwNjI4MDA7czo3OiJlbmREYXRlIjtpOjE2MTM4NDA0MDA7czo5OiJzdGFydFRpbWUiO2k6MTYxMjg5NDUwMDtzOjc6ImVuZFRpbWUiO2k6MTYxMjg5NTQwMDtzOjEzOiJzdGFydERhdGVUaW1lIjtpOjE2MTMwNjczMDA7czoxMToiZW5kRGF0ZVRpbWUiO2k6MTYxMzg0NTgwMDtzOjExOiJib29raW5nVHlwZSI7czozOiJkYXkiO3M6MTA6Im51bWJlckhvdXIiO2Q6MjE3O3M6OToibnVtYmVyRGF5IjtpOjEwO3M6MTM6ImVxdWlwbWVudERhdGEiO2E6MDp7fXM6MTM6Imluc3VyYW5jZURhdGEiO2E6MDp7fX1zOjk6InVzZXJfZGF0YSI7YTo4OntzOjU6ImVtYWlsIjtzOjIyOiJjdWh1eGFtQG1haWxpbmF0b3IuY29tIjtzOjk6ImZpcnN0TmFtZSI7czo4OiJNYXJzaGFsbCI7czo4OiJsYXN0TmFtZSI7czo0OiJMb3R0IjtzOjU6InBob25lIjtzOjE3OiIrMSAoMTAxKSA3NTctMTkyNyI7czo3OiJhZGRyZXNzIjtzOjIwOiJBdCB1dCBvZGl0IGV0IGNvbnNlcSI7czo0OiJjaXR5IjtzOjE5OiJRdWFlcmF0IG5vc3RydWQgc2l0IjtzOjg6InBvc3RDb2RlIjtzOjIwOiJDb25zZXF1YXR1ciByZWN1c2FuZCI7czo3OiJjb3VudHJ5IjtOO319', '283edc6eddf28c7131b51c4693fcf855', 'a:8:{s:4:\"name\";s:33:\"[:en]Francs CFA[:fr]Francs CFA[:]\";s:6:\"symbol\";s:3:\"CFA\";s:4:\"unit\";s:3:\"USD\";s:8:\"exchange\";s:1:\"1\";s:8:\"position\";s:4:\"left\";s:18:\"thousand_separator\";s:1:\",\";s:17:\"decimal_separator\";s:1:\".\";s:16:\"currency_decimal\";s:1:\"0\";}', NULL, 1613062800, 1613840400, 1613067300, 1613845800, 1612975832, 1440, 'incomplete', NULL, 'car', '1', '\'\\\'\\\'\'');

-- --------------------------------------------------------

--
-- Structure de la table `car`
--

CREATE TABLE `car` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` bigint(20) NOT NULL,
  `created_at` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_lat` double(10,6) DEFAULT 48.856613,
  `location_lng` double(10,6) DEFAULT 2.352222,
  `location_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_zoom` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '12',
  `location_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_postcode` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `equipments` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_form` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'instant',
  `base_price` double(16,5) DEFAULT NULL,
  `enable_cancellation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_before` int(11) DEFAULT NULL,
  `cancellation_detail` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` double(8,1) DEFAULT NULL,
  `is_featured` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `passenger` int(11) DEFAULT 1,
  `gear_shift` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baggage` int(11) DEFAULT NULL,
  `door` int(11) DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'car',
  `discount_by_day` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_plan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `car`
--

INSERT INTO `car` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_description`, `author`, `created_at`, `location_lat`, `location_lng`, `location_address`, `location_zoom`, `location_state`, `location_postcode`, `location_country`, `location_city`, `gallery`, `thumbnail_id`, `quantity`, `equipments`, `car_type`, `features`, `booking_form`, `base_price`, `enable_cancellation`, `cancel_before`, `cancellation_detail`, `rating`, `is_featured`, `passenger`, `gear_shift`, `baggage`, `door`, `video`, `status`, `post_type`, `discount_by_day`, `insurance_plan`) VALUES
(2, '2020 Nissan Titan Pro-4X', '2020-nissan-titan-pro-4x', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #5e6d77; font-family: Poppins, sans-serif; font-size: 14px; background-color: #ffffff;\">The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #5e6d77; font-family: Poppins, sans-serif; font-size: 14px; background-color: #ffffff;\">In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car&rsquo;s performance but to improve its overall quality, which had been neglected in the haste to start production.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #5e6d77; font-family: Poppins, sans-serif; font-size: 14px; background-color: #ffffff;\">The production model of the Countach was codenamed LP 400 because its V12 &ndash; positioned longitudinally behind the cockpit &ndash; was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>', 'The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.', 1, '1586244027', 41.875600, -87.624400, '[:en]Chicago, United States of America[:vi][:]', '12.084602103345945', '[:en][:vi][:]', NULL, '[:en]United States of America[:vi]United States of', '[:en]Chicago[:vi][:]', '289,288,291,290,284,285,286,287,282,283', '289', 10, 'a:4:{i:90;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:93;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:89;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:88;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.5\";s:6:\"custom\";b:0;}}', '61', '81,82,83,84,85,86', 'instant', 55.00000, 'on', 5, '[:en]The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together.[:vi][:]', NULL, 'on', 4, '[:en]Auto[:vi][:]', 8, 4, 'https://www.youtube.com/watch?v=2obL1oPpEPI', 'publish', 'car', 'a:0:{}', NULL),
(4, 'Honda Civic', 'honda-civic', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #5e6d77; font-family: Poppins, sans-serif; font-size: 14px; background-color: #ffffff;\">The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #5e6d77; font-family: Poppins, sans-serif; font-size: 14px; background-color: #ffffff;\">In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car&rsquo;s performance but to improve its overall quality, which had been neglected in the haste to start production.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #5e6d77; font-family: Poppins, sans-serif; font-size: 14px; background-color: #ffffff;\">The production model of the Countach was codenamed LP 400 because its V12 &ndash; positioned longitudinally behind the cockpit &ndash; was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>', 'In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.', 1, '1586245093', 48.856580, 2.351830, 'Paris, France', '12', NULL, NULL, 'France', 'Paris', '294,297,292,295,293,296', '294', 5, 'a:4:{i:90;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:93;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:89;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:88;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.5\";s:6:\"custom\";b:0;}}', '60', '81,82,83,84,85,86', 'instant_enquiry', 60.00000, 'on', 4, 'The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together.', NULL, 'on', 4, 'Auto', 8, 4, 'https://www.youtube.com/watch?v=2obL1oPpEPI', 'publish', 'car', 'a:0:{}', NULL),
(5, 'VinFast Fadil', 'vinfast-fadil', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #5e6d77; font-family: Poppins, sans-serif; font-size: 14px; background-color: #ffffff;\">The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #5e6d77; font-family: Poppins, sans-serif; font-size: 14px; background-color: #ffffff;\">In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car&rsquo;s performance but to improve its overall quality, which had been neglected in the haste to start production.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #5e6d77; font-family: Poppins, sans-serif; font-size: 14px; background-color: #ffffff;\">The production model of the Countach was codenamed LP 400 because its V12 &ndash; positioned longitudinally behind the cockpit &ndash; was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>', NULL, 1, '1586247821', 48.856580, 2.351830, 'Paris, France', '12.459371419731522', NULL, NULL, 'France', 'Paris', '298,299,300,301,304,302,303', '298', 10, 'a:4:{i:90;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:93;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:89;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:88;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.5\";s:6:\"custom\";b:0;}}', '60', '81,82,83,84,85,86', 'instant', 75.00000, 'on', 2, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here. If you have to cancel your class, we offer you a credit to your account if you cancel before the 48 hours, but do not offer refunds. You may use these credits towards any future class', NULL, 'off', 4, 'Auto', 8, 4, 'https://www.youtube.com/watch?v=2obL1oPpEPI', 'publish', 'car', 'a:0:{}', NULL),
(6, 'Vinfast Lux A2.0', 'vinfast-lux-a20', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car&rsquo;s performance but to improve its overall quality, which had been neglected in the haste to start production.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">The production model of the Countach was codenamed LP 400 because its V12 &ndash; positioned longitudinally behind the cockpit &ndash; was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>', 'In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.', 1, '1586266193', 48.856580, 2.351830, 'Paris, France', '12', NULL, NULL, 'France', 'Paris', '329,330,325,326,327,328', '329', 10, 'a:5:{i:90;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:2:\"10\";s:6:\"custom\";b:0;}i:93;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:1:\"7\";s:6:\"custom\";b:0;}i:89;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:1:\"4\";s:6:\"custom\";b:0;}i:88;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:2:\"10\";s:6:\"custom\";b:0;}i:95;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:1:\"5\";s:6:\"custom\";b:0;}}', '59', '81,82,83,84,85,86', 'instant_enquiry', 50.00000, 'on', 5, 'The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.', NULL, 'on', 4, 'Auto', 8, 4, 'https://www.youtube.com/watch?v=2obL1oPpEPI', 'publish', 'car', 'a:2:{i:0;a:4:{s:4:\"name\";s:8:\"3-5 days\";s:4:\"from\";s:1:\"3\";s:2:\"to\";s:1:\"5\";s:5:\"price\";s:2:\"40\";}i:1;a:4:{s:4:\"name\";s:8:\"6-7 days\";s:4:\"from\";s:1:\"6\";s:2:\"to\";s:1:\"7\";s:5:\"price\";s:2:\"35\";}}', 'a:3:{i:0;a:5:{s:4:\"name\";s:16:\"Insurance Plan 1\";s:11:\"name_unique\";s:16:\"insurance-plan-1\";s:11:\"description\";s:74:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\";s:5:\"price\";s:2:\"20\";s:5:\"fixed\";s:2:\"on\";}i:1;a:5:{s:4:\"name\";s:16:\"Insurance Plan 2\";s:11:\"name_unique\";s:16:\"insurance-plan-2\";s:11:\"description\";s:74:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\";s:5:\"price\";s:2:\"25\";s:5:\"fixed\";s:2:\"on\";}i:2;a:5:{s:4:\"name\";s:16:\"Insurance Plan 3\";s:11:\"name_unique\";s:16:\"insurance-plan-3\";s:11:\"description\";s:74:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\";s:5:\"price\";s:1:\"5\";s:5:\"fixed\";s:0:\"\";}}'),
(7, 'Honda Accord 2020', 'honda-accord-2020', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car&rsquo;s performance but to improve its overall quality, which had been neglected in the haste to start production.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">The production model of the Countach was codenamed LP 400 because its V12 &ndash; positioned longitudinally behind the cockpit &ndash; was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>', 'In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.', 1, '1586267383', 48.856580, 2.351830, 'Paris, France', '12', NULL, NULL, 'France', 'Paris', '338,335,336,337,331,332,333,334', '338', 10, 'a:5:{i:90;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:2:\"10\";s:6:\"custom\";b:0;}i:93;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:1:\"7\";s:6:\"custom\";b:0;}i:89;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:1:\"4\";s:6:\"custom\";b:0;}i:88;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:2:\"10\";s:6:\"custom\";b:0;}i:95;a:3:{s:6:\"choose\";s:2:\"no\";s:5:\"price\";s:1:\"5\";s:6:\"custom\";b:0;}}', '58', '81,82,83,84,85,86', 'instant', 45.00000, 'on', 5, 'The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.', NULL, 'on', 4, 'Auto', 8, 4, 'https://www.youtube.com/watch?v=2obL1oPpEPI', 'publish', 'car', 'a:0:{}', 'a:0:{}'),
(9, 'Toyota Camry 2020', 'toyota-camry-2020', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car&rsquo;s performance but to improve its overall quality, which had been neglected in the haste to start production.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">The production model of the Countach was codenamed LP 400 because its V12 &ndash; positioned longitudinally behind the cockpit &ndash; was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>', 'The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.', 1, '1586268028', 48.852941, 2.397578, 'Paris, France', '12', NULL, NULL, 'France', 'Paris', '341,342,340,339', '341', 10, 'a:4:{i:90;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:93;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:89;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:88;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.5\";s:6:\"custom\";b:0;}}', '59', '81,82,83,84,85,86', 'instant_enquiry', 45.00000, 'on', 5, 'The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.', NULL, 'off', 4, 'Auto', 8, 4, 'https://www.youtube.com/watch?v=2obL1oPpEPI', 'publish', 'car', 'a:0:{}', NULL),
(10, 'BMW M6 Gran Coupe', 'bmw-m6-gran-coupe', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car&rsquo;s performance but to improve its overall quality, which had been neglected in the haste to start production.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">The production model of the Countach was codenamed LP 400 because its V12 &ndash; positioned longitudinally behind the cockpit &ndash; was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>', 'The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.', 1, '1586270320', 48.856580, 2.351830, 'Paris, France', '12', NULL, NULL, 'France', 'Paris', '345,346,347,343,344', '345', 10, 'a:4:{i:90;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:93;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:89;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:88;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.5\";s:6:\"custom\";b:0;}}', '61', '81,82,83,84,85,86', 'instant_enquiry', 100.00000, 'on', 2, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here. If you have to cancel your class, we offer you a credit to your account if you cancel before the 48 hours, but do not offer refunds. You may use these credits towards any future class', NULL, 'on', 4, 'Auto', 8, 4, 'https://www.youtube.com/watch?v=2obL1oPpEPI', 'publish', 'car', 'a:0:{}', NULL),
(11, '2019 Honda Clarity', '2019-honda-clarity', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car&rsquo;s performance but to improve its overall quality, which had been neglected in the haste to start production.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">The production model of the Countach was codenamed LP 400 because its V12 &ndash; positioned longitudinally behind the cockpit &ndash; was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>', 'In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.', 1, '1586271419', 41.874171, -87.645307, 'Chicago, United States of America', '11.267200527152067', NULL, NULL, 'United States of America', 'Chicago', '351,350,348,349,353,352', '351', 15, 'a:4:{i:90;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:93;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:89;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:88;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.5\";s:6:\"custom\";b:0;}}', '63', '81,82,83,84,85,86', 'instant', 50.00000, 'on', 2, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here. If you have to cancel your class, we offer you a credit to your account if you cancel before the 48 hours, but do not offer refunds. You may use these credits towards any future class', NULL, 'on', 4, 'Auto', 8, 4, 'https://www.youtube.com/watch?v=2obL1oPpEPI', 'publish', 'car', 'a:0:{}', NULL),
(12, '2019 Audi S3', '2019-audi-s3', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car&rsquo;s performance but to improve its overall quality, which had been neglected in the haste to start production.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">The production model of the Countach was codenamed LP 400 because its V12 &ndash; positioned longitudinally behind the cockpit &ndash; was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>', 'The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.', 1, '1586272186', 48.848649, 2.338870, 'Paris, France', '12', NULL, NULL, 'France', 'Paris', '357,359,358,356,354,355', '357', 10, 'a:4:{i:90;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:93;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:89;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:88;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.5\";s:6:\"custom\";b:0;}}', '58', '81,82,83,84,85,86', 'instant', 80.00000, 'on', 5, 'The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.', NULL, 'on', 4, 'Auto', 8, 4, 'https://www.youtube.com/watch?v=2obL1oPpEPI', 'publish', 'car', 'a:0:{}', NULL),
(13, 'Lamborghini', 'lamborghini', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car&rsquo;s performance but to improve its overall quality, which had been neglected in the haste to start production.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">The production model of the Countach was codenamed LP 400 because its V12 &ndash; positioned longitudinally behind the cockpit &ndash; was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>', 'The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.', 1, '1586272775', 48.869316, 2.315009, 'Paris, France', '12', NULL, NULL, 'France', 'Paris', '364,360,361,363,362', '364', 10, 'a:4:{i:90;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:93;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:89;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:88;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.5\";s:6:\"custom\";b:0;}}', '63', '81,82,83,84,85,86', 'enquiry', 200.00000, 'on', 7, 'The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.', NULL, 'off', 4, 'Auto', 8, 4, 'https://www.youtube.com/watch?v=2obL1oPpEPI', 'publish', 'car', 'a:0:{}', NULL),
(14, 'Nissan GT R', 'nissan-gt-r', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car&rsquo;s performance but to improve its overall quality, which had been neglected in the haste to start production.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">The production model of the Countach was codenamed LP 400 because its V12 &ndash; positioned longitudinally behind the cockpit &ndash; was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>', 'The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.', 1, '1586273018', 48.857798, 2.289259, 'Paris, France', '12', NULL, NULL, 'France', 'Paris', '367,365,366,368', '367', 18, 'a:4:{i:90;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:93;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:89;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:88;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.5\";s:6:\"custom\";b:0;}}', '61', '81,82,83,84,85,86', 'instant_enquiry', 45.00000, 'on', 2, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here. If you have to cancel your class, we offer you a credit to your account if you cancel before the 48 hours, but do not offer refunds. You may use these credits towards any future class', NULL, 'on', 4, 'Auto', 8, 4, 'https://www.youtube.com/watch?v=2obL1oPpEPI', 'publish', 'car', 'a:0:{}', NULL),
(15, 'Mercedes Benz', 'mercedes-benz', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car&rsquo;s performance but to improve its overall quality, which had been neglected in the haste to start production.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">The production model of the Countach was codenamed LP 400 because its V12 &ndash; positioned longitudinally behind the cockpit &ndash; was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>', 'The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.', 1, '1586274135', 48.882266, 2.351977, 'Paris, France', '12', NULL, NULL, 'France', 'Paris', '372,369,370,371', '372', 12, 'a:4:{i:90;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:93;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:89;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:88;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.5\";s:6:\"custom\";b:0;}}', '60', '81,82,83,84,85,86', 'instant', 100.00000, 'on', 3, 'The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.', NULL, 'off', 4, 'Auto', 4, 4, 'https://www.youtube.com/watch?v=2obL1oPpEPI', 'publish', 'car', 'a:0:{}', NULL),
(16, 'Honda CR-V', 'honda-cr-v', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car&rsquo;s performance but to improve its overall quality, which had been neglected in the haste to start production.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">The production model of the Countach was codenamed LP 400 because its V12 &ndash; positioned longitudinally behind the cockpit &ndash; was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>', 'The production model of the Countach was codenamed LP 400 because its V12 – positioned longitudinally behind the cockpit – was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.', 1, '1586274342', 48.826786, 2.431882, 'Paris, France', '11.71473381971117', NULL, NULL, 'France', 'Paris', '374,375,376,371,373', '374', 18, 'a:4:{i:90;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:93;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:89;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:88;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.5\";s:6:\"custom\";b:0;}}', '59', '81,82,83,84,85,86', 'instant', 60.00000, 'on', 2, 'The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.', 5.0, 'on', 4, 'Auto', 8, 4, 'https://www.youtube.com/watch?v=2obL1oPpEPI', 'publish', 'car', 'a:0:{}', NULL),
(17, 'Toyota Fortuner 2019', 'toyota-fortuner-2019', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">The company continued to work at its regular pace. In 1972, the P250 Urraco, the 400 GT Jarama, the 400 GT Espada and the P400 Miura SV were in full production. That year, in an attempt to improve sales that were frankly quite disappointing until then, the Jarama hand a 365-hp engine and was dubbed the Jarama S.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car&rsquo;s performance but to improve its overall quality, which had been neglected in the haste to start production.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; font-family: Poppins, sans-serif; font-size: 14px; color: #5e6d77; background-color: #ffffff;\">The production model of the Countach was codenamed LP 400 because its V12 &ndash; positioned longitudinally behind the cockpit &ndash; was increased to an ideal displacement of 4 litres (3929 cc). This model debuted at the 1973 Geneva Motor Show.</p>', 'In 1972, the Urraco, which had experienced several initial slowdowns, was finally put into production. Almost inevitably, the S version also arrived in October of that year. In this case, the goal was not to enhance the car’s performance but to improve its overall quality, which had been neglected in the haste to start production.', 1, '1586274639', 48.865310, 2.371228, 'Paris, France', '11.956034298658611', NULL, NULL, 'France', 'Paris', '377,379,380,378', '377', 10, 'a:5:{i:90;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:93;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:89;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.2\";s:6:\"custom\";b:0;}i:88;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:3:\"0.5\";s:6:\"custom\";b:0;}i:95;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";d:0.5;s:6:\"custom\";b:1;}}', '62', '81,82,83,84,85,86', 'instant', 30.00000, 'on', 2, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here. If you have to cancel your class, we offer you a credit to your account if you cancel before the 48 hours, but do not offer refunds. You may use these credits towards any future class', NULL, 'on', 7, 'Auto', 8, 4, 'https://www.youtube.com/watch?v=2obL1oPpEPI', 'publish', 'car', 'a:0:{}', NULL),
(18, 'New Car - 1606164837', 'new-car-1606164837', NULL, NULL, 1, '1606164837', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(19, '[:fr]Renault Clio[:en]New Car - 1606164847[:]', 'renault-clio', '[:fr]<p>jhdjsdfjhdsfjhdf</p>[:en]<p>jhdjsdfjhdsfjhdf</p>[:]', '[:fr][:en][:]', 1, '1606164847', 48.542462, 2.661989, '[:fr]21 doulevard de l\'almont[:en][:]', '11.127260879061199', '[:fr]melun[:en][:]', '77000', '[:fr]France[:en]France[:]', '[:fr]Melun[:en][:]', '71,72', '71', 1, 'a:5:{i:90;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:2:\"10\";s:6:\"custom\";b:0;}i:93;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:1:\"7\";s:6:\"custom\";b:0;}i:89;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:1:\"4\";s:6:\"custom\";b:0;}i:88;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:2:\"10\";s:6:\"custom\";b:0;}i:95;a:3:{s:6:\"choose\";s:3:\"yes\";s:5:\"price\";s:1:\"5\";s:6:\"custom\";b:0;}}', '58', '81,82,83,84,85,86', 'instant', 5000.00000, 'off', NULL, '[:fr][:en][:]', NULL, 'off', 1, '[:fr]2[:en]2[:]', 1, 5, NULL, 'publish', 'car', 'a:0:{}', 'a:0:{}'),
(20, 'New Car - 1606750898', 'new-car-1606750898', NULL, NULL, 1, '1606750898', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(22, '[:en]New Car - 1607870951[:fr]Toyota 4x4[:]', 'new-car-1607870951', '[:en][:fr][:]', '[:en][:fr][:]', 7, '1607870951', 48.856613, 2.352222, '[:en][:fr]44 Boulevard Anatole France[:]', '12', '[:en][:fr]New York[:]', '93300', '[:en][:fr]France[:]', '[:en][:fr]Aubervilliers[:]', '79', '78', 1, 'a:5:{i:90;a:3:{s:6:\"choose\";s:2:\"no\";s:5:\"price\";s:2:\"10\";s:6:\"custom\";b:0;}i:93;a:3:{s:6:\"choose\";s:2:\"no\";s:5:\"price\";s:1:\"7\";s:6:\"custom\";b:0;}i:89;a:3:{s:6:\"choose\";s:2:\"no\";s:5:\"price\";s:1:\"4\";s:6:\"custom\";b:0;}i:88;a:3:{s:6:\"choose\";s:2:\"no\";s:5:\"price\";s:2:\"10\";s:6:\"custom\";b:0;}i:95;a:3:{s:6:\"choose\";s:2:\"no\";s:5:\"price\";s:1:\"5\";s:6:\"custom\";b:0;}}', '62', NULL, 'instant', 25000.00000, 'on', 2, '[:en][:fr][:]', NULL, 'off', 4, '[:en]Manuelle[:fr][:]', 1, 4, NULL, 'pending', 'car', 'a:0:{}', 'a:0:{}'),
(23, 'New Car - 1612947758', 'new-car-1612947758', NULL, NULL, 8, '1612947758', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(24, 'New Car - 1612949387', 'new-car-1612949387', NULL, NULL, 8, '1612949387', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(25, '[:en]New Car - 1612949393[:fr]New Car - 1612949393[:]', 'new-car-1612949393', '[:en][:fr][:]', '[:en][:fr][:]', 8, '1612949393', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '62', NULL, 'instant', NULL, NULL, NULL, NULL, NULL, 'off', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(26, 'New Car - 1612949477', 'new-car-1612949477', NULL, NULL, 8, '1612949477', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(27, 'New Car - 1612949523', 'new-car-1612949523', NULL, NULL, 8, '1612949523', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(28, '[:en]New Car - 1612949550[:fr]New Car - 1612949550[:]', 'new-car-1612949550', '[:en][:fr][:]', '[:en][:fr][:]', 8, '1612949550', 48.856613, 2.352222, '[:en][:fr][:]', '12', '[:en][:fr][:]', NULL, '[:en][:fr][:]', '[:en][:fr][:]', NULL, NULL, 1, NULL, '62', NULL, 'instant', NULL, NULL, NULL, NULL, NULL, 'off', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(29, 'New Car - 1612949641', 'new-car-1612949641', NULL, NULL, 8, '1612949641', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(30, 'New Car - 1612949650', 'new-car-1612949650', NULL, NULL, 8, '1612949650', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(31, 'New Car - 1612949865', 'new-car-1612949865', NULL, NULL, 8, '1612949865', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(32, 'New Car - 1612949881', 'new-car-1612949881', NULL, NULL, 8, '1612949881', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(33, 'New Car - 1612949886', 'new-car-1612949886', NULL, NULL, 8, '1612949886', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(34, 'New Car - 1612949996', 'new-car-1612949996', NULL, NULL, 8, '1612949996', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(35, 'New Car - 1612950007', 'new-car-1612950007', NULL, NULL, 8, '1612950007', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(36, 'New Car - 1612950028', 'new-car-1612950028', NULL, NULL, 8, '1612950028', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(37, 'New Car - 1612950072', 'new-car-1612950072', NULL, NULL, 8, '1612950072', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(38, 'New Car - 1612950208', 'new-car-1612950208', NULL, NULL, 8, '1612950208', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(39, 'New Car - 1612950378', 'new-car-1612950378', NULL, NULL, 8, '1612950378', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(40, 'New Car - 1612950742', 'new-car-1612950742', NULL, NULL, 8, '1612950742', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(41, 'New Car - 1612950755', 'new-car-1612950755', NULL, NULL, 8, '1612950755', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(42, 'New Car - 1612950779', 'new-car-1612950779', NULL, NULL, 8, '1612950779', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(43, 'New Car - 1612950796', 'new-car-1612950796', NULL, NULL, 8, '1612950796', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(44, 'New Car - 1612950812', 'new-car-1612950812', NULL, NULL, 8, '1612950812', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(45, 'New Car - 1612950836', 'new-car-1612950836', NULL, NULL, 8, '1612950836', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(46, 'New Car - 1612950848', 'new-car-1612950848', NULL, NULL, 8, '1612950848', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(47, 'New Car - 1612950861', 'new-car-1612950861', NULL, NULL, 8, '1612950861', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(48, 'New Car - 1612950889', 'new-car-1612950889', NULL, NULL, 8, '1612950889', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(49, 'New Car - 1612950924', 'new-car-1612950924', NULL, NULL, 8, '1612950924', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(50, 'New Car - 1612950961', 'new-car-1612950961', NULL, NULL, 8, '1612950961', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(51, 'New Car - 1612951032', 'new-car-1612951032', NULL, NULL, 8, '1612951032', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL);
INSERT INTO `car` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_description`, `author`, `created_at`, `location_lat`, `location_lng`, `location_address`, `location_zoom`, `location_state`, `location_postcode`, `location_country`, `location_city`, `gallery`, `thumbnail_id`, `quantity`, `equipments`, `car_type`, `features`, `booking_form`, `base_price`, `enable_cancellation`, `cancel_before`, `cancellation_detail`, `rating`, `is_featured`, `passenger`, `gear_shift`, `baggage`, `door`, `video`, `status`, `post_type`, `discount_by_day`, `insurance_plan`) VALUES
(52, 'New Car - 1612951155', 'new-car-1612951155', NULL, NULL, 8, '1612951155', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(53, 'New Car - 1612951182', 'new-car-1612951182', NULL, NULL, 8, '1612951182', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(54, 'New Car - 1612951258', 'new-car-1612951258', NULL, NULL, 8, '1612951258', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(55, 'New Car - 1612951287', 'new-car-1612951287', NULL, NULL, 8, '1612951287', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(56, 'New Car - 1612951306', 'new-car-1612951306', NULL, NULL, 8, '1612951306', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(57, 'New Car - 1612951378', 'new-car-1612951378', NULL, NULL, 8, '1612951378', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(58, 'New Car - 1612951393', 'new-car-1612951393', NULL, NULL, 8, '1612951393', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(59, 'New Car - 1612951405', 'new-car-1612951405', NULL, NULL, 8, '1612951405', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(60, 'New Car - 1612951416', 'new-car-1612951416', NULL, NULL, 8, '1612951416', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(61, 'New Car - 1612951425', 'new-car-1612951425', NULL, NULL, 8, '1612951425', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(62, '[:en]New Car - 1612951612[:fr]New Car - 1612951612[:]', 'new-car-1612951612', '[:en][:fr][:]', '[:en][:fr][:]', 8, '1612951612', 48.856613, 2.352222, '[:en][:fr][:]', '7.815877595911674', '[:en][:fr][:]', NULL, '[:en][:fr][:]', '[:en][:fr][:]', NULL, NULL, 1, NULL, '62', NULL, 'instant', NULL, NULL, NULL, NULL, NULL, 'off', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(63, 'New Car - 1612951675', 'new-car-1612951675', NULL, NULL, 8, '1612951675', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(64, 'New Car - 1612951702', 'new-car-1612951702', NULL, NULL, 8, '1612951702', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(65, 'New Car - 1612951766', 'new-car-1612951766', NULL, NULL, 8, '1612951766', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(66, 'New Car - 1612951775', 'new-car-1612951775', NULL, NULL, 8, '1612951775', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(67, 'New Car - 1612951786', 'new-car-1612951786', NULL, NULL, 8, '1612951786', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(68, 'New Car - 1612951800', 'new-car-1612951800', NULL, NULL, 8, '1612951800', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(69, 'New Car - 1612951884', 'new-car-1612951884', NULL, NULL, 8, '1612951884', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(70, 'New Car - 1612951944', 'new-car-1612951944', NULL, NULL, 8, '1612951944', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(71, 'New Car - 1612952427', 'new-car-1612952427', NULL, NULL, 8, '1612952427', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(72, 'New Car - 1612953147', 'new-car-1612953147', NULL, NULL, 8, '1612953147', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(73, 'New Car - 1612953427', 'new-car-1612953427', NULL, NULL, 8, '1612953427', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(74, 'New Car - 1612953440', 'new-car-1612953440', NULL, NULL, 8, '1612953440', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(75, 'New Car - 1612953566', 'new-car-1612953566', NULL, NULL, 8, '1612953566', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(76, 'New Car - 1612953669', 'new-car-1612953669', NULL, NULL, 8, '1612953669', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(77, 'New Car - 1612953720', 'new-car-1612953720', NULL, NULL, 8, '1612953720', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(78, 'New Car - 1612953754', 'new-car-1612953754', NULL, NULL, 8, '1612953754', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(79, 'New Car - 1612953768', 'new-car-1612953768', NULL, NULL, 8, '1612953768', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(80, 'New Car - 1612953872', 'new-car-1612953872', NULL, NULL, 8, '1612953872', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(81, 'New Car - 1612954326', 'new-car-1612954326', NULL, NULL, 8, '1612954326', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(82, 'New Car - 1612954487', 'new-car-1612954487', NULL, NULL, 8, '1612954487', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL),
(83, 'New Car - 1612954512', 'new-car-1612954512', NULL, NULL, 8, '1612954512', 48.856613, 2.352222, NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'instant', NULL, NULL, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'pending', 'car', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `car_price`
--

CREATE TABLE `car_price` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `car_id` bigint(20) NOT NULL,
  `start_date` bigint(20) NOT NULL,
  `end_date` bigint(20) NOT NULL,
  `price` double(16,5) NOT NULL,
  `available` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `car_price`
--

INSERT INTO `car_price` (`ID`, `car_id`, `start_date`, `end_date`, `price`, `available`) VALUES
(1, 2, 1585731600, 1586509200, 3.00000, 'on'),
(2, 2, 1588323600, 1589101200, 3.00000, 'on'),
(3, 19, 1585933200, 1586019600, 6.00000, 'on'),
(4, 19, 1586538000, 1586624400, 6.00000, 'on'),
(5, 19, 1587142800, 1587229200, 6.00000, 'on'),
(6, 19, 1587747600, 1587834000, 6.00000, 'off'),
(7, 20, 1586019600, 1586019600, 0.00000, 'off'),
(8, 20, 1586624400, 1586624400, 0.00000, 'off'),
(9, 20, 1587229200, 1587229200, 0.00000, 'off'),
(10, 20, 1587834000, 1587834000, 0.00000, 'off'),
(11, 20, 1585933200, 1585933200, 6.00000, 'on'),
(12, 20, 1586538000, 1586538000, 6.00000, 'on'),
(13, 20, 1587142800, 1587142800, 6.00000, 'on'),
(14, 20, 1587747600, 1587747600, 6.00000, 'on'),
(15, 23, 1586106000, 1586106000, 3.00000, 'on'),
(16, 23, 1586710800, 1586710800, 3.00000, 'on'),
(17, 23, 1587315600, 1587315600, 3.00000, 'on'),
(18, 23, 1587920400, 1587920400, 3.00000, 'on'),
(19, 6, 1588266000, 1590858000, 55.00000, 'on');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author` int(11) NOT NULL,
  `comment_rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id`, `comment_title`, `comment_content`, `comment_name`, `comment_email`, `comment_author`, `comment_rate`, `post_type`, `parent`, `status`, `created_at`) VALUES
(1, 1, 'We had an excellent stay at the trullo', 'We had an excellent stay at the trullo - everything was perfect, starting with Anna’s generosity to meet us in town so we wouldn’t lose our way, to the beautiful setting of the trullo, to the fresh eggs and tomatoes for our use, to Anna’s tips and suggestions for local restaurants and eateries! A superb and memorable time away for us! So happy we discovered this place and highly recommend it!', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'home', 0, 'publish', '1578558848'),
(2, 13, 'We absolutely loved Mar\'s apartment', 'This apartment was perfect. If you have a large group (4-8 people) this listing should be your choice. It has tons of room, 2 bathrooms, and 2 showers, and it is beautiful', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'home', 0, 'publish', '1579010928'),
(3, 20, 'We absolutely loved Mar\'s apartment', 'This apartment was perfect. If you have a large group (4-8 people) this listing should be your choice. It has tons of room, 2 bathrooms, and 2 showers, and it is beautiful', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'home', 0, 'publish', '1579010948'),
(4, 21, 'We absolutely loved Mar\'s apartment', 'This apartment was perfect. If you have a large group (4-8 people) this listing should be your choice. It has tons of room, 2 bathrooms, and 2 showers, and it is beautiful', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'home', 0, 'publish', '1579010971'),
(5, 19, 'We absolutely loved Mar\'s apartmentv', 'This apartment was perfect. If you have a large group (4-8 people) this listing should be your choice. It has tons of room, 2 bathrooms, and 2 showers, and it is beautifulvvvv', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'home', 0, 'publish', '1579011007'),
(6, 12, 'We absolutely loved Mar\'s apartment', 'This apartment was perfect. If you have a large group (4-8 people) this listing should be your choice. It has tons of room, 2 bathrooms, and 2 showers, and it is beautiful', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'home', 0, 'publish', '1579011030'),
(7, 25, 'Stewart is a wonderful host', 'The house is great, in a peaceful neighborhood about 20 minutes walking distance from downtown, and right next to the Boulder creek and trailheads in the mountains. Stewart himself is extremely kind, willing to help and provides a lot of tips. An amazing experience', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'home', 0, 'publish', '1579233103'),
(8, 15, 'We absolutely loved Mar\'s apartment', 'This apartment was perfect. If you have a large group (4-8 people) this listing should be your choice. It has tons of room, 2 bathrooms, and 2 showers, and it is beautiful', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'home', 0, 'publish', '1579270806'),
(9, 4, 'We absolutely loved Mar\'s apartment', 'This apartment was perfect. If you have a large group (4-8 people) this listing should be your choice. It has tons of room, 2 bathrooms, and 2 showers, and it is beautiful', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'home', 0, 'publish', '1579270823'),
(10, 3, 'We absolutely loved Mar\'s apartment', 'This apartment was perfect. If you have a large group (4-8 people) this listing should be your choice. It has tons of room, 2 bathrooms, and 2 showers, and it is beautiful', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'home', 0, 'publish', '1579270835'),
(11, 2, 'We absolutely loved Mar\'s apartment', 'This apartment was perfect. If you have a large group (4-8 people) this listing should be your choice. It has tons of room, 2 bathrooms, and 2 showers, and it is beautiful', 'Awe Booking', 'admin@awebooking.org', 1, '4', 'home', 0, 'publish', '1579270860'),
(12, 5, 'We absolutely loved Mar\'s apartment', 'This apartment was perfect. If you have a large group (4-8 people) this listing should be your choice. It has tons of room, 2 bathrooms, and 2 showers, and it is beautiful', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'home', 0, 'publish', '1579270880'),
(13, 6, 'We absolutely loved Mar\'s apartment', 'This apartment was perfect. If you have a large group (4-8 people) this listing should be your choice. It has tons of room, 2 bathrooms, and 2 showers, and it is beautiful', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'home', 0, 'publish', '1579270886'),
(14, 6, 'We absolutely loved Mar\'s apartment', 'This apartment was perfect. If you have a large group (4-8 people) this listing should be your choice. It has tons of room, 2 bathrooms, and 2 showers, and it is beautiful', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'home', 0, 'publish', '1579270897'),
(15, 7, 'We absolutely loved Mar\'s apartment', 'This apartment was perfect. If you have a large group (4-8 people) this listing should be your choice. It has tons of room, 2 bathrooms, and 2 showers, and it is beautiful', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'home', 0, 'publish', '1579270911'),
(16, 8, 'We absolutely loved Mar\'s apartment', 'This apartment was perfect. If you have a large group (4-8 people) this listing should be your choice. It has tons of room, 2 bathrooms, and 2 showers, and it is beautiful', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'home', 0, 'publish', '1579270921'),
(17, 8, 'We absolutely loved Mar\'s apartment', 'This apartment was perfect. If you have a large group (4-8 people) this listing should be your choice. It has tons of room, 2 bathrooms, and 2 showers, and it is beautiful', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'home', 0, 'publish', '1579270931'),
(18, 9, 'We absolutely loved Mar\'s apartment', 'This apartment was perfect. If you have a large group (4-8 people) this listing should be your choice. It has tons of room, 2 bathrooms, and 2 showers, and it is beautiful', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'home', 0, 'publish', '1579270942'),
(19, 10, 'We absolutely loved Mar\'s apartment', 'This apartment was perfect. If you have a large group (4-8 people) this listing should be your choice. It has tons of room, 2 bathrooms, and 2 showers, and it is beautiful', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'home', 0, 'publish', '1579270953'),
(20, 29, 'We absolutely loved Mar\'s apartment', 'The house is great, in a peaceful neighborhood about 20 minutes walking distance from downtown, and right next to the Boulder creek and trailheads in the mountains. Stewart himself is extremely kind, willing to help and provides a lot of tips. An amazing experience', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'home', 0, 'publish', '1579524690'),
(21, 27, 'We absolutely loved Mar\'s apartment', 'The house is great, in a peaceful neighborhood about 20 minutes walking distance from downtown, and right next to the Boulder creek and trailheads in the mountains. Stewart himself is extremely kind, willing to help and provides a lot of tips. An amazing experience', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'home', 0, 'publish', '1579524696'),
(22, 26, 'We absolutely loved Mar\'s apartment', 'The house is great, in a peaceful neighborhood about 20 minutes walking distance from downtown, and right next to the Boulder creek and trailheads in the mountains. Stewart himself is extremely kind, willing to help and provides a lot of tips. An amazing experience', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'home', 0, 'publish', '1579524714'),
(23, 28, 'We absolutely loved Mar\'s apartment', 'The house is great, in a peaceful neighborhood about 20 minutes walking distance from downtown, and right next to the Boulder creek and trailheads in the mountains. Stewart himself is extremely kind, willing to help and provides a lot of tips. An amazing experience', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'home', 0, 'publish', '1579524720'),
(24, 26, 'We absolutely loved Mar\'s apartment', 'The house is great, in a peaceful neighborhood about 20 minutes walking distance from downtown, and right next to the Boulder creek and trailheads in the mountains. Stewart himself is extremely kind, willing to help and provides a lot of tips. An amazing experience', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'home', 0, 'publish', '1579526895'),
(32, 1, 'A wonderful experience.', 'A wonderful experience. Everything from the market tour to the actual cooking was very well planned and chef helped us execute at our own pace. Learned a lot about the culture and met some nice people as well. Also, got a recipe book as homework :)', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'experience', 0, 'publish', '1586239647'),
(33, 4, 'Amazing experience', 'Amazing experience. Fantastic host, expert knowledge, amazing location. On top of that the lesson and the food was superb. Highly recommend this experience for all.', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'experience', 0, 'publish', '1586242808'),
(34, 5, 'Amazing experience', 'Great experience to learn more about farm to table. Elizabeth had great knowledge about different types of Vegetables, grains and it was nice to learn much about where food comes from and enjoying the process of cooking with a group.', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'experience', 0, 'publish', '1586243199'),
(35, 6, 'Happy time', 'What an incredible, once in a lifetime experience. Jerusa could not have been kinder or more generous. Her home is idyllic, my family and I felt truly relaxed and peaceful there despite being in the middle of a busy trip. Her farmland was idyllic, we truly enjoyed walking along her crops, meeting her adorable dogs, donkey, chickens, and more, she taught us many things about Catalan culture that we would have never known, and the paella we made was delicious. I will be recommending this experience to EVERYONE I know, and truly feel like Jerusa is now a part of our family. We will never forget the memories we made with her and the hospitality she showed us. We hope very much to come back one day.', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'experience', 0, 'publish', '1586243613'),
(36, 9, 'The delicious food', 'Eleonora was wonderful! The location, the delicious food, and the overall experience was something we will not forget. You will not be disappointed with booking this experience. Thank you for opening your home to us, and for such a lovely evening!', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'experience', 0, 'publish', '1586245149'),
(37, 10, 'Amazing time', 'This was absolutly amazing time spent on making paella, torrilla and drinking great wine! They have made our evening really special! We love paella but this one was extraordinary, make with love and pasion. Amazing people! When we will be again in Barcelona asap we will repeat!! Again thanks!', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'experience', 0, 'publish', '1586245459'),
(38, 12, 'Unforgettable time', 'This activity was more than expected. Nyoman and Wayan, two guides, were very knowledgeable about the local culture and showed genuine interest to introduce the culture. Especially the visit to local house compound and preparing and sharing the local food was extremely good. I was very impressed by the Bali culture and by the two guides. I recommend this activity to anyone interested in learning Bali culture. The guides deserve high commendations. thanks much!!!', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'experience', 0, 'publish', '1586246121'),
(39, 4, 'A wonderful experience.', 'Realmente vale realizar está experiencia para todos aquellos que quieran conocer tips de preparación del chocolate. Bernardo se toma el tiempo de explicar las veces que sea necesario y es muy apasionado en lo que hace.', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'experience', 0, 'publish', '1586246682'),
(40, 23, 'Amazing experience', 'Amazing experience, Ibiza (Horse) was wonderful, Antonia taught us a lot about horse and helped us understand how to bond with horse. Strongly recommend this experience.', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'experience', 0, 'publish', '1586250395'),
(41, 35, 'A wonderful experience', 'DJ Jigüe fue más allá de lo esperado para hacernos sentir a mi novia y yo que estábamos en Cuba. En todo mi viaje no aprendí y me divertí tanto como este día. Saludos y gracias hermano!', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'experience', 0, 'publish', '1586401374'),
(42, 16, 'Best', 'I love this car!!!', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'car', 0, 'publish', '1586703688'),
(43, 19, 'I love this experience!', 'This is the best of VietNam!!!', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'experience', 0, 'publish', '1586704698'),
(44, 16, 'Easy way to discover the city', 'Varius massa maecenas et id dictumst mattis. Donec fringilla ac parturient posuere id phasellus erat elementum nullam lacus cursus rhoncus parturient vitae praesent quisque nascetur molestie quis', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'car', 0, 'publish', '1586706464'),
(45, 16, 'Very Good', 'Buses don\'t come often and drivers don\'t have this information, there is a site that shows you the GPS location of the bus', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'car', 0, 'publish', '1586706475'),
(46, 16, 'Good service', 'Varius massa maecenas et id dictumst mattis. Donec fringilla ac parturient posuere id phasellus erat elementum nullam lacus cursus rhoncus parturient vitae praesent quisque nascetur molestie quis', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'car', 0, 'publish', '1586706499'),
(49, 37, 'I love this home', 'I love this home@@@', 'Awe Booking', 'admin@awebooking.org', 1, '5', 'home', 0, 'publish', '1586755429'),
(50, 1, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757380'),
(51, 2, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757500'),
(52, 3, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757530'),
(53, 4, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757547'),
(54, 5, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757562'),
(55, 6, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757578'),
(56, 7, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757597'),
(57, 8, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757613'),
(58, 11, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757653'),
(59, 14, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757671'),
(60, 11, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757684'),
(61, 16, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757697'),
(62, 17, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757710'),
(63, 18, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757722'),
(64, 19, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757734'),
(65, 20, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757756'),
(66, 21, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757769'),
(67, 22, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757780'),
(68, 24, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757807'),
(69, 25, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757822'),
(70, 26, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757839'),
(71, 27, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757851'),
(72, 28, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757866'),
(73, 29, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757878'),
(74, 30, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757891'),
(75, 31, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757907'),
(76, 32, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757920'),
(77, 33, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757932'),
(78, 34, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757945'),
(79, 36, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757971'),
(80, 37, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757983'),
(81, 41, 'My family and I loved this experience.', 'My family and I loved this experience. My daughter and I love to bake, but my husband and son rarely step into the kitchen to cook, so watching them enjoy themselves was very special. Emma was a kind and patient teacher. She made the experience fun with her humor and stories. We shared the class with a mother and daughter who were fun as well. Not only did we learn how to make a baguette, but we also had a great time doing it as a family. This experience was a great value as well.', 'Jaclyn K ', 'partner@awebooking.org', 2, '5', 'experience', 0, 'publish', '1586757997');

-- --------------------------------------------------------

--
-- Structure de la table `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_price` double(16,5) NOT NULL,
  `price_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `coupon_code`, `coupon_description`, `start_time`, `end_time`, `coupon_price`, `price_type`, `service_type`, `author`, `created_at`, `status`) VALUES
(1, 'NEWYEAR2020', 'Happy new year 2020', '1577318400', '1578182400', 20.00000, 'percent', NULL, 1, 1579187837, 'on'),
(2, 'VALENTINE', 'Valentine\'s day', '1581465600', '1581984000', 50.00000, 'fixed', NULL, 1, 1579187891, 'off'),
(3, 'NEWCOUPON', 'Add new a coupon', '1579132800', '1579651200', 30.00000, 'percent', NULL, 1, 1579188140, 'on');

-- --------------------------------------------------------

--
-- Structure de la table `earning`
--

CREATE TABLE `earning` (
  `ID` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `amount` double(15,6) NOT NULL,
  `net_amount` double(15,6) NOT NULL,
  `balance` double(15,6) NOT NULL,
  `payout` double(15,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `earning`
--

INSERT INTO `earning` (`ID`, `user_id`, `amount`, `net_amount`, `balance`, `payout`) VALUES
(1, 1, 600.000000, 0.000000, 0.000000, 0.000000);

-- --------------------------------------------------------

--
-- Structure de la table `experience`
--

CREATE TABLE `experience` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` bigint(20) NOT NULL,
  `created_at` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_lat` double(10,6) DEFAULT 48.856613,
  `location_lng` double(10,6) DEFAULT 2.352222,
  `location_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_zoom` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '12',
  `location_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_postcode` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_guest` int(11) DEFAULT NULL,
  `booking_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_form` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'instant',
  `base_price` double(16,5) DEFAULT NULL,
  `adult_price` double(16,5) DEFAULT NULL,
  `child_price` double(16,5) DEFAULT NULL,
  `infant_price` double(16,5) DEFAULT NULL,
  `languages` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durations` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inclusions` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exclusions` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itinerary` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_categories` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_primary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_services` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_points` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amenities` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_cancellation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_before` int(11) DEFAULT NULL,
  `cancellation_detail` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` double(8,1) DEFAULT NULL,
  `is_featured` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `import_ical_url` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'experience',
  `tour_packages` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `experience`
--

INSERT INTO `experience` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_description`, `author`, `created_at`, `location_lat`, `location_lng`, `location_address`, `location_zoom`, `location_state`, `location_postcode`, `location_country`, `location_city`, `gallery`, `thumbnail_id`, `number_of_guest`, `booking_type`, `booking_form`, `base_price`, `adult_price`, `child_price`, `infant_price`, `languages`, `durations`, `inclusions`, `exclusions`, `itinerary`, `price_categories`, `price_primary`, `video`, `extra_services`, `meeting_points`, `amenities`, `experience_type`, `enable_cancellation`, `cancel_before`, `cancellation_detail`, `rating`, `is_featured`, `status`, `import_ical_url`, `post_type`, `tour_packages`) VALUES
(1, 'Cooking Class in Local Villa', 'cooking-class-in-local-villa', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'To begin, you will be picked up from Hanoi Opera House. \r\nWe will welcome you to our kitchen and the cooking time may take around 3 hours and after that you will enjoy the work of our labor.', 1, '1586238077', 21.016233, 105.805275, '[:en]Ha Noi, Viet Nam[:vi]Ha Noi, Viet Nam[:]', '11.732399161829072', '[:en][:vi][:]', NULL, '[:en]Vietnam[:vi]Vietnam[:]', '[:en]Ha Noi[:vi][:]', '281,268,246,237,228,239', '237', 5, 'date_time', 'instant', 250.00000, 250.00000, 100.00000, 0.00000, '66,64', '5 hours', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults,enable_children', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '53', 'on', 2, '[:en]Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here. If you have to cancel your class, we offer you a credit to your account if you cancel before the 48 hours, but do not offer refunds. You may use these credits towards any future class. However, if you do not cancel prior to the 48 hours, you will lose the payment for the class. The owner has the only right to be flexible here.[:vi][:]', 5.0, 'on', 'publish', NULL, 'experience', ''),
(2, 'Handmade pasta with grandma', 'handmade-pasta-with-grandma', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586240768', 21.010862, 105.758411, 'Ha Noi, Viet Nam', '13', NULL, NULL, 'Vietnam', 'Ha Noi', '206,255,264,237,225,216', '206', 8, 'date_time', 'instant_enquiry', 150.00000, 150.00000, 0.00000, 0.00000, '66,64', '6 hours', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:32:\"rekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '53', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(3, 'Ancient México Cooking Experience', 'ancient-mexico-cooking-experience', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586241892', 21.000000, 105.750000, 'Ha Noi Viet Nam', '12', NULL, NULL, 'Vietnam', 'Ha Noi', '199,206,210,216,225,255', '199', 3, 'date_time', 'instant_enquiry', 200.00000, 200.00000, 0.00000, 0.00000, '66,65', '6 hours', '74,70,73,71,75,72', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '53', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'on', 'publish', NULL, 'experience', ''),
(4, 'Boring Indian Food Workshop', 'boring-indian-food-workshop', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586242268', 20.986663, 105.781328, 'Ha Noi Viet Nam', '13', NULL, NULL, 'Vietnam', 'Ha Noi', '234,218,225,216,209', '209', 4, 'date_time', 'instant', 250.00000, 250.00000, 0.00000, 0.00000, '69,64', '5 hours', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '53', 'on', 2, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(5, 'On the farm cooking class', 'on-the-farm-cooking-class', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586242827', 20.975123, 105.785620, 'Ha Noi Viet Nam', '13', NULL, NULL, 'Vietnam', 'Ha Noi', '210,209,219,229,226', '210', 5, 'date_time', 'instant', 200.00000, 200.00000, 0.00000, 0.00000, '69,68', '3 hours', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:32:\"rekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '53', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(6, 'Lunch in my Rural Orchard', 'lunch-in-my-rural-orchard', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586243246', 20.972077, 105.800039, 'Ha Noi Viet Nam', '12', NULL, NULL, 'Vietnam', 'Ha Noi', '216,225,234,237,210', '237', 3, 'date_time', 'instant', 50.00000, 50.00000, 0.00000, 0.00000, '69,64', '2 hours', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '53', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(7, 'Pizza & Bakery Tour in Goheung', 'pizza-amp-bakery-tour-in-goheung', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586243623', 42.927007, -75.006874, 'New York, USA', '7.771567559128908', NULL, NULL, 'USA', 'New York', '267,263,255,258,250,237', '267', 5, 'date_time', 'instant', 300.00000, 300.00000, 0.00000, 0.00000, '66,64', '5 hours', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '53', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(8, 'Kebab from a true master', 'kebab-from-a-true-master', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586244429', 43.078397, -75.600657, 'New York, USA', '7.422115207877448', NULL, NULL, 'USA', 'New York', '210,216,206,218,225', '210', 5, 'date_time', 'instant', 50.00000, 50.00000, 0.00000, 0.00000, '66,64', '6 hours', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '53', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(9, 'Cooking in a tuscan organic farm!', 'cooking-in-a-tuscan-organic-farm', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586244862', 48.884480, 2.297523, 'Paris, France', '10.30120509646626', NULL, NULL, 'France', 'Paris', '195,196,216,210,222', '195', 5, 'date_time', 'instant', 50.00000, 50.00000, 0.00000, 0.00000, '66,64', '4 hours', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '53', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(10, 'Paella in the most beautiful garden', 'paella-in-the-most-beautiful-garden', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245179', 48.849841, 2.382201, 'Paris, France', '12.428130444425362', NULL, NULL, 'France', 'Paris', '197,196,216,222,225', '197', 5, 'date_time', 'instant', 50.00000, 50.00000, 0.00000, 0.00000, '66,64', '4 hours', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '53', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(11, 'Active Adventure & Stay with Locals', 'active-adventure-amp-stay-with-locals', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245473', 20.995065, 105.862788, 'Ha Noi Viet Nam', '12', NULL, NULL, 'Vietnam', 'Ha Noi', '271,259,262,274,273', '271', 4, 'just_date', 'instant', 200.00000, 200.00000, 0.00000, 0.00000, '66,64', '2 days 1 night', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '54', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'on', 'publish', NULL, 'experience', ''),
(12, 'Backroads - beautiful Bali home stay', 'backroads-beautiful-bali-home-stay', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 21.010518, 105.856425, 'Ha Noi viet Nam', '12.449746708201321', NULL, NULL, 'Vietnam', 'Ha Noi', '276,273,262,212,211,207', '276', 3, 'just_date', 'instant', 250.00000, 250.00000, 0.00000, 0.00000, '66,64', '3 days 2 nights', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '54', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', '');
INSERT INTO `experience` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_description`, `author`, `created_at`, `location_lat`, `location_lng`, `location_address`, `location_zoom`, `location_state`, `location_postcode`, `location_country`, `location_city`, `gallery`, `thumbnail_id`, `number_of_guest`, `booking_type`, `booking_form`, `base_price`, `adult_price`, `child_price`, `infant_price`, `languages`, `durations`, `inclusions`, `exclusions`, `itinerary`, `price_categories`, `price_primary`, `video`, `extra_services`, `meeting_points`, `amenities`, `experience_type`, `enable_cancellation`, `cancel_before`, `cancellation_detail`, `rating`, `is_featured`, `status`, `import_ical_url`, `post_type`, `tour_packages`) VALUES
(14, 'Rainbow Mountain Adventure', 'rainbow-mountain-adventure', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 21.010518, 105.856425, 'Ha Noi viet Nam', '12.449746708201321', NULL, NULL, 'Vietnam', 'Ha Noi', '185,180,179,181,188', '185', 3, 'just_date', 'instant', 200.00000, 200.00000, 0.00000, 0.00000, '66,64', '3 days 2 nights', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '54', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(15, 'Active Adventure & Stay with Locals', 'active-adventure-amp-stay-with-locals', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 21.005774, 105.859111, 'Ha Noi viet Nam', '12', NULL, NULL, 'Vietnam', 'Ha Noi', '108,113,101,95,105,114', '180', 3, 'just_date', 'instant', 150.00000, 150.00000, 0.00000, 0.00000, '66,64', '3 days 2 nights', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '54', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(16, '2 Nights PACKAGE All Inclusive', '2-nights-package-all-inclusive', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 21.010518, 105.856425, 'Ha Noi viet Nam', '12', NULL, NULL, 'Vietnam', 'Ha Noi', '108,113,101,95,105,114', '105', 3, 'just_date', 'instant', 350.00000, 350.00000, 0.00000, 0.00000, '66,64', '3 days 2 nights', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '54', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(17, 'Ghost Towns and Saloons', 'ghost-towns-and-saloons', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 21.017167, 105.809395, 'Ha Noi Viet Nam', '10', NULL, NULL, 'Vietnam', 'Ha Noi', '108,113,101,95,105,114', '114', 3, 'just_date', 'instant', 150.00000, 150.00000, 0.00000, 0.00000, '66,64', '3 days 2 nights', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '54', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(18, 'Snorkeling and hiking in West Sumatra', 'snorkeling-and-hiking-in-west-sumatra', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 21.030657, 105.793105, 'Ha Noi Viet Nam', '11.940448984600446', NULL, NULL, 'Vietnam', 'Ha Noi', '192,188,202,203,211,207', '192', 5, 'just_date', 'instant', 200.00000, 200.00000, 0.00000, 0.00000, '66,64', '3 days 2 nights', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:32:\"rekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '54', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(19, 'Taste local wines and stargaze in Baja', 'taste-local-wines-and-stargaze-in-baja', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 21.051764, 105.871156, 'Ha Noi Viet Nam', '9.996408310933422', NULL, NULL, 'Vietnam', 'Ha Noi', '192,188,202,203,211,207', '211', 4, 'just_date', 'instant', 200.00000, 200.00000, 0.00000, 0.00000, '66,64', '2 days 1 night', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '54', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(20, '2-Day Mui Ne Beach Luxury Vacation', '2-day-mui-ne-beach-luxury-vacation', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 21.002850, 105.783903, 'Ha Noi viet Nam', '13', NULL, NULL, 'Vietnam', 'Ha Noi', '235,240,208,214,232', '235', 4, 'just_date', 'instant', 150.00000, 150.00000, 0.00000, 0.00000, '66,64', '2 days 1 night', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '54', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'on', 'publish', NULL, 'experience', ''),
(21, 'Nepal trek to Annapurna Base Camp', 'nepal-trek-to-annapurna-base-camp', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 21.007555, 105.822470, 'Ha Noi Viet Nam', '10.999422771882607', NULL, NULL, 'Vietnam', 'Ha Noi', '235,240,208,214,232', '232', 4, 'just_date', 'instant', 150.00000, 150.00000, 0.00000, 0.00000, '66,64', '3 days 2 nights', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:32:\"rekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '54', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(22, 'Tea with Naughty Sheep', 'tea-with-naughty-sheep', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 21.003323, 105.834238, 'Ha Noi viet Nam', '13', NULL, NULL, 'Vietnam', 'Ha Noi', '323,324,319,311,312', '232', 6, 'just_date', 'instant', 150.00000, 150.00000, 0.00000, 0.00000, '66,64', '2 days 1 night', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '55', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(23, 'Horse Whispering with an Equine Therapist', 'horse-whispering-with-an-equine-therapist', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 21.013294, 105.856217, 'Ha Noi viet Nam', '13', NULL, NULL, 'Vietnam', 'Ha Noi', '323,324,319,311,312', '324', 5, 'just_date', 'instant', 150.00000, 150.00000, 0.00000, 0.00000, '66,64', '2 days 1 night', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '55', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(24, 'Discover the arctic foxes', 'discover-the-arctic-foxes', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 20.987785, 105.794374, 'Ha Noi viet Nam', '13', NULL, NULL, 'Vietnam', 'Ha Noi', '323,324,319,311,312', '319', 4, 'just_date', 'instant', 150.00000, 150.00000, 0.00000, 0.00000, '66,64', '2 days 1 night', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '55', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(25, 'SUP PUP Paddleboard Tour', 'sup-pup-paddleboard-tour', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 20.977046, 105.776007, 'Ha Noi viet Nam', '12', NULL, NULL, 'Vietnam', 'Ha Noi', '323,324,319,311,312', '312', 6, 'just_date', 'instant', 100.00000, 100.00000, 0.00000, 0.00000, '66,64', '2 days 1 night', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '55', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', '');
INSERT INTO `experience` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_description`, `author`, `created_at`, `location_lat`, `location_lng`, `location_address`, `location_zoom`, `location_state`, `location_postcode`, `location_country`, `location_city`, `gallery`, `thumbnail_id`, `number_of_guest`, `booking_type`, `booking_form`, `base_price`, `adult_price`, `child_price`, `infant_price`, `languages`, `durations`, `inclusions`, `exclusions`, `itinerary`, `price_categories`, `price_primary`, `video`, `extra_services`, `meeting_points`, `amenities`, `experience_type`, `enable_cancellation`, `cancel_before`, `cancellation_detail`, `rating`, `is_featured`, `status`, `import_ical_url`, `post_type`, `tour_packages`) VALUES
(26, 'Visit Chimpanzees in the Mountains', 's', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 20.977171, 105.814030, 'Ha Noi Viet Nam', '12', NULL, NULL, 'Vietnam', 'Ha Noi', '323,324,319,311,312', '311', 3, 'just_date', 'instant', 200.00000, 200.00000, 0.00000, 0.00000, '66,64', '3 days 2 nights', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '55', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(27, 'Meet over 200 rescued animals!', 'meet-over-200-rescued-animals', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 21.008138, 105.781157, 'Ha Noi viet Nam', '13', NULL, NULL, 'Vietnam', 'Ha Noi', '322,316,318,313,314', '318', 6, 'just_date', 'instant', 250.00000, 250.00000, 0.00000, 0.00000, '66,64', '3 days 2 nights', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '55', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(28, 'Meet Our Big Cat Residents', 'meet-our-big-cat-residents', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 21.010653, 105.919205, 'Ha Noi Viet Nam', '10.268398452555498', NULL, NULL, 'Viet Nam', 'Ha Noi', '322,316,318,313,314', '316', 5, 'just_date', 'instant', 100.00000, 100.00000, 0.00000, 0.00000, '66,64', '2 days 1 night', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '55', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(29, 'Vegan picnic with rescued animals', 'vegan-picnic-with-rescued-animals', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 21.008193, 105.838234, 'Ha Noi  Viet Nam', '11', NULL, NULL, 'Vietnam', 'Ha Noi', '322,316,318,313,314', '322', 5, 'just_date', 'instant', 300.00000, 300.00000, 0.00000, 0.00000, '66,64', '4 days 3 nights', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '55', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(30, 'Play with Rescued Horses', 'play-with-rescued-horses', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 21.002850, 105.795404, 'Ha Noi viet Nam', '13', NULL, NULL, 'Vietnam', 'Ha Noi', '309,308,307,306,310', '313', 4, 'just_date', 'instant', 250.00000, 250.00000, 0.00000, 0.00000, '66,64', '2 days 1 nights', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '55', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(31, 'Inside Look with Dolphins', 'inside-look-with-dolphins', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 21.048150, 105.809052, 'Ha Noi Viet Nam', '9', NULL, NULL, 'Vietnam', 'Ha Noi', '309,308,307,306,310', '309', 5, 'just_date', 'instant', 200.00000, 200.00000, 0.00000, 0.00000, '66,64', '2 days 1 night', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '55', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(32, 'Write to heal', 'write-to-heal', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 21.009695, 105.842010, 'Ha Noi Viet Nam', '9', NULL, NULL, 'Vietnam', 'Ha Noi', '398,397,387,388,384,396', '384', 5, 'just_date', 'instant', 100.00000, 100.00000, 0.00000, 0.00000, '66,64', '3 days 2 nights', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '92', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'on', 'publish', NULL, 'experience', ''),
(33, 'Pronunciation Workshop', 'pronunciation-workshop', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 21.031207, 105.871536, 'Ha Noi Viet Nam', '10', NULL, NULL, 'Vietnam', 'Ha Noi', '398,397,387,388,384,396', '396', 5, 'just_date', 'instant', 150.00000, 150.00000, 0.00000, 0.00000, '66,64', '3 days 2 nights', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '92', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(34, 'Happiness Charity Event', 'happiness-charity-event', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 21.024658, 105.887672, 'Ha Noi Viet Nam', '10', NULL, NULL, 'Vietnam', 'Ha Noi', '388,387,394,401,397,398', '397', 6, 'date_time', 'instant', 50.00000, 50.00000, 0.00000, 0.00000, '66,64', '5 hours', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '92', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(35, 'Formal Event Makeup', 'formal-event-makeup', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 21.031247, 105.873939, 'Ha Noi Viet Nam', '11', NULL, NULL, 'Vietnam', 'Ha Noi', '386,385,391,396,395,400', '395', 4, 'date_time', 'instant', 350.00000, 350.00000, 0.00000, 0.00000, '66,64', '5 hours', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '92', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'on', 'publish', NULL, 'experience', ''),
(36, 'Prom 2019', 'prom-2019', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 21.035663, 105.846988, 'Ha Noi Viet Nam', '12', NULL, NULL, 'Vietnam', 'Ha Noi', '385,399,398,397,401,394', '398', 30, 'just_date', 'instant', 50.00000, 50.00000, 0.00000, 0.00000, '66,64', '3 days 2 nights', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '92', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(37, 'BIG BANG world tour', 'big-bang-world-tour', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 21.042678, 105.865442, 'Ha Noi Viet Nam', '13', NULL, NULL, 'Vietnam', 'Ha Noi', '385,399,398,397,401,394', '401', 20, 'just_date', 'instant', 350.00000, 350.00000, 0.00000, 0.00000, '66,64', '3 days 2 nights', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '92', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(38, '[:en]43 rd Tokyo Motor show[:vi]43 rd Tokyo Motor show[:]', '43-rd-tokyo-motor-show', '[:en]<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>[:vi]<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>[:]', '[:en]Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus[:vi]Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus[:]', 1, '1586245766', 21.043702, 105.856129, 'Ha Noi Viet Nam', '14', NULL, NULL, 'Vietnam', 'Ha Noi', '395,396,391,384,383', '395', 200, 'date_time', 'instant', 200.00000, 200.00000, 0.00000, 0.00000, '66,64', '[:en]5 hours[:vi]5 hours[:]', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', '[:en]https://www.youtube.com/watch?v=3M0TmN2TsK4[:vi]https://www.youtube.com/watch?v=3M0TmN2TsK4[:]', 'a:4:{i:0;a:4:{s:4:\"name\";s:39:\"[:en]Food & drinks[:vi]Food & drinks[:]\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:37:\"[:en]Hiking shoes[:vi]Hiking shoes[:]\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}i:2;a:4:{s:4:\"name\";s:21:\"[:en]Tent[:vi]Tent[:]\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:41:\"[:en]Backup charger[:vi]Backup charger[:]\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '92', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', '');
INSERT INTO `experience` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_description`, `author`, `created_at`, `location_lat`, `location_lng`, `location_address`, `location_zoom`, `location_state`, `location_postcode`, `location_country`, `location_city`, `gallery`, `thumbnail_id`, `number_of_guest`, `booking_type`, `booking_form`, `base_price`, `adult_price`, `child_price`, `infant_price`, `languages`, `durations`, `inclusions`, `exclusions`, `itinerary`, `price_categories`, `price_primary`, `video`, `extra_services`, `meeting_points`, `amenities`, `experience_type`, `enable_cancellation`, `cancel_before`, `cancellation_detail`, `rating`, `is_featured`, `status`, `import_ical_url`, `post_type`, `tour_packages`) VALUES
(39, 'Milan Fashion Week 2020', 'milan-fashion-week-2020', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 21.041450, 105.850314, 'Ha Noi Viet Nam', '15', NULL, NULL, 'Vietnam', 'Ha Noi', '386,393,392,391,396,395', '393', 40, 'date_time', 'instant', 100.00000, 100.00000, 0.00000, 0.00000, '66,64', '3 days 2 nights', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '92', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(40, '[:en]Paris Fashion Week 2019[:vi]Paris Fashion Week 2019[:]', 'paris-fashion-week-2019', '[:en]<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>[:vi]<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>[:]', '[:en]Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus[:vi]Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus[:]', 1, '1586245766', 21.041085, 105.846870, 'Ha Noi Viet Nam', '16', NULL, NULL, 'Vietnam', 'Ha Noi', '392,387,397,401,398,399', '392', 50, 'just_date', 'instant', 350.00000, 350.00000, 0.00000, 0.00000, '66,64', '[:en]3 days 2 nights[:vi]3 days 2 nights[:]', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:39:\"[:en]Food & drinks[:vi]Food & drinks[:]\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:37:\"[:en]Hiking shoes[:vi]Hiking shoes[:]\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}i:2;a:4:{s:4:\"name\";s:21:\"[:en]Tent[:vi]Tent[:]\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:41:\"[:en]Backup charger[:vi]Backup charger[:]\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '92', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', ''),
(41, 'Exchange your waste paper with plants', 'exchange-your-waste-paper-with-plants', '<p>You can be a Valdivian artisan chocolate maker!</p>\r\n<p>You will learn the process of melting, tempering, enrobing, and molding chocolate; all techniques that you can replicate at home in the future. We will prepare some chocolates and chocolate bars using the highest quality chocolates and local ingredients. Then, we will finish with a chocolate tasting, along with a coffee or beverage of your choice.</p>\r\n<p>Throughout the activity, I will tell you about the history of chocolate as well as important events, places, and life in Valdivia!</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus', 1, '1586245766', 21.041203, 105.845802, 'Ha Noi Viet Nam', '17', NULL, NULL, 'Vietnam', 'Ha Noi', '385,384,383,388,387,391', '385', 30, 'date_time', 'instant', 150.00000, 150.00000, 0.00000, 0.00000, '66,64', '5 hours', '74,70,73,71,75,72,76', '80,78,77,79', 'a:3:{i:0;a:4:{s:9:\"sub_title\";s:5:\"Day 1\";s:5:\"title\";s:39:\"Camp & dine 2000 meters above sea level\";s:11:\"description\";s:427:\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dapibus ultrices in iaculis nunc sed augue lacus. Quam nulla porttitor massa id neque aliquam. Ultrices mi tempus imperdiet nulla malesuada. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Egestas sed sed risus pretium. Lorem dolor sed viverra ipsum. Gravida rutrum quisque non tellus</p>\";s:5:\"image\";s:3:\"271\";}i:1;a:4:{s:9:\"sub_title\";s:5:\"Day 2\";s:5:\"title\";s:33:\"Trekking between Ancient Villages\";s:11:\"description\";s:413:\"<p>1) We recommend you wake up before sunrise to enjoy watching the stunning view of the sunrise.</p>\r\n<p>2) By 7:30 am, relax and enjoy locally prepared breakfast cooked at spot.</p>\r\n<p>3) By 9 am will head towards Al Sahrija ancient village where we start our trekking tour. Will pass through old stone/mud houses, terrace farms of roses, pomegranates, walnuts &amp; grapes farms with stunning cliff views.</p>\";s:5:\"image\";s:0:\"\";}i:2;a:4:{s:9:\"sub_title\";s:5:\"Day 3\";s:5:\"title\";s:38:\"Experience tradition & taste Oman food\";s:11:\"description\";s:326:\"<p>1) 7 am Will start the day with a local breakfast in the heritage hotel</p>\r\n<p>2) 9 am Visit Honey Exhibition. Learn about the local Omani bees and the different type of honey produced in Oman</p>\r\n<p>3) 10 am Trekking between old stone houses, farms, and the terraces. Beautiful landscape and interaction with locals.</p>\";s:5:\"image\";s:3:\"267\";}}', 'enable_adults', 'adult_price', 'https://www.youtube.com/watch?v=3M0TmN2TsK4', 'a:4:{i:0;a:4:{s:4:\"name\";s:13:\"Food & drinks\";s:11:\"name_unique\";s:17:\"food-_and_-drinks\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:12:\"Hiking shoes\";s:11:\"name_unique\";s:12:\"hiking-shoes\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:4:\"Tent\";s:11:\"name_unique\";s:4:\"tent\";s:5:\"price\";s:2:\"15\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:14:\"Backup charger\";s:11:\"name_unique\";s:14:\"backup-charger\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', NULL, NULL, '92', 'on', 1, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here.', 5.0, 'off', 'publish', NULL, 'experience', '');

-- --------------------------------------------------------

--
-- Structure de la table `experience_availability`
--

CREATE TABLE `experience_availability` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `experience_id` bigint(20) NOT NULL,
  `date` bigint(20) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `experience_price`
--

CREATE TABLE `experience_price` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `experience_id` bigint(20) NOT NULL,
  `start_time` bigint(20) NOT NULL,
  `start_date` bigint(20) NOT NULL,
  `end_time` bigint(20) NOT NULL,
  `end_date` bigint(20) NOT NULL,
  `max_people` int(11) NOT NULL,
  `adult_price` double(16,5) NOT NULL,
  `child_price` double(16,5) NOT NULL,
  `infant_price` double(16,5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `experience_price`
--

INSERT INTO `experience_price` (`ID`, `experience_id`, `start_time`, `start_date`, `end_time`, `end_date`, `max_people`, `adult_price`, `child_price`, `infant_price`) VALUES
(1, 1, 1586019600, 1585990800, 1586019600, 1585990800, 5, 250.00000, 100.00000, 0.00000),
(2, 1, 1586624400, 1586595600, 1586624400, 1586595600, 5, 250.00000, 100.00000, 0.00000),
(3, 1, 1587229200, 1587200400, 1587229200, 1587200400, 5, 250.00000, 100.00000, 0.00000),
(4, 1, 1587834000, 1587805200, 1587834000, 1587805200, 5, 250.00000, 100.00000, 0.00000),
(5, 1, 1586041200, 1585990800, 1586041200, 1585990800, 5, 250.00000, 100.00000, 0.00000),
(6, 1, 1586646000, 1586595600, 1586646000, 1586595600, 5, 250.00000, 100.00000, 0.00000),
(7, 1, 1587250800, 1587200400, 1587250800, 1587200400, 5, 250.00000, 100.00000, 0.00000),
(8, 1, 1587855600, 1587805200, 1587855600, 1587805200, 5, 250.00000, 100.00000, 0.00000),
(9, 1, 1586106000, 1586077200, 1586106000, 1586077200, 5, 250.00000, 100.00000, 0.00000),
(10, 1, 1586710800, 1586682000, 1586710800, 1586682000, 5, 250.00000, 100.00000, 0.00000),
(11, 1, 1587315600, 1587286800, 1587315600, 1587286800, 5, 250.00000, 100.00000, 0.00000),
(12, 1, 1587920400, 1587891600, 1587920400, 1587891600, 5, 250.00000, 100.00000, 0.00000),
(13, 1, 1586127600, 1586077200, 1586127600, 1586077200, 5, 250.00000, 100.00000, 0.00000),
(14, 1, 1586732400, 1586682000, 1586732400, 1586682000, 5, 250.00000, 100.00000, 0.00000),
(15, 1, 1587337200, 1587286800, 1587337200, 1587286800, 5, 250.00000, 100.00000, 0.00000),
(16, 1, 1587942000, 1587891600, 1587942000, 1587891600, 5, 250.00000, 100.00000, 0.00000),
(17, 31, 1586064000, 1585990800, 1586064000, 1585990800, 5, 200.00000, 0.00000, 0.00000),
(18, 31, 1586668800, 1586595600, 1586668800, 1586595600, 5, 200.00000, 0.00000, 0.00000),
(19, 31, 1587273600, 1587200400, 1587273600, 1587200400, 5, 200.00000, 0.00000, 0.00000),
(20, 31, 1587878400, 1587805200, 1587878400, 1587805200, 5, 200.00000, 0.00000, 0.00000),
(21, 31, 1586150400, 1586077200, 1586150400, 1586077200, 5, 200.00000, 0.00000, 0.00000),
(22, 31, 1586755200, 1586682000, 1586755200, 1586682000, 5, 200.00000, 0.00000, 0.00000),
(23, 31, 1587360000, 1587286800, 1587360000, 1587286800, 5, 200.00000, 0.00000, 0.00000),
(24, 31, 1587964800, 1587891600, 1587964800, 1587891600, 5, 200.00000, 0.00000, 0.00000),
(29, 41, 1586197800, 1586163600, 1586197800, 1586163600, 30, 150.00000, 0.00000, 0.00000),
(30, 41, 1586802600, 1586768400, 1586802600, 1586768400, 30, 150.00000, 0.00000, 0.00000),
(31, 41, 1587407400, 1587373200, 1587407400, 1587373200, 30, 150.00000, 0.00000, 0.00000),
(32, 41, 1588012200, 1587978000, 1588012200, 1587978000, 30, 150.00000, 0.00000, 0.00000),
(40, 19, 1586006400, 1585933200, 1586006400, 1585933200, 4, 200.00000, 0.00000, 0.00000),
(41, 19, 1586611200, 1586538000, 1586611200, 1586538000, 4, 200.00000, 0.00000, 0.00000),
(42, 19, 1587216000, 1587142800, 1587216000, 1587142800, 4, 200.00000, 0.00000, 0.00000),
(43, 19, 1587820800, 1587747600, 1587820800, 1587747600, 4, 200.00000, 0.00000, 0.00000),
(44, 19, 1586092800, 1586019600, 1586092800, 1586019600, 4, 200.00000, 0.00000, 0.00000),
(45, 19, 1586697600, 1586624400, 1586697600, 1586624400, 4, 200.00000, 0.00000, 0.00000),
(46, 19, 1587302400, 1587229200, 1587302400, 1587229200, 4, 200.00000, 0.00000, 0.00000),
(47, 19, 1587907200, 1587834000, 1587907200, 1587834000, 4, 200.00000, 0.00000, 0.00000),
(48, 40, 1585731600, 1585731600, 1585731600, 1585731600, 50, 350.00000, 0.00000, 0.00000),
(49, 40, 1585818000, 1585818000, 1585818000, 1585818000, 50, 350.00000, 0.00000, 0.00000),
(50, 40, 1585904400, 1585904400, 1585904400, 1585904400, 50, 350.00000, 0.00000, 0.00000),
(51, 40, 1585990800, 1585990800, 1585990800, 1585990800, 50, 350.00000, 0.00000, 0.00000),
(52, 40, 1586077200, 1586077200, 1586077200, 1586077200, 50, 350.00000, 0.00000, 0.00000),
(53, 40, 1586163600, 1586163600, 1586163600, 1586163600, 50, 350.00000, 0.00000, 0.00000),
(54, 40, 1586250000, 1586250000, 1586250000, 1586250000, 50, 350.00000, 0.00000, 0.00000),
(55, 40, 1586336400, 1586336400, 1586336400, 1586336400, 50, 350.00000, 0.00000, 0.00000),
(56, 40, 1586422800, 1586422800, 1586422800, 1586422800, 50, 350.00000, 0.00000, 0.00000),
(57, 40, 1586509200, 1586509200, 1586509200, 1586509200, 50, 350.00000, 0.00000, 0.00000),
(58, 40, 1586595600, 1586595600, 1586595600, 1586595600, 50, 350.00000, 0.00000, 0.00000),
(59, 40, 1586682000, 1586682000, 1586682000, 1586682000, 50, 350.00000, 0.00000, 0.00000),
(60, 40, 1586768400, 1586768400, 1586768400, 1586768400, 50, 350.00000, 0.00000, 0.00000),
(61, 40, 1586854800, 1586854800, 1586854800, 1586854800, 50, 350.00000, 0.00000, 0.00000),
(62, 40, 1586941200, 1586941200, 1586941200, 1586941200, 50, 350.00000, 0.00000, 0.00000),
(63, 40, 1587027600, 1587027600, 1587027600, 1587027600, 50, 350.00000, 0.00000, 0.00000),
(64, 40, 1587114000, 1587114000, 1587114000, 1587114000, 50, 350.00000, 0.00000, 0.00000),
(65, 40, 1587200400, 1587200400, 1587200400, 1587200400, 50, 350.00000, 0.00000, 0.00000),
(66, 40, 1587286800, 1587286800, 1587286800, 1587286800, 50, 350.00000, 0.00000, 0.00000),
(67, 40, 1587373200, 1587373200, 1587373200, 1587373200, 50, 350.00000, 0.00000, 0.00000),
(68, 40, 1587459600, 1587459600, 1587459600, 1587459600, 50, 350.00000, 0.00000, 0.00000),
(69, 40, 1587546000, 1587546000, 1587546000, 1587546000, 50, 350.00000, 0.00000, 0.00000),
(70, 40, 1587632400, 1587632400, 1587632400, 1587632400, 50, 350.00000, 0.00000, 0.00000),
(71, 40, 1587718800, 1587718800, 1587718800, 1587718800, 50, 350.00000, 0.00000, 0.00000),
(72, 40, 1587805200, 1587805200, 1587805200, 1587805200, 50, 350.00000, 0.00000, 0.00000),
(73, 40, 1587891600, 1587891600, 1587891600, 1587891600, 50, 350.00000, 0.00000, 0.00000),
(74, 40, 1587978000, 1587978000, 1587978000, 1587978000, 50, 350.00000, 0.00000, 0.00000),
(75, 40, 1588064400, 1588064400, 1588064400, 1588064400, 50, 350.00000, 0.00000, 0.00000),
(76, 40, 1588150800, 1588150800, 1588150800, 1588150800, 50, 350.00000, 0.00000, 0.00000),
(77, 40, 1588237200, 1588237200, 1588237200, 1588237200, 50, 350.00000, 0.00000, 0.00000),
(129, 38, 1586905200, 1586854800, 1586905200, 1586854800, 200, 200.00000, 0.00000, 0.00000),
(130, 38, 1586919600, 1586854800, 1586919600, 1586854800, 200, 200.00000, 0.00000, 0.00000),
(131, 38, 1586926800, 1586854800, 1586926800, 1586854800, 200, 200.00000, 0.00000, 0.00000),
(132, 38, 1586991600, 1586941200, 1586991600, 1586941200, 200, 200.00000, 0.00000, 0.00000),
(133, 38, 1587006000, 1586941200, 1587006000, 1586941200, 200, 200.00000, 0.00000, 0.00000),
(134, 38, 1587013200, 1586941200, 1587013200, 1586941200, 200, 200.00000, 0.00000, 0.00000),
(135, 38, 1587078000, 1587027600, 1587078000, 1587027600, 200, 200.00000, 0.00000, 0.00000),
(136, 38, 1587092400, 1587027600, 1587092400, 1587027600, 200, 200.00000, 0.00000, 0.00000),
(137, 38, 1587099600, 1587027600, 1587099600, 1587027600, 200, 200.00000, 0.00000, 0.00000),
(138, 38, 1587164400, 1587114000, 1587164400, 1587114000, 200, 200.00000, 0.00000, 0.00000),
(139, 38, 1587178800, 1587114000, 1587178800, 1587114000, 200, 200.00000, 0.00000, 0.00000),
(140, 38, 1587186000, 1587114000, 1587186000, 1587114000, 200, 200.00000, 0.00000, 0.00000),
(141, 38, 1587250800, 1587200400, 1587250800, 1587200400, 200, 200.00000, 0.00000, 0.00000),
(142, 38, 1587265200, 1587200400, 1587265200, 1587200400, 200, 200.00000, 0.00000, 0.00000),
(143, 38, 1587272400, 1587200400, 1587272400, 1587200400, 200, 200.00000, 0.00000, 0.00000),
(144, 38, 1587337200, 1587286800, 1587337200, 1587286800, 200, 200.00000, 0.00000, 0.00000),
(145, 38, 1587351600, 1587286800, 1587351600, 1587286800, 200, 200.00000, 0.00000, 0.00000),
(146, 38, 1587358800, 1587286800, 1587358800, 1587286800, 200, 200.00000, 0.00000, 0.00000),
(147, 38, 1587423600, 1587373200, 1587423600, 1587373200, 200, 200.00000, 0.00000, 0.00000),
(148, 38, 1587438000, 1587373200, 1587438000, 1587373200, 200, 200.00000, 0.00000, 0.00000),
(149, 38, 1587445200, 1587373200, 1587445200, 1587373200, 200, 200.00000, 0.00000, 0.00000),
(150, 38, 1587510000, 1587459600, 1587510000, 1587459600, 200, 200.00000, 0.00000, 0.00000),
(151, 38, 1587524400, 1587459600, 1587524400, 1587459600, 200, 200.00000, 0.00000, 0.00000),
(152, 38, 1587531600, 1587459600, 1587531600, 1587459600, 200, 200.00000, 0.00000, 0.00000),
(153, 38, 1587596400, 1587546000, 1587596400, 1587546000, 200, 200.00000, 0.00000, 0.00000),
(154, 38, 1587610800, 1587546000, 1587610800, 1587546000, 200, 200.00000, 0.00000, 0.00000),
(155, 38, 1587618000, 1587546000, 1587618000, 1587546000, 200, 200.00000, 0.00000, 0.00000),
(156, 38, 1587682800, 1587632400, 1587682800, 1587632400, 200, 200.00000, 0.00000, 0.00000),
(157, 38, 1587697200, 1587632400, 1587697200, 1587632400, 200, 200.00000, 0.00000, 0.00000),
(158, 38, 1587704400, 1587632400, 1587704400, 1587632400, 200, 200.00000, 0.00000, 0.00000),
(159, 38, 1587769200, 1587718800, 1587769200, 1587718800, 200, 200.00000, 0.00000, 0.00000),
(160, 38, 1587783600, 1587718800, 1587783600, 1587718800, 200, 200.00000, 0.00000, 0.00000),
(161, 38, 1587790800, 1587718800, 1587790800, 1587718800, 200, 200.00000, 0.00000, 0.00000),
(162, 38, 1587855600, 1587805200, 1587855600, 1587805200, 200, 200.00000, 0.00000, 0.00000),
(163, 38, 1587870000, 1587805200, 1587870000, 1587805200, 200, 200.00000, 0.00000, 0.00000),
(164, 38, 1587877200, 1587805200, 1587877200, 1587805200, 200, 200.00000, 0.00000, 0.00000),
(165, 38, 1587942000, 1587891600, 1587942000, 1587891600, 200, 200.00000, 0.00000, 0.00000),
(166, 38, 1587956400, 1587891600, 1587956400, 1587891600, 200, 200.00000, 0.00000, 0.00000),
(167, 38, 1587963600, 1587891600, 1587963600, 1587891600, 200, 200.00000, 0.00000, 0.00000),
(168, 38, 1588028400, 1587978000, 1588028400, 1587978000, 200, 200.00000, 0.00000, 0.00000),
(169, 38, 1588042800, 1587978000, 1588042800, 1587978000, 200, 200.00000, 0.00000, 0.00000),
(170, 38, 1588050000, 1587978000, 1588050000, 1587978000, 200, 200.00000, 0.00000, 0.00000),
(171, 38, 1588114800, 1588064400, 1588114800, 1588064400, 200, 200.00000, 0.00000, 0.00000),
(172, 38, 1588129200, 1588064400, 1588129200, 1588064400, 200, 200.00000, 0.00000, 0.00000),
(173, 38, 1588136400, 1588064400, 1588136400, 1588064400, 200, 200.00000, 0.00000, 0.00000),
(174, 38, 1588201200, 1588150800, 1588201200, 1588150800, 200, 200.00000, 0.00000, 0.00000),
(175, 38, 1588215600, 1588150800, 1588215600, 1588150800, 200, 200.00000, 0.00000, 0.00000),
(176, 38, 1588222800, 1588150800, 1588222800, 1588150800, 200, 200.00000, 0.00000, 0.00000),
(177, 38, 1588287600, 1588237200, 1588287600, 1588237200, 200, 200.00000, 0.00000, 0.00000),
(178, 38, 1588302000, 1588237200, 1588302000, 1588237200, 200, 200.00000, 0.00000, 0.00000),
(179, 38, 1588309200, 1588237200, 1588309200, 1588237200, 200, 200.00000, 0.00000, 0.00000);

-- --------------------------------------------------------

--
-- Structure de la table `home`
--

CREATE TABLE `home` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` bigint(20) NOT NULL,
  `created_at` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_lat` double DEFAULT 48.856613,
  `location_lng` double DEFAULT 2.352222,
  `location_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_zoom` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '13',
  `location_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_postcode` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_guest` int(11) DEFAULT NULL,
  `number_of_bedrooms` int(11) DEFAULT NULL,
  `number_of_bathrooms` int(11) DEFAULT NULL,
  `size` double(8,2) DEFAULT NULL,
  `min_stay` int(11) DEFAULT NULL,
  `max_stay` int(11) DEFAULT NULL,
  `booking_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_price` double(16,5) DEFAULT NULL,
  `weekend_price` double(16,5) DEFAULT NULL,
  `weekend_to_apply` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_services` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amenities` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_cancellation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_before` int(11) DEFAULT NULL,
  `cancellation_detail` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkin_time` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkout_time` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` double(8,1) DEFAULT NULL,
  `is_featured` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_form` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'instant',
  `import_ical_url` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_7_day` double(15,6) NOT NULL DEFAULT 0.000000,
  `price_14_day` double(15,6) NOT NULL DEFAULT 0.000000,
  `price_30_day` double(15,6) NOT NULL DEFAULT 0.000000,
  `use_long_price` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `post_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'home',
  `enable_extra_guest` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `extra_guest_price` double(15,6) NOT NULL DEFAULT 0.000000,
  `apply_to_guest` int(11) NOT NULL DEFAULT 1,
  `video` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `home`
--

INSERT INTO `home` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_description`, `author`, `created_at`, `location_lat`, `location_lng`, `location_address`, `location_zoom`, `location_state`, `location_postcode`, `location_country`, `location_city`, `gallery`, `thumbnail_id`, `number_of_guest`, `number_of_bedrooms`, `number_of_bathrooms`, `size`, `min_stay`, `max_stay`, `booking_type`, `base_price`, `weekend_price`, `weekend_to_apply`, `extra_services`, `amenities`, `home_type`, `enable_cancellation`, `cancel_before`, `cancellation_detail`, `checkin_time`, `checkout_time`, `rating`, `is_featured`, `status`, `booking_form`, `import_ical_url`, `price_7_day`, `price_14_day`, `price_30_day`, `use_long_price`, `post_type`, `enable_extra_guest`, `extra_guest_price`, `apply_to_guest`, `video`) VALUES
(1, 'Independent cottage, mountain view', 'independent-cottage-mountain-view', '<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO', 1, '1578298658', 41.889061, -87.644465, 'Chicago, Illinois, United States of America', '13.168262671413748', NULL, NULL, 'United States of America', 'Chicago', '59,58,62,61,60,65', '237', 2, 1, 1, 75.00, 1, -1, 'per_night', 50.00000, NULL, 'sun', 'a:0:{}', '39,44,43,40,42,36,38,4', '25', 'on', 2, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here. If you have to cancel your class, we offer you a credit to your account if you cancel before the 48 hours, but do not offer refunds. You may use these credits towards any future class. However, if you do not cancel prior to the 48 hours, you will lose the payment for the class. The owner has the only right to be flexible here.', '11:30 AM', '10:30 AM', 5.0, 'on', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(2, 'Lussuoso. Vista incantevole.', 'lussuoso-vista-incantevole', '<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO', 1, '1578400078', 41.79, -87.74, 'Chicago, United States of America', '12.791617024347332', NULL, NULL, 'United States of America', 'Chicago', '58,62,61,60,65', '58', 4, 3, 2, 110.00, 1, -1, 'per_night', 120.00000, NULL, 'sun', 'a:0:{}', '41,39,44,43,40,37,42,36,38,4', '22', 'off', NULL, NULL, '01:30 PM', '01:00 PM', 4.0, 'off', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(3, 'Hector Cave House', 'hector-cave-house', '<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO.', 1, '1578400590', 40.729364, -73.995956, '44 W 4th St, New York City, United States of America', '16', NULL, NULL, 'United States of America', 'New York', '60,65,64,63,68', '60', 2, 1, 1, 75.00, 1, -1, 'per_night', 60.00000, NULL, 'sun', 'a:0:{}', '41,39,43,40,37,42,36,38,4', '23', 'off', NULL, NULL, '09:30 AM', '09:00 AM', 5.0, 'on', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(4, 'Joshua Tree Homesteader Cabin', 'joshua-tree-homesteader-cabin', '<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO.', 1, '1578400733', 40.743687, -73.974175, '550 1st Ave, New York City United States of America', '16', NULL, NULL, 'United States of America', 'New York City', '64,63,68,67,66', '64', 4, 2, 1, 95.00, 1, -1, 'per_night', 100.00000, NULL, 'sun', 'a:0:{}', '41,40,37,42,36,38,4', '24', 'on', 2, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here. If you have to cancel your class, we offer you a credit to your account if you cancel before the 48 hours, but do not offer refunds. You may use these credits towards any future class. However, if you do not cancel prior to the 48 hours, you will lose the payment for the class. The owner has the only right to be flexible here.', '02:00 PM', '01:30 PM', 5.0, 'off', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(5, 'Luxurious stone villa in Crete', 'luxurious-stone-villa-in-crete', '<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO.', 1, '1578400915', 37.775762, -122.41881, 'San Fransico, United States of America', '12.505358490267144', NULL, NULL, 'United States of America', 'San Fransico', '67,66,72,71,70', '210', 1, 1, 1, 50.00, 1, -1, 'per_night', 80.00000, NULL, 'sun', 'a:0:{}', '41,43,40,37,36,38,4', '25', 'off', NULL, NULL, '07:00 PM', '06:30 PM', 5.0, 'off', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(6, 'Perfectly located Castro', 'perfectly-located-castro', '<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO.', 1, '1578401093', 37.734318, -122.471512, 'San Fransico Tower,, United States of America', '12.684931690872864', NULL, NULL, 'United States of America', 'San Fransico', '74,68,67,66', '74', 2, 1, 1, 75.00, 1, -1, 'per_night', 75.00000, NULL, 'sun', 'a:0:{}', '41,39,44,40,37,42', '26', 'off', NULL, NULL, '12:00 AM', '11:00 AM', 5.0, 'on', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(7, 'Bamboo eco cottage', 'bamboo-eco-cottage', '<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO.', 1, '1578401248', 36.974303, -120.0566, 'California, United States of America', '12.229707263520488', NULL, NULL, 'United States of America', 'California', '75,64,63,68,65', '68', 2, 1, 1, 75.00, 1, -1, 'per_night', 125.00000, NULL, 'sun', 'a:0:{}', '41,44,43,38', '22', 'off', NULL, NULL, '00:00 AM', '00:00 AM', 5.0, 'on', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(8, 'The best position in Hvar', 'the-best-position-in-hvar', '<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO', 1, '1578401492', 36.786652, -119.771663, 'California City, California, United States of America', '11.851809526979102', NULL, NULL, 'United States of America', NULL, '72,71,70,69,68,67', '72', 4, 2, 1, 120.00, 1, -1, 'per_night', 90.00000, NULL, 'sun', 'a:0:{}', '44,40,37,38,4', '27', 'off', NULL, NULL, '01:30 PM', '02:00 PM', 5.0, 'off', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(9, 'Villa San Gennariello B&B', 'villa-san-gennariello-bb', '<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO.', 1, '1578402000', 36.1663, -115.1492, 'Las Vegas, Nevada, United States of America', '14.304351861567246', NULL, NULL, 'United States of America', 'Las Vegas', '67,68,63,64,65', '67', 2, 1, 1, 60.00, 1, -1, 'per_night', 75.00000, NULL, 'sun', 'a:0:{}', '39,40,37,42,38', '22', 'off', NULL, NULL, '09:00 AM', '08:00 AM', 5.0, 'off', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(10, 'Ocean View Malibu Hideaway', 'ocean-view-malibu-hideaway', '<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. r.', 1, '1578402293', 36.19495, -115.214793, 'Las Vegas, Nevada, United States of America', '11.581941944414277', NULL, NULL, 'United States of America', 'Las Vegas', '74,63,68,67,66', '345', 2, 1, 1, 75.00, 1, -1, 'per_night', 85.00000, NULL, 'sun', 'a:0:{}', '43,40,37,42,4', '27', 'off', NULL, NULL, '11:00 AM', '10:30 AM', 5.0, 'off', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(11, 'Twins Apartment in Center', 'twins-apartment-in-center', '<p><span class=\"_czm8crp\">Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport –the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO.', 1, '1578403092', 36.173826, -115.116132, 'Las Vegas, Nevada, United States of America', '12.478531993424209', NULL, NULL, 'United States of America', 'Las Vegas', '85,79,80,66,72', '85', 1, 1, 1, 90.00, 1, -1, 'per_night', 55.00000, NULL, 'sun', 'a:0:{}', '41,40,36,4', '28', 'off', NULL, NULL, '03:00 PM', '01:30 PM', NULL, 'off', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(12, 'Charming SF 1911 Studio', 'charming-sf-1911-studio', '<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO.', 1, '1578403229', 40.723, -73.998805, 'New York, United States of America', '13.854006459247062', NULL, NULL, 'United States of America', 'New York', '67,93,79,85,69,77', '67', 2, 1, 1, 70.00, 1, -1, 'per_night', 135.00000, NULL, 'sun', 'a:0:{}', '41,44,40,37,42,36', '26', 'off', NULL, NULL, '10:00 AM', '09:00 AM', 5.0, 'on', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(13, 'Garden Suite Efficiency', 'garden-suite-efficiency', '<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO.', 1, '1578403371', 40.721383, -73.998848, 'New York, United States of America', '13', NULL, NULL, 'United States of America', 'New York', '83,73,78,68', '83', 3, 2, 1, 110.00, 1, -1, 'per_night', 115.00000, NULL, 'sun', 'a:0:{}', '41,39,44,43,40,37,42,36,38', '25', 'on', 5, 'Due to limited seating, we request that you cancel at least 48 hours before a scheduled class. This gives us the opportunity to fill the class. You may cancel by phone or online here. If you have to cancel your class, we offer you a credit to your account if you cancel before the 48 hours, but do not offer refunds. You may use these credits towards any future class. However, if you do not cancel prior to the 48 hours, you will lose the payment for the class. The owner has the only right to be flexible here.', '02:00 PM', '01:00 PM', 5.0, 'off', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(14, 'Ocean View Malibu Hideaway', 'new-home-1578573749', '<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO', 1, '1578573749', 40.749304, -73.936825, 'New York, United States of America', '12.36220611022574', NULL, NULL, 'United States of America', 'New York', '120,119,123,122', '120', 4, 2, 2, 110.00, 1, -1, 'per_night', 120.00000, 10.00000, 'sat_sun', 'a:0:{}', '41,39,44,43,40,37,42,36,38,4', '22', 'off', NULL, NULL, '12:30 AM', '11:00 AM', NULL, 'off', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(15, 'Romantic Luxury Escape Seminyak', 'new-home-1578573878', '<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO.', 1, '1578573878', 40.724863, -73.892636, 'New York, United States of America', '12.108528217369493', NULL, NULL, 'United States of America', 'New York City', '119,123,122,120,121', '113', 2, 1, 1, 55.00, 1, -1, 'per_night', 40.00000, NULL, 'sun', 'a:0:{}', '41,39,40,42,36,38,4', '23', 'off', NULL, NULL, '12:30 AM', '12:00 AM', 5.0, 'off', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(16, 'Apartamento junto Gran Vía', 'new-home-1578574163', '<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO', 1, '1578574163', 41.87511, -87.682987, 'Chicago,United States of America', '12.554162423327455', NULL, NULL, 'United States of America', 'Chicago', '121,126,122,123', '374', 2, 1, 1, 75.00, 1, -1, 'per_night', 50.00000, NULL, 'sun', 'a:0:{}', '41,37,42,36,38,4', '22', 'off', NULL, NULL, '11:30 AM', '11:00 AM', NULL, 'off', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(17, 'Garden Suite Efficiency', 'new-home-1578574289', '<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO', 1, '1578574289', 41.975337, -87.681032, 'Chicago, United States of America', '11.755527994639213', NULL, NULL, 'United States of America', 'Chicago', '125,126,120,123', '380', 2, 1, 1, 80.00, 1, -1, 'per_night', 90.00000, NULL, 'sun', 'a:0:{}', '41,39,43,40,37,42,36', '26', 'off', NULL, NULL, '05:00 PM', '04:30 PM', NULL, 'off', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(18, '1885 Victorian Suit', 'new-home-1578574613', '<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO', 1, '1578574613', 41.820229, -87.628054, 'Chicago, Illinois, United States of America', '11.552103865962389', NULL, NULL, 'United States of America', 'Chicago', '124,129,125,126', '192', 2, 1, 1, 55.00, 1, -1, 'per_night', 35.00000, NULL, 'sun', 'a:0:{}', '41,39,44,37,42,36,38,4', '27', 'off', NULL, NULL, '11:30 AM', '10:30 AM', NULL, 'off', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(19, 'Cozy and charming cottage', 'new-home-1578574885', '<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO', 1, '1578574885', 40.736016, -74.001168, 'New York, United States of America', '12.56690619292122', NULL, NULL, 'United States of America', 'New York', '128,129,120,126', '120', 1, 1, 1, 80.00, 1, -1, 'per_night', 75.00000, NULL, 'sun', 'a:0:{}', '41,44,40,37,42,36,38,4', '28', 'off', NULL, NULL, '01:00 PM', '12:00 AM', 5.0, 'off', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(20, 'Suite Tower Rialto', 'new-home-1578575550', '<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO', 1, '1578575550', 40.756996, -73.919628, 'New York, United States of America', '11.464340107197204', NULL, NULL, 'United States of America', 'New York City', '124,125,129,128,122', '128', 2, 1, 1, 60.00, 1, -1, 'per_night', 45.00000, NULL, 'sun', 'a:0:{}', '39,44,40,37,36', '24', 'off', NULL, NULL, '12:30 AM', '11:00 AM', 5.0, 'off', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(21, '[:en]Chiado Loft 7 with Patio[:vi]Chiado Loft 7 with Patio[:]', 'new-home-1578575660', '[:en]<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes.&nbsp;</span></p>[:vi]<p><span class=\"_czm8crp\">Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport –the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. </span></p>[:]', '[:en]Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO.[:vi]Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO.[:]', 1, '1578575660', 40.732586, -73.920384, 'New York, United States of America', '11.246520357848738', NULL, NULL, 'United States of America', 'New York City', '90,102,103,92,91', '90', 2, 1, 1, 30.00, 1, -1, 'per_night', 55.00000, NULL, 'sun', 'a:4:{i:0;a:4:{s:4:\"name\";s:4:\"Iron\";s:11:\"name_unique\";s:4:\"iron\";s:5:\"price\";s:1:\"5\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:10:\"Hair dryer\";s:11:\"name_unique\";s:10:\"hair-dryer\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:2;a:4:{s:4:\"name\";s:10:\"Mobile USB\";s:11:\"name_unique\";s:10:\"mobile-usb\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:3;a:4:{s:4:\"name\";s:10:\"Television\";s:11:\"name_unique\";s:10:\"television\";s:5:\"price\";s:1:\"5\";s:8:\"required\";s:0:\"\";}}', '41,39,40,37,42,36', '28', 'off', NULL, NULL, '11:30 AM', '11:00 AM', 5.0, 'off', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(25, 'Twins Apartment', 'new-home-1579158855', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, '1579158855', 48.84133, 2.30029, '15th arrondissement of Paris, 75015, France', '12.381751490472599', NULL, '10000', 'France', '75015, Paris', '124,129,128,125', '128', 4, 2, 2, 125.00, 2, -1, 'per_night', 50.00000, 60.00000, 'sat_sun', 'a:3:{i:0;a:4:{s:4:\"name\";s:4:\"Iron\";s:11:\"name_unique\";s:4:\"iron\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:9:\"USB Cable\";s:11:\"name_unique\";s:9:\"usb-cable\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}i:2;a:4:{s:4:\"name\";s:5:\"Table\";s:11:\"name_unique\";s:5:\"table\";s:5:\"price\";s:1:\"3\";s:8:\"required\";s:0:\"\";}}', '41,39,43,40,37,36,4', '25', 'on', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '01:00 PM', '12:30 AM', 5.0, 'on', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(26, 'BAWhome - Komorebi', 'bawhome-komorebi', '<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO', 1, '1579524174', 21.02889, 105.8525, 'Hoan Kiem, Hanoi, Vietnam', '14.181171556712725', 'Ha Noi', NULL, 'Vietnam', 'Ha Noi', '129,124,125', '115', 4, 2, 1, 60.00, 1, -1, 'per_night', 70.00000, NULL, 'sun', 'a:3:{i:0;a:4:{s:4:\"name\";s:9:\"Breakfast\";s:11:\"name_unique\";s:9:\"breakfast\";s:5:\"price\";s:2:\"10\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:9:\"USB Cable\";s:11:\"name_unique\";s:9:\"usb-cable\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}i:2;a:4:{s:4:\"name\";s:5:\"Table\";s:11:\"name_unique\";s:5:\"table\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', '41,48,39,44,43,40,37,42,38,4', '23', 'off', NULL, NULL, '11:30 AM', '11:00 AM', 5.0, 'on', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(27, 'Trần’s home-Lovely Balc', 'trans-home-lovely-balc', '<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO.', 1, '1579524317', 21.02722, 105.83028, 'Quốc Tử Giám, Dong Da, Hanoi, Vietnam', '15.811280916972196', 'Ha Noi', NULL, 'Vietnam', 'Ha Noi', '124,125,126', '318', 2, 1, 1, 50.00, 1, -1, 'per_night', 40.00000, NULL, 'sun', 'a:0:{}', '39,44,43,42,36,4', '26', 'off', NULL, NULL, '09:30 AM', '08:00 AM', 5.0, 'off', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(28, 'Aimee #2', 'aimee-2', '<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO.', 1, '1579524419', 21.03667, 105.83611, 'Ba Dinh, Hanoi, Vietnam', '12.677567974801612', 'Hanoi', NULL, 'Vietnam', 'Hanoi', '85,83,87,79', '85', 2, 1, 1, 50.00, 1, -1, 'per_night', 45.00000, NULL, 'sun', 'a:0:{}', '48,40,37,42,38,4', '25', 'off', NULL, NULL, '11:30 AM', '11:00 AM', 5.0, 'off', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, '');
INSERT INTO `home` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_description`, `author`, `created_at`, `location_lat`, `location_lng`, `location_address`, `location_zoom`, `location_state`, `location_postcode`, `location_country`, `location_city`, `gallery`, `thumbnail_id`, `number_of_guest`, `number_of_bedrooms`, `number_of_bathrooms`, `size`, `min_stay`, `max_stay`, `booking_type`, `base_price`, `weekend_price`, `weekend_to_apply`, `extra_services`, `amenities`, `home_type`, `enable_cancellation`, `cancel_before`, `cancellation_detail`, `checkin_time`, `checkout_time`, `rating`, `is_featured`, `status`, `booking_form`, `import_ical_url`, `price_7_day`, `price_14_day`, `price_30_day`, `use_long_price`, `post_type`, `enable_extra_guest`, `extra_guest_price`, `apply_to_guest`, `video`) VALUES
(29, 'The Autumn Homestay', 'the-autumn-homestay', '<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO.', 1, '1579524497', 21.04, 105.83, 'Ngọc Hà, 118300, Ba Dinh, Hanoi, Vietnam', '15', 'Hanoi', NULL, 'Vietnam', 'Hanoi', '126,121,123,119', '93', 2, 1, 1, 45.00, 1, -1, 'per_night', 55.00000, NULL, 'sun', 'a:0:{}', '41,39,44,43,40,37,36,38,4', '28', 'off', NULL, NULL, '11:00 AM', '10:30 AM', 5.0, 'off', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(31, 'Bright & Airy in Highland Park', 'enbright-airy-in-highland-parkvinew-home-1582010499', '<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO', 1, '1582010499', 21.03667, 105.83611, '[:en]Ba Dinh, Ha Noi, Viet Nam[:vi]Ba Dinh, Ha Noi, Viet Nam[:]', '11.820426799394294', '[:en][:vi][:]', NULL, '[:en]Vietnam[:vi]Vietnam[:]', '[:en][:vi][:]', '58,71,62,61,70', '58', 1, 1, 1, 35.00, 1, -1, 'per_hour', 5.00000, NULL, 'sun', 'a:4:{i:0;a:4:{s:4:\"name\";s:21:\"[:en]Wifi[:vi]Wifi[:]\";s:11:\"name_unique\";s:4:\"wifi\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:2:\"on\";}i:1;a:4:{s:4:\"name\";s:21:\"[:en]Iron[:vi]Iron[:]\";s:11:\"name_unique\";s:4:\"iron\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}i:2;a:4:{s:4:\"name\";s:19:\"[:en]Bed[:vi]Bed[:]\";s:11:\"name_unique\";s:3:\"bed\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:21:\"[:en]Pets[:vi]Pets[:]\";s:11:\"name_unique\";s:4:\"pets\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', '41,48,44,43,37,42,38,4', '24', 'off', NULL, '[:en][:vi][:]', '06:00 AM', '11:30 PM', NULL, 'off', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(32, 'Uptown Chic in Hoboken', 'enuptown-chic-in-hobokenvi', '<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO.', 1, '1582012786', 21.0333, 105.8, '[:en]Cau Giay, Ha Noi, Vietnam[:vi][:]', '12.058695710524699', '[:en][:vi][:]', NULL, '[:en]Vietnam[:vi]Vietnam[:]', '[:en]Ha Noi[:vi][:]', '86,89,94,90,83', '388', 2, 1, 1, 35.00, 1, -1, 'per_hour', 3.00000, NULL, 'sun', 'a:0:{}', '41,43,40,36,38,4', '26', 'off', NULL, '[:en][:vi][:]', '01:00 AM', '11:30 PM', NULL, 'off', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(33, 'Midtown Manhattan Hideaway', 'enmidtown-manhattan-hideaway', '<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO', 1, '1582013035', 41.88149861803839, -87.63829080286165, '[:en]Chicago, USA[:vi][:]', '12.703647761847193', '[:en][:vi][:]', NULL, '[:en]United States of America[:vi]United States of', '[:en]Chicago[:vi][:]', '93,92,88,91', '93', 2, 1, 1, 45.00, 1, -1, 'per_hour', 6.00000, NULL, 'sun', 'a:0:{}', '48,43,40,37,36,38,4', '24', 'off', NULL, '[:en][:vi][:]', '01:00 AM', '11:00 PM', NULL, 'off', 'publish', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(34, 'Private room in apartment', 'private-room-in-apartment', '<p><span class=\"_czm8crp\">Long-term Pricing</span></p>\r\n<p><span class=\"_czm8crp\">- 7+ days: <strong>$90</strong>/night</span></p>\r\n<p><span class=\"_czm8crp\">- 14+ days:<strong> $80</strong>/night</span></p>\r\n<p><span class=\"_czm8crp\">- 30+ days: <strong>$50</strong>/night</span></p>\r\n<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>', 'Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO.', 1, '1582013643', 41.846788632766, -87.624674504347, '[:en]Chicago, USA[:vi]Chicago, USA[:]', '11', '[:en][:vi][:]', NULL, '[:en]United States of America[:vi]United States of', '[:en][:vi][:]', '92,93,91,85', '388', 5, 1, 1, 30.00, 1, -1, 'per_night', 100.00000, NULL, 'sun', 'a:1:{i:0;a:4:{s:4:\"name\";s:4:\"Wifi\";s:11:\"name_unique\";s:4:\"wifi\";s:5:\"price\";s:1:\"2\";s:8:\"required\";s:0:\"\";}}', '41,48,44,40,37,42,4', '28', 'off', NULL, '[:en][:vi][:]', '11:00 AM', '09:00 PM', NULL, 'off', 'publish', 'instant', NULL, 90.000000, 80.000000, 50.000000, 'on', 'home', 'on', 5.000000, 2, ''),
(37, '[:en]Desirable Deal on The Park[:vi]Desirable Deal on The Park[:ja]Desirable Deal on The Park[:]', 'desirable-deal-on-the-park', '[:en]<p><span class=\"_czm8crp\">Son Marimon, this B&amp;B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport &ndash;the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>[:vi]<p><span class=\"_czm8crp\">Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport –the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>[:ja]<p><span class=\"_czm8crp\">Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO. It is five minutes away from Lloseta, a village that offers the travellers everything they need: gastronomy, theatre, concerts, shows, historical neighbourhood, library and public transport –the train will allow the travellers reach Palma, Ciutat de Mallorca, in 25 minutes and Inca, where one of the most important markets of the island take place every Thursday, in 5 minutes. <br /><br />Wonderfully secluded, and still well connected, this 40m2 refugee also counts with 3600m2 of private land rich in autochthonous vegetation. <br /><br />The main characteristic of the house is how little it impacts on the surroundings in order to preserve the nature. Simple designs, hand crafted furniture, clay tiles (typical Majorcan material that tells the stories lived there) and beams create a space where comfort and tradition go together. <br /><br />The inner space comprises a sleeping room area, a sitting room with fireplace, a kitchen with oven, a microwave and fridge and an independent bathroom with shower. </span></p>[:]', '[:en]Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO[:vi]Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO[:ja]Son Marimon, this B&B, is located in the municipality of Selva, at the feet of Serra de Tramuntana, recently declared World Heritage Site by UNESCO[:]', 1, '1582016678', 34.04712686803, -118.24238092594, '[:en]Los Angeles, California USA[:vi]Los Angeles, California USA[:ja]Los Angeles, California USA[:]', '12', '[:en][:vi][:ja][:]', NULL, '[:en]United States of America[:vi]United States of', '[:en]Los Angeles[:vi]Los Angeles[:ja]Los Angeles[:', '68,67,66,64', '68', 1, 1, 1, 35.00, 1, -1, 'per_hour', 5.00000, NULL, 'sun', 'a:0:{}', '41,48,43,40,37,42,36,38,4', '24', 'off', NULL, '[:en][:vi][:]', '01:00 AM', '02:30 PM', 5.0, 'off', 'publish', 'enquiry', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(38, 'New Home - 1605805340', 'new-home-1605805340', NULL, NULL, 1, '1605805340', 48.856613, 2.352222, NULL, '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(39, 'New Home - 1605805352', 'new-home-1605805352', NULL, NULL, 1, '1605805352', 48.856613, 2.352222, NULL, '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(40, 'New Home - 1605885589', 'new-home-1605885589', NULL, NULL, 1, '1605885589', 48.856613, 2.352222, NULL, '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(41, 'New Home - 1605885610', 'new-home-1605885610', NULL, NULL, 1, '1605885610', 48.856613, 2.352222, NULL, '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(42, 'New Home - 1605885643', 'new-home-1605885643', NULL, NULL, 1, '1605885643', 48.856613, 2.352222, NULL, '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(43, 'New Home - 1605885683', 'new-home-1605885683', NULL, NULL, 1, '1605885683', 48.856613, 2.352222, NULL, '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(44, 'New Home - 1605885706', 'new-home-1605885706', NULL, NULL, 1, '1605885706', 48.856613, 2.352222, NULL, '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(45, 'New Home - 1605885961', 'new-home-1605885961', NULL, NULL, 1, '1605885961', 48.856613, 2.352222, NULL, '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(46, 'New Home - 1605886017', 'new-home-1605886017', NULL, NULL, 1, '1605886017', 48.856613, 2.352222, NULL, '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(47, 'New Home - 1605902285', 'new-home-1605902285', NULL, NULL, 1, '1605902285', 48.856613, 2.352222, NULL, '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(48, 'New Home - 1605902456', 'new-home-1605902456', NULL, NULL, 1, '1605902456', 48.856613, 2.352222, NULL, '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(49, 'New Home - 1605919435', 'new-home-1605919435', NULL, NULL, 1, '1605919435', 48.856613, 2.352222, NULL, '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(50, 'New Home - 1605919472', 'new-home-1605919472', NULL, NULL, 1, '1605919472', 48.856613, 2.352222, NULL, '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(51, 'New Home - 1605919503', 'new-home-1605919503', NULL, NULL, 1, '1605919503', 48.856613, 2.352222, NULL, '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(52, 'New Home - 1605919619', 'new-home-1605919619', NULL, NULL, 1, '1605919619', 48.856613, 2.352222, NULL, '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(53, 'New Home - 1605919717', 'new-home-1605919717', NULL, NULL, 1, '1605919717', 48.856613, 2.352222, NULL, '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(54, 'New Home - 1605920154', 'new-home-1605920154', NULL, NULL, 1, '1605920154', 48.856613, 2.352222, NULL, '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', 'instant', NULL, 0.000000, 0.000000, 0.000000, 'off', 'home', 'off', 0.000000, 1, ''),
(55, '[:fr]Kharism’Apparts[:en]New Home - 1606086289[:]', 'kharismapparts', '[:fr]<p>Vous avez le choix id&eacute;al pour ce logement tr&egrave;s a&eacute;r&eacute; et spacieux dans un quartier r&eacute;sidentiel, calme et &agrave; proximit&eacute; , de la route. Situ&eacute; &agrave; 10 minutes du centre ville et accessible aux commerces locaux ( banques, supermarch&eacute;s, clubs de sport, etc.).</p>\r\n<p> </p>[:en]<p>Vous avez le choix idéal pour ce logement très aéré et spacieux dans un quartier résidentiel, calme et à proximité , de la route. Situé à 10 minutes du centre ville et accessible aux commerces locaux ( banques, supermarchés, clubs de sport, etc.).</p>\r\n<p> </p>[:]', '[:fr]Vous avez le choix idéal pour ce logement très aéré et spacieux dans un quartier résidentiel, calme et à proximité , de la route. Situé à 10 minutes du centre ville et accessible aux commerces locaux ( banques, supermarchés, clubs de sport, etc.).[:en]Vous avez le choix idéal pour ce logement très aéré et spacieux dans un quartier résidentiel, calme et à proximité , de la route. Situé à 10 minutes du centre ville et accessible aux commerces locaux ( banques, supermarchés, clubs de sport, etc.).[:]', 1, '1606086289', 4.791006736708383, 12.191287881303566, '[:fr]17 rue cameroun[:en][:]', '12.841068474868724', '[:fr]Douala[:en][:]', '236', '[:fr]Cameroun[:en][:]', '[:fr]Ekomo[:en][:]', '66', '66', 1, 1, 1, 14.00, 1, -1, 'per_night', 120.00000, NULL, 'fri_sat_sun', 'a:0:{}', '41,39,44,43,40,37,42,36,38,4', '22', 'on', 2, '[:fr][:en][:]', '01:00 AM', '07:00 AM', NULL, 'on', 'publish', 'enquiry', 'a:0:{}', 0.000000, 10.000000, 500.000000, 'on', 'home', 'off', 0.000000, 1, '');

-- --------------------------------------------------------

--
-- Structure de la table `home_availability`
--

CREATE TABLE `home_availability` (
  `home_id` bigint(20) NOT NULL,
  `booking_id` bigint(20) NOT NULL,
  `start_time` bigint(20) NOT NULL,
  `end_time` bigint(20) NOT NULL,
  `start_date` bigint(20) NOT NULL,
  `end_date` bigint(20) NOT NULL,
  `total_minutes` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `home_availability`
--

INSERT INTO `home_availability` (`home_id`, `booking_id`, `start_time`, `end_time`, `start_date`, `end_date`, `total_minutes`, `type`, `summary`) VALUES
(12, 1, 1578960000, 1579046400, 1578960000, 1579046400, 1440, NULL, ''),
(15, 2, 1579132800, 1579219200, 1579132800, 1579219200, 1440, NULL, ''),
(21, 4, 1579564800, 1579824000, 1579564800, 1579824000, 1440, NULL, ''),
(21, 5, 1579824000, 1579996800, 1579824000, 1579996800, 1440, NULL, ''),
(21, 0, 1582329600, 1582416000, 1582329600, 1582416000, 1440, NULL, ''),
(19, 6, 1579046400, 1579132800, 1579046400, 1579132800, 1440, NULL, ''),
(19, 7, 1579219200, 1579305600, 1579219200, 1579305600, 1440, NULL, ''),
(25, 0, 1579824000, 1579910400, 1579824000, 1579910400, 1440, NULL, ''),
(25, 8, 1580169600, 1580342400, 1580169600, 1580342400, 1440, NULL, ''),
(26, 9, 1579651200, 1579737600, 1579651200, 1579737600, 1440, NULL, ''),
(2, 10, 1579824000, 1579910400, 1579824000, 1579910400, 1440, NULL, ''),
(15, 11, 1580428800, 1580515200, 1580428800, 1580515200, 1440, NULL, ''),
(25, 12, 1580515200, 1580774400, 1580515200, 1580774400, 1440, NULL, ''),
(29, 0, 1583107200, 1583107200, 1583107200, 1583107200, 1440, NULL, ''),
(29, 0, 1583712000, 1583712000, 1583712000, 1583712000, 1440, NULL, ''),
(29, 0, 1584316800, 1584316800, 1584316800, 1584316800, 1440, NULL, ''),
(29, 0, 1584921600, 1584921600, 1584921600, 1584921600, 1440, NULL, ''),
(29, 0, 1585526400, 1585526400, 1585526400, 1585526400, 1440, NULL, ''),
(31, 13, 1582419600, 1582421400, 1582416000, 1582416000, 30, NULL, ''),
(26, 14, 1585353600, 1585440000, 1585353600, 1585440000, 1440, NULL, ''),
(12, 15, 1585353600, 1585440000, 1585353600, 1585440000, 1440, NULL, ''),
(31, 26, 1586878200, 1586880000, 1586797200, 1586797200, 30, NULL, ''),
(21, 30, 1586768400, 1586854800, 1586768400, 1586854800, 1440, NULL, ''),
(31, 31, 1586772000, 1586784600, 1586768400, 1586768400, 210, NULL, '');

-- --------------------------------------------------------

--
-- Structure de la table `home_price`
--

CREATE TABLE `home_price` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `home_id` bigint(20) NOT NULL,
  `start_time` bigint(20) NOT NULL,
  `end_time` bigint(20) NOT NULL,
  `price` double(16,5) NOT NULL,
  `available` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `home_price`
--

INSERT INTO `home_price` (`ID`, `home_id`, `start_time`, `end_time`, `price`, `available`) VALUES
(1, 21, 1579564800, 1579824000, 55.00000, 'on'),
(2, 21, 1580342400, 1580428800, 60.00000, 'on'),
(3, 21, 1580774400, 1581465600, 65.00000, 'on'),
(4, 21, 1582329600, 1582416000, 0.00000, 'off'),
(6, 25, 1579564800, 1579737600, 65.00000, 'on'),
(7, 25, 1579824000, 1579910400, 0.00000, 'off'),
(22, 29, 1583539200, 1583625600, 50.00000, 'on'),
(23, 29, 1584144000, 1584230400, 50.00000, 'on'),
(24, 29, 1584748800, 1584835200, 50.00000, 'on'),
(25, 29, 1585353600, 1585440000, 50.00000, 'on'),
(26, 29, 1583107200, 1583107200, 0.00000, 'off'),
(27, 29, 1583712000, 1583712000, 0.00000, 'off'),
(28, 29, 1584316800, 1584316800, 0.00000, 'off'),
(29, 29, 1584921600, 1584921600, 0.00000, 'off'),
(30, 29, 1585526400, 1585526400, 0.00000, 'off'),
(35, 55, 1604422800, 1604422800, 5000.00000, 'on'),
(36, 55, 1605027600, 1605027600, 5000.00000, 'on'),
(37, 55, 1605632400, 1605632400, 5000.00000, 'on'),
(38, 55, 1606237200, 1606237200, 5000.00000, 'on');

-- --------------------------------------------------------

--
-- Structure de la table `language`
--

CREATE TABLE `language` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int(11) DEFAULT 0,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rtl` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `language`
--

INSERT INTO `language` (`id`, `code`, `name`, `flag_code`, `flag_name`, `priority`, `status`, `created_at`, `updated_at`, `rtl`) VALUES
(2, 'en', 'English', 'gb', 'United Kingdom of Great Britain and Northern Ireland', 0, 'on', '2020-08-25 01:36:33', '2020-08-25 01:37:05', 'no'),
(3, 'fr', 'Français', 'fr', 'France', 1, 'on', '2020-11-19 06:03:31', '2020-11-19 06:04:42', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
  `media_id` bigint(20) UNSIGNED NOT NULL,
  `media_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` bigint(20) NOT NULL,
  `created_at` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `media`
--

INSERT INTO `media` (`media_id`, `media_title`, `media_name`, `media_url`, `media_path`, `media_description`, `media_size`, `media_type`, `author`, `created_at`) VALUES
(49, 'logo-sm', 'logo-sm', 'https://data.awebooking.org/storage/u-1/2020/01/07/logo-sm-1578387303.png', '/home/ohteamvn/public_html/awebooking.org/storage/app/public/u-1/2020/01/07/logo-sm-1578387303.png', 'logo-sm', '8699', 'png', 1, '1578387303'),
(50, 'logo', 'logo', 'https://data.awebooking.org/storage/u-1/2020/01/07/logo-1578387303.png', '/home/ohteamvn/public_html/awebooking.org/storage/app/public/u-1/2020/01/07/logo-1578387303.png', 'logo', '9768', 'png', 1, '1578387303'),
(51, 'logo-xs', 'logo-xs', 'https://data.awebooking.org/storage/u-1/2020/01/07/logo-xs-1578387303.png', '/home/ohteamvn/public_html/awebooking.org/storage/app/public/u-1/2020/01/07/logo-xs-1578387303.png', 'logo-xs', '7029', 'png', 1, '1578387303'),
(52, 'Logo Lavogui', 'logo-lavogui', 'http://localhost/senghor/awebooking/storage/u-1/2020/11/20/logo-lavogui-1605808751.svg', 'C:\\xampp\\htdocs\\senghor\\awebooking\\storage\\app/public/u-1/2020/11/20\\logo-lavogui-1605808751.svg', 'Logo Lavogui', '4445', 'svg', 1, '1605808751'),
(53, 'Logo Lavogui', 'logo-lavogui', 'http://localhost/senghor/awebooking/storage/u-1/2020/11/20/logo-lavogui-1605808779.svg', 'C:\\xampp\\htdocs\\senghor\\awebooking\\storage\\app/public/u-1/2020/11/20\\logo-lavogui-1605808779.svg', 'Logo Lavogui', '4445', 'svg', 1, '1605808779'),
(54, 'img-01', 'img-01', 'http://localhost/senghor/awebooking/storage/u-1/2020/11/20/img-01-1605808807.jpg', 'C:\\xampp\\htdocs\\senghor\\awebooking\\storage\\app/public/u-1/2020/11/20\\img-01-1605808807.jpg', 'img-01', '358412', 'jpg', 1, '1605808807'),
(55, 'gettyimages-724344199-612x612', 'gettyimages-724344199-612x612', 'http://localhost/senghor/awebooking/storage/u-1/2020/11/20/gettyimages-724344199-612x612-1605809111.jpg', 'C:\\xampp\\htdocs\\senghor\\awebooking\\storage\\app/public/u-1/2020/11/20\\gettyimages-724344199-612x612-1605809111.jpg', 'gettyimages-724344199-612x612', '66446', 'jpg', 1, '1605809111'),
(56, 'avatar', 'avatar', 'http://localhost/senghor/awebooking/storage/u-1/2020/11/20/avatar-1605809298.png', 'C:\\xampp\\htdocs\\senghor\\awebooking\\storage\\app/public/u-1/2020/11/20\\avatar-1605809298.png', 'avatar', '51126', 'png', 1, '1605809298'),
(57, 'Logo Lavogui', 'logo-lavogui', 'http://localhost/senghor/awebooking/storage/u-1/2020/11/20/logo-lavogui-1605809373.svg', 'C:\\xampp\\htdocs\\senghor\\awebooking\\storage\\app/public/u-1/2020/11/20\\logo-lavogui-1605809373.svg', 'Logo Lavogui', '4445', 'svg', 1, '1605809373'),
(58, '17c8eb67bf1606a4200d2aab3b226978', '17c8eb67bf1606a4200d2aab3b226978', 'http://localhost/senghor/awebooking/storage/u-1/2020/11/20/17c8eb67bf1606a4200d2aab3b226978-1605809499.jpg', 'C:\\xampp\\htdocs\\senghor\\awebooking\\storage\\app/public/u-1/2020/11/20\\17c8eb67bf1606a4200d2aab3b226978-1605809499.jpg', '17c8eb67bf1606a4200d2aab3b226978', '117833', 'jpg', 1, '1605809499'),
(59, 'Logo-Lavogui', 'logo-lavogui', 'http://localhost/senghor/awebooking/storage/u-1/2020/11/20/logo-lavogui-1605809562.png', 'C:\\xampp\\htdocs\\senghor\\awebooking\\storage\\app/public/u-1/2020/11/20\\logo-lavogui-1605809562.png', 'Logo-Lavogui', '42782', 'png', 1, '1605809562'),
(60, 'Yaoundé_view_from_central_market_(2014)', 'yaounde-view-from-central-market-2014', 'http://localhost/senghor/awebooking/storage/u-1/2020/11/20/yaounde-view-from-central-market-2014-1605809867.JPG', 'C:\\xampp\\htdocs\\senghor\\awebooking\\storage\\app/public/u-1/2020/11/20\\yaounde-view-from-central-market-2014-1605809867.JPG', 'Yaoundé_view_from_central_market_(2014)', '3001859', 'JPG', 1, '1605809867'),
(61, 'vue-aerienne-de-bamenda-cameroun-f0jhay', 'vue-aerienne-de-bamenda-cameroun-f0jhay', 'http://localhost/senghor/awebooking/storage/u-1/2020/11/20/vue-aerienne-de-bamenda-cameroun-f0jhay-1605810020.jpg', 'C:\\xampp\\htdocs\\senghor\\awebooking\\storage\\app/public/u-1/2020/11/20\\vue-aerienne-de-bamenda-cameroun-f0jhay-1605810020.jpg', 'vue-aerienne-de-bamenda-cameroun-f0jhay', '244514', 'jpg', 1, '1605810020'),
(62, '1200px-Buea_from_Fako', '1200px-buea-from-fako', 'http://localhost/senghor/awebooking/storage/u-1/2020/11/20/1200px-buea-from-fako-1605810164.jpg', 'C:\\xampp\\htdocs\\senghor\\awebooking\\storage\\app/public/u-1/2020/11/20\\1200px-buea-from-fako-1605810164.jpg', '1200px-Buea_from_Fako', '222378', 'jpg', 1, '1605810164'),
(63, 'musee_civilisations_dschang', 'musee-civilisations-dschang', 'http://localhost/senghor/awebooking/storage/u-1/2020/11/20/musee-civilisations-dschang-1605810836.jpg', 'C:\\xampp\\htdocs\\senghor\\awebooking\\storage\\app/public/u-1/2020/11/20\\musee-civilisations-dschang-1605810836.jpg', 'musee_civilisations_dschang', '64322', 'jpg', 1, '1605810836'),
(64, 'La-location-de-logements-meubles-en-ligne-au-Cameroun-bg-optimise', 'la-location-de-logements-meubles-en-ligne-au-cameroun-bg-optimise', 'http://127.0.0.1:8000/storage/u-1/2020/11/23/la-location-de-logements-meubles-en-ligne-au-cameroun-bg-optimise-1606085848.jpg', 'C:\\xampp\\htdocs\\senghor\\awebooking\\storage\\app/public/u-1/2020/11/23\\la-location-de-logements-meubles-en-ligne-au-cameroun-bg-optimise-1606085848.jpg', 'La-location-de-logements-meubles-en-ligne-au-Cameroun-bg-optimise', '489146', 'jpg', 1, '1606085848'),
(65, 'Bg', 'bg', 'http://127.0.0.1:8000/storage/u-1/2020/11/23/bg-1606086213.jpg', 'C:\\xampp\\htdocs\\senghor\\awebooking\\storage\\app/public/u-1/2020/11/23\\bg-1606086213.jpg', 'Bg', '71780', 'jpg', 1, '1606086213'),
(66, 'SAM_0966-min-e1568575976258', 'sam-0966-min-e1568575976258', 'http://127.0.0.1:8000/storage/u-1/2020/11/23/sam-0966-min-e1568575976258-1606087163.jpg', 'C:\\xampp\\htdocs\\senghor\\awebooking\\storage\\app/public/u-1/2020/11/23\\sam-0966-min-e1568575976258-1606087163.jpg', 'SAM_0966-min-e1568575976258', '234237', 'jpg', 1, '1606087163'),
(67, 'logo', 'logo', 'http://127.0.0.1:8000/storage/u-1/2020/11/23/logo-1606088877.png', 'C:\\xampp\\htdocs\\hrubech\\storage\\app/public/u-1/2020/11/23\\logo-1606088877.png', 'logo', '8180', 'png', 1, '1606088877'),
(68, 'logo', 'logo', 'http://127.0.0.1:8000/storage/u-1/2020/11/23/logo-1606088941.png', 'C:\\xampp\\htdocs\\hrubech\\storage\\app/public/u-1/2020/11/23\\logo-1606088941.png', 'logo', '8180', 'png', 1, '1606088941'),
(69, 'slider2', 'slider2', 'http://127.0.0.1:8000/storage/u-1/2020/11/23/slider2-1606089257.jpeg', 'C:\\xampp\\htdocs\\hrubech\\storage\\app/public/u-1/2020/11/23\\slider2-1606089257.jpeg', 'slider2', '251847', 'jpeg', 1, '1606089257'),
(70, '150', '150', 'http://127.0.0.1:8000/storage/u-1/2020/11/23/150-1606089456.png', 'C:\\xampp\\htdocs\\hrubech\\storage\\app/public/u-1/2020/11/23\\150-1606089456.png', '150', '2558637', 'png', 1, '1606089456'),
(71, '1ae4a97bfa27802db1876bda2d3fc63c', '1ae4a97bfa27802db1876bda2d3fc63c', 'http://127.0.0.1:8000/storage/u-1/2020/11/24/1ae4a97bfa27802db1876bda2d3fc63c-1606165049.webp', 'C:\\xampp\\htdocs\\hrubech\\storage\\app/public/u-1/2020/11/24\\1ae4a97bfa27802db1876bda2d3fc63c-1606165049.webp', '1ae4a97bfa27802db1876bda2d3fc63c', '46238', 'webp', 1, '1606165049'),
(72, '976863e80639470765f11a6a9d0e1e6b', '976863e80639470765f11a6a9d0e1e6b', 'http://127.0.0.1:8000/storage/u-1/2020/11/24/976863e80639470765f11a6a9d0e1e6b-1606165068.webp', 'C:\\xampp\\htdocs\\hrubech\\storage\\app/public/u-1/2020/11/24\\976863e80639470765f11a6a9d0e1e6b-1606165068.webp', '976863e80639470765f11a6a9d0e1e6b', '37724', 'webp', 1, '1606165068'),
(73, '04fb-loobv-franceville', '04fb-loobv-franceville', 'http://127.0.0.1:8000/storage/u-1/2020/12/01/04fb-loobv-franceville-1606778891.jpg', 'C:\\wamp64\\www\\loobv\\storage\\app/public/u-1/2020/12/01\\04fb-loobv-franceville-1606778891.jpg', '04fb-loobv-franceville', '205336', 'jpg', 1, '1606778891'),
(74, 'favicon', 'favicon', 'http://127.0.0.1:8000/storage/u-1/2020/12/06/favicon-1607249747.png', 'C:\\wamp64\\www\\loobv\\storage\\app/public/u-1/2020/12/06\\favicon-1607249747.png', 'favicon', '40431', 'png', 1, '1607249747'),
(75, 'logo', 'logo', 'http://127.0.0.1:8000/storage/u-1/2020/12/06/logo-1607249808.png', 'C:\\wamp64\\www\\loobv\\storage\\app/public/u-1/2020/12/06\\logo-1607249808.png', 'logo', '8180', 'png', 1, '1607249808'),
(76, 'libreville', 'libreville', 'http://127.0.0.1:8000/storage/u-1/2020/12/06/libreville-1607255192.jpeg', 'C:\\wamp64\\www\\loobv\\storage\\app/public/u-1/2020/12/06\\libreville-1607255192.jpeg', 'libreville', '419508', 'jpeg', 1, '1607255192'),
(77, 'WhatsApp Image 2020-11-24 at 21.43.04', 'whatsapp-image-2020-11-24-at-214304', 'http://127.0.0.1:8000/storage/u-1/2020/12/06/whatsapp-image-2020-11-24-at-214304-1607255875.jpeg', 'C:\\wamp64\\www\\loobv\\storage\\app/public/u-1/2020/12/06\\whatsapp-image-2020-11-24-at-214304-1607255875.jpeg', 'WhatsApp Image 2020-11-24 at 21.43.04', '44580', 'jpeg', 1, '1607255875'),
(78, 'WhatsApp Image 2020-11-30 at 21.03.48', 'whatsapp-image-2020-11-30-at-210348', 'http://127.0.0.1:8000/storage/u-7/2020/12/13/whatsapp-image-2020-11-30-at-210348-1607871278.jpeg', 'C:\\wamp64\\www\\loobv\\storage\\app/public/u-7/2020/12/13\\whatsapp-image-2020-11-30-at-210348-1607871278.jpeg', 'WhatsApp Image 2020-11-30 at 21.03.48', '17345', 'jpeg', 7, '1607871278'),
(79, 'WhatsApp Image 2020-11-24 at 21.18.58', 'whatsapp-image-2020-11-24-at-211858', 'http://127.0.0.1:8000/storage/u-7/2020/12/13/whatsapp-image-2020-11-24-at-211858-1607871306.jpeg', 'C:\\wamp64\\www\\loobv\\storage\\app/public/u-7/2020/12/13\\whatsapp-image-2020-11-24-at-211858-1607871306.jpeg', 'WhatsApp Image 2020-11-24 at 21.18.58', '28998', 'jpeg', 7, '1607871306'),
(80, '0', '0', 'http://127.0.0.1:8000/storage/u-8/2021/02/08/0-1612781856.jpg', 'C:\\xampp\\htdocs\\loobv\\storage\\app/public/u-8/2021/02/08\\0-1612781856.jpg', '0', '10598', 'jpg', 8, '1612781856'),
(81, '1558098161681', '1558098161681', 'http://127.0.0.1:8000/storage/u-8/2021/02/08/1558098161681-1612781877.jpg', 'C:\\xampp\\htdocs\\loobv\\storage\\app/public/u-8/2021/02/08\\1558098161681-1612781877.jpg', '1558098161681', '3201', 'jpg', 8, '1612781877');

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

CREATE TABLE `menu` (
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `menu_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_title`, `menu_position`, `created_at`) VALUES
(1, 'Main menu', 'primary', '1577381924'),
(2, 'Footer 1', NULL, '1578043825'),
(3, 'Footer 2', NULL, '1578043880');

-- --------------------------------------------------------

--
-- Structure de la table `menu_structure`
--

CREATE TABLE `menu_structure` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `depth` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `left` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `right` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `target_blank` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_structure`
--

INSERT INTO `menu_structure` (`id`, `item_id`, `parent_id`, `depth`, `left`, `right`, `name`, `type`, `post_id`, `post_title`, `url`, `class`, `menu_id`, `created_at`, `menu_lang`, `target_blank`) VALUES
(364, NULL, NULL, '0', '1', '10', '', '', '', '', '', '', '3', '1582012110', 'vi', NULL),
(365, '1', NULL, '1', '2', '3', 'Libreville', 'custom', '0', 'Libreville', '#', '', '3', '1582012110', 'fr', NULL),
(366, '2', NULL, '1', '4', '5', 'Dakar', 'custom', '0', 'Dakar', '#', '', '3', '1582012110', 'fr', NULL),
(367, '3', NULL, '1', '6', '7', 'Franceville', 'custom', '0', 'Franceville', '#', '', '3', '1582012110', 'fr', NULL),
(368, '4', NULL, '1', '8', '9', 'Laolack', 'custom', '0', 'Laolack', '#', '', '3', '1582012110', 'fr', NULL),
(369, NULL, NULL, '0', '1', '10', '', '', '', '', '', '', '3', '1582012146', 'en', NULL),
(370, '1', NULL, '1', '2', '3', 'Chicago', 'custom', '0', 'Chicago', '#', '', '3', '1582012146', 'en', NULL),
(371, '2', NULL, '1', '4', '5', 'New York', 'custom', '0', 'New York', '#', '', '3', '1582012146', 'en', NULL),
(372, '3', NULL, '1', '6', '7', 'San Fancisco', 'custom', '0', 'San Fancisco', '#', '', '3', '1582012146', 'en', NULL),
(373, '4', NULL, '1', '8', '9', 'California', 'custom', '0', 'California', '#', '', '3', '1582012146', 'en', NULL),
(517, NULL, NULL, '0', '1', '10', '', '', '', '', '', '', '2', '1582041085', 'en', NULL),
(518, '1', NULL, '1', '2', '3', 'Présentation', 'custom', '0', 'Présentation', '#', '', '2', '1582041085', 'fr', NULL),
(519, '2', NULL, '1', '4', '5', 'Become a host', 'custom', '0', 'Become a host', '#', '', '2', '1582041085', 'en', NULL),
(520, '3', NULL, '1', '6', '7', 'Blog', 'custom', '0', 'Blog', '#', '', '2', '1582041085', 'en', NULL),
(521, '4', NULL, '1', '8', '9', 'Contact', 'custom', '0', 'Contact', '#', '', '2', '1582041085', 'fr', NULL),
(527, NULL, NULL, '0', '1', '10', '', '', '', '', '', '', '2', '1582041133', 'vi', NULL),
(528, '1', NULL, '1', '2', '3', 'Giới thiệu', 'custom', '0', 'Giới thiệu', '#', '', '2', '1582041133', 'vi', NULL),
(529, '2', NULL, '1', '4', '5', 'Trở thành Host', 'custom', '0', 'Trở thành Host', '#', '', '2', '1582041133', 'vi', NULL),
(530, '3', NULL, '1', '6', '7', 'Blog', 'custom', '0', 'Blog', '#', '', '2', '1582041133', 'vi', NULL),
(531, '4', NULL, '1', '8', '9', 'Liên hệ', 'custom', '0', 'Liên hệ', '#', '', '2', '1582041133', 'vi', NULL),
(816, NULL, NULL, '0', '1', '56', '', '', '', '', '', '', '1', '1589614490', 'en', 0),
(817, '1', NULL, '1', '2', '9', 'Accueil ', 'custom', '0', 'Home', '/', '', '1', '1589614490', 'fr', 0),
(821, '5', NULL, '1', '10', '21', 'Présentation', 'custom', '0', 'Présentation', '#', '', '1', '1589614490', 'fr', 0),
(822, '6', '5', '2', '11', '12', 'Home - per Hour', 'custom', '0', 'Listing - per Hour', 'http://localhost/senghor/awebooking/home-search-result?bookingType=per_hour&checkInTime=2020-04-30&page=1&checkOutTime=2020-04-30&checkInOutTime=2020-04-30%2B12%3A00%2Bam-2020-04-30%2B11%3A59', '', '1', '1589614490', 'en', 0),
(823, '7', '5', '2', '13', '14', 'Home - per Night', 'custom', '0', 'Listing - per Night', 'http://localhost/senghor/awebooking/home-search-result?bookingType=per_night', '', '1', '1589614490', 'en', 0),
(824, '8', '5', '2', '15', '16', 'Experience', 'custom', '0', 'Experience Listings', 'http://localhost/senghor/awebooking/experience-search-result', '', '1', '1589614490', 'en', 0),
(825, '9', '5', '2', '17', '18', 'Car - Grid Layout', 'custom', '0', 'Car - Grid Layout', 'http://localhost/senghor/awebooking/car-search-result?layout=grid', '', '1', '1589614490', 'en', 0),
(826, '10', '5', '2', '19', '20', 'Car - List Layout', 'custom', '0', 'Car - List Layout', 'http://localhost/senghor/awebooking/car-search-result?layout=list', '', '1', '1589614490', 'en', 0),
(827, '11', NULL, '1', '22', '39', 'Réservation', 'custom', '0', 'Single ', '#', '', '1', '1589614490', 'fr', 0),
(828, '12', '11', '2', '23', '30', 'Home Single', 'custom', '0', 'Home Single', '#', '', '1', '1589614490', 'en', 0),
(829, '13', '12', '3', '24', '25', 'Hourly Booking', 'home', '31', 'Bright & Airy in Highland Park', 'http://localhost/senghor/awebooking/home/31/enbright-airy-in-highland-parkvinew-home-1582010499', '', '1', '1589614490', 'en', 0),
(830, '14', '12', '3', '26', '27', 'Nightly Booking', 'home', '21', 'Chiado Loft 7 with Patio', 'http://localhost/senghor/awebooking/home/21/new-home-1578575660', '', '1', '1589614490', 'en', 0),
(831, '15', '12', '3', '28', '29', 'Long-term Pricing', 'home', '34', 'Private room in apartment', 'http://localhost/senghor/awebooking/home/34/private-room-in-apartment', '', '1', '1589614490', 'en', 0),
(832, '16', '11', '2', '31', '36', 'Experience Single', 'custom', '0', 'Experience Single', '#', '', '1', '1589614490', 'en', 0),
(833, '17', '16', '3', '32', '33', 'Daily Booking', 'experience', '40', 'Paris Fashion Week 2019', 'http://localhost/senghor/awebooking/experience/40/paris-fashion-week-2019', '', '1', '1589614490', 'en', 0),
(834, '18', '16', '3', '34', '35', 'Hourly Booking', 'experience', '38', '43 rd Tokyo Motor show', 'http://localhost/senghor/awebooking/experience/38/43-rd-tokyo-motor-show', '', '1', '1589614490', 'en', 0),
(835, '19', '11', '2', '37', '38', 'Car', 'car', '6', 'Vinfast Lux A2.0', 'http://localhost/senghor/awebooking/car/6/vinfast-lux-a20', '', '1', '1589614490', 'en', 0),
(836, '20', NULL, '1', '40', '49', 'Contact', 'custom', '0', 'Pages', 'http://localhost/contact-us', '', '1', '1589614490', 'fr', 0),
(837, '21', '20', '2', '41', '42', 'Blog', 'custom', '0', 'Blog', 'http://localhost/senghor/awebooking/blog', '', '1', '1589614490', 'en', 0),
(838, '22', '20', '2', '43', '44', 'Category', 'category', '29', 'Beauty beaches', 'http://localhost/senghor/awebooking/category/beauty-beaches', '', '1', '1589614490', 'en', 0),
(839, '23', '20', '2', '45', '46', 'Single Blog', 'post', '23', 'A Seaside Reset in Laguna Beach', 'http://localhost/senghor/awebooking/post/23/a-seaside-reset-in-laguna-beach', '', '1', '1589614490', 'en', 0),
(840, '24', '20', '2', '47', '48', 'Contact Us', 'custom', '0', 'Contact Us', 'http://localhost/senghor/awebooking/contact-us', '', '1', '1589614490', 'en', 0),
(841, '25', NULL, '1', '50', '55', 'Josephat', 'custom', '0', 'Extra Pages', 'http://localhost/senghor/awebooking/', '', '1', '1589614490', 'en', 0),
(842, '26', '11', '2', '51', '52', 'Gabon', 'custom', '0', 'Gabon', '#', '', '1', '1589614490', 'fr', 0),
(843, '27', '11', '2', '53', '54', 'Sénégal', 'custom', '0', 'Sénégal', '#', '', '1', '1589614490', 'fr', 0);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
(2, '2019_10_16_230147_migration_media', 1),
(3, '2019_10_22_230147_migration_options', 1),
(4, '2019_10_23_230149_migration_home', 1),
(5, '2019_10_24_230147_migration_taxonomy', 1),
(6, '2019_10_24_230147_migration_term', 1),
(7, '2019_10_24_230147_migration_term_1_2', 1),
(8, '2019_10_29_230147_migration_coupon', 1),
(9, '2019_10_30_230147_migration_page', 1),
(10, '2019_10_30_230147_migration_page_1_2_2', 1),
(11, '2019_10_30_230147_migration_session', 1),
(12, '2019_10_30_230147_migration_term_relationship', 1),
(13, '2019_11_01_230147_migration_post', 1),
(14, '2019_11_01_230147_migration_post_1_2_2', 1),
(15, '2019_11_04_230147_migration_price_home', 1),
(16, '2019_11_07_230147_migration_menu', 1),
(17, '2019_11_07_230149_migration_menu_structure', 1),
(18, '2019_11_07_230152_migration_menu_structure_1_1', 1),
(19, '2019_11_07_230152_migration_menu_structure_1_2', 1),
(20, '2019_11_11_230147_migration_home_booking', 1),
(21, '2019_11_19_230147_migration_availability_home', 1),
(22, '2019_11_20_230147_migration_earning', 1),
(23, '2019_11_21_230147_migration_notification', 1),
(24, '2019_11_27_230147_migration_usermeta', 1),
(25, '2019_11_27_230152_migration_comment', 1),
(26, '2019_12_22_230153_migration_package', 1),
(27, '2019_12_22_230153_migration_package_order', 1),
(28, '2020_02_02_230149_migration_home_1_1', 1),
(29, '2020_02_02_230149_migration_home_1_2', 1),
(30, '2020_02_02_230149_migration_user_1_1', 1),
(31, '2020_02_02_230151_migration_language', 1),
(32, '2020_02_19_230147_migration_home_booking_rename', 1),
(33, '2020_02_19_230147_migration_taxonomy_1_1', 1),
(34, '2020_02_19_230149_migration_experience', 1),
(35, '2020_02_26_230147_migration_car_price', 1),
(36, '2020_02_26_230147_migration_price_experience', 1),
(37, '2020_02_26_230150_migration_car', 1),
(38, '2020_02_26_230150_migration_car_1_2_2', 1),
(39, '2020_03_25_230150_migration_experience_availability', 1),
(40, '2020_04_15_230150_migration_payout', 1),
(41, '2020_04_16_230149_migration_experience_1_2_2', 1),
(42, '2020_04_16_230149_migration_home_1_2_2', 1),
(43, '2020_04_22_230149_migration_experience_availability_1_2_2', 1),
(44, '2020_04_22_230149_migration_home_availability_1_2_2', 1),
(45, '2020_05_01_230149_migration_experience_1_2_3', 1),
(46, '2020_05_01_230149_migration_home_1_2_3', 1),
(47, '2020_05_01_230150_migration_car_1_2_3', 1),
(48, '2020_05_01_230150_migration_car_1_3_3', 1),
(49, '2020_05_21_230149_migration_home_1_3', 1),
(50, '2020_06_01_230149_migration_home_1_3_1', 1),
(51, '2020_07_02_230149_migration_experience_1_3_2', 1),
(52, '2020_07_08_230149_migration_booking_1_3_3', 1),
(53, '2020_08_06_230149_migration_language_1_3_5', 1);

-- --------------------------------------------------------

--
-- Structure de la table `notification`
--

CREATE TABLE `notification` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_from` bigint(20) NOT NULL,
  `user_to` bigint(20) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `notification`
--

INSERT INTO `notification` (`ID`, `user_from`, `user_to`, `title`, `message`, `type`, `created_at`) VALUES
(1, 0, 1, 'A new booking <a href=\"http://127.0.0.1:8000/dashboard/all-booking?_s=35\">#141606165475</a>', 'at <strong>Nissan GT R</strong> from 11-28-2020 07:00 AM to 12-18-2020 08:15 AM', 'booking', 1606165477),
(2, 0, 1, 'A new booking <a href=\"http://127.0.0.1:8000/dashboard/all-booking?_s=35\">#141606165475</a>', 'at <strong>Nissan GT R</strong> from 11-28-2020 07:00 AM to 12-18-2020 08:15 AM', 'booking', 1606165477),
(3, 0, 1, 'Your booking <a href=\"http://127.0.0.1:8000/dashboard/all-booking?_s=35\">#141606165475</a>', 'at <strong>Nissan GT R</strong> from 11-28-2020 07:00 AM to 12-18-2020 08:15 AM', 'booking', 1606165477),
(4, 0, 1, 'A new booking <a href=\"http://127.0.0.1:8000/dashboard/all-booking?_s=10\">#51612879098</a>', 'at <strong>VinFast Fadil</strong> from 02-09-2021 01:15 AM to 02-10-2021 01:30 AM', 'booking', 1612879098),
(5, 0, 1, 'A new booking <a href=\"http://127.0.0.1:8000/dashboard/all-booking?_s=10\">#51612879098</a>', 'at <strong>VinFast Fadil</strong> from 02-09-2021 01:15 AM to 02-10-2021 01:30 AM', 'booking', 1612879098),
(6, 0, 8, 'Your booking <a href=\"http://127.0.0.1:8000/dashboard/all-booking?_s=10\">#51612879098</a>', 'at <strong>VinFast Fadil</strong> from 02-09-2021 01:15 AM to 02-10-2021 01:30 AM', 'booking', 1612879098),
(7, 0, 1, 'A new booking <a href=\"http://127.0.0.1:8000/dashboard/all-booking?_s=11\">#51612880248</a>', 'at <strong>VinFast Fadil</strong> from 02-09-2021 01:15 AM to 02-10-2021 02:00 AM', 'booking', 1612880248),
(8, 0, 1, 'A new booking <a href=\"http://127.0.0.1:8000/dashboard/all-booking?_s=11\">#51612880248</a>', 'at <strong>VinFast Fadil</strong> from 02-09-2021 01:15 AM to 02-10-2021 02:00 AM', 'booking', 1612880248),
(9, 0, 8, 'Your booking <a href=\"http://127.0.0.1:8000/dashboard/all-booking?_s=11\">#51612880248</a>', 'at <strong>VinFast Fadil</strong> from 02-09-2021 01:15 AM to 02-10-2021 02:00 AM', 'booking', 1612880248),
(10, 0, 1, 'A new booking <a href=\"http://127.0.0.1:8000/dashboard/all-booking?_s=1\">#41612975832</a>', 'at <strong>Honda Civic</strong> from 02-12-2021 01:15 AM to 02-21-2021 01:30 AM', 'booking', 1612975833),
(11, 0, 1, 'A new booking <a href=\"http://127.0.0.1:8000/dashboard/all-booking?_s=1\">#41612975832</a>', 'at <strong>Honda Civic</strong> from 02-12-2021 01:15 AM to 02-21-2021 01:30 AM', 'booking', 1612975833),
(12, 0, 8, 'Your booking <a href=\"http://127.0.0.1:8000/dashboard/all-booking?_s=1\">#41612975832</a>', 'at <strong>Honda Civic</strong> from 02-12-2021 01:15 AM to 02-21-2021 01:30 AM', 'booking', 1612975833);

-- --------------------------------------------------------

--
-- Structure de la table `options`
--

CREATE TABLE `options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `options`
--

INSERT INTO `options` (`option_id`, `option_name`, `option_value`) VALUES
(1, 'hh_theme_options', 'a:119:{s:9:\"site_name\";s:29:\"[:en]Loger Afric[:fr]Loobv[:]\";s:16:\"site_description\";s:75:\"[:en]Awesome Booking System[:fr]Location des voitures entre particuliers[:]\";s:10:\"main_color\";s:7:\"#FDD500\";s:12:\"header_items\";s:6:\"a:0:{}\";s:15:\"unit_of_measure\";s:2:\"m2\";s:10:\"user_admin\";s:1:\"1\";s:13:\"enable_review\";s:2:\"on\";s:15:\"review_approval\";s:2:\"on\";s:15:\"top_destination\";s:958:\"a:6:{i:0;a:5:{s:4:\"name\";s:30:\"[:en]Chicago[:fr]Libreville[:]\";s:3:\"lat\";s:9:\"4.0429408\";s:3:\"lng\";s:8:\"9.706203\";s:5:\"image\";s:2:\"76\";s:7:\"service\";s:8:\"home,car\";}i:1;a:5:{s:4:\"name\";s:26:\"[:en]New York[:fr]Dakar[:]\";s:3:\"lat\";s:8:\"3.868987\";s:3:\"lng\";s:9:\"11.521334\";s:5:\"image\";s:2:\"77\";s:7:\"service\";s:8:\"home,car\";}i:2;a:5:{s:4:\"name\";s:37:\"[:en]San Francisco[:fr]Franceville[:]\";s:3:\"lat\";s:9:\"3.8689867\";s:3:\"lng\";s:10:\"11.5213344\";s:5:\"image\";s:2:\"73\";s:7:\"service\";s:8:\"home,car\";}i:3;a:5:{s:4:\"name\";s:28:\"[:en]California[:fr]Kribi[:]\";s:3:\"lat\";s:9:\"2.8655757\";s:3:\"lng\";s:9:\"9.8920474\";s:5:\"image\";s:2:\"62\";s:7:\"service\";s:4:\"home\";}i:4;a:5:{s:4:\"name\";s:27:\"[:en]Las Vegas[:fr]Kumba[:]\";s:3:\"lat\";s:9:\"4.6026771\";s:3:\"lng\";s:9:\"9.4144135\";s:5:\"image\";s:2:\"63\";s:7:\"service\";s:0:\"\";}i:5;a:5:{s:4:\"name\";s:35:\"[:en]New Orleans[:fr]New Orleans[:]\";s:3:\"lat\";s:9:\"29.951647\";s:3:\"lng\";s:10:\"-90.076101\";s:5:\"image\";s:3:\"117\";s:7:\"service\";s:0:\"\";}}\";s:11:\"testimonial\";s:2205:\"a:4:{i:0;a:5:{s:11:\"author_name\";s:32:\"[:en]Charles G[:fr]Libreville[:]\";s:13:\"author_avatar\";s:2:\"56\";s:14:\"author_comment\";s:371:\"[:en]Needless to say we are extremely satisfied with the results. Home is awesome! Thanks guys, keep up the good work! I have gotten at least 50 times the value from home[:fr]Inutile de dire que nous sommes extrêmement satisfaits des résultats. La maison est géniale! Merci les gars, continuez votre bon travail! J\'ai obtenu au moins 50 fois la valeur de la maison.[:]\";s:11:\"author_rate\";s:1:\"5\";s:4:\"date\";s:10:\"2020-11-19\";}i:1;a:5:{s:11:\"author_name\";s:26:\"[:en]Rakel F[:fr]Zithos[:]\";s:13:\"author_avatar\";s:2:\"56\";s:14:\"author_comment\";s:402:\"[:en]I can\'t say enough about home. Home is the most valuable business resource we have ever purchased. Home is the most valuable business resource we have ever purchased.[:fr]Je ne peux pas en dire assez sur la maison. La maison est la ressource commerciale la plus précieuse que nous ayons jamais achetée. La maison est la ressource commerciale la plus précieuse que nous ayons jamais achetée.[:]\";s:11:\"author_rate\";s:1:\"5\";s:4:\"date\";s:10:\"2020-01-31\";}i:2;a:5:{s:11:\"author_name\";s:30:\"[:en]Christof T[:fr]Dacquin[:]\";s:13:\"author_avatar\";s:2:\"56\";s:14:\"author_comment\";s:362:\"[:en]If you want real marketing that works and effective implementation - home\'s got you covered. Your company is truly upstanding and is behind its product 100%[:fr]Si vous voulez un véritable marketing qui fonctionne et une mise en œuvre efficace, la maison est là pour vous. Votre entreprise est vraiment remarquable et est derrière son produit à 100%[:]\";s:11:\"author_rate\";s:1:\"5\";s:4:\"date\";s:10:\"2020-01-30\";}i:3;a:5:{s:11:\"author_name\";s:24:\"[:en]Ivor I[:fr]Kevin[:]\";s:13:\"author_avatar\";s:3:\"112\";s:14:\"author_comment\";s:335:\"[:en]Thanks to home, we\'ve just launched our 5th website! I am so pleased with this product. I couldn\'t have asked for more than this. We have no regrets![:fr]Grâce à la maison, nous venons de lancer notre 5e site Web! Je suis tellement satisfait de ce produit. Je n\'aurais pas pu demander plus que ça. Nous n\'avons aucun regret![:]\";s:11:\"author_rate\";s:1:\"5\";s:4:\"date\";s:10:\"2020-01-22\";}}\";s:13:\"checkout_page\";s:1:\"3\";s:22:\"redirect_checkout_page\";s:1:\"3\";s:19:\"term_condition_page\";s:1:\"5\";s:19:\"call_to_action_page\";s:1:\"4\";s:10:\"currencies\";s:260:\"a:1:{i:0;a:8:{s:4:\"name\";s:33:\"[:en]Francs CFA[:fr]Francs CFA[:]\";s:6:\"symbol\";s:3:\"CFA\";s:4:\"unit\";s:3:\"USD\";s:8:\"exchange\";s:1:\"1\";s:8:\"position\";s:4:\"left\";s:18:\"thousand_separator\";s:1:\",\";s:17:\"decimal_separator\";s:1:\".\";s:16:\"currency_decimal\";s:1:\"0\";}}\";s:12:\"included_tax\";s:2:\"on\";s:3:\"tax\";s:2:\"18\";s:16:\"paypal_test_mode\";s:2:\"on\";s:14:\"type_encrytion\";s:3:\"ssl\";s:18:\"send_enquire_email\";s:22:\"admin_partner_customer\";s:11:\"payout_date\";s:2:\"26\";s:11:\"min_balance\";s:3:\"100\";s:16:\"partner_approval\";s:2:\"on\";s:11:\"list_social\";s:552:\"a:4:{i:0;a:3:{s:11:\"social_name\";s:29:\"[:en]Facebook[:fr]Facebook[:]\";s:11:\"social_icon\";s:12:\"001_facebook\";s:11:\"social_link\";s:5:\"#face\";}i:1;a:3:{s:11:\"social_name\";s:27:\"[:en]Twitter[:fr]Twitter[:]\";s:11:\"social_icon\";s:11:\"002_twitter\";s:11:\"social_link\";s:8:\"#twitter\";}i:2;a:3:{s:11:\"social_name\";s:27:\"[:en]Google+[:fr]Google+[:]\";s:11:\"social_icon\";s:11:\"google_plus\";s:11:\"social_link\";s:7:\"#google\";}i:3;a:3:{s:11:\"social_name\";s:31:\"[:en]Pinterest[:fr]Pinterest[:]\";s:11:\"social_icon\";s:13:\"003_pinterest\";s:11:\"social_link\";s:5:\"#yout\";}}\";s:12:\"footer_menu1\";s:1:\"2\";s:12:\"footer_menu2\";s:1:\"3\";s:10:\"mapbox_key\";s:90:\"pk.eyJ1Ijoib2h0ZWFtdm4iLCJhIjoiY2p6eTc0d3RlMGF2eDNucnU0dmQ0dTE3aiJ9.be2cd5WfYsffjhRxwV5gxQ\";s:16:\"primary_currency\";s:3:\"USD\";s:18:\"footer_menu1_label\";s:31:\"[:en]About[:fr]Liens rapides[:]\";s:18:\"footer_menu2_label\";s:41:\"[:en]Top Cities[:fr]Principales villes[:]\";s:22:\"footer_subscribe_label\";s:75:\"[:en]Subscribe to Our Newsletter[:fr]S\'abonner à notre Notre Newsletter[:]\";s:28:\"footer_subscribe_description\";s:163:\"[:en]A bi-weekly newsletter on the future of work, travel resources, and updates to our product![:fr]Inscrivez-vous et nous vous enverrons les meilleures offres[:]\";s:10:\"copy_right\";s:70:\"[:en]Copyright © 2020 by AweBooking[:fr]Copyright © 2020 by Loobv[:]\";s:13:\"featured_text\";s:29:\"[:en]Featured[:fr]Featured[:]\";s:14:\"facebook_login\";s:2:\"on\";s:12:\"facebook_api\";s:15:\"685947245135628\";s:15:\"facebook_secret\";s:32:\"351c801b6a63b6ba50c9b3ce9e393d01\";s:12:\"google_login\";s:2:\"on\";s:16:\"google_client_id\";s:72:\"724455793386-mept1m2oq4njhabppisrdi8dr7hng5p9.apps.googleusercontent.com\";s:20:\"google_client_secret\";s:24:\"sV11n1adirqndzdX83rSUaMX\";s:17:\"mailchimp_api_key\";s:3:\"111\";s:14:\"mailchimp_list\";s:3:\"222\";s:13:\"search_radius\";s:2:\"20\";s:14:\"dashboard_logo\";s:2:\"75\";s:20:\"dashboard_logo_short\";s:2:\"75\";s:10:\"blog_image\";s:2:\"57\";s:13:\"sidebar_image\";s:2:\"52\";s:7:\"use_ssl\";s:3:\"off\";s:15:\"contact_map_lat\";s:9:\"48.856613\";s:15:\"contact_map_lng\";s:8:\"2.352222\";s:14:\"contact_detail\";s:192:\"[:en]<p>Address: 123, ABC street, Paris, France</p>\r\n<p>Phone: (+03) 123 456 789</p>\r\n<p>Email: support@awebooking.org</p>[:fr]<p>Adresse: <br /><br />Téléphone: <br /><br />E-maill :</p>[:]\";s:11:\"footer_logo\";s:2:\"51\";s:18:\"use_google_captcha\";s:3:\"off\";s:23:\"google_captcha_site_key\";s:40:\"6LehLcgUAAAAABfvsxwlijKd-wvBs9TadnMxyvCK\";s:25:\"google_captcha_secret_key\";s:40:\"6LehLcgUAAAAABST4xwlnqAAlxu8KwKbaZyxmUZF\";s:9:\"smtp_port\";s:3:\"465\";s:18:\"email_from_address\";s:20:\"awebooking@gmail.com\";s:10:\"email_from\";s:33:\"[:en]Awebooking[:fr]Awebooking[:]\";s:18:\"bank_transfer_logo\";s:2:\"59\";s:13:\"enable_paypal\";s:3:\"off\";s:11:\"paypal_logo\";s:3:\"145\";s:16:\"paypal_client_id\";s:80:\"AfjS5FFdBpUdnKbURZ9eJ4PBN4no7i0NFQ2PQJVL_IcxvcVlof1Rfjyu5UMngz_Rjvoxk4nmt4qTIx9w\";s:20:\"paypal_client_secret\";s:80:\"EHZaSyS92N-kV3UdiNL9vtA2LRpr3ymDiufqHjcGiCwEAbgyJvxkR7Edn6fyJNHw3p6KCAX-vUqIWWR6\";s:18:\"paypal_description\";s:95:\"[:en]Payments will be redirected to Paypal.com[:fr]Payments will be redirected to Paypal.com[:]\";s:13:\"enable_stripe\";s:2:\"on\";s:11:\"stripe_logo\";s:3:\"146\";s:22:\"stripe_publishable_key\";s:32:\"pk_test_ujkH860l8cNrc8Gifxk1yjOm\";s:17:\"stripe_secret_key\";s:32:\"sk_test_pdw2AD3L25QZgzxrPUEbvmS4\";s:18:\"stripe_description\";s:77:\"[:en]Payment method using credit card[:fr]Payment method using credit card[:]\";s:25:\"bank_transfer_description\";s:441:\"[:en]<strong>Payment via account number:</strong>\r\n\r\nCard Number: <strong>4221 2135 001 1324</strong>\r\nCard Name: <strong>AweBooking</strong>\r\nBank Name: <strong>Asia Commercial Bank</strong>\r\nSwift Code: <strong>ASCBVNVX</strong>[:fr]<strong> Paiement via le numéro de compte: </strong>\r\n\r\nNuméro de carte: <strong>  </strong>\r\nNom de la carte: <strong> </strong>\r\nNom de la banque: <strong>  </strong>\r\nCode Swift: <strong>  </strong>[:]\";s:9:\"smtp_host\";s:14:\"smtp.gmail.com\";s:18:\"partner_commission\";s:2:\"10\";s:13:\"site_language\";s:2:\"en\";s:14:\"multi_language\";s:2:\"on\";s:11:\"google_font\";s:9:\"poppins;;\";s:11:\"enable_home\";s:3:\"off\";s:19:\"home_featured_image\";s:2:\"54\";s:18:\"home_search_radius\";s:2:\"82\";s:20:\"home_top_destination\";s:527:\"a:4:{i:0;a:4:{s:4:\"name\";s:27:\"[:en]New York[:fr]Douala[:]\";s:3:\"lat\";s:9:\"4.0429408\";s:3:\"lng\";s:8:\"9.706203\";s:5:\"image\";s:2:\"55\";}i:1;a:4:{s:4:\"name\";s:28:\"[:en]Chicago[:fr]Yaoundé[:]\";s:3:\"lat\";s:9:\"3.8689867\";s:3:\"lng\";s:10:\"11.5213344\";s:5:\"image\";s:2:\"60\";}i:2;a:4:{s:4:\"name\";s:24:\"[:en]Ha Noi[:fr]Kribi[:]\";s:3:\"lat\";s:9:\"2.8655757\";s:3:\"lng\";s:9:\"9.8920474\";s:5:\"image\";s:2:\"62\";}i:3;a:4:{s:4:\"name\";s:33:\"[:en]San Francisco[:fr]Dschang[:]\";s:3:\"lat\";s:9:\"5.4469923\";s:3:\"lng\";s:9:\"10.053309\";s:5:\"image\";s:2:\"63\";}}\";s:17:\"enable_experience\";s:3:\"off\";s:25:\"experience_featured_image\";s:3:\"159\";s:24:\"experience_search_radius\";s:2:\"25\";s:26:\"experience_top_destination\";s:366:\"a:3:{i:0;a:4:{s:4:\"name\";s:25:\"[:en]Ha Noi[:fr]Ha Noi[:]\";s:3:\"lat\";s:2:\"21\";s:3:\"lng\";s:6:\"105.75\";s:5:\"image\";s:3:\"381\";}i:1;a:4:{s:4:\"name\";s:29:\"[:en]New York[:fr]New York[:]\";s:3:\"lat\";s:2:\"43\";s:3:\"lng\";s:3:\"-75\";s:5:\"image\";s:3:\"116\";}i:2;a:4:{s:4:\"name\";s:23:\"[:en]Paris[:fr]Paris[:]\";s:3:\"lat\";s:8:\"48.85658\";s:3:\"lng\";s:7:\"2.35183\";s:5:\"image\";s:3:\"382\";}}\";s:10:\"enable_car\";s:2:\"on\";s:18:\"car_featured_image\";s:2:\"55\";s:17:\"car_search_radius\";s:3:\"363\";s:19:\"car_top_destination\";s:382:\"a:3:{i:0;a:4:{s:4:\"name\";s:27:\"[:en]Chicago[:fr]Chicago[:]\";s:3:\"lat\";s:10:\"41.8339037\";s:3:\"lng\";s:11:\"-87.8720466\";s:5:\"image\";s:2:\"62\";}i:1;a:4:{s:4:\"name\";s:29:\"[:en]New York[:fr]New York[:]\";s:3:\"lat\";s:2:\"43\";s:3:\"lng\";s:3:\"-75\";s:5:\"image\";s:3:\"116\";}i:2;a:4:{s:4:\"name\";s:23:\"[:en]Paris[:fr]Paris[:]\";s:3:\"lat\";s:8:\"48.85658\";s:3:\"lng\";s:7:\"2.35183\";s:5:\"image\";s:3:\"382\";}}\";s:15:\"google_font_key\";s:39:\"AIzaSyDPG7nZZoCpIP9wsi5S3AvavW4Jtvs1UxY\";s:8:\"timezone\";s:11:\"Asia/Saigon\";s:13:\"enable_sticky\";s:3:\"off\";s:20:\"enable_bank_transfer\";s:2:\"on\";s:22:\"become_a_host_features\";s:1729:\"a:3:{i:0;a:3:{s:5:\"title\";s:51:\"[:en]What is AweBooking?[:fr]What is AweBooking?[:]\";s:6:\"detail\";s:383:\"[:en]AweBooking connects people with places and things to experience around the world. This community is supported by homeowners who offer guests unique opportunities to travel like a local.[:fr]AweBooking connects people with places and things to experience around the world. This community is supported by homeowners who offer guests unique opportunities to travel like a local.[:]\";s:5:\"image\";s:3:\"425\";}i:1;a:3:{s:5:\"title\";s:103:\"[:en]Why should you upload for rent on AweBooking?[:fr]Why should you upload for rent on AweBooking?[:]\";s:6:\"detail\";s:423:\"[:en]No matter what type of house or room you share, we will help you to receive guests simply and securely. You have complete control over room availability, rental rates, house rules, and how guests interact.[:fr]No matter what type of house or room you share, we will help you to receive guests simply and securely. You have complete control over room availability, rental rates, house rules, and how guests interact.[:]\";s:5:\"image\";s:3:\"423\";}i:2;a:3:{s:5:\"title\";s:65:\"[:en]We are ready to assist you[:fr]We are ready to assist you[:]\";s:6:\"detail\";s:475:\"[:en]Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.[:fr]Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.[:]\";s:5:\"image\";s:3:\"424\";}}\";s:24:\"home_call_to_action_page\";s:1:\"4\";s:30:\"experience_call_to_action_page\";s:1:\"4\";s:23:\"car_call_to_action_page\";s:1:\"4\";s:33:\"paypal_enable_currency_conversion\";s:3:\"off\";s:23:\"paypal_currency_convert\";s:3:\"USD\";s:11:\"payout_time\";s:5:\"15:00\";s:14:\"ical_time_type\";s:4:\"hour\";s:9:\"ical_hour\";s:1:\"1\";s:11:\"ical_minute\";s:2:\"30\";s:11:\"enable_gdpr\";s:2:\"on\";s:9:\"gdpr_page\";s:1:\"4\";s:16:\"car_booking_type\";s:3:\"day\";s:22:\"testimonial_background\";s:7:\"#BDC3C8\";s:20:\"review_after_booking\";s:2:\"on\";s:27:\"enable_partner_registration\";s:2:\"on\";s:13:\"optimize_site\";s:3:\"off\";s:21:\"enable_lazyload_image\";s:3:\"off\";s:13:\"right_to_left\";s:3:\"off\";s:15:\"enable_lazyload\";s:3:\"off\";s:22:\"coming_soon_background\";s:2:\"58\";s:7:\"favicon\";s:2:\"74\";s:25:\"call_to_action_background\";s:2:\"65\";s:11:\"home_slider\";s:5:\"70,69\";s:4:\"logo\";s:2:\"75\";s:26:\"enable_attente_de_paiement\";s:2:\"on\";s:31:\"attente_de_paiement_description\";s:13:\"[:en][:fr][:]\";s:24:\"attente_de_paiement_logo\";s:2:\"59\";}'),
(2, 'awebooking_version_1_1', 'updated'),
(3, 'awebooking_version_1_2', 'updated'),
(4, 'awebooking_version_1_2_1', 'updated'),
(5, 'awebooking_version_1_2_2', 'updated'),
(6, 'awebooking_version_1_2_3', 'updated'),
(7, 'awebooking_version_1_3', 'updated'),
(8, 'awebooking_version_1_3_1', 'updated'),
(9, 'awebooking_version_1_3_2', 'updated'),
(10, 'awebooking_version_1_3_3', 'updated'),
(11, 'awebooking_version_1_3_5', 'updated');

-- --------------------------------------------------------

--
-- Structure de la table `package`
--

CREATE TABLE `package` (
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `package_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_commission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `package_order`
--

CREATE TABLE `package_order` (
  `pkorder_id` bigint(20) UNSIGNED NOT NULL,
  `partner_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partner_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partner_info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_commission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_price_payment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateway_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `page`
--

CREATE TABLE `page` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `page`
--

INSERT INTO `page` (`post_id`, `post_title`, `post_slug`, `post_content`, `thumbnail_id`, `page_template`, `status`, `created_at`) VALUES
(4, 'Terms & Conditions', 'terms-conditions', '<p>Help protect your website and its users with clear and fair website terms and conditions.</p>\r\n<p>These terms and conditions for a website set out key issues such as acceptable use, privacy, cookies, registration and passwords, intellectual property, links to other sites, termination and disclaimers of responsibility. Terms and conditions are used and necessary to protect a website owner from liability of a user relying on the information or the goods provided from the site then suffering a loss.</p>\r\n<p>Making your own terms and conditions for your website is hard, not impossible, to do. It can take a few hours to few days for a person with no legal background to make. But worry no more; we are here to help you out.</p>\r\n<p>All you need to do is fill up the blank spaces and then you will receive an email with your personalized terms and conditions.</p>', '57', 'default', 'publish', '1578392345'),
(5, '[:fr]Comment ça marche[:en][:]', 'coment-ca-marche', '[:fr][:en][:]', NULL, 'default', 'publish', '1605885533'),
(6, '[:en][:fr]contact[:]', 'contact', '[:en][:fr][:]', NULL, 'default', 'publish', '1607267426');

-- --------------------------------------------------------

--
-- Structure de la table `payout`
--

CREATE TABLE `payout` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `payout_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(15,6) NOT NULL DEFAULT 0.000000,
  `created` bigint(20) NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `persistences`
--

CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(2, 1, 'OEY4tEeaRHtEwDOaFrYxVF4ahbZpOD1f', '2020-11-19 06:37:35', '2020-11-19 06:37:35'),
(3, 1, '8MyXTmlRWIJ1fJOYetRfGSmRfPpdfTaQ', '2020-11-20 16:47:22', '2020-11-20 16:47:22'),
(4, 1, 'QFpC21CiKTDv7j0hRWaIaaBUF5kVeNOX', '2020-11-20 21:17:53', '2020-11-20 21:17:53'),
(5, 1, 'iZTYIm5NXjKsWvdSzM6DbGNAomcfjj4u', '2020-11-23 04:46:12', '2020-11-23 04:46:12'),
(6, 1, 'ikCogofBQmoGqNEIJV8zJgtqiwMJhiga', '2020-11-23 05:46:07', '2020-11-23 05:46:07'),
(7, 1, 'cc0xltBKbqB6MDwhXT62xkoTTKXWIIJM', '2020-11-23 13:18:42', '2020-11-23 13:18:42'),
(11, 1, '4IgTXIZsqjxvDQ8wEtPCvX3vbwLQEKrU', '2020-12-01 04:54:13', '2020-12-01 04:54:13'),
(14, 1, 'TQvQ3ncDRgstDoBp6HbaplGcxCIkyXZf', '2020-12-06 17:26:43', '2020-12-06 17:26:43'),
(17, 7, 'LZnWqBaZSczeFFGjhI7DiiQ7HQvkLjJw', '2020-12-13 20:45:02', '2020-12-13 20:45:02'),
(18, 8, 'TgQhSWoPX02fIiZpNWyOZs6Ff4Xg0jW1', '2021-02-08 15:50:08', '2021-02-08 15:50:08'),
(19, 8, '0Utpq5awqdYmjnIQTuzJWs9eiicF2DZz', '2021-02-09 16:39:02', '2021-02-09 16:39:02'),
(21, 2, 'XjQVI6jQ9so5TLY31ISaBSm4VI5NFwtT', '2021-02-09 23:06:36', '2021-02-09 23:06:36'),
(22, 8, 'tEhY1WJpbb6N4uxLedu403ln6N8LlrJV', '2021-02-10 14:34:17', '2021-02-10 14:34:17');

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE `post` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` int(11) NOT NULL,
  `created_at` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`post_id`, `post_title`, `post_slug`, `post_content`, `thumbnail_id`, `status`, `author`, `created_at`) VALUES
(16, '1914 translation by H. Rackham', '1914-translation-by-h-rackham', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>&nbsp;</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '56', 'publish', 1, '1578042978'),
(17, 'Where can I get some?', 'where-can-i-get-some', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>&nbsp;</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '95', 'publish', 1, '1578043091'),
(18, 'What Does Travel Mean to You?', 'what-does-travel-mean-to-you', '<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing! It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout</p>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<h2>Where does it come from?</h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &ldquo;de Finibus Bonorum et Malorum&rdquo; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &ldquo;Lorem ipsum dolor sit amet..&rdquo;, comes from a line in section 1.10.32.</p>\r\n<p><!-- wp:paragraph --> <!-- /wp:paragraph --> <!-- wp:paragraph --> <!-- /wp:paragraph --> <!-- wp:heading --> <!-- /wp:heading --> <!-- wp:paragraph --> <!-- /wp:paragraph --> <!-- wp:paragraph --> <!-- /wp:paragraph --></p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &ldquo;de Finibus Bonorum et Malorum&rdquo; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '97', 'publish', 1, '1578043129'),
(19, 'My 12 Favorite Cities in the World', 'my-12-favorite-cities-in-the-world', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<h2>Where does it come from?</h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p><!-- wp:paragraph --> <!-- /wp:paragraph --> <!-- wp:heading --> <!-- /wp:heading --> <!-- wp:paragraph --> <!-- /wp:paragraph --> <!-- wp:paragraph --> <!-- /wp:paragraph --></p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '96', 'publish', 1, '1578043156'),
(20, 'A Seaside Reset in Laguna Beach', 'a-seaside-reset-in-laguna-beach', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>&nbsp;</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '101', 'publish', 1, '1578043193'),
(21, 'All Aboard the Rocky Mountaineer', 'all-aboard-the-rocky-mountaineer', '<p><span style=\"color: #191e23; font-family: \'Noto Serif\'; font-size: 16px; white-space: pre-wrap; background-color: #ffffff;\">Welcome to WordPress. This is your first post. Edit or delete it, then start writing! It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout</span></p>', '100', 'publish', 1, '1578043221'),
(22, 'City Spotlight: Philadelphia', 'city-spotlight-philadelphia', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>&nbsp;</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '249', 'publish', 1, '1578043248'),
(23, 'A Seaside Reset in Laguna Beach', 'a-seaside-reset-in-laguna-beach', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>&nbsp;</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '395', 'publish', 1, '1578043277');

-- --------------------------------------------------------

--
-- Structure de la table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'Administrator', '{\"admin\":true}', '2020-11-19 05:55:57', '2020-11-19 05:55:57'),
(2, 'partner', 'Partner', '{\"partner\":true}', '2020-11-19 05:55:58', '2020-11-19 05:55:58'),
(3, 'customer', 'Customer', '{\"customer\":true}', '2020-11-19 05:55:58', '2020-11-19 05:55:58');

-- --------------------------------------------------------

--
-- Structure de la table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-11-19 05:55:58', '2020-11-19 05:55:58'),
(2, 2, '2020-11-19 05:55:58', '2020-11-19 05:55:58'),
(3, 2, '2020-11-19 05:55:58', '2020-11-19 05:55:58'),
(4, 2, '2020-11-19 05:55:58', '2020-11-19 05:55:58'),
(5, 2, '2020-11-19 05:55:58', '2020-11-19 05:55:58'),
(6, 3, '2020-11-19 05:55:58', '2020-11-19 05:55:58'),
(7, 2, '2020-12-13 20:44:04', '2020-12-13 20:44:04'),
(8, 1, '2021-02-08 15:40:45', '2021-02-08 15:40:45');

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `taxonomy`
--

CREATE TABLE `taxonomy` (
  `taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `taxonomy_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taxonomy_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taxonomy_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taxonomy_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taxonomy_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `taxonomy`
--

INSERT INTO `taxonomy` (`taxonomy_id`, `taxonomy_title`, `taxonomy_name`, `taxonomy_description`, `taxonomy_icon`, `taxonomy_image`, `created_at`, `post_type`) VALUES
(1, 'Home Type', 'home-type', NULL, NULL, NULL, '1605804958', 'home'),
(2, 'Home Amenity', 'home-amenity', NULL, NULL, NULL, '1605804958', 'home'),
(3, 'Categories', 'post-category', NULL, NULL, NULL, '1605804958', 'post'),
(4, 'Tags', 'post-tag', NULL, NULL, NULL, '1605804958', 'post'),
(5, 'Languages', 'experience-languages', NULL, NULL, NULL, '1605804958', 'experience'),
(6, 'Inclusions', 'experience-inclusions', NULL, NULL, NULL, '1605804958', 'experience'),
(7, 'Exclusions', 'experience-exclusions', NULL, NULL, NULL, '1605804958', 'experience'),
(8, 'Experience Types', 'experience-type', NULL, NULL, NULL, '1605804958', 'experience'),
(9, 'Car Types', 'car-type', NULL, NULL, NULL, '1605804958', 'car'),
(10, 'Car Equipments', 'car-equipment', NULL, NULL, NULL, '1605804958', 'car'),
(11, 'Car Features', 'car-feature', NULL, NULL, NULL, '1605804958', 'car');

-- --------------------------------------------------------

--
-- Structure de la table `term`
--

CREATE TABLE `term` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `term_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `term_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `term_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `term_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `term_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taxonomy_id` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `created_at` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `term_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `term`
--

INSERT INTO `term` (`term_id`, `term_title`, `term_name`, `term_description`, `term_icon`, `term_image`, `taxonomy_id`, `author`, `created_at`, `term_price`) VALUES
(4, 'Wifi', 'wifi', 'Wifi Free', '001_wifi', '', 2, 0, '1577367452', '0'),
(22, 'Apartment', 'apartment', NULL, '', '69', 1, 1, '1578041174', '0'),
(23, 'Bungalow', 'bungalow', NULL, '', '106', 1, 1, '1578041208', '0'),
(24, 'Cabin', 'cabin', NULL, '', '105', 1, 1, '1578041223', '0'),
(25, 'Guesthouse', 'guesthouse', NULL, '', '104', 1, 1, '1578041234', '0'),
(26, 'Hostel', 'hostel', NULL, '', '103', 1, 1, '1578041243', '0'),
(27, 'House', 'house', NULL, '', '102', 1, 1, '1578041255', '0'),
(28, 'Townhouse', 'townhouse', NULL, '', '108', 1, 1, '1578041266', '0'),
(29, 'Beauty beaches', 'beauty-beaches', NULL, '', '', 3, 1, '1578042629', '0'),
(30, 'Cultural events', 'cultural-events', NULL, '', '', 3, 1, '1578042637', '0'),
(31, 'Mountains', 'mountains', NULL, '', '', 3, 1, '1578042642', '0'),
(32, 'Museums', 'museums', NULL, '', '', 3, 1, '1578042649', '0'),
(33, 'Beauty', 'beauty', '', '', '', 4, 0, '1578042978', '0'),
(34, 'Event', 'event', '', '', '', 4, 0, '1578042978', '0'),
(35, 'Mountain', 'mountain', '', '', '', 4, 0, '1578042978', '0'),
(36, 'Telephone', 'telephone', NULL, '001_phone', '', 2, 1, '1578393155', '0'),
(37, 'Table', 'table', NULL, '002_desk', '', 2, 1, '1578393277', '0'),
(38, 'Television', 'television', NULL, '010_television', '', 2, 1, '1578393299', '0'),
(39, 'DVD Player', 'dvd-player', NULL, '006_compact_disc', '', 2, 1, '1578393325', '0'),
(40, 'Mobile USB', 'mobile-usb', NULL, '007_dual_sim', '', 2, 1, '1578393351', '0'),
(41, 'Adapters', 'adapters', NULL, '008_power', '', 2, 1, '1578393371', '0'),
(42, 'Tea / Coffee', 'tea-coffee', NULL, '009_cup_of_tea', '', 2, 1, '1578393394', '0'),
(43, 'Iron', 'iron', NULL, '005_iron', '', 2, 1, '1578393425', '0'),
(44, 'Hair dryer', 'hair-dryer', NULL, '004_beauty', '', 2, 1, '1578393443', '0'),
(45, '[:fr]Travail[:en]Travel[:]', 'travail', '[:fr]Travail article[:en]Travel Blog[:]', NULL, NULL, 3, 1, '1579145691', '0'),
(46, 'Travel', 'travel', '', '', '', 4, 0, '1579145733', '0'),
(47, 'Double', 'double', 'Description', '', '123', 1, 1, '1579224550', '0'),
(48, 'Bed', 'bed', 'Description', 'ico_bed', '', 2, 1, '1579224940', '0'),
(53, '[:en]Cooking[:ar]Cooking[:]', 'cooking', '[:en][:ar][:]', NULL, '155', 8, 1, '1586180766', '0'),
(54, '[:en]Adventures[:ar]Adventures[:]', 'adventures', '[:en][:ar][:]', NULL, '156', 8, 1, '1586180775', '0'),
(55, '[:en]Animals[:ar]Animals[:]', 'animals', '[:en][:ar][:]', NULL, '316', 8, 1, '1586180783', '0'),
(58, 'Minivans', 'minivans', NULL, NULL, '416', 9, 1, '1586187989', '0'),
(59, 'Sedan', 'sedan', NULL, NULL, '417', 9, 1, '1586188022', '0'),
(60, 'SUVs', 'suvs', NULL, NULL, '418', 9, 1, '1586188034', '0'),
(61, 'Coupes', 'coupes', NULL, NULL, '414', 9, 1, '1586188054', '0'),
(62, 'Convertibles', 'convertibles', NULL, NULL, '415', 9, 1, '1586188068', '0'),
(63, 'Wagons', 'wagons', NULL, NULL, '420', 9, 1, '1586188080', '0'),
(64, '[:en]Vienamese[:vi][:]', 'vienamese', '[:en][:vi][:]', NULL, NULL, 5, 1, '1586237776', '0'),
(65, '[:en]French[:vi][:]', 'french', '[:en][:vi][:]', NULL, NULL, 5, 1, '1586237784', '0'),
(66, '[:en]English - US[:vi][:]', 'english-us', '[:en][:vi][:]', NULL, NULL, 5, 1, '1586237795', '0'),
(67, '[:en]Portuguese[:vi][:]', 'portuguese', '[:en][:vi][:]', NULL, NULL, 5, 1, '1586237827', '0'),
(68, '[:en]Spanish[:vi][:]', 'spanish', '[:en][:vi][:]', NULL, NULL, 5, 1, '1586237851', '0'),
(69, '[:en]Chinese[:vi][:]', 'chinese', '[:en][:vi][:]', NULL, NULL, 5, 1, '1586237865', '0'),
(70, '[:en]Entry or admission fee[:vi][:]', 'entry-or-admission-fee', '[:en][:vi][:]', NULL, NULL, 6, 1, '1586240611', '0'),
(71, '[:en]Landing & facility fees[:vi][:]', 'landing-facility-fees', '[:en][:vi][:]', NULL, NULL, 6, 1, '1586240622', '0'),
(72, '[:en]Parking fees[:vi][:]', 'parking-fees', '[:en][:vi][:]', NULL, NULL, 6, 1, '1586240654', '0'),
(73, '[:en]Entry tax[:vi][:]', 'entry-tax', '[:en][:vi][:]', NULL, NULL, 6, 1, '1586240682', '0'),
(74, '[:en]Departure tax[:vi][:]', 'departure-tax', '[:en][:vi][:]', NULL, NULL, 6, 1, '1586240692', '0'),
(75, '[:en]National park entrance fee[:vi][:]', 'national-park-entrance-fee', '[:en][:vi][:]', NULL, NULL, 6, 1, '1586240702', '0'),
(76, '[:en]Tip or gratuity[:vi][:]', 'tip-or-gratuity', '[:en][:vi][:]', NULL, NULL, 6, 1, '1586240718', '0'),
(77, '[:en]Fuel surcharge[:vi][:]', 'fuel-surcharge', '[:en][:vi][:]', NULL, NULL, 7, 1, '1586240772', '0'),
(78, '[:en]Food & drinks[:vi][:]', 'food-drinks', '[:en][:vi][:]', NULL, NULL, 7, 1, '1586240784', '0'),
(79, '[:en]Wifi[:vi][:]', 'wifi', '[:en][:vi][:]', NULL, NULL, 7, 1, '1586240795', '0'),
(80, '[:en]Bus fare[:vi][:]', 'bus-fare', '[:en][:vi][:]', NULL, NULL, 7, 1, '1586240800', '0'),
(81, 'Airbag', 'airbag', NULL, '006_airbag', NULL, 11, 1, '1586243733', '0'),
(82, 'FM Radio', 'fm-radio', NULL, '005_radio', NULL, 11, 1, '1586243743', '0'),
(83, 'Power Windows', 'power-windows', NULL, '004_car_door', NULL, 11, 1, '1586243750', '0'),
(84, 'Sensor', 'sensor', NULL, '003_car', NULL, 11, 1, '1586243757', '0'),
(85, 'Speed Km', 'speed-km', NULL, '002_speedometer', NULL, 11, 1, '1586243769', '0'),
(86, 'Steering Wheel', 'steering-wheel', NULL, '001_steering_wheel', NULL, 11, 1, '1586243776', '0'),
(88, 'Ski Rack', 'ski-rack', NULL, '005_skiing', NULL, 10, 1, '1586243897', '10'),
(89, 'Infant Child Seat', 'infant-child-seat', NULL, '004_baby_car_seat', NULL, 10, 1, '1586243909', '4'),
(90, 'GPS Satellite', 'gps-satellite', NULL, '003_satellite', NULL, 10, 1, '1586243920', '10'),
(92, '[:en]Event[:ar]Event[:]', 'event', '[:en][:ar][:]', NULL, '396', 8, 1, '1586343677', '0'),
(93, 'Hand tool', 'hand-tool', NULL, '001_repair', NULL, 10, 1, '1586679023', '7'),
(95, 'Wifi', 'wifi', NULL, '001_wifi', NULL, 10, 1, '1586724252', '5');

-- --------------------------------------------------------

--
-- Structure de la table `term_relation`
--

CREATE TABLE `term_relation` (
  `term_id` bigint(20) NOT NULL,
  `service_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `term_relation`
--

INSERT INTO `term_relation` (`term_id`, `service_id`) VALUES
(22, '22'),
(41, '23'),
(39, '23'),
(40, '23'),
(37, '23'),
(42, '23'),
(41, '24'),
(39, '24'),
(40, '24'),
(37, '24'),
(42, '24'),
(22, '35'),
(22, '36'),
(66, '7'),
(64, '7'),
(74, '7'),
(70, '7'),
(73, '7'),
(71, '7'),
(75, '7'),
(72, '7'),
(76, '7'),
(80, '7'),
(78, '7'),
(77, '7'),
(79, '7'),
(62, '1'),
(66, '8'),
(64, '8'),
(74, '8'),
(70, '8'),
(73, '8'),
(71, '8'),
(75, '8'),
(72, '8'),
(76, '8'),
(80, '8'),
(78, '8'),
(77, '8'),
(79, '8'),
(66, '1'),
(64, '1'),
(74, '1'),
(70, '1'),
(73, '1'),
(71, '1'),
(75, '1'),
(72, '1'),
(76, '1'),
(80, '1'),
(78, '1'),
(77, '1'),
(79, '1'),
(66, '9'),
(64, '9'),
(74, '9'),
(70, '9'),
(73, '9'),
(71, '9'),
(75, '9'),
(72, '9'),
(76, '9'),
(80, '9'),
(78, '9'),
(77, '9'),
(79, '9'),
(66, '10'),
(64, '10'),
(74, '10'),
(70, '10'),
(73, '10'),
(71, '10'),
(75, '10'),
(72, '10'),
(76, '10'),
(80, '10'),
(78, '10'),
(77, '10'),
(79, '10'),
(66, '2'),
(64, '2'),
(74, '2'),
(70, '2'),
(73, '2'),
(71, '2'),
(75, '2'),
(72, '2'),
(76, '2'),
(80, '2'),
(78, '2'),
(77, '2'),
(79, '2'),
(66, '11'),
(64, '11'),
(74, '11'),
(70, '11'),
(73, '11'),
(71, '11'),
(75, '11'),
(72, '11'),
(76, '11'),
(80, '11'),
(78, '11'),
(77, '11'),
(79, '11'),
(66, '3'),
(65, '3'),
(74, '3'),
(70, '3'),
(73, '3'),
(71, '3'),
(75, '3'),
(72, '3'),
(80, '3'),
(78, '3'),
(77, '3'),
(79, '3'),
(66, '12'),
(64, '12'),
(74, '12'),
(70, '12'),
(73, '12'),
(71, '12'),
(75, '12'),
(72, '12'),
(76, '12'),
(80, '12'),
(78, '12'),
(77, '12'),
(79, '12'),
(53, '2'),
(69, '4'),
(64, '4'),
(74, '4'),
(70, '4'),
(73, '4'),
(71, '4'),
(75, '4'),
(72, '4'),
(76, '4'),
(80, '4'),
(78, '4'),
(77, '4'),
(79, '4'),
(53, '3'),
(69, '5'),
(68, '5'),
(74, '5'),
(70, '5'),
(73, '5'),
(71, '5'),
(75, '5'),
(72, '5'),
(76, '5'),
(80, '5'),
(78, '5'),
(77, '5'),
(79, '5'),
(53, '6'),
(69, '6'),
(64, '6'),
(74, '6'),
(70, '6'),
(73, '6'),
(71, '6'),
(75, '6'),
(72, '6'),
(76, '6'),
(80, '6'),
(78, '6'),
(77, '6'),
(79, '6'),
(53, '5'),
(66, '14'),
(64, '14'),
(74, '14'),
(70, '14'),
(73, '14'),
(71, '14'),
(75, '14'),
(72, '14'),
(76, '14'),
(80, '14'),
(78, '14'),
(77, '14'),
(79, '14'),
(66, '15'),
(64, '15'),
(74, '15'),
(70, '15'),
(73, '15'),
(71, '15'),
(75, '15'),
(72, '15'),
(76, '15'),
(80, '15'),
(78, '15'),
(77, '15'),
(79, '15'),
(66, '16'),
(64, '16'),
(74, '16'),
(70, '16'),
(73, '16'),
(71, '16'),
(75, '16'),
(72, '16'),
(76, '16'),
(80, '16'),
(78, '16'),
(77, '16'),
(79, '16'),
(66, '17'),
(64, '17'),
(74, '17'),
(70, '17'),
(73, '17'),
(71, '17'),
(75, '17'),
(72, '17'),
(76, '17'),
(80, '17'),
(78, '17'),
(77, '17'),
(79, '17'),
(66, '18'),
(64, '18'),
(74, '18'),
(70, '18'),
(73, '18'),
(71, '18'),
(75, '18'),
(72, '18'),
(76, '18'),
(80, '18'),
(78, '18'),
(77, '18'),
(79, '18'),
(66, '19'),
(64, '19'),
(74, '19'),
(70, '19'),
(73, '19'),
(71, '19'),
(75, '19'),
(72, '19'),
(76, '19'),
(80, '19'),
(78, '19'),
(77, '19'),
(79, '19'),
(66, '20'),
(64, '20'),
(74, '20'),
(70, '20'),
(73, '20'),
(71, '20'),
(75, '20'),
(72, '20'),
(76, '20'),
(80, '20'),
(78, '20'),
(77, '20'),
(79, '20'),
(28, '22'),
(39, '22'),
(44, '22'),
(40, '22'),
(37, '22'),
(36, '22'),
(24, '22'),
(41, '22'),
(44, '22'),
(40, '22'),
(37, '22'),
(42, '22'),
(36, '22'),
(38, '22'),
(4, '22'),
(41, '22'),
(39, '22'),
(44, '22'),
(37, '22'),
(42, '22'),
(36, '22'),
(38, '22'),
(4, '22'),
(41, '22'),
(39, '22'),
(43, '22'),
(40, '22'),
(37, '22'),
(42, '22'),
(36, '22'),
(41, '22'),
(37, '22'),
(42, '22'),
(36, '22'),
(38, '22'),
(4, '22'),
(41, '22'),
(39, '22'),
(40, '22'),
(42, '22'),
(36, '22'),
(38, '22'),
(4, '22'),
(41, '22'),
(39, '22'),
(44, '22'),
(43, '22'),
(40, '22'),
(37, '22'),
(42, '22'),
(36, '22'),
(38, '22'),
(4, '22'),
(26, '22'),
(66, '22'),
(64, '22'),
(74, '22'),
(70, '22'),
(73, '22'),
(71, '22'),
(75, '22'),
(72, '22'),
(76, '22'),
(80, '22'),
(78, '22'),
(77, '22'),
(79, '22'),
(22, '23'),
(28, '23'),
(39, '23'),
(44, '23'),
(40, '23'),
(37, '23'),
(36, '23'),
(24, '23'),
(41, '23'),
(44, '23'),
(40, '23'),
(37, '23'),
(42, '23'),
(36, '23'),
(38, '23'),
(4, '23'),
(41, '23'),
(39, '23'),
(44, '23'),
(37, '23'),
(42, '23'),
(36, '23'),
(38, '23'),
(4, '23'),
(41, '23'),
(39, '23'),
(43, '23'),
(40, '23'),
(37, '23'),
(42, '23'),
(36, '23'),
(41, '23'),
(37, '23'),
(42, '23'),
(36, '23'),
(38, '23'),
(4, '23'),
(41, '23'),
(39, '23'),
(40, '23'),
(42, '23'),
(36, '23'),
(38, '23'),
(4, '23'),
(41, '23'),
(39, '23'),
(44, '23'),
(43, '23'),
(40, '23'),
(37, '23'),
(42, '23'),
(36, '23'),
(38, '23'),
(4, '23'),
(26, '23'),
(66, '23'),
(64, '23'),
(74, '23'),
(70, '23'),
(73, '23'),
(71, '23'),
(75, '23'),
(72, '23'),
(76, '23'),
(80, '23'),
(78, '23'),
(77, '23'),
(79, '23'),
(41, '24'),
(39, '24'),
(40, '24'),
(37, '24'),
(42, '24'),
(22, '24'),
(28, '24'),
(29, '24'),
(39, '24'),
(44, '24'),
(40, '24'),
(37, '24'),
(36, '24'),
(24, '24'),
(41, '24'),
(44, '24'),
(40, '24'),
(37, '24'),
(42, '24'),
(36, '24'),
(38, '24'),
(4, '24'),
(41, '24'),
(39, '24'),
(44, '24'),
(37, '24'),
(42, '24'),
(36, '24'),
(38, '24'),
(4, '24'),
(41, '24'),
(39, '24'),
(43, '24'),
(40, '24'),
(37, '24'),
(42, '24'),
(36, '24'),
(41, '24'),
(37, '24'),
(42, '24'),
(36, '24'),
(38, '24'),
(4, '24'),
(41, '24'),
(39, '24'),
(40, '24'),
(42, '24'),
(36, '24'),
(38, '24'),
(4, '24'),
(41, '24'),
(39, '24'),
(44, '24'),
(43, '24'),
(40, '24'),
(37, '24'),
(42, '24'),
(36, '24'),
(38, '24'),
(4, '24'),
(26, '24'),
(66, '24'),
(64, '24'),
(74, '24'),
(70, '24'),
(73, '24'),
(71, '24'),
(75, '24'),
(72, '24'),
(76, '24'),
(80, '24'),
(78, '24'),
(77, '24'),
(79, '24'),
(29, '25'),
(66, '25'),
(64, '25'),
(74, '25'),
(70, '25'),
(73, '25'),
(71, '25'),
(75, '25'),
(72, '25'),
(76, '25'),
(80, '25'),
(78, '25'),
(77, '25'),
(79, '25'),
(29, '26'),
(66, '26'),
(64, '26'),
(74, '26'),
(70, '26'),
(73, '26'),
(71, '26'),
(75, '26'),
(72, '26'),
(76, '26'),
(80, '26'),
(78, '26'),
(77, '26'),
(79, '26'),
(29, '27'),
(66, '27'),
(64, '27'),
(74, '27'),
(70, '27'),
(73, '27'),
(71, '27'),
(75, '27'),
(72, '27'),
(76, '27'),
(80, '27'),
(78, '27'),
(77, '27'),
(79, '27'),
(29, '28'),
(66, '28'),
(64, '28'),
(74, '28'),
(70, '28'),
(73, '28'),
(71, '28'),
(75, '28'),
(72, '28'),
(76, '28'),
(80, '28'),
(78, '28'),
(77, '28'),
(79, '28'),
(29, '29'),
(41, '30'),
(39, '30'),
(44, '30'),
(43, '30'),
(40, '30'),
(37, '30'),
(36, '30'),
(38, '30'),
(4, '30'),
(28, '30'),
(48, '30'),
(40, '30'),
(37, '30'),
(42, '30'),
(38, '30'),
(4, '30'),
(39, '30'),
(44, '30'),
(43, '30'),
(42, '30'),
(36, '30'),
(4, '30'),
(23, '30'),
(25, '30'),
(41, '30'),
(39, '30'),
(40, '30'),
(37, '30'),
(42, '30'),
(41, '30'),
(39, '30'),
(40, '30'),
(37, '30'),
(42, '30'),
(22, '30'),
(28, '30'),
(29, '30'),
(39, '30'),
(44, '30'),
(40, '30'),
(37, '30'),
(36, '30'),
(24, '30'),
(41, '30'),
(44, '30'),
(40, '30'),
(37, '30'),
(42, '30'),
(36, '30'),
(38, '30'),
(4, '30'),
(41, '30'),
(39, '30'),
(44, '30'),
(37, '30'),
(42, '30'),
(36, '30'),
(38, '30'),
(4, '30'),
(41, '30'),
(39, '30'),
(43, '30'),
(40, '30'),
(37, '30'),
(42, '30'),
(36, '30'),
(41, '30'),
(37, '30'),
(42, '30'),
(36, '30'),
(38, '30'),
(4, '30'),
(41, '30'),
(39, '30'),
(40, '30'),
(42, '30'),
(36, '30'),
(38, '30'),
(4, '30'),
(41, '30'),
(39, '30'),
(44, '30'),
(43, '30'),
(40, '30'),
(37, '30'),
(42, '30'),
(36, '30'),
(38, '30'),
(4, '30'),
(26, '30'),
(66, '30'),
(64, '30'),
(74, '30'),
(70, '30'),
(73, '30'),
(71, '30'),
(75, '30'),
(72, '30'),
(76, '30'),
(80, '30'),
(78, '30'),
(77, '30'),
(79, '30'),
(29, '31'),
(66, '29'),
(64, '29'),
(53, '1'),
(74, '29'),
(70, '29'),
(73, '29'),
(71, '29'),
(75, '29'),
(72, '29'),
(76, '29'),
(80, '29'),
(78, '29'),
(77, '29'),
(79, '29'),
(53, '10'),
(53, '9'),
(53, '8'),
(53, '7'),
(54, '11'),
(74, '31'),
(70, '31'),
(73, '31'),
(71, '31'),
(75, '31'),
(72, '31'),
(76, '31'),
(80, '31'),
(78, '31'),
(77, '31'),
(79, '31'),
(66, '31'),
(64, '31'),
(29, '32'),
(74, '32'),
(70, '32'),
(73, '32'),
(71, '32'),
(75, '32'),
(72, '32'),
(76, '32'),
(80, '32'),
(78, '32'),
(77, '32'),
(79, '32'),
(66, '32'),
(64, '32'),
(55, '30'),
(55, '29'),
(55, '27'),
(55, '26'),
(54, '18'),
(54, '17'),
(54, '16'),
(54, '15'),
(54, '14'),
(54, '12'),
(29, '33'),
(74, '33'),
(70, '33'),
(73, '33'),
(71, '33'),
(75, '33'),
(72, '33'),
(76, '33'),
(80, '33'),
(78, '33'),
(77, '33'),
(79, '33'),
(66, '33'),
(64, '33'),
(92, '33'),
(92, '32'),
(55, '28'),
(55, '25'),
(55, '24'),
(55, '23'),
(55, '22'),
(55, '31'),
(54, '20'),
(29, '34'),
(74, '34'),
(70, '34'),
(73, '34'),
(71, '34'),
(75, '34'),
(72, '34'),
(76, '34'),
(80, '34'),
(78, '34'),
(77, '34'),
(79, '34'),
(66, '34'),
(64, '34'),
(41, '35'),
(48, '35'),
(44, '35'),
(40, '35'),
(37, '35'),
(42, '35'),
(4, '35'),
(28, '35'),
(48, '35'),
(43, '35'),
(40, '35'),
(37, '35'),
(36, '35'),
(38, '35'),
(4, '35'),
(24, '35'),
(41, '35'),
(43, '35'),
(40, '35'),
(36, '35'),
(38, '35'),
(4, '35'),
(26, '35'),
(41, '35'),
(48, '35'),
(44, '35'),
(43, '35'),
(37, '35'),
(42, '35'),
(38, '35'),
(4, '35'),
(24, '35'),
(41, '35'),
(39, '35'),
(44, '35'),
(43, '35'),
(40, '35'),
(37, '35'),
(36, '35'),
(38, '35'),
(4, '35'),
(28, '35'),
(48, '35'),
(40, '35'),
(37, '35'),
(42, '35'),
(38, '35'),
(4, '35'),
(39, '35'),
(44, '35'),
(43, '35'),
(42, '35'),
(36, '35'),
(4, '35'),
(23, '35'),
(25, '35'),
(41, '35'),
(39, '35'),
(40, '35'),
(37, '35'),
(42, '35'),
(41, '35'),
(39, '35'),
(40, '35'),
(37, '35'),
(42, '35'),
(22, '35'),
(28, '35'),
(29, '35'),
(39, '35'),
(44, '35'),
(40, '35'),
(37, '35'),
(36, '35'),
(24, '35'),
(41, '35'),
(44, '35'),
(40, '35'),
(37, '35'),
(42, '35'),
(36, '35'),
(38, '35'),
(4, '35'),
(41, '35'),
(39, '35'),
(44, '35'),
(37, '35'),
(42, '35'),
(36, '35'),
(38, '35'),
(4, '35'),
(41, '35'),
(39, '35'),
(43, '35'),
(40, '35'),
(37, '35'),
(42, '35'),
(36, '35'),
(41, '35'),
(37, '35'),
(42, '35'),
(36, '35'),
(38, '35'),
(4, '35'),
(41, '35'),
(39, '35'),
(40, '35'),
(42, '35'),
(36, '35'),
(38, '35'),
(4, '35'),
(41, '35'),
(39, '35'),
(44, '35'),
(43, '35'),
(40, '35'),
(37, '35'),
(42, '35'),
(36, '35'),
(38, '35'),
(4, '35'),
(26, '35'),
(74, '35'),
(70, '35'),
(73, '35'),
(71, '35'),
(75, '35'),
(72, '35'),
(76, '35'),
(80, '35'),
(78, '35'),
(77, '35'),
(79, '35'),
(66, '35'),
(64, '35'),
(22, '36'),
(41, '36'),
(48, '36'),
(44, '36'),
(40, '36'),
(37, '36'),
(42, '36'),
(4, '36'),
(28, '36'),
(48, '36'),
(43, '36'),
(40, '36'),
(37, '36'),
(36, '36'),
(38, '36'),
(4, '36'),
(24, '36'),
(41, '36'),
(43, '36'),
(40, '36'),
(36, '36'),
(38, '36'),
(4, '36'),
(26, '36'),
(41, '36'),
(48, '36'),
(44, '36'),
(43, '36'),
(37, '36'),
(42, '36'),
(38, '36'),
(4, '36'),
(24, '36'),
(41, '36'),
(39, '36'),
(44, '36'),
(43, '36'),
(40, '36'),
(37, '36'),
(36, '36'),
(38, '36'),
(4, '36'),
(28, '36'),
(48, '36'),
(40, '36'),
(37, '36'),
(42, '36'),
(38, '36'),
(4, '36'),
(39, '36'),
(44, '36'),
(43, '36'),
(42, '36'),
(36, '36'),
(4, '36'),
(23, '36'),
(25, '36'),
(41, '36'),
(39, '36'),
(40, '36'),
(37, '36'),
(42, '36'),
(41, '36'),
(39, '36'),
(40, '36'),
(37, '36'),
(42, '36'),
(22, '36'),
(28, '36'),
(29, '36'),
(39, '36'),
(44, '36'),
(40, '36'),
(37, '36'),
(36, '36'),
(24, '36'),
(41, '36'),
(44, '36'),
(40, '36'),
(37, '36'),
(42, '36'),
(36, '36'),
(38, '36'),
(4, '36'),
(41, '36'),
(39, '36'),
(44, '36'),
(37, '36'),
(42, '36'),
(36, '36'),
(38, '36'),
(4, '36'),
(41, '36'),
(39, '36'),
(43, '36'),
(40, '36'),
(37, '36'),
(42, '36'),
(36, '36'),
(41, '36'),
(37, '36'),
(42, '36'),
(36, '36'),
(38, '36'),
(4, '36'),
(41, '36'),
(39, '36'),
(40, '36'),
(42, '36'),
(36, '36'),
(38, '36'),
(4, '36'),
(41, '36'),
(39, '36'),
(44, '36'),
(43, '36'),
(40, '36'),
(37, '36'),
(42, '36'),
(36, '36'),
(38, '36'),
(4, '36'),
(26, '36'),
(74, '36'),
(70, '36'),
(73, '36'),
(71, '36'),
(75, '36'),
(72, '36'),
(76, '36'),
(80, '36'),
(78, '36'),
(77, '36'),
(79, '36'),
(66, '36'),
(64, '36'),
(29, '23'),
(29, '22'),
(29, '37'),
(74, '37'),
(70, '37'),
(73, '37'),
(71, '37'),
(75, '37'),
(72, '37'),
(76, '37'),
(80, '37'),
(78, '37'),
(77, '37'),
(79, '37'),
(66, '37'),
(64, '37'),
(92, '37'),
(41, '38'),
(48, '38'),
(43, '38'),
(40, '38'),
(37, '38'),
(42, '38'),
(36, '38'),
(38, '38'),
(4, '38'),
(24, '38'),
(22, '38'),
(22, '38'),
(41, '38'),
(48, '38'),
(44, '38'),
(40, '38'),
(37, '38'),
(42, '38'),
(4, '38'),
(28, '38'),
(48, '38'),
(43, '38'),
(40, '38'),
(37, '38'),
(36, '38'),
(38, '38'),
(4, '38'),
(24, '38'),
(41, '38'),
(43, '38'),
(40, '38'),
(36, '38'),
(38, '38'),
(4, '38'),
(26, '38'),
(41, '38'),
(48, '38'),
(44, '38'),
(43, '38'),
(37, '38'),
(42, '38'),
(38, '38'),
(4, '38'),
(24, '38'),
(41, '38'),
(39, '38'),
(44, '38'),
(43, '38'),
(40, '38'),
(37, '38'),
(36, '38'),
(38, '38'),
(4, '38'),
(28, '38'),
(48, '38'),
(40, '38'),
(37, '38'),
(42, '38'),
(38, '38'),
(4, '38'),
(39, '38'),
(44, '38'),
(43, '38'),
(42, '38'),
(36, '38'),
(4, '38'),
(23, '38'),
(25, '38'),
(41, '38'),
(39, '38'),
(40, '38'),
(37, '38'),
(42, '38'),
(41, '38'),
(39, '38'),
(40, '38'),
(37, '38'),
(42, '38'),
(22, '38'),
(28, '38'),
(29, '38'),
(39, '38'),
(44, '38'),
(40, '38'),
(37, '38'),
(36, '38'),
(24, '38'),
(41, '38'),
(44, '38'),
(40, '38'),
(37, '38'),
(42, '38'),
(36, '38'),
(38, '38'),
(4, '38'),
(41, '38'),
(39, '38'),
(44, '38'),
(37, '38'),
(42, '38'),
(36, '38'),
(38, '38'),
(4, '38'),
(41, '38'),
(39, '38'),
(43, '38'),
(40, '38'),
(37, '38'),
(42, '38'),
(36, '38'),
(41, '38'),
(37, '38'),
(42, '38'),
(36, '38'),
(38, '38'),
(4, '38'),
(41, '38'),
(39, '38'),
(40, '38'),
(42, '38'),
(36, '38'),
(38, '38'),
(4, '38'),
(41, '38'),
(39, '38'),
(44, '38'),
(43, '38'),
(40, '38'),
(37, '38'),
(42, '38'),
(36, '38'),
(38, '38'),
(4, '38'),
(26, '38'),
(74, '38'),
(70, '38'),
(73, '38'),
(71, '38'),
(75, '38'),
(72, '38'),
(76, '38'),
(80, '38'),
(78, '38'),
(77, '38'),
(79, '38'),
(66, '38'),
(64, '38'),
(41, '39'),
(48, '39'),
(43, '39'),
(40, '39'),
(37, '39'),
(42, '39'),
(36, '39'),
(38, '39'),
(4, '39'),
(24, '39'),
(22, '39'),
(22, '39'),
(41, '39'),
(48, '39'),
(44, '39'),
(40, '39'),
(37, '39'),
(42, '39'),
(4, '39'),
(28, '39'),
(48, '39'),
(43, '39'),
(40, '39'),
(37, '39'),
(36, '39'),
(38, '39'),
(4, '39'),
(24, '39'),
(41, '39'),
(43, '39'),
(40, '39'),
(36, '39'),
(38, '39'),
(4, '39'),
(26, '39'),
(41, '39'),
(48, '39'),
(44, '39'),
(43, '39'),
(37, '39'),
(42, '39'),
(38, '39'),
(4, '39'),
(24, '39'),
(41, '39'),
(39, '39'),
(44, '39'),
(43, '39'),
(40, '39'),
(37, '39'),
(36, '39'),
(38, '39'),
(4, '39'),
(28, '39'),
(48, '39'),
(40, '39'),
(37, '39'),
(42, '39'),
(38, '39'),
(4, '39'),
(39, '39'),
(44, '39'),
(43, '39'),
(42, '39'),
(36, '39'),
(4, '39'),
(23, '39'),
(25, '39'),
(41, '39'),
(39, '39'),
(40, '39'),
(37, '39'),
(42, '39'),
(41, '39'),
(39, '39'),
(40, '39'),
(37, '39'),
(42, '39'),
(22, '39'),
(28, '39'),
(29, '39'),
(39, '39'),
(44, '39'),
(40, '39'),
(37, '39'),
(36, '39'),
(24, '39'),
(41, '39'),
(44, '39'),
(40, '39'),
(37, '39'),
(42, '39'),
(36, '39'),
(38, '39'),
(4, '39'),
(41, '39'),
(39, '39'),
(44, '39'),
(37, '39'),
(42, '39'),
(36, '39'),
(38, '39'),
(4, '39'),
(41, '39'),
(39, '39'),
(43, '39'),
(40, '39'),
(37, '39'),
(42, '39'),
(36, '39'),
(41, '39'),
(37, '39'),
(42, '39'),
(36, '39'),
(38, '39'),
(4, '39'),
(41, '39'),
(39, '39'),
(40, '39'),
(42, '39'),
(36, '39'),
(38, '39'),
(4, '39'),
(41, '39'),
(39, '39'),
(44, '39'),
(43, '39'),
(40, '39'),
(37, '39'),
(42, '39'),
(36, '39'),
(38, '39'),
(4, '39'),
(26, '39'),
(74, '39'),
(70, '39'),
(73, '39'),
(71, '39'),
(75, '39'),
(72, '39'),
(76, '39'),
(80, '39'),
(78, '39'),
(77, '39'),
(79, '39'),
(66, '39'),
(64, '39'),
(41, '40'),
(48, '40'),
(43, '40'),
(40, '40'),
(37, '40'),
(42, '40'),
(36, '40'),
(38, '40'),
(4, '40'),
(24, '40'),
(22, '40'),
(22, '40'),
(41, '40'),
(48, '40'),
(44, '40'),
(40, '40'),
(37, '40'),
(42, '40'),
(4, '40'),
(28, '40'),
(48, '40'),
(43, '40'),
(40, '40'),
(37, '40'),
(36, '40'),
(38, '40'),
(4, '40'),
(24, '40'),
(41, '40'),
(43, '40'),
(40, '40'),
(36, '40'),
(38, '40'),
(4, '40'),
(26, '40'),
(41, '40'),
(48, '40'),
(44, '40'),
(43, '40'),
(37, '40'),
(42, '40'),
(38, '40'),
(4, '40'),
(24, '40'),
(41, '40'),
(39, '40'),
(44, '40'),
(43, '40'),
(40, '40'),
(37, '40'),
(36, '40'),
(38, '40'),
(4, '40'),
(28, '40'),
(48, '40'),
(40, '40'),
(37, '40'),
(42, '40'),
(38, '40'),
(4, '40'),
(39, '40'),
(44, '40'),
(43, '40'),
(42, '40'),
(36, '40'),
(4, '40'),
(23, '40'),
(25, '40'),
(41, '40'),
(39, '40'),
(40, '40'),
(37, '40'),
(42, '40'),
(41, '40'),
(39, '40'),
(40, '40'),
(37, '40'),
(42, '40'),
(22, '40'),
(28, '40'),
(29, '40'),
(39, '40'),
(44, '40'),
(40, '40'),
(37, '40'),
(36, '40'),
(24, '40'),
(41, '40'),
(44, '40'),
(40, '40'),
(37, '40'),
(42, '40'),
(36, '40'),
(38, '40'),
(4, '40'),
(41, '40'),
(39, '40'),
(44, '40'),
(37, '40'),
(42, '40'),
(36, '40'),
(38, '40'),
(4, '40'),
(41, '40'),
(39, '40'),
(43, '40'),
(40, '40'),
(37, '40'),
(42, '40'),
(36, '40'),
(41, '40'),
(37, '40'),
(42, '40'),
(36, '40'),
(38, '40'),
(4, '40'),
(41, '40'),
(39, '40'),
(40, '40'),
(42, '40'),
(36, '40'),
(38, '40'),
(4, '40'),
(41, '40'),
(39, '40'),
(44, '40'),
(43, '40'),
(40, '40'),
(37, '40'),
(42, '40'),
(36, '40'),
(38, '40'),
(4, '40'),
(26, '40'),
(74, '40'),
(70, '40'),
(73, '40'),
(71, '40'),
(75, '40'),
(72, '40'),
(76, '40'),
(80, '40'),
(78, '40'),
(77, '40'),
(79, '40'),
(66, '40'),
(64, '40'),
(41, '41'),
(48, '41'),
(43, '41'),
(40, '41'),
(37, '41'),
(42, '41'),
(36, '41'),
(38, '41'),
(4, '41'),
(24, '41'),
(22, '41'),
(22, '41'),
(41, '41'),
(48, '41'),
(44, '41'),
(40, '41'),
(37, '41'),
(42, '41'),
(4, '41'),
(28, '41'),
(48, '41'),
(43, '41'),
(40, '41'),
(37, '41'),
(36, '41'),
(38, '41'),
(4, '41'),
(24, '41'),
(41, '41'),
(43, '41'),
(40, '41'),
(36, '41'),
(38, '41'),
(4, '41'),
(26, '41'),
(41, '41'),
(48, '41'),
(44, '41'),
(43, '41'),
(37, '41'),
(42, '41'),
(38, '41'),
(4, '41'),
(24, '41'),
(41, '41'),
(39, '41'),
(44, '41'),
(43, '41'),
(40, '41'),
(37, '41'),
(36, '41'),
(38, '41'),
(4, '41'),
(28, '41'),
(48, '41'),
(40, '41'),
(37, '41'),
(42, '41'),
(38, '41'),
(4, '41'),
(39, '41'),
(44, '41'),
(43, '41'),
(42, '41'),
(36, '41'),
(4, '41'),
(23, '41'),
(25, '41'),
(41, '41'),
(39, '41'),
(40, '41'),
(37, '41'),
(42, '41'),
(41, '41'),
(39, '41'),
(40, '41'),
(37, '41'),
(42, '41'),
(22, '41'),
(28, '41'),
(29, '41'),
(39, '41'),
(44, '41'),
(40, '41'),
(37, '41'),
(36, '41'),
(24, '41'),
(41, '41'),
(44, '41'),
(40, '41'),
(37, '41'),
(42, '41'),
(36, '41'),
(38, '41'),
(4, '41'),
(41, '41'),
(39, '41'),
(44, '41'),
(37, '41'),
(42, '41'),
(36, '41'),
(38, '41'),
(4, '41'),
(41, '41'),
(39, '41'),
(43, '41'),
(40, '41'),
(37, '41'),
(42, '41'),
(36, '41'),
(41, '41'),
(37, '41'),
(42, '41'),
(36, '41'),
(38, '41'),
(4, '41'),
(41, '41'),
(39, '41'),
(40, '41'),
(42, '41'),
(36, '41'),
(38, '41'),
(4, '41'),
(41, '41'),
(39, '41'),
(44, '41'),
(43, '41'),
(40, '41'),
(37, '41'),
(42, '41'),
(36, '41'),
(38, '41'),
(4, '41'),
(26, '41'),
(53, '4'),
(92, '39'),
(92, '34'),
(92, '35'),
(92, '36'),
(41, '34'),
(48, '34'),
(44, '34'),
(40, '34'),
(37, '34'),
(42, '34'),
(4, '34'),
(24, '33'),
(48, '33'),
(43, '33'),
(40, '33'),
(37, '33'),
(36, '33'),
(38, '33'),
(4, '33'),
(26, '32'),
(41, '32'),
(43, '32'),
(40, '32'),
(36, '32'),
(38, '32'),
(4, '32'),
(24, '31'),
(41, '31'),
(48, '31'),
(44, '31'),
(43, '31'),
(37, '31'),
(42, '31'),
(38, '31'),
(4, '31'),
(28, '29'),
(41, '29'),
(39, '29'),
(44, '29'),
(43, '29'),
(40, '29'),
(37, '29'),
(36, '29'),
(38, '29'),
(4, '29'),
(25, '28'),
(48, '28'),
(40, '28'),
(37, '28'),
(42, '28'),
(38, '28'),
(4, '28'),
(26, '27'),
(39, '27'),
(44, '27'),
(43, '27'),
(42, '27'),
(36, '27'),
(4, '27'),
(23, '26'),
(41, '26'),
(48, '26'),
(39, '26'),
(44, '26'),
(43, '26'),
(40, '26'),
(37, '26'),
(42, '26'),
(38, '26'),
(4, '26'),
(25, '25'),
(41, '25'),
(39, '25'),
(43, '25'),
(40, '25'),
(37, '25'),
(36, '25'),
(4, '25'),
(39, '20'),
(44, '20'),
(40, '20'),
(37, '20'),
(36, '20'),
(41, '19'),
(44, '19'),
(40, '19'),
(37, '19'),
(42, '19'),
(36, '19'),
(38, '19'),
(4, '19'),
(27, '18'),
(41, '18'),
(39, '18'),
(44, '18'),
(37, '18'),
(42, '18'),
(36, '18'),
(38, '18'),
(4, '18'),
(26, '17'),
(41, '17'),
(39, '17'),
(43, '17'),
(40, '17'),
(37, '17'),
(42, '17'),
(36, '17'),
(22, '16'),
(41, '16'),
(37, '16'),
(42, '16'),
(36, '16'),
(38, '16'),
(4, '16'),
(23, '15'),
(41, '15'),
(39, '15'),
(40, '15'),
(42, '15'),
(36, '15'),
(38, '15'),
(4, '15'),
(22, '14'),
(41, '14'),
(39, '14'),
(44, '14'),
(43, '14'),
(40, '14'),
(37, '14'),
(42, '14'),
(36, '14'),
(38, '14'),
(4, '14'),
(25, '13'),
(41, '13'),
(39, '13'),
(44, '13'),
(43, '13'),
(40, '13'),
(37, '13'),
(42, '13'),
(36, '13'),
(38, '13'),
(26, '12'),
(41, '12'),
(44, '12'),
(40, '12'),
(37, '12'),
(42, '12'),
(36, '12'),
(28, '11'),
(41, '11'),
(40, '11'),
(36, '11'),
(4, '11'),
(27, '10'),
(43, '10'),
(40, '10'),
(37, '10'),
(42, '10'),
(4, '10'),
(22, '9'),
(39, '9'),
(40, '9'),
(37, '9'),
(42, '9'),
(38, '9'),
(27, '8'),
(44, '8'),
(40, '8'),
(37, '8'),
(38, '8'),
(4, '8'),
(22, '7'),
(41, '7'),
(44, '7'),
(43, '7'),
(38, '7'),
(26, '6'),
(41, '6'),
(39, '6'),
(44, '6'),
(40, '6'),
(37, '6'),
(42, '6'),
(25, '5'),
(41, '5'),
(43, '5'),
(40, '5'),
(37, '5'),
(36, '5'),
(38, '5'),
(4, '5'),
(24, '4'),
(41, '4'),
(40, '4'),
(37, '4'),
(42, '4'),
(36, '4'),
(38, '4'),
(4, '4'),
(23, '3'),
(41, '3'),
(39, '3'),
(43, '3'),
(40, '3'),
(37, '3'),
(42, '3'),
(36, '3'),
(38, '3'),
(4, '3'),
(22, '2'),
(41, '2'),
(39, '2'),
(44, '2'),
(43, '2'),
(40, '2'),
(37, '2'),
(42, '2'),
(36, '2'),
(38, '2'),
(4, '2'),
(25, '1'),
(39, '1'),
(44, '1'),
(43, '1'),
(40, '1'),
(42, '1'),
(36, '1'),
(38, '1'),
(4, '1'),
(54, '42'),
(69, '42'),
(66, '42'),
(65, '42'),
(68, '42'),
(64, '42'),
(74, '42'),
(70, '42'),
(73, '42'),
(80, '42'),
(78, '42'),
(77, '42'),
(66, '41'),
(64, '41'),
(66, '45'),
(68, '45'),
(64, '45'),
(74, '45'),
(75, '45'),
(80, '45'),
(77, '45'),
(92, '45'),
(41, '46'),
(48, '46'),
(43, '46'),
(40, '46'),
(37, '46'),
(42, '46'),
(36, '46'),
(38, '46'),
(4, '46'),
(24, '46'),
(22, '46'),
(22, '46'),
(41, '46'),
(48, '46'),
(44, '46'),
(40, '46'),
(37, '46'),
(42, '46'),
(4, '46'),
(28, '46'),
(48, '46'),
(43, '46'),
(40, '46'),
(37, '46'),
(36, '46'),
(38, '46'),
(4, '46'),
(24, '46'),
(41, '46'),
(43, '46'),
(40, '46'),
(36, '46'),
(38, '46'),
(4, '46'),
(26, '46'),
(41, '46'),
(48, '46'),
(44, '46'),
(43, '46'),
(37, '46'),
(42, '46'),
(38, '46'),
(4, '46'),
(24, '46'),
(41, '46'),
(39, '46'),
(44, '46'),
(43, '46'),
(40, '46'),
(37, '46'),
(36, '46'),
(38, '46'),
(4, '46'),
(28, '46'),
(48, '46'),
(40, '46'),
(37, '46'),
(42, '46'),
(38, '46'),
(4, '46'),
(39, '46'),
(44, '46'),
(43, '46'),
(42, '46'),
(36, '46'),
(4, '46'),
(23, '46'),
(25, '46'),
(41, '46'),
(39, '46'),
(40, '46'),
(37, '46'),
(42, '46'),
(41, '46'),
(39, '46'),
(40, '46'),
(37, '46'),
(42, '46'),
(22, '46'),
(28, '46'),
(29, '46'),
(39, '46'),
(44, '46'),
(40, '46'),
(37, '46'),
(36, '46'),
(24, '46'),
(41, '46'),
(44, '46'),
(40, '46'),
(37, '46'),
(42, '46'),
(36, '46'),
(38, '46'),
(4, '46'),
(41, '46'),
(39, '46'),
(44, '46'),
(37, '46'),
(42, '46'),
(36, '46'),
(38, '46'),
(4, '46'),
(41, '46'),
(39, '46'),
(43, '46'),
(40, '46'),
(37, '46'),
(42, '46'),
(36, '46'),
(41, '46'),
(37, '46'),
(42, '46'),
(36, '46'),
(38, '46'),
(4, '46'),
(41, '46'),
(39, '46'),
(40, '46'),
(42, '46'),
(36, '46'),
(38, '46'),
(4, '46'),
(41, '46'),
(39, '46'),
(44, '46'),
(43, '46'),
(40, '46'),
(37, '46'),
(42, '46'),
(36, '46'),
(38, '46'),
(4, '46'),
(26, '46'),
(74, '46'),
(70, '46'),
(73, '46'),
(71, '46'),
(75, '46'),
(72, '46'),
(76, '46'),
(80, '46'),
(78, '46'),
(77, '46'),
(79, '46'),
(66, '46'),
(64, '46'),
(81, '16'),
(82, '16'),
(83, '16'),
(84, '16'),
(85, '16'),
(86, '16'),
(90, '16'),
(93, '16'),
(89, '16'),
(88, '16'),
(81, '15'),
(82, '15'),
(83, '15'),
(84, '15'),
(85, '15'),
(86, '15'),
(90, '15'),
(93, '15'),
(89, '15'),
(88, '15'),
(81, '14'),
(82, '14'),
(83, '14'),
(84, '14'),
(85, '14'),
(86, '14'),
(90, '14'),
(93, '14'),
(89, '14'),
(88, '14'),
(81, '13'),
(82, '13'),
(83, '13'),
(84, '13'),
(85, '13'),
(86, '13'),
(90, '13'),
(93, '13'),
(89, '13'),
(88, '13'),
(81, '12'),
(82, '12'),
(83, '12'),
(84, '12'),
(85, '12'),
(86, '12'),
(90, '12'),
(93, '12'),
(89, '12'),
(88, '12'),
(81, '11'),
(82, '11'),
(83, '11'),
(84, '11'),
(85, '11'),
(86, '11'),
(90, '11'),
(93, '11'),
(89, '11'),
(88, '11'),
(81, '10'),
(82, '10'),
(83, '10'),
(84, '10'),
(85, '10'),
(86, '10'),
(90, '10'),
(93, '10'),
(89, '10'),
(88, '10'),
(81, '9'),
(82, '9'),
(83, '9'),
(84, '9'),
(85, '9'),
(86, '9'),
(90, '9'),
(93, '9'),
(89, '9'),
(88, '9'),
(81, '5'),
(82, '5'),
(83, '5'),
(84, '5'),
(85, '5'),
(86, '5'),
(90, '5'),
(93, '5'),
(89, '5'),
(88, '5'),
(81, '4'),
(82, '4'),
(83, '4'),
(84, '4'),
(85, '4'),
(86, '4'),
(90, '4'),
(93, '4'),
(89, '4'),
(88, '4'),
(81, '2'),
(82, '2'),
(83, '2'),
(84, '2'),
(85, '2'),
(86, '2'),
(90, '2'),
(93, '2'),
(89, '2'),
(88, '2'),
(41, '37'),
(48, '37'),
(43, '37'),
(40, '37'),
(37, '37'),
(42, '37'),
(36, '37'),
(38, '37'),
(4, '37'),
(92, '46'),
(28, '19'),
(81, '20'),
(82, '20'),
(84, '20'),
(85, '20'),
(86, '20'),
(90, '20'),
(93, '20'),
(89, '20'),
(88, '20'),
(92, '41'),
(69, '47'),
(66, '47'),
(65, '47'),
(68, '47'),
(64, '47'),
(72, '47'),
(76, '47'),
(80, '47'),
(77, '47'),
(74, '41'),
(70, '41'),
(73, '41'),
(71, '41'),
(75, '41'),
(72, '41'),
(76, '41'),
(80, '41'),
(78, '41'),
(77, '41'),
(79, '41'),
(92, '47'),
(24, '20'),
(60, '20'),
(25, '22'),
(41, '22'),
(39, '22'),
(44, '22'),
(43, '22'),
(40, '22'),
(37, '22'),
(42, '22'),
(36, '22'),
(38, '22'),
(81, '22'),
(82, '22'),
(83, '22'),
(84, '22'),
(85, '22'),
(86, '22'),
(54, '19'),
(62, '23'),
(81, '23'),
(82, '23'),
(83, '23'),
(86, '23'),
(90, '23'),
(93, '23'),
(89, '23'),
(81, '17'),
(82, '17'),
(83, '17'),
(84, '17'),
(85, '17'),
(86, '17'),
(90, '17'),
(93, '17'),
(89, '17'),
(88, '17'),
(95, '17'),
(92, '40'),
(92, '38'),
(24, '37'),
(81, '6'),
(82, '6'),
(83, '6'),
(84, '6'),
(85, '6'),
(86, '6'),
(90, '6'),
(93, '6'),
(89, '6'),
(88, '6'),
(95, '6'),
(60, '5'),
(58, '7'),
(81, '7'),
(82, '7'),
(83, '7'),
(84, '7'),
(85, '7'),
(86, '7'),
(90, '7'),
(93, '7'),
(89, '7'),
(88, '7'),
(62, '17'),
(59, '16'),
(60, '15'),
(61, '14'),
(63, '13'),
(58, '12'),
(63, '11'),
(61, '10'),
(59, '9'),
(60, '4'),
(61, '2'),
(59, '6'),
(28, '34'),
(41, '55'),
(39, '55'),
(44, '55'),
(43, '55'),
(40, '55'),
(37, '55'),
(42, '55'),
(36, '55'),
(38, '55'),
(4, '55'),
(22, '55'),
(58, '19'),
(81, '19'),
(82, '19'),
(83, '19'),
(84, '19'),
(85, '19'),
(86, '19'),
(90, '19'),
(93, '19'),
(89, '19'),
(88, '19'),
(95, '19'),
(62, '22'),
(62, '25'),
(62, '28'),
(62, '62');

-- --------------------------------------------------------

--
-- Structure de la table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `usermeta`
--

CREATE TABLE `usermeta` (
  `user_id` bigint(20) NOT NULL,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `usermeta`
--

INSERT INTO `usermeta` (`user_id`, `meta_key`, `meta_value`) VALUES
(1, 'user_checkout_information', 'a:8:{s:5:\"email\";s:26:\"flanord.nziengui@gmail.com\";s:9:\"firstName\";s:7:\"Flanord\";s:8:\"lastName\";s:6:\"NZIHOU\";s:5:\"phone\";s:10:\"0754116687\";s:7:\"address\";s:20:\"Avenue de Strasbourg\";s:4:\"city\";N;s:8:\"postCode\";s:5:\"77120\";s:7:\"country\";s:1:\"4\";}'),
(7, 'gender', 'male'),
(7, 'city', 'Aubervilliers'),
(7, 'zipcode', '93300'),
(8, 'user_checkout_information', 'a:8:{s:5:\"email\";s:22:\"cuhuxam@mailinator.com\";s:9:\"firstName\";s:8:\"Marshall\";s:8:\"lastName\";s:4:\"Lott\";s:5:\"phone\";s:17:\"+1 (101) 757-1927\";s:7:\"address\";s:20:\"At ut odit et conseq\";s:4:\"city\";s:19:\"Quaerat nostrud sit\";s:8:\"postCode\";s:20:\"Consequatur recusand\";s:7:\"country\";N;}');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` int(11) DEFAULT NULL,
  `mobile` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_check_notification` bigint(20) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `last_login`, `first_name`, `last_name`, `avatar`, `mobile`, `location`, `request`, `last_check_notification`, `description`, `created_at`, `updated_at`, `address`) VALUES
(1, 'hrubechhombessa@gmail.com', '$2y$10$unnJY919iA3jFPgBzdY7COmbIZBDQR1Of756tf9MSCE503RMf1Hu2', NULL, '2020-12-13 20:39:42', 'Hrubech', 'HOMBESSA', NULL, '0754116687', '250', NULL, 1607249929, NULL, '2020-11-19 05:55:57', '2020-12-13 20:39:42', NULL),
(2, 'partner@admin.com', '$2y$10$UTWNUSI.mgwDuOfDFydKeuvRYBQXGNhtdmc2J54vSQBODhHZBu8K6', NULL, '2021-02-09 23:06:36', NULL, NULL, NULL, NULL, NULL, NULL, 1605804958, NULL, '2020-11-19 05:55:58', '2021-02-09 23:06:36', NULL),
(3, 'partner1@admin.com', '$2y$10$oBzXseQ/t1uk0rxKPmF0H.8R4GmG5xJ173gro7K3mIw1GhmO.UouC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1605804958, NULL, '2020-11-19 05:55:58', '2020-11-19 05:55:58', NULL),
(4, 'partner2@admin.com', '$2y$10$mMbaGVnwmpTlzsKDIv7.r.HOo1BfA1PCI.iMjuRbu6jyohc5K3GDi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1605804958, NULL, '2020-11-19 05:55:58', '2020-11-19 05:55:58', NULL),
(5, 'partner3@admin.com', '$2y$10$w8kJOFtjIylrS2CivbtfVeq4W6Au8I4/eCnO7LYdPtFuHPJ8ExtCS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1605804958, NULL, '2020-11-19 05:55:58', '2020-11-19 05:55:58', NULL),
(6, 'customer@admin.com', '$2y$10$8dB5X.3G1u.42drTT95q5uCp7Rs7wWMV9xXQQ3MfRDsJJZlqquTuC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1605804958, NULL, '2020-11-19 05:55:58', '2020-11-19 05:55:58', NULL),
(7, 'mosordael05@gmail.com', '$2y$10$7Gw6j51VK0DY/USy6N7LdOKdRejc3kwznaiBzxTZKOuzjA05L1xiG', NULL, '2020-12-13 20:45:02', 'HOMBESSA', 'Hrubech', NULL, '0752472134', '250', 'request_a_partner', NULL, NULL, '2020-12-13 20:36:21', '2020-12-13 20:45:02', 'France, 44 Boulevard Anatole France'),
(8, 'ndong.sara@yahoo.com', '$2y$10$wWE7ehjWLmACfZtiyD/EYe1ynHil6bbsjiRSP6fxmIIEh.LgnCYdS', NULL, '2021-02-10 22:50:18', 'sara', 'ndong', NULL, NULL, NULL, NULL, 1612784258, NULL, '2021-02-08 15:40:44', '2021-02-10 22:50:18', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`post_id`);

--
-- Index pour la table `car_price`
--
ALTER TABLE `car_price`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Index pour la table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Index pour la table `earning`
--
ALTER TABLE `earning`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`post_id`);

--
-- Index pour la table `experience_availability`
--
ALTER TABLE `experience_availability`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `experience_price`
--
ALTER TABLE `experience_price`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`post_id`);

--
-- Index pour la table `home_price`
--
ALTER TABLE `home_price`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`media_id`);

--
-- Index pour la table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Index pour la table `menu_structure`
--
ALTER TABLE `menu_structure`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`option_id`);

--
-- Index pour la table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`package_id`);

--
-- Index pour la table `package_order`
--
ALTER TABLE `package_order`
  ADD PRIMARY KEY (`pkorder_id`);

--
-- Index pour la table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`post_id`);

--
-- Index pour la table `payout`
--
ALTER TABLE `payout`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`);

--
-- Index pour la table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Index pour la table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Index pour la table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Index pour la table `taxonomy`
--
ALTER TABLE `taxonomy`
  ADD PRIMARY KEY (`taxonomy_id`);

--
-- Index pour la table `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`term_id`);

--
-- Index pour la table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `booking`
--
ALTER TABLE `booking`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `car`
--
ALTER TABLE `car`
  MODIFY `post_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT pour la table `car_price`
--
ALTER TABLE `car_price`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT pour la table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `earning`
--
ALTER TABLE `earning`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `experience`
--
ALTER TABLE `experience`
  MODIFY `post_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `experience_availability`
--
ALTER TABLE `experience_availability`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `experience_price`
--
ALTER TABLE `experience_price`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT pour la table `home`
--
ALTER TABLE `home`
  MODIFY `post_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT pour la table `home_price`
--
ALTER TABLE `home_price`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `language`
--
ALTER TABLE `language`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `media`
--
ALTER TABLE `media`
  MODIFY `media_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT pour la table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `menu_structure`
--
ALTER TABLE `menu_structure`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=844;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `notification`
--
ALTER TABLE `notification`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `options`
--
ALTER TABLE `options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `package`
--
ALTER TABLE `package`
  MODIFY `package_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `package_order`
--
ALTER TABLE `package_order`
  MODIFY `pkorder_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `page`
--
ALTER TABLE `page`
  MODIFY `post_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `payout`
--
ALTER TABLE `payout`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `taxonomy`
--
ALTER TABLE `taxonomy`
  MODIFY `taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `term`
--
ALTER TABLE `term`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT pour la table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
