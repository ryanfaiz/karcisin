-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2025 at 12:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('karcisin-cache-aishaaulia20@gmai.com|127.0.0.1', 'i:2;', 1764811992),
('karcisin-cache-aishaaulia20@gmai.com|127.0.0.1:timer', 'i:1764811992;', 1764811992),
('karcisin-cache-fauziamuhammad@apps.ipb.ac.id|127.0.0.1', 'i:3;', 1764810782),
('karcisin-cache-fauziamuhammad@apps.ipb.ac.id|127.0.0.1:timer', 'i:1764810782;', 1764810782);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(255) NOT NULL DEFAULT 'General',
  `event_date` datetime NOT NULL,
  `location` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `quota` int(11) NOT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `banner` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `description`, `category`, `event_date`, `location`, `price`, `quota`, `status`, `banner`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Coldplay Music of the Spheres Indonesia World Tour (dummy)', '🌌 COLDPLAY: Music of the Spheres World Tour – Live at GWW IPB\r\n\"A Sky Full of Stars Over Dramaga\"\r\n\r\nGet ready for a historic night! For the first time ever, the magic of Coldplay descends upon Graha Widya Wisuda (GWW). Watch Chris Martin and the band transform our iconic campus hall into a galaxy of lights and sound in an intimate, once-in-a-lifetime experience.\r\n\r\n📅 Event Details:\r\n\r\nVenue: Graha Widya Wisuda (GWW), IPB University, Dramaga\r\n\r\nDate: Saturday, March 14, 2026\r\n\r\nTime: Doors Open 4:00 PM | Show Starts 7:30 PM\r\n\r\n✨ Highlights of the Night:\r\n\r\nGlobal Hits: Sing your heart out to anthems like Yellow, Fix You, Viva La Vida, and My Universe.\r\n\r\nImmersive Experience: Witness GWW glow like never before with the spectacular Xylobands light show.\r\n\r\nSustainability: The world’s most eco-friendly tour meets Indonesia\'s premier Green Campus.\r\n\r\n🎟️ Ticket Information: Limited capacity! Special Student Pricing available for active IPB students. Secure your spot at: karcisin.store', 'Konser', '2026-03-14 18:53:00', 'GWW', 1500000, 4996, 'approved', 'banners/i5iUJYslcSzjz09AbmARIbOEFAxtQUrYicofZJgW.jpg', 3, '2025-12-03 04:54:26', '2025-12-03 06:23:22'),
