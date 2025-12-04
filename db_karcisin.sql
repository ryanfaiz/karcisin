-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 02, 2025 at 05:51 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_karcisin`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-putriclarisa079@gmail.com|127.0.0.1', 'i:1;', 1764633513),
('laravel-cache-putriclarisa079@gmail.com|127.0.0.1:timer', 'i:1764633513;', 1764633513);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'General',
  `event_date` datetime NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `quota` int NOT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `description`, `category`, `event_date`, `location`, `price`, `quota`, `status`, `banner`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Coldplay Music of the Spheres Indonesia World Tour', 'The Music of the Spheres World Tour is the ongoing eighth concert tour undertaken by British rock band Coldplay. It is being staged to promote their ninth and tenth studio albums, Music of the Spheres (2021) and Moon Music (2024), respectively.', 'Konser', '2026-02-21 21:32:00', 'Taman Sempur', 50000, 46, 'approved', 'banners/Zzd6bNzQWBlazegWQbeDZao9qLnp9vfd4zqhITPd.jpg', 2, '2025-12-01 07:32:50', '2025-12-01 20:04:33'),
(2, 'Blackpink Deadline World Tour', 'The Deadline World Tour is the third worldwide concert tour and the fourth overall by the South Korean girl group Blackpink. Marketed as the group\'s first all-stadium tour,[a] it commenced on July 5, 2025, at the Goyang Stadium in South Korea, and will conclude on January 26, 2026, at the Kai Tak Stadium in Hong Kong.', 'Konser', '2026-03-28 07:07:00', 'Taman Sempur', 50000, 49, 'approved', 'banners/fbNXpFWmbKCKepVxTw5X2I5A40FfuwpTumqVdp9T.jpg', 6, '2025-12-01 17:08:21', '2025-12-01 17:10:06'),
(3, 'Hindia Lagipula Hidup Akan Berakhir Album Concert Jakarta JAKARTA, DKI Jakarta', 'Konser album kedua Hindia Lagipula Hidup Akan Berakhir di 4 kota. Dengarkan track barunya pertama kali secara Live. Nikmati alur emosi yang hadir dari setiap lagu, pertunjukan, cerita, dan aktivasi sepanjang konser. Semuanya special Lagipula Hidup Akan Berakhir!', 'Konser', '2025-12-27 08:48:00', 'GWW', 50000, 49, 'approved', 'banners/gq0LNYCNogpIuFm51j2X5hNdcqZm9Bm4YjclfcK3.jpg', 2, '2025-12-01 18:48:47', '2025-12-01 20:08:23'),
(4, 'Oasis Live \'25 Tour', 'The Oasis Live \'25 Tour was a concert tour by the English rock band Oasis. It began on 4 July 2025 at the Principality Stadium in Cardiff, Wales, and concluded on 23 November at Estádio do Morumbi in São Paulo, Brazil. The tour marked Oasis\'s first live appearances since they split in 2009.', 'Konser', '2026-04-11 08:52:00', 'GWW', 49998, 48, 'approved', 'banners/eUiBvRUHdxzOQaVjoUqZjrudytkUVIQoCGSXYe4R.jpg', 2, '2025-12-01 18:53:11', '2025-12-01 20:30:08'),
(5, 'Everest Expedition 2026', 'Everest Base Camp Expedition (14 Days / 13 Nights)\r\n\"Walk in the footsteps of legends. Stand at the foot of the highest mountain on Earth.\"\r\n\r\nAre you ready to challenge yourself? Join our Open Trip to the heart of the Himalayas. This is not just a trek; it is a journey through ancient Sherpa culture, breathtaking landscapes, and the thin air of the Khumbu Valley.\r\n\r\n🌟 Trip Highlights\r\nThe Lukla Flight: Experience the thrill of landing at Tenzing-Hillary Airport, one of the world\'s most dramatic airports.\r\n\r\nNamche Bazaar: Explore the bustling Sherpa capital and trade hub.\r\n\r\nTengboche Monastery: Receive a blessing at the largest monastery in the Khumbu region with Ama Dablam as the backdrop.\r\n\r\nEverest Base Camp (5,364m): Stand on the Khumbu Glacier where summit expeditions begin.\r\n\r\nKala Patthar (5,545m): The highest point of the trek, offering the best sunrise view of Mount Everest\'s summit.\r\n\r\n📅 Trip Details\r\nDuration: 14 Days / 13 Nights\r\n\r\nStart/Finish: Kathmandu, Nepal\r\n\r\nDifficulty: Challenging (Requires good cardiovascular fitness)\r\n\r\nMax Altitude: 5,545m (Kala Patthar)\r\n\r\nGroup Size: Max 12 Pax (for personalized attention)\r\n\r\n🗺️ Itinerary Overview\r\nDay 1: Arrival in Kathmandu Arrival at Tribhuvan International Airport. Transfer to hotel in Thamel. Welcome dinner and briefing.\r\n\r\nDay 2: Fly to Lukla & Trek to Phakding (2,610m) A scenic 30-minute flight to Lukla followed by a gentle 3-hour trek to Phakding.\r\n\r\nDay 3: Trek to Namche Bazaar (3,440m) Entrance into Sagarmatha National Park. First glimpse of Everest. A steep climb to the Sherpa capital.\r\n\r\nDay 4: Acclimatization Day in Namche Hike to Everest View Hotel for panoramic views. Visit the Sherpa Museum to adapt to the altitude.\r\n\r\nDay 5: Trek to Tengboche (3,860m) Walk through rhododendron forests to reach the spiritual center of the Khumbu, Tengboche Monastery.\r\n\r\nDay 6: Trek to Dingboche (4,410m) As we gain altitude, the treeline disappears, revealing rugged alpine landscapes.\r\n\r\nDay 7: Acclimatization Day in Dingboche A crucial rest day. Optional hike to Nangkartshang Peak for acclimatization.\r\n\r\nDay 8: Trek to Lobuche (4,910m) Walk past the Memorial Chortens dedicated to fallen climbers. The air gets thinner as we approach the glacier.\r\n\r\nDay 9: The Big Day – Everest Base Camp (5,364m) Trek to Gorakshep, lunch, and then the final push to Base Camp. Celebrate your achievement on the Khumbu Icefall. Return to Gorakshep to sleep.\r\n\r\nDay 10: Kala Patthar Sunrise & Descend to Pheriche Early morning hike to Kala Patthar (5,545m) for the sunrise over Everest. Trek down to Pheriche.\r\n\r\nDay 11: Trek to Namche Bazaar Retrace our steps, descending to thicker air and warmer temperatures.\r\n\r\nDay 12: Trek to Lukla Final day of trekking. Celebration party with the guides and porters in the evening.\r\n\r\nDay 13: Fly back to Kathmandu Morning flight back to the city. Free time for shopping in Thamel. Farewell dinner.\r\n\r\nDay 14: Final Departure Transfer to the airport for your flight home.\r\n\r\n✅ Inclusions\r\nAirport transfers (Pick up/Drop off).\r\n\r\nDomestic flights (Kathmandu – Lukla – Kathmandu).\r\n\r\nSagarmatha National Park permits and TIMS card.\r\n\r\nProfessional English-speaking Trekking Guide.\r\n\r\nPorters (1 porter for every 2 trekkers).\r\n\r\nAccommodation in Teahouses (Mountain Lodges) during the trek.\r\n\r\nHotel accommodation in Kathmandu (3 Nights).\r\n\r\nMedical Kit and Oximeter.\r\n\r\n❌ Exclusions\r\nInternational Flights to/from Nepal.\r\n\r\nTravel Insurance (MUST cover emergency helicopter rescue up to 6,000m).\r\n\r\nNepal Visa Fee.\r\n\r\nPersonal Trekking Gear (Down jacket, sleeping bag, boots).\r\n\r\nTips for Guide and Porters.\r\n\r\nPersonal expenses (Wi-Fi, hot showers, charging devices at teahouses).', 'Wisata', '2026-04-11 08:55:00', 'Nepal', 20000000, 14, 'approved', 'banners/HW8BkdJPLRLYgu9aZsxyeIwbzjqh9On4bUTk0Yjd.jpg', 2, '2025-12-01 19:02:28', '2025-12-01 20:16:11'),
(6, 'OPEN TRIP: The Swiss Alpine Expedition', 'Peaks, Glaciers, and Village Trails (10 Days / 9 Nights)\r\n\"Discover the heart of the Alps. This isn\'t just a sightseeing tour; it\'s an active journey through the most dramatic landscapes in Europe.\"\r\n\r\nAre you ready to swap city noise for cowbells and towering peaks? Join our small-group expedition to Switzerland. We move beyond the tour buses to hike legendary trails, stand on Europe\'s largest glaciers, and experience the authentic magic of the Swiss Alps.\r\n\r\n🌟 Trip Highlights\r\nThe Matterhorn Icon: Hike the trails around Zermatt for unparalleled views of the world\'s most famous mountain pyramid.\r\n\r\nJungfraujoch - Top of Europe: Ride the train inside a mountain to reach 3,454m and step onto the massive Aletsch Glacier UNESCO site.\r\n\r\nThe Eiger Trail: Experience the thrill of hiking beneath the notorious North Face of the Eiger mountain near Grindelwald.\r\n\r\nValley of 72 Waterfalls: Walk through the magical Lauterbrunnen Valley, the inspiration for Tolkien\'s Rivendell.\r\n\r\nScenic Swiss Trains: Utilize the world-class Swiss rail system for breathtaking transfers between alpine regions.\r\n\r\nLucerne & Chapel Bridge: Explore the historic heart of central Switzerland and its stunning lake.\r\n\r\n📅 Trip Details\r\nDuration: 10 Days / 9 Nights\r\n\r\nStart/Finish: Zurich Airport (ZRH), Switzerland\r\n\r\nActivity Level: Moderate / Active\r\n\r\nNote: This trip involves daily hiking (approx. 4–6 hours/day on mixed terrain). Participants should have good cardiovascular fitness.\r\n\r\nGroup Size: Max 14 Pax (Small group for a better experience)\r\n\r\nAccommodation: Mix of comfortable 3-Star Hotels and traditional Swiss Alpine Lodges.\r\n\r\n🗺️ Itinerary Overview\r\nDay 1: Arrival in Zurich – Transfer to Lucerne Arrive at ZRH. Meet the team and take the train to beautiful Lucerne. Evening welcome dinner near the iconic Chapel Bridge.\r\n\r\nDay 2: Lucerne\'s Peaks & Move to the Bernese Oberland Morning excursion up Mount Pilatus (the Dragon Mountain) via the world\'s steepest cogwheel railway. In the afternoon, scenic train transfer to Interlaken, our adventure hub.\r\n\r\nDay 3: Lauterbrunnen & Murren (The Cliff Walk) Explore the stunning Lauterbrunnen valley of waterfalls. Take a cable car up to the car-free village of Murren and tackle the thrilling \"Birg Thrill Walk\" glass floor suspended over the cliffs.\r\n\r\nDay 4: The Top of Europe – Jungfraujoch The big day! We take the spectacular train journey up to Jungfraujoch (3,454m). Walk on the snow, see the Aletsch Glacier, and visit the Ice Palace.\r\n\r\nDay 5: The Eiger Trail Expedition Transfer to Grindelwald. We hike the classic \"Eiger Trail,\" traversing directly beneath the massive, imposing North Face of the Eiger. A day of dramatic rock and ice views.\r\n\r\nDay 6: Journey to Zermatt A scenic transfer day deeper into the Alps to the canton of Valais. We arrive in Zermatt, the car-free village dominated by the Matterhorn.\r\n\r\nDay 7: Gornergrat & The Riffelsee Reflection Take the cogwheel train up to Gornergrat (3,089m) for the best panoramic view of the Matterhorn and surrounding glaciers. Hike down to Riffelsee lake for that picture-perfect Matterhorn reflection shot.\r\n\r\nDay 8: The 5-Lakes Walk (Zermatt) Our final big hike. The \"5-Seenweg\" is a stunning trail connecting five different alpine lakes, with the Matterhorn constantly in the background.\r\n\r\nDay 9: Return to Zurich Enjoy a final Swiss breakfast in Zermatt before the scenic train journey back towards Zurich. Farewell dinner in the city to celebrate the expedition.\r\n\r\nDay 10: Departure Free time in Zurich in the morning depending on flight schedules. Transfer to the airport for your flight home.\r\n\r\n✅ Inclusions\r\nProfessional English-speaking Trip Leader/Guide throughout.\r\n\r\n9 Nights Accommodation (Twin Share basis).\r\n\r\nSwiss Travel Pass: Covers all trains, buses, and boats between cities for the duration of the trip.\r\n\r\nMountain Railway & Cable Car tickets as per itinerary (including Jungfraujoch and Gornergrat).\r\n\r\nBreakfast daily.\r\n\r\nWelcome Dinner (Day 1) and Farewell Dinner (Day 9).\r\n\r\n❌ Exclusions\r\nInternational Flights to/from Zurich (ZRH).\r\n\r\nSchengen Visa Fees.\r\n\r\nTravel Insurance (Mandatory - must cover hiking activities up to 3,500m).\r\n\r\nLunches and Dinners not mentioned in inclusions (allow approx. CHF 40-60 per day for food).\r\n\r\nPersonal Hiking Gear (Boots, daypack, rain jacket, etc.).\r\n\r\nOptional activities (e.g., Paragliding in Interlaken).\r\n\r\nPersonal expenses and tips.', 'Wisata', '2026-01-31 09:05:00', 'Jakarta', 50000000, 29, 'approved', 'banners/g3EgMLAsBYHEexSQ0kFDmAdFIgttTpiH5bySI31F.jpg', 2, '2025-12-01 19:08:48', '2025-12-01 20:39:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_11_29_111215_create_events_table', 1),
(5, '2025_11_29_111221_create_transactions_table', 1),
(6, '2025_11_29_111227_create_tickets_table', 1),
(7, '2025_11_30_232559_add_details_to_users_table', 1),
(8, '2025_12_01_022632_add_details_to_events_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Bl4fNOfdpzoUkrtkrXwHQejosHOwk4X2mvZv3YZE', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNlNDU3BCcHhHaXp1UTdvVEZsbTBralRlQWxOTmdZbHIwZHZ2eENhWiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9teS10aWNrZXRzIjtzOjU6InJvdXRlIjtzOjEwOiJteS50aWNrZXRzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3NjQ2NDM5NzI7fX0=', 1764646951),
('GLlex1XERR9yX0NQnrAUDnRuZqb8rYbJMvvQ1jKC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWg2ZEw1bG53TDNWdTRUaVB1Yjl3MWl6VnFqV3FHOE5sQldRbHVyTyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo3OiJ3ZWxjb21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1764646621),
('Ltyn8jkYzDm9ER6eAx59G54Elikc4aGqFE1UWMo1', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUkdqbVg5QzZXVEUxVUFjcERhZDhqRkl1aUJuSVZ2WlJtbEF0Z3lGTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo3OiJ3ZWxjb21lIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3NjQ2NDY3MTA7fX0=', 1764647561),
('Pu3sLlvTiQ6yDgoA2ly0XNTTCyolDurMt1TmhRg3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSUt6WTNETUhLQlVkNW1MVlZMd0h0RGpGektJckdVcHlSU1Nwck9VaSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hYm91dCI7czo1OiJyb3V0ZSI7czo1OiJhYm91dCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1764651956),
('VF9B0M1tD7WEWxHHUhOBxfGeTonzm6zvLvsnWVcz', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWGd1UFVXN0lYOU9aRDFacmpHejFzaDhzdDA3akZGMWRkVElqZDc2aSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo3OiJ3ZWxjb21lIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3NjQ2NDE0OTA7fX0=', 1764642335),
('XUZBfGljhgnV2HLhvbxB3kJXj4RtTNllF4L4obr7', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUjdCUVlxNlRpOUJTd1ZDQzB1eVJiaFcwaVpoYUhEanUyVkdPcklKNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hYm91dCI7czo1OiJyb3V0ZSI7czo1OiJhYm91dCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzY0NjQxNzYyO319', 1764643129);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `transaction_id` bigint UNSIGNED NOT NULL,
  `unique_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_checked_in` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `transaction_id`, `unique_code`, `is_checked_in`, `created_at`, `updated_at`) VALUES
(1, 1, 'TIKET-FVG5U3RXPQ', 1, '2025-12-01 07:41:52', '2025-12-01 08:08:54'),
(2, 2, 'TIKET-4FO7VF6JWB', 1, '2025-12-01 07:48:16', '2025-12-01 08:08:37'),
(3, 3, 'TIKET-615LCSMV4S', 1, '2025-12-01 17:10:17', '2025-12-01 17:11:06'),
(4, 4, 'TIKET-ZCHTC9BWI9', 1, '2025-12-01 19:11:41', '2025-12-01 19:54:09'),
(5, 5, 'TIKET-740YBMFHCA', 0, '2025-12-01 19:57:39', '2025-12-01 19:57:39'),
(6, 6, 'TIKET-UTRE7C1ZUP', 0, '2025-12-01 20:04:52', '2025-12-01 20:04:52'),
(7, 7, 'TIKET-3KPBVZ0GMY', 1, '2025-12-01 20:08:37', '2025-12-01 20:09:08'),
(8, 8, 'TIKET-A48HOO8HNN', 1, '2025-12-01 20:16:40', '2025-12-01 20:19:43'),
(9, 9, 'TIKET-2DWNFWUBPH', 0, '2025-12-01 20:30:37', '2025-12-01 20:30:37'),
(10, 10, 'TIKET-2OTHJQDWRP', 1, '2025-12-01 20:41:00', '2025-12-01 20:52:00');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `event_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `total_price` int NOT NULL,
  `status` enum('pending','paid','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_proof` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `event_id`, `quantity`, `total_price`, `status`, `payment_proof`, `customer_name`, `customer_email`, `customer_phone`, `customer_nik`, `bank_name`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 1, 50000, 'paid', 'payments/CHDBxpFpksVNb7irMOKxiHq9SGMMTSnsiSkghhfy.jpg', 'Jokowi', '24ganabitz@apps.ipb.ac.id', '081380731465', '3203282403050004', 'BCA', '2025-12-01 07:41:31', '2025-12-01 07:41:52'),
(2, 4, 1, 1, 50000, 'paid', 'payments/6AZzt3bVkIgwkls6kxF8wZ6Pa1vlI6xqVUGDG9tN.jpg', 'Jokowi', '24ganabitz@apps.ipb.ac.id', '081380731465', '3203282403050004', 'BRI', '2025-12-01 07:47:51', '2025-12-01 07:48:16'),
(3, 4, 2, 1, 50000, 'paid', 'payments/DFr7Twen3GeY4CSorAAfCCh9frSsNdtWl2bUCpuV.jpg', 'Jokowi', '24ganabitz@apps.ipb.ac.id', '081380731464', '3203282403050003', 'BCA', '2025-12-01 17:10:06', '2025-12-01 17:10:17'),
(4, 4, 4, 1, 49998, 'paid', 'payments/Bdt0dOROGocirRwsQCUl19JdslnpWvmwtoxr2vw4.jpg', 'Aldi Taher', '24ganabitz@apps.ipb.ac.id', '081380731465', '3203292403050003', 'BCA', '2025-12-01 19:10:47', '2025-12-01 19:11:41'),
(5, 4, 1, 1, 50000, 'paid', 'payments/ygaoP0mGfLq8oHi6AtwLePaAyK9XnJUQAf8ugAeq.jpg', 'Jokowi', '24ganabitz@apps.ipb.ac.id', '081380731467', '3203282403050002', 'BCA', '2025-12-01 19:56:14', '2025-12-01 19:57:39'),
(6, 4, 1, 1, 50000, 'paid', 'payments/MgMIEUl2c8jesqqhMAtXdbRMYiuWDBK43qOGuWx1.jpg', 'Jokowi', '24ganabitz@apps.ipb.ac.id', '081380731466', '3203282403050003', 'BCA', '2025-12-01 20:04:33', '2025-12-01 20:04:52'),
(7, 4, 3, 1, 50000, 'paid', 'payments/Om31TcETlQYRkT79AonTGLTCMv5Ez0WXvybRWZRs.jpg', 'Jokowi', '24ganabitz@apps.ipb.ac.id', '081380731467', '3203282403050006', 'BCA', '2025-12-01 20:08:23', '2025-12-01 20:08:37'),
(8, 4, 5, 1, 20000000, 'paid', 'payments/YeZx5TCgHv5KIRxCmAhKC4LUkzJZGIn7ALNqezkq.jpg', 'Jokowi', '24ganabitz@apps.ipb.ac.id', '081380731464', '3203282403050002', 'BCA', '2025-12-01 20:16:11', '2025-12-01 20:16:40'),
(9, 4, 4, 1, 49998, 'paid', 'payments/iC0j6xTah3JaAl1QTtxPA3s8xkCxTMTDihMuXJpQ.jpg', 'Jokowi', '24ganabitz@apps.ipb.ac.id', '081380731467', '3203282403050006', 'BCA', '2025-12-01 20:30:08', '2025-12-01 20:30:37'),
(10, 4, 6, 1, 50000000, 'paid', 'payments/nmBTDOtBgOyt8eqLrR3K6FNdpb5sv2tuo1p4JTw4.jpg', 'Jokowi', '24ganabitz@apps.ipb.ac.id', '081380731478', '3203282403050007', 'BCA', '2025-12-01 20:39:59', '2025-12-01 20:41:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','creator','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `nik`, `address`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Muhamad Ganabitz Dzikri', 'gansdzikri11@gmail.com', NULL, NULL, NULL, NULL, '$2y$12$Vh3z2HFUK4q8CMhp07yeSudJF6ndDtsFm46F1LP9sSMVVnJcqtf8i', 'creator', NULL, '2025-12-01 07:16:34', '2025-12-01 07:16:34'),
(3, 'Gana', 'ganadzikri@gmail.com', NULL, NULL, NULL, NULL, '$2y$12$Ir93xr9qhCBqyTeYon60ZuLBGfljnOrwrV8uZsjf6MAAg89g9HoxO', 'admin', NULL, '2025-12-01 07:17:29', '2025-12-01 07:17:29'),
(4, 'Jokowi', '24ganabitz@apps.ipb.ac.id', NULL, NULL, NULL, NULL, '$2y$12$fFZ7xRn1yTHOOyINfssNbenfmxvPJhUJNdY..6lGRRmxJTIkTfSoS', 'user', NULL, '2025-12-01 07:20:44', '2025-12-01 07:20:44'),
(6, 'Putri Clarisa', 'putriclarisa079@gmail.com', '081380731444', '32032824030050006', 'Bogor Jl. Raya Pajajaran, Kota Bogor, Jawa Barat 16128', NULL, '$2y$12$7btq720huu/pHrI3R67WPuFcOsQbl3TmLJjL8YYEb3yS4ZXCkuRYO', 'creator', NULL, '2025-12-01 16:59:49', '2025-12-01 16:59:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_created_by_foreign` (`created_by`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tickets_unique_code_unique` (`unique_code`),
  ADD KEY `tickets_transaction_id_foreign` (`transaction_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_event_id_foreign` (`event_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`),
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