(2, 'Blackpink Deadline World Tour Indonesia (Dummy)', '🖤💗 BLACKPINK: Deadline World Tour – Live in Jakarta\r\n\"The Countdown Begins. Time is Running Out, BLINKs!\"\r\n\r\nThe queens of K-Pop are back to conquer Jakarta! Jennie, Lisa, Rosé, and Jisoo return to the stage with their most intense and daring concept yet. The Deadline World Tour is not just a concert; it’s a high-octane race against time featuring groundbreaking performances, fierce choreography, and the unmistakable energy that only BLACKPINK can deliver.\r\n\r\n📅 Event Details:\r\n\r\nVenue: GWW\r\n\r\nDate: [Insert Date, e.g., Saturday, May 23, 2026]\r\n\r\nTime: Doors Open 4:00 PM | Show Starts 7:00 PM\r\n\r\n✨ Why You Can\'t Miss It:\r\n\r\nThe \"Deadline\" Concept: Witness a bolder, darker, and more cinematic side of BLACKPINK with exclusive remixes and a storyline woven through the show.\r\n\r\nPink Ocean: Be part of the massive sea of hammer bongs lighting up the stadium under the night sky.\r\n\r\nGlobal Anthems: Scream your heart out to hits like How You Like That, Pink Venom, and brand new tracks from the tour.\r\n\r\n🎟️ Ticket Information: Don\'t let the clock hit zero! Tickets are expected to sell out in minutes. Secure your access at: karcisin.store', 'Konser', '2026-05-23 06:40:00', 'GWW', 1500000, 999, 'approved', 'banners/pWekdqkpjscref47R73e7SPAfBOJy4sBUxWXA3sC.jpg', 3, '2025-12-03 16:40:57', '2025-12-03 18:34:28'),
(3, 'Oasis Live \'25 Tour Indonesia (Dummy)', '🇬🇧 OASIS LIVE \'25: The World Tour – Live in Jakarta\r\n\"The Guns Have Fallen Silent. The Stars Have Aligned. The Great Wait is Over.\"\r\n\r\nIt’s happening. After 16 years of silence, the feud is over. Liam and Noel Gallagher are back on stage together, and they are bringing the sound of Manchester to Indonesia. Prepare for a night of pure rock \'n\' roll history as the definition of Britpop returns to reclaim its throne.\r\n\r\n📅 Event Details:\r\n\r\nVenue: GWW \r\n\r\nDate: 7 February 2026\r\n\r\nTime: Gates Open 5:00 PM | Show Starts 8:00 PM\r\n\r\n✨ Why This is Unmissable:\r\n\r\nThe Reunion: Witness the moment the world thought would never happen—the Gallagher brothers, side by side, tearing through their greatest hits.\r\n\r\nThe Anthems: Prepare for the loudest singalongs Jakarta has ever heard—from Wonderwall and Don’t Look Back in Anger to Champagne Supernova and Live Forever.\r\n\r\nPure Attitude: No gimmicks, no dancers. Just raw energy, parkas, loud guitars, and the swagger of the greatest rock band of their generation.\r\n\r\n🎟️ Ticket Information: This will not be televised. This is live. Tickets go on sale [Insert Date]. Get yours at: [Insert Ticket Link]\r\n\r\nYou gotta roll with it. See you in the front row.', 'Konser', '2026-02-07 06:42:00', 'GWW', 1500000, 4000, 'approved', 'banners/5HlZlK1YIgEgH6yQyHjmxBsl7V9SlmrVH60xUjMs.jpg', 3, '2025-12-03 16:43:09', '2025-12-03 16:56:36'),
(4, 'Hindia Lagipula Hidup Akan Berakhir Album Concert Jakarta JAKARTA (Dummy)', '🌊 HINDIA: Lagipula Hidup Akan Berakhir – Album Concert Jakarta\r\n\"One Last Dance Before the World Ends\"\r\n\r\nJakarta, are you ready to face the mirror? Baskara Putra (Hindia) invites you to the ultimate celebration of life, despair, and everything in between. This is not just a concert; it is a theatrical journey through the chaotic reality of modern life, brought to you live in the heart of the city.\r\n\r\n📅 Event Details:\r\n\r\nVenue: Gelora Bung Karno Stadium\r\n\r\nDate: 24 January 2026\r\n\r\nTime: Doors Open 5:00 PM | Show Starts 8:00 PM\r\n\r\n✨ The Experience:\r\n\r\nThe Narrative: Experience the full emotional arc of the Lagipula Hidup Akan Berakhir album, performed live with a full band and immersive stage storytelling.\r\n\r\nCollective Catharsis: Scream, cry, and dance along with thousands of others to hits like Cincin, Masalah Masa Depan, Janji Palsu, and the timeless Evaluasi.\r\n\r\nVisual Masterpiece: A spectacular visual production that reflects the album\'s themes of existential dread and finding hope in the little things.\r\n\r\n🎟️ Ticket Information: Prepare your hearts (and your tissues). Tickets available at: [Insert Ticket Platform]\r\n\r\nEverything ends eventually. But tonight, we live forever.', 'Konser', '2026-01-24 06:45:00', 'GBK', 800000, 70000, 'approved', 'banners/m12I7pOiGfCiVLbK1YR9QONjTMFUuszVDFozBXjg.jpg', 3, '2025-12-03 16:45:32', '2025-12-03 16:56:40'),
(5, 'Everest Expedition 2026 (Dummy)', '🏔️ EVEREST EXPEDITION 2026: Open Trip to the Top of the World\r\n\"Stand Where the Earth Meets the Sky.\"\r\n\r\nThis is not just a vacation; it is the ultimate test of human endurance. Join an elite team of climbers on a journey to the highest point on the planet: Mount Everest (8,848m). The 2026 Expedition offers a fully supported ascent via the classic South Col route in Nepal, combining legendary Sherpa expertise with world-class logistics to help you achieve the dream of a lifetime.\r\n\r\n📅 Expedition Details:\r\n\r\nLocation: Himalayas, Nepal (South Face)\r\n\r\nDuration: 60 Days (Approx.)\r\n\r\nSeason: Spring 2026 (April – May)\r\n\r\nStarting Point: Lukla, Nepal\r\n\r\n✨ The Journey Highlights:\r\n\r\nThe Khumbu Icefall: Navigate the mesmerizing and challenging gateway to Everest.\r\n\r\nHigh Altitude Camps: Experience life in the \"Death Zone,\" moving through Camp 1, 2, 3, and the desolate South Col (Camp 4).\r\n\r\nSummit Push: The final ascent past the Balcony and the South Summit to stand on top of the world.\r\n\r\nExpert Support: 1:1 Climbing Sherpa ratio for summit push, unlimited oxygen supply, and satellite communication support.\r\n\r\n⚠️ Prerequisites:\r\n\r\nExperience: Must have summited at least one 6,000m or 7,000m peak (e.g., Island Peak, Aconcagua, or Himlung).\r\n\r\nFitness: Elite level cardiovascular endurance and technical climbing proficiency (crampons, fixed lines, ice axe).\r\n\r\nMedical: Full medical clearance required.\r\n\r\n🎒 Package Inclusions:\r\n\r\nEverest Climbing Permit ($11,000 Royalty fee included).\r\n\r\nLiaison Officer and Garbage Deposit fees.\r\n\r\nLuxury Base Camp accommodation (Heated dining tents, Wi-Fi).\r\n\r\nHelicopter rescue insurance assistance.\r\n\r\n🎟️ Booking Information: Spaces are strictly limited to ensure safety and personalized guidance. Registration closes: January 2026 Apply now at: karcisin.store\r\n\r\nHistory remembers the brave. Write your legacy in the snows of Sagarmāthā.', 'Wisata', '2026-01-20 06:47:00', 'Nepal', 500000000, 50, 'approved', 'banners/vVOOosuBSIpsttlr3LJt1KaBPdSzJ4PKm2NgzTaV.jpg', 3, '2025-12-03 16:48:20', '2025-12-03 16:56:42'),
(6, '🦁 KILIMANJARO EXPEDITION 2026: The Roof of Africa (Dummy)', '🦁 KILIMANJARO EXPEDITION 2026: The Roof of Africa\r\n\"Walk Above the Clouds. Conquer One of the Seven Summits.\"\r\n\r\nJoin us for the adventure of a lifetime in Tanzania! Mount Kilimanjaro (5,895m) is the highest free-standing mountain in the world and the crown jewel of Africa. This expedition takes you through five distinct climate zones—from lush rainforests to the frozen arctic zone—culminating in a triumphant sunrise at Uhuru Peak.\r\n\r\n📅 Expedition Details:\r\n\r\nLocation: Mount Kilimanjaro National Park, Tanzania\r\n\r\nRoute: Machame Route (\"The Whiskey Route\") or Lemosho Route (High success rate)\r\n\r\nDuration: 8 Days / 7 Nights (Trek only)\r\n\r\nDates: July – August 2026 (Dry Season)\r\n\r\nMax Altitude: 5,895 meters (19,341 ft)\r\n\r\n✨ The Journey Highlights:\r\n\r\nEcological Wonder: Trek through mossy rainforests, traverse the alien-like plants of the moorlands, and cross the lunar landscape of the alpine desert.\r\n\r\nThe Barranco Wall: Experience the thrill of scrambling up the famous \"Breakfast Wall\" (non-technical, just fun!).\r\n\r\nUhuru Peak: Watch the sun rise over the African savannah while standing on the snow-capped summit.\r\n\r\nFull Support Team: Supported by a team of professional local guides, chefs, and the legendary porters of Kilimanjaro.\r\n\r\n🥾 Prerequisites:\r\n\r\nSkill Level: Beginner to Intermediate. No technical climbing skills (ropes/crampons) required. This is a high-altitude trek.\r\n\r\nFitness: Excellent cardiovascular fitness and leg strength. You must be comfortable hiking 6–8 hours a day on steep terrain.\r\n\r\nResilience: Mental toughness to handle high altitude and camping conditions.\r\n\r\n🎒 Package Inclusions:\r\n\r\nAirport transfers in Kilimanjaro (JRO).\r\n\r\nNational Park entry fees & rescue fees.\r\n\r\n3-star hotel accommodation before and after the trek.\r\n\r\nFull board meals on the mountain prepared by private chefs.\r\n\r\nPortable private toilets (luxury camping standard).\r\n\r\n🎟️ Booking Information: Early bird pricing available until December 2025. Secure your slot at: karcisin.store\r\n\r\nHakuna Matata! Let’s climb to the top of Africa together.', 'Wisata', '2026-07-28 06:50:00', 'South Africa', 500000000, 50, 'approved', 'banners/HMGklhkYRJV0DmEYJaSiZUByvoAhs1i9ORbomzJ4.jpg', 3, '2025-12-03 16:51:58', '2025-12-03 16:56:44'),
(7, 'Liverpool VS Manchaster United', '⚽ LIVERPOOL FC vs MANCHESTER UNITED\r\n\"The North West Derby: Pertarungan Harga Diri Inggris\"\r\n\r\nSiapkan diri Anda untuk pertandingan paling bergengsi di kalender Premier League. Ketika The Reds menjamu The Red Devils, ini bukan sekadar sepak bola—ini adalah pertempuran sejarah, kebanggaan, dan dominasi. Rasakan gemuruh Anfield saat 54.000 suporter menyanyikan \"You\'ll Never Walk Alone\" yang akan membuat bulu kuduk berdiri.\r\n\r\n📅 Detail Pertandingan:\r\n\r\nKompetisi: English Premier League (EPL)\r\n\r\nLokasi: Anfield Stadium, Liverpool, UK\r\n\r\nTanggal: 24 March 2026\r\n\r\nKick-off: 20.00\r\n\r\n🎫 Pilihan Kategori Tiket\r\nKami menyediakan berbagai opsi tiket mulai dari tribun suporter fanatik hingga kemewahan VIP:\r\n\r\n1. GENERAL ADMISSION - THE KOP END\r\n(Untuk Pengalaman Atmosfer Terbaik) Masuklah ke jantung pertahanan Liverpool. Tribun \"The Kop\" adalah tempat para suporter paling vokal berada.\r\n\r\nPosisi: Belakang Gawang (Shortside).\r\n\r\nPengalaman: Berdiri dan bernyanyi sepanjang 90 menit. Rasakan intensitas rivalitas secara langsung.\r\n\r\nIncludes: Tiket masuk pertandingan & program digital.\r\n\r\n2. PREMIUM SEATS - MAIN STAND (Longside)\r\n(Untuk Penonton yang Menginginkan Kenyamanan & View Terbaik) Nikmati pertandingan dengan pandangan luas ke seluruh lapangan dari tribun utama yang baru direnovasi.\r\n\r\nPosisi: Sisi Panjang Lapangan (Tengah).\r\n\r\nPengalaman: Kursi lebih nyaman dengan akses ke concourse bar eksklusif (Kios makanan & minuman premium tersedia).\r\n\r\nIncludes: Akses masuk lebih awal (2 jam sebelum kick-off) & akses The Anfield Beat Lounge.\r\n\r\n3. VIP HOSPITALITY - \"THE REDS BAR\"\r\n(Kemewahan Santai) Gabungkan sepak bola kelas dunia dengan pelayanan kelas satu.\r\n\r\nFasilitas:\r\n\r\nAkses ke The Reds Bar sebelum dan sesudah pertandingan.\r\n\r\nMakan malam prasmanan (Buffet) menu internasional.\r\n\r\nMinuman gratis (Bir, Anggur, Soft drink) saat half-time.\r\n\r\nKursi empuk di area lower Sir Kenny Dalglish Stand.\r\n\r\nHadiah eksklusif (Souvenir matchday).\r\n\r\n4. ULTRA VIP - EXECUTIVE BOX (Private)\r\n(Sultan Experience) Privasi total untuk Anda dan rekan bisnis/keluarga.\r\n\r\nFasilitas: Ruangan kaca pribadi (Private Box) yang menghadap langsung ke lapangan, 5-course meal yang disajikan private chef, kunjungan dari legenda klub Liverpool, dan Champagne reception.\r\n\r\n⚠️ PENTING: Tiket untuk fixture ini adalah yang paling cepat habis (Sold Out) di Inggris. Harga pasar sekunder dapat melonjak hingga 300-500% mendekati hari H.\r\n\r\nAmankan kursi Anda sekarang di: karcisin.store\r\n\r\nThis is Anfield. Be part of the history.', 'Olahraga', '2026-03-24 06:55:00', 'Anfield', 15000000, 20, 'approved', 'banners/A1XscSgLTZlb8EcM1Q2lFRDa9p2KTUOl2A8CjGwJ.jpg', 3, '2025-12-03 16:55:56', '2025-12-03 16:56:47'),
(8, 'From Zero World Tour 2025 Linkin Park Concert Jakarta (Dummy)', '🛡️ LINKIN PARK: From Zero World Tour 2025 – Live in Jakarta\r\n\"A New Era Begins. The Heavy Crown Returns to Jakarta.\"\r\n\r\nSetelah penantian panjang selama 14 tahun, legenda nu-metal dunia akhirnya kembali! Jakarta terpilih menjadi satu-satunya pemberhentian di Asia Tenggara untuk fase awal tur monumental ini. Saksikan sejarah tercipta saat Mike Shinoda, Joe Hahn, Dave Farrell, bersama vokalis baru Emily Armstrong dan drummer Colin Brittain, membakar semangat ribuan fans di Stadion Madya.\r\n\r\nIni bukan sekadar reuni, ini adalah kelahiran kembali. Dari hybrid theory menuju zero point, bersiaplah untuk malam yang penuh distorsi emosional.\r\n\r\n📅 Detail Acara:\r\n\r\nLokasi: Stadion Madya, Gelora Bung Karno (GBK), Jakarta\r\n\r\nTanggal: 16 Februari 2026\r\n\r\nWaktu: Open Gate 17.00 WIB | Show Starts 20.00 WIB\r\n\r\n🔥 Highlight Pertunjukan:\r\n\r\nThe New Voice: Saksikan debut memukau Emily Armstrong yang membawakan scream ikonik Chester dengan karakternya sendiri yang powerful.\r\n\r\nSetlist Lintas Generasi: Paduan epik antara materi baru dari album From Zero (seperti \"The Emptiness Machine\" dan \"Heavy Is The Crown\") dengan anthems abadi seperti \"Numb\", \"In The End\", dan \"Faint\".\r\n\r\nHigh-Octane Production: Tata panggung futuristik yang merepresentasikan tema \"From Zero\"—memulai kembali dari nol dengan energi tanpa batas.\r\n\r\n🎟️ Informasi Tiket: Tiket sangat terbatas karena kapasitas Stadion Madya yang lebih intim dibanding stadion utama.\r\n\r\nKategori: Tersedia mulai dari Festival Standing (untuk mosh pit experience) hingga Tribune Seating.\r\n\r\nPromotor: PK Entertainment & Live Nation Indonesia.\r\n\r\nBeli di: karscisin.store\r\n\r\nIt’s not just a concert. It’s a catharsis. Don\'t miss the return of the kings.', 'Konser', '2026-02-16 07:00:00', 'GBK', 1000000, 15000, 'approved', 'banners/myh0qjmnz2uMunL8edhAxndvc13tfpx4VzLPXcSC.jpg', 3, '2025-12-03 17:01:48', '2025-12-03 17:07:31'),
(9, '🚀 GALACTIC VOYAGE: Civilian Spaceflight Program (Dummy)', '🚀 GALACTIC VOYAGE: Civilian Spaceflight Program\r\n\"Bumi Hanyalah Permulaan. Jadilah Bagian dari Sejarah.\"\r\n\r\nPintu menuju bintang kini terbuka. Kami mengundang segelintir individu terpilih untuk bergabung dalam manifesto penerbangan antariksa periode 2026-2027. Ini bukan sekadar liburan; ini adalah transformasi diri dengan melihat lengkungan Bumi dari kegelapan abadi luar angkasa.\r\n\r\n🌌 Pilihan Misi:\r\n\r\nSub-Orbital Experience (Tepi Luar Angkasa)\r\n\r\nDurasi: 90 Menit (Total), 4-6 Menit Nirgravitasi (Zero-G).\r\n\r\nKetinggian: >100 km (Melewati Garis Kármán).\r\n\r\nPengalaman: Merasakan sensasi melayang tanpa bobot dan melihat Bumi sebagai bola biru utuh melawan hitamnya semesta.\r\n\r\nOrbital Expedition (Stasiun Luar Angkasa/ISS)\r\n\r\nDurasi: 8 - 10 Hari.\r\n\r\nKetinggian: 400 km (Orbit Rendah Bumi).\r\n\r\nPengalaman: Hidup sebagai astronaut penuh, mengelilingi Bumi setiap 90 menit sekali (melihat 16x matahari terbit/terbenam sehari).\r\n\r\n📋 Tahapan Pendaftaran & Seleksi (The Roadmap)\r\nKarena risiko tinggi dan tuntutan fisik yang ekstrem, pendaftaran dilakukan melalui 4 tahap ketat:\r\n\r\nTahap 1: Reservasi & Deposit (Securing the Seat)\r\n\r\nCalon \"Future Astronaut\" mengisi formulir Know Your Customer (KYC) dan profil kekayaan.\r\n\r\nPembayaran deposit yang dapat dikembalikan (refundable) sebesar $150,000 (Rp 2,3 Miliar) untuk masuk dalam daftar antrean prioritas.\r\n\r\nTahap 2: Medical & Psychological Screening\r\n\r\nPemeriksaan medis menyeluruh oleh dokter penerbangan bersertifikat (jantung, paru-paru, kepadatan tulang).\r\n\r\nTes psikologi untuk memastikan stabilitas mental dalam ruang tertutup sempit (isolasi) dan situasi tekanan tinggi.\r\n\r\nTahap 3: Astronaut Training Program\r\n\r\nPeserta yang lolos medis wajib mengikuti pelatihan intensif di Spaceport (New Mexico atau Florida).\r\n\r\nMateri:\r\n\r\nHigh-G Centrifuge Training (Simulasi tekanan gravitasi saat peluncuran: 3G - 6G).\r\n\r\nZero-G Flight (Simulasi melayang di pesawat parabola).\r\n\r\nProsedur darurat dan penggunaan baju astronaut (Flight Suit).\r\n\r\nTahap 4: Mission Briefing & Launch\r\n\r\nFinalisasi kru, penyesuaian kursi kustom (custom-molded seats), dan karantina pra-penerbangan 3 hari sebelum peluncuran.\r\n\r\n⚠️ Syarat & Ketentuan Dasar\r\nUsia: Minimal 18 tahun (Dispensasi khusus mungkin berlaku dengan pendampingan).\r\n\r\nTinggi/Berat: Proporsional (Tinggi maks 195 cm, Berat maks 110 kg demi keamanan kursi pelontar/kapsul).\r\n\r\nKondisi Fisik: Tidak memiliki riwayat penyakit jantung serius, epilepsi, atau implan logam yang mengganggu tekanan.\r\n\r\n💰 Estimasi Investasi\r\nSub-Orbital (Virgin Galactic / Blue Origin): Mulai dari $450,000 (Rp 7 Miliar) per kursi.\r\n\r\nOrbital (SpaceX / Axiom Space): Mulai dari $55,000,000 (Rp 850 Miliar) per kursi (All-inclusive).\r\n\r\n🔗 APPLY NOW: Slot untuk jendela peluncuran 2026 tersisa kurang dari 5 kursi. Kunjungi: karcisin.store\r\n\r\nLook up. That is where you belong.', 'Wisata', '2025-12-27 07:04:00', 'Florida', 1000000000, 2, 'approved', 'banners/fxtAD7p8IUCgkIx59gb0dFfDlGysYUVG6Xtfyhvf.jpg', 3, '2025-12-03 17:04:57', '2025-12-03 20:47:26'),
(10, '☢️ CHERNOBYL: The Exclusion Zone Expedition 2026', '☢️ CHERNOBYL: The Exclusion Zone Expedition 2026\r\n\"Sebuah Monumen Kesunyian. Kapsul Waktu dari Tahun 1986.\"\r\n\r\nMasuklah ke tempat di mana waktu berhenti. Kami membuka slot terbatas untuk ekspedisi ke Zona Eksklusi Chernobyl (30km Zone). Ini bukan sekadar wisata; ini adalah pelajaran sejarah tentang kesombongan manusia dan kekuatan alam yang mengambil alih kembali miliknya. Saksikan sisa-sisa Uni Soviet yang membeku, kota hantu Pripyat, dan sarkofagus raksasa yang menutupi Reaktor 4.\r\n\r\n📅 Detail Ekspedisi:\r\n\r\nTitik Kumpul: Kyiv, Ukraina.\r\n\r\nDurasi: 2 Hari 1 Malam (Menginap di hotel khusus dalam zona aman Chernobyl Town) atau Day Trip.\r\n\r\nTingkat Bahaya: Menengah (Radiasi terkontrol).\r\n\r\n🗺️ Rute & Zona Akses:\r\n\r\nPripyat Ghost City: Berjalan di antara gedung-gedung kosong yang ditinggalkan 50.000 penduduknya dalam semalam. Lihat kincir ria (Ferris Wheel) kuning yang ikonik dan tak pernah berputar.\r\n\r\nThe New Safe Confinement (NSC): Berdiri (pada jarak aman) di depan kubah baja raksasa yang menutupi puing radioaktif Reaktor Nomor 4.\r\n\r\nDuga-1 Radar System: Melihat \"The Russian Woodpecker\", struktur radar rahasia militer Soviet raksasa yang tersembunyi di dalam hutan.\r\n\r\nRed Forest (Drive-through only): Melintasi salah satu area paling radioaktif di dunia dengan bus berlapis timbal (tanpa berhenti).\r\n\r\n⚠️ Syarat & Protokol Pendaftaran (STRICT)\r\nPendaftaran diawasi ketat oleh State Agency of Ukraine on Exclusion Zone Management. Pelanggaran aturan akan berakibat deportasi instan dan denda berat.\r\n\r\n1. Verifikasi Keamanan:\r\n\r\nWajib menyerahkan paspor asli (berlaku min. 6 bulan) untuk proses clearance militer 14 hari sebelum keberangkatan.\r\n\r\nUsia minimal 18 tahun (Tidak ada pengecualian).\r\n\r\n2. Aturan Berpakaian (Dress Code):\r\n\r\nWajib: Lengan panjang, celana panjang tebal, sepatu bot tertutup (hindari bahan kain berpori besar).\r\n\r\nDilarang: Celana pendek, rok, sandal, kaos terbuka. Kulit tidak boleh terpapar udara langsung sebisa mungkin.\r\n\r\n3. Protokol Radiasi:\r\n\r\nSetiap peserta wajib mengenakan Personal Geiger Counter (Dosimeter) yang disediakan panitia sepanjang waktu.\r\n\r\nJANGAN SENTUH APAPUN. Dilarang duduk di tanah, meletakkan tas di tanah, merokok di area terbuka, atau memakan buah/tanaman di dalam zona.\r\n\r\nWajib melewati pemindaian radiasi tubuh (full body scan) di pos pemeriksaan Dytyatky saat keluar zona. Jika sepatu/baju Anda terkontaminasi, Anda wajib meninggalkannya di sana.\r\n\r\n📝 Dokumen Pendaftaran:\r\n\r\nFormulir Pembebasan Tanggung Jawab (Liability Waiver).\r\n\r\nAsuransi perjalanan khusus yang mencakup evakuasi medis darurat.\r\n\r\n💰 Biaya Ekspedisi: Mulai dari $450 (Rp 7 Juta) per orang (Termasuk izin militer, sewa dosimeter, pemandu berlisensi, dan transportasi khusus).\r\n\r\n🔗 REGISTRASI: Akses terbatas hanya untuk 15 orang per grup. Daftar di: [Masukkan Link Agen Resmi]\r\n\r\nDatanglah sebagai saksi. Pulanglah tanpa membawa apa pun selain foto dan kenangan.', 'Wisata', '2026-05-23 07:06:00', 'Jakart', 500000000, 50, 'approved', 'banners/FS2PoPLJ5vU0u88jixk4MH8kEHkk73X9WlwE2Req.jpg', 3, '2025-12-03 17:07:10', '2025-12-03 20:44:01'),
(11, 'Bird Spotting', 'Komunitas pecinta burung', 'Lainnya', '2025-12-06 09:28:00', 'IPB Cilibende', 0, 44, 'approved', 'banners/s5xjCC2784BgNkji342Wi0VBTqTO8EgUpxmJjRbb.webp', 8, '2025-12-03 19:30:21', '2025-12-03 20:42:36'),
(12, 'Portal 8', 'eja ketuplak lagi', 'Seminar', '2026-02-07 10:42:00', 'GWW', 50000, 1000, 'approved', 'banners/3m0ZcEViBWLRdm5A5lE0k4AVPSNhuEQfaMZQHPr2.jpg', 3, '2025-12-03 20:43:06', '2025-12-03 20:43:57'),
(13, 'event', 'seminar', 'Seminar', '2025-12-26 12:49:00', 'gedung A', 1000000, 800, 'pending', 'banners/mM9yW6pQpOn7EoJgkRXBNwah9pvjdlKTrHbf8u8D.jpg', 13, '2025-12-03 20:49:36', '2025-12-03 20:49:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
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
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('05J1gUBanGXuzWAGTQummaOeGK04MrPdXUfWD0S4', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36 EdgA/142.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTkFEM2tLRWZQSjdNU0twT2theTNzQWJZVlFndE9DUlE2aXFYMnFNQiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9rYXJjaXNpbi5zdG9yZS9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6Mzk6Imh0dHA6Ly9rYXJjaXNpbi5zdG9yZS9ldmVudC8xMi9jaGVja291dCI7fX0=', 1764823363),
('1R6zzLYdHvPyQZ9qr7PbAaK3iInWMFyfK0Z7un0u', 9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidEdTYmZWM1JzS2ZRWjZKb2h2aVBacFBSdDF3TTliNUtjekhKcTg2WCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9rYXJjaXNpbi5zdG9yZS9teS10aWNrZXRzIjtzOjU6InJvdXRlIjtzOjEwOiJteS50aWNrZXRzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cDovL2thcmNpc2luLnN0b3JlL2V2ZW50LzExL2NoZWNrb3V0Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6OTt9', 1764818335),
('46tH7E3JxnY6ELBw6Ajs1rbDlUiMC1WF8nSMIe02', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibnNTVkJWTEZnd1pHZEZCT0RhUnhnWDhUSmN0dlMyS2F4Rk5wVmdqZCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9rYXJjaXNpbi5zdG9yZSI7czo1OiJyb3V0ZSI7czo3OiJ3ZWxjb21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1764815029),
('6O3nQz7UfB1RuH0ZvOTd2SBJL784DlJlD9pvZI5W', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/138.0.7204.23 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEVGNU1iUDB4VjlPY3Z2dE1sT2F0WnN3NkNsUkRjWWlxWWc1Wk5CZSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9rYXJjaXNpbi5zdG9yZSI7czo1OiJyb3V0ZSI7czo3OiJ3ZWxjb21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1764823874),
('9mGlzCwWuz7oNReWGHwDlLQxVkX69MYpJRnRNLbA', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieEQ2QU13NFBVeE1LUWR6SmhoQ3ZMZHhpRXROZmdieG8xcDU4V3p1NSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9rYXJjaXNpbi5zdG9yZS9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6Mzk6Imh0dHA6Ly9rYXJjaXNpbi5zdG9yZS9ldmVudC8xMS9jaGVja291dCI7fX0=', 1764819812),
('ajQAppno0BBwM5ftyr5300YkrlTwLLK2rZvKr9zk', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0NrMWxMbG52Y3VxV1hwUloxeGZERXc5OXl0TTZ1WG5oOXVWMFdYcCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9rYXJjaXNpbi5zdG9yZSI7czo1OiJyb3V0ZSI7czo3OiJ3ZWxjb21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1764819552),
('cw3u7HBRlMymwLke2ukKeANxWV020SXA6022FdhW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2JWajkxQ3kyRGV4MjF6cnMzYTR5T3FXYUFRQUlLQW5jMFJHQzBGYiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9rYXJjaXNpbi5zdG9yZSI7czo1OiJyb3V0ZSI7czo3OiJ3ZWxjb21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1764818597),
('D5zyY5XjRlg9JcukkKIdVQFT0relJMkNVoR1MTco', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2NLV3pCVGh6VVhJamUwZXJaQmo5RHZnQTQwaTdtaGk2eTh4c0F1UyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9rYXJjaXNpbi5zdG9yZSI7czo1OiJyb3V0ZSI7czo3OiJ3ZWxjb21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1764821711),
('g5cV5FYWFutfZJ3keSE0g9RHEGQzTVrdAPNYF0bD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnQ0OGNhOHdvdjlBSVhWT1VGRkJDYm5Ub1QydGhTOWZnVDZJdGpCUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9rYXJjaXNpbi5zdG9yZSI7czo1OiJyb3V0ZSI7czo3OiJ3ZWxjb21lIjt9fQ==', 1764823318),
('HO3HQaGUFZXZBmuZI6cdAqK4gkZwH6R7mcZLVjA6', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSW5LeU9ra2dBcVEwekZEb3hDNHVKZUJMeklaUFBOaHhhQ3pYN21hSCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9rYXJjaXNpbi5zdG9yZSI7czo1OiJyb3V0ZSI7czo3OiJ3ZWxjb21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1764824126),
('jeYEags0ASZbMy8A3ViCVkp85zDPwHPLZeJLSwv1', 13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZVlKV3g3bDdvOHJrVnREcW4wcXVIb0VYVEc1V2NyeGpVVEQzQXRsUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9rYXJjaXNpbi5zdG9yZSI7czo1OiJyb3V0ZSI7czo3OiJ3ZWxjb21lIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTM7fQ==', 1764823525),
('KsUKMULGl0kuM2X2ggS9gEp0jUIQXHdc6EjoFjVu', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY3E4QThTSnhYZUM3ZzVaNjhHckszRnVPOHdKSzM3aXcyZkFoakowMyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9rYXJjaXNpbi5zdG9yZSI7czo1OiJyb3V0ZSI7czo3OiJ3ZWxjb21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1764821243),
('kZD305GlxxgDVV1R2YyuQIts8ndOj5aZAvE0sE2O', NULL, '127.0.0.1', 'Mozilla/5.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnBOamc0MDJlUFRTWmpMTlVKMklSTnlsdXZmWTllVmJaM1ZjSEFFeSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9rYXJjaXNpbi5zdG9yZSI7czo1OiJyb3V0ZSI7czo3OiJ3ZWxjb21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1764823530),
('oCjBwk3A4PWttL03ag1GsXO94o3WZQBl1HfLgbP2', NULL, '127.0.0.1', 'Mozilla/5.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibjNQUmJ3dklOZXl3V2dhNzhUQnhrY25zRHdVTHJSOVZDR21qVEpONyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9rYXJjaXNpbi5zdG9yZSI7czo1OiJyb3V0ZSI7czo3OiJ3ZWxjb21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1764816181),
('p4x6pR2Ul9Mo3hEYWIWHXa6g2XsTAjuqYoHoKZXi', NULL, '127.0.0.1', 'okhttp/5.3.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkRPTDZWMFNrTGxPbWNieXlaWkRpYmZnZExHQnVyY2NDSWtRRWxUTiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9rYXJjaXNpbi5zdG9yZSI7czo1OiJyb3V0ZSI7czo3OiJ3ZWxjb21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1764823845),
('pu3NJ1q46BnXu2Lbs9rM8qzxngOcVR3yF4GQOFGV', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGU4MFZpV3J4Y0VxSEdMOG0xcTBEMTVUY2VUY3RzUEV6enJtb3BzTyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9rYXJjaXNpbi5zdG9yZS9ldmVudC9kZXRhaWwvMSI7czo1OiJyb3V0ZSI7czoxNzoicHVibGljLmV2ZW50LnNob3ciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1764819705),
('qf4JCnFa6qSutxgfZVlz47O1pvFcB9GRmpn1qQbK', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiYkF1N0xGZ1NYMThWd2hSQUhlTTFDcjNtSWxIbEtlT0tLcktGM0w5ViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9rYXJjaXNpbi5zdG9yZS9ldmVudC8xMS9tYW5hZ2UiO3M6NToicm91dGUiO3M6MTA6ImV2ZW50LnNob3ciO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo4O3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTc2NDgyMTM4Nzt9fQ==', 1764821418),
('SvsX6gp63834c7O7dV22s8a5TnlXoJdexLdOkUwO', 14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRndYVHk1OVkwbUVkOVFjN0E2UUZIbzRyM1F1R2ppVjBQUDhwajRnNiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly9rYXJjaXNpbi5zdG9yZS9ldmVudC8yL2NoZWNrb3V0IjtzOjU6InJvdXRlIjtzOjE0OiJldmVudC5jaGVja291dCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE0O30=', 1764824151),
('TmWqHtsSFQxkjUhsHcjqgAGL4ll5V6KvvqO3eO8D', NULL, '127.0.0.1', 'Mozilla/5.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiekgxeVo5M1RHbWVxQWc1V3NGNVZyVzBUaDJ3b0JvUDhGNmxDMmd2MSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9rYXJjaXNpbi5zdG9yZSI7czo1OiJyb3V0ZSI7czo3OiJ3ZWxjb21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1764820626),
('TXeIixdLGFfREsVWNCY4z8octDiru0IXQ2RTIcgZ', 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib0plMWN2SEVNZHMwUVFqT1c2bGNSMVpQUU5xQXlUbEt6V1RHV1ZCSiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9rYXJjaXNpbi5zdG9yZS9teS10aWNrZXRzIjtzOjU6InJvdXRlIjtzOjEwOiJteS50aWNrZXRzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTI7fQ==', 1764820141),
('U3Wy8OjbxomaO6OMBbfbkVib0Wj7hQasCW6JztvD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/120.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUJCeTFRT0FMSDVXck1JWktXTEhxZGR3eG5hTnlaem1KZHFzdkV2QSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9rYXJjaXNpbi5zdG9yZSI7czo1OiJyb3V0ZSI7czo3OiJ3ZWxjb21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1764822318),
('xRV88jmSEBsf0NQDtBL4l6BfHsxfINe1unlwE6Mh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaVBBOHdUN0NhQUE5VWYzbThvZEpBY0lvVVFDS2VRVktRbzkwd0JDViI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNDoiaHR0cDovL2thcmNpc2luLnN0b3JlL2V2ZW50L2NyZWF0ZSI7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8va2FyY2lzaW4uc3RvcmUvbG9naW4iO3M6NToicm91dGUiO3M6NToibG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1764820120),
('yrfuDp10fy47sISL5Oti28p9OPNc324GHIIL5Xou', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUEZwbXdjSEF2WkZSbWcxeXZyVXppOUdvUmtReWViUHJXb1JjZkxRTiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9rYXJjaXNpbi5zdG9yZSI7czo1OiJyb3V0ZSI7czo3OiJ3ZWxjb21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1764819555);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `unique_code` varchar(255) NOT NULL,
  `is_checked_in` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `transaction_id`, `unique_code`, `is_checked_in`, `created_at`, `updated_at`) VALUES
(1, 1, 'TIKET-QMZNBNPAJD', 1, '2025-12-03 05:00:56', '2025-12-03 05:03:25'),
(2, 2, 'TIKET-BSQ420EZIY', 0, '2025-12-03 05:01:13', '2025-12-03 05:01:13'),
(3, 5, 'TIKET-42C5U47KRY', 0, '2025-12-03 18:49:14', '2025-12-03 18:49:14'),
(4, 6, 'TIKET-ATYMQRLJ71', 1, '2025-12-03 19:33:56', '2025-12-03 19:45:58'),
(5, 6, 'TIKET-HE0I5E0LDU', 1, '2025-12-03 19:33:56', '2025-12-03 19:46:06'),
(6, 6, 'TIKET-WB7WXCFK7I', 1, '2025-12-03 19:33:56', '2025-12-03 19:42:34'),
(7, 6, 'TIKET-T0RXRVPXQC', 1, '2025-12-03 19:33:56', '2025-12-03 19:45:36'),
(8, 6, 'TIKET-VMAXANWB5J', 1, '2025-12-03 19:33:56', '2025-12-03 19:45:48'),
(9, 9, 'TIKET-0AQQ6MLGAE', 1, '2025-12-03 20:48:00', '2025-12-03 21:06:09'),
(10, 7, 'TIKET-K8J0KZUED2', 0, '2025-12-03 21:10:03', '2025-12-03 21:10:03');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `status` enum('pending','paid','rejected') NOT NULL DEFAULT 'pending',
  `payment_proof` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_nik` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `event_id`, `quantity`, `total_price`, `status`, `payment_proof`, `customer_name`, `customer_email`, `customer_phone`, `customer_nik`, `bank_name`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 1500000, 'paid', 'payments/HPf7hwLN9LCpp54aQ1GQ3Mfsdd1XTMZaXkmPLPgC.jpg', 'John Goy', 'muhammadal@apps.ipb.ac.id', '080000000000', '0000000000000000', 'Lainnya', '2025-12-03 05:00:38', '2025-12-03 05:00:56'),
(2, 2, 1, 1, 1500000, 'paid', 'payments/mrWAQXu1iRJbdfpQC2uVIGStNzegqOZxNSA4DlG3.jpg', 'John Goy', 'muhammadal@apps.ipb.ac.id', '080000000000', '0000000000000000', 'Lainnya', '2025-12-03 05:00:48', '2025-12-03 05:01:13'),
(3, 2, 1, 1, 1500000, 'pending', 'payments/7dMvR3ViYYBte0pyex9AlJmViyEb3c5mGGI1uP6p.jpg', 'John Goy', 'muhammadal@apps.ipb.ac.id', '080000000000', '0000000000000000', 'Lainnya', '2025-12-03 05:01:21', '2025-12-03 05:01:21'),
(4, 4, 1, 1, 1500000, 'pending', 'payments/An8rOqge1DWVFL1jDrbAuW42l113b2HyVRtFRBLe.jpg', 'Aisha Aulia', 'aishaaulia20@gmail.com', '089675488712', '317900678544678', 'Mandiri', '2025-12-03 06:23:22', '2025-12-03 06:23:22'),
(5, 7, 2, 1, 1500000, 'paid', 'payments/M4MuOYushy21aNPa6ubQJeeRMF7P1q2TrvUTkFAL.jpg', 'Aisha', 'aishaaulia20@gmai.com', '081122334455', '3170000000000000', 'Mandiri', '2025-12-03 18:34:28', '2025-12-03 18:49:13'),
(6, 9, 11, 5, 0, 'paid', 'payments/1uVen7ixYgOSdlSbH2ig1wgQO0v3pjs9j3rtyvQS.jpg', 'p', 'p@p.com', '000000000000', '0000000000000000', 'Lainnya', '2025-12-03 19:33:37', '2025-12-03 19:33:56'),
(7, 11, 11, 1, 0, 'paid', 'payments/cAhoYtSrVAyb3lRrd69vO16XHWe2Msl6gM7LqN35.jpg', 'TEST', 'test@gmail.com', '087238283283', '929329329329', 'BRI', '2025-12-03 20:42:36', '2025-12-03 21:10:03'),
(8, 11, 9, 1, 1000000000, 'pending', 'payments/ehwT7UNjUT4BIdowNTZvG6Dk4u55OKH97ZRgO86J.jpg', 'TEST', 'test@gmail.com', '0872382837', '8384838484', 'Dana/Gopay/OVO', '2025-12-03 20:43:09', '2025-12-03 20:43:09'),
(9, 12, 9, 1, 1000000000, 'paid', 'payments/4zzDitBfys2LFGYz6pZ8mwyqlxdx3xU38GSNt7ON.jpg', 'gana', '24ganabitz@apps.ipb.ac.id', '081380731465', '3203282402050004', 'BCA', '2025-12-03 20:47:26', '2025-12-03 20:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','creator','user') NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `nik`, `address`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Muhamad Ganabitz Dzikri', 'ganadzikri@gmail.com', '081380731465', '3203282403050004', 'KP Parabon RT 02/03 Desa Ciloto Kec. Cipanas Kabupaten Cianjur, Jawa Barat Indonesia\r\nJl. Raya Pajajaran, Kota Bogor, Jawa Barat 16128', NULL, '$2y$12$J0nml9oEfalghWLC8EzM3O2Io4DexfHA5RBiUSA.2heDYMwKcWHUC', 'creator', NULL, '2025-12-03 04:50:55', '2025-12-03 04:50:55'),
(2, 'John Goy', 'muhammadal@apps.ipb.ac.id', NULL, NULL, NULL, NULL, '$2y$12$QdrQk7I7fX2kY4Tm5QxHL.hx.LRQeiLCF1ZvtOdDN.NtxZLizxfsu', 'user', NULL, '2025-12-03 04:51:39', '2025-12-03 04:51:39'),
(3, 'Gans', 'gansdzikri11@gmail.com', '081380731465', '3203282403050004', 'KP Parabon RT 02/03 Desa Ciloto Kec. Cipanas Kabupaten Cianjur, Jawa Barat Indonesia', NULL, '$2y$12$dWrTFk2kEPQRD9H88dP0aOnGJuojO7iYahKClzg/vCsxW1vJ4PIKS', 'creator', NULL, '2025-12-03 04:52:48', '2025-12-03 04:52:48'),
(4, 'Aisha Aulia', 'aishaaulia20@gmail.com', NULL, NULL, NULL, NULL, '$2y$12$IPLfyKmSNg4Jfy3Utb16gusX41DRfZ5baqAQRQsZcVskPqJMGZ29m', 'user', NULL, '2025-12-03 06:18:33', '2025-12-03 06:18:33'),
(5, 'Aisha Aulia', 'aishaulia00@gmail.com', '081365789901', '3178069486003883', 'jl. kenanga 5, blok g1/8', NULL, '$2y$12$2ZxcpXjXV8OCWOlUUkzWGuojWgRJkQtyCuie8y2u8ek8/xtYq15PW', 'creator', NULL, '2025-12-03 06:35:40', '2025-12-03 06:35:40'),
(6, 'Muhammad Fauzia', 'fauziamuhammad@apps.ipb.ac.id', NULL, NULL, NULL, NULL, '$2y$12$p8QV9CeaA13FmTqgUbpbrOnzbdPRAWp3dvkbv2KmSmsAMmOm0Jh0.', 'user', NULL, '2025-12-03 18:12:46', '2025-12-03 18:12:46'),
(7, 'Aisha', 'aishaaulia20@gmai.com', NULL, NULL, NULL, NULL, '$2y$12$usNMEeOHXPYNDFIzHIF3TOV8DtyjYTu3q/LB8AD.vASyWltTqiPbe', 'user', NULL, '2025-12-03 18:33:00', '2025-12-03 18:33:00'),
(8, 'Jud', 'rafiyuda2005@gmail.com', '080000000000', '0000000000000000', '0000000000', NULL, '$2y$12$E4sf/qq8nBDa4RC8EcYSIuTz62QMUCp4GPVzkEMVAtP9rmpFD1FWa', 'creator', NULL, '2025-12-03 19:27:36', '2025-12-03 19:27:36'),
(9, 'p', 'p@p.com', NULL, NULL, NULL, NULL, '$2y$12$g4Z5nWO8n07m1nTSq6UkeuEGtQHGrkByywGw1GraYOOFRt3956v/W', 'user', NULL, '2025-12-03 19:32:59', '2025-12-03 19:32:59'),
(10, 'faqih', 'faqihganteng@gmail.com', NULL, NULL, NULL, NULL, '$2y$12$Q1mOYpIuX8DH5ErQDq9maOMpLx.YBbhHvkzMHMr.tpLXII1V0fMIK', 'user', NULL, '2025-12-03 20:40:24', '2025-12-03 20:40:24'),
(11, 'TEST', 'test@gmail.com', NULL, NULL, NULL, NULL, '$2y$12$vhtyMB1kFJTj4tlAMzUse.T9OYmXEYzmtBPQCVw3kmxz2aUqlhG.m', 'user', NULL, '2025-12-03 20:41:59', '2025-12-03 20:41:59'),
(12, 'gana', '24ganabitz@apps.ipb.ac.id', NULL, NULL, NULL, NULL, '$2y$12$s9I3FS0HE4yLhPa.WQ8ZbuoiDvMGdvOVYjT1OFcEyG/bOsTvS/2T6', 'user', NULL, '2025-12-03 20:45:40', '2025-12-03 20:45:40'),
(13, 'testtt', 'test4@gmail.com', '087348384889', '1277777287222222', 'jl baru jaya oke', NULL, '$2y$12$Atjke56FCKsEM2FokSHbqeLP2kDuxyTInJFeD6LOUE8GKCYkF4DA2', 'creator', NULL, '2025-12-03 20:46:10', '2025-12-03 20:46:10'),
(14, 'One of Haters Pakih', 'lovepakih@gmail.com', NULL, NULL, NULL, NULL, '$2y$12$Roi4KNsNhBXu4AQop3yKF.AylOA1RVE1jFVvoPYaLHfXVmjl/ULSe', 'user', NULL, '2025-12-03 21:55:42', '2025-12-03 21:55:42');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
