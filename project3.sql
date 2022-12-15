-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Des 2022 pada 15.01
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project3`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'nazmah', 'wulan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categorys`
--

CREATE TABLE `categorys` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `categorys`
--

INSERT INTO `categorys` (`id`, `name`) VALUES
(1, 'sepakbola'),
(2, 'trending'),
(3, 'kesehatan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `image` varchar(100) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id`, `category_id`, `title`, `date`, `time`, `image`, `content`) VALUES
(1, 1, 'Rehat Singkat Dulu, Ini Adalah Jadwal Semifinal Piala Dunia 2022', '2022-12-19', '19:03:30', '472-gambar7.jpg', 'Jakarta - Piala Dunia 2022 memasuki rehat singkat sebelum digelarnya babak semifinal. Berikut ini jadwal pertandingan empat besar selengkapnya! Empat tim sudah memastikan tiket ke semifinal Piala Dunia 2022. Keempatnya antara lain Kroasia, Argentina, Maroko, dan Prancis.  Kroasia lolos usai menumbangkan tim unggulan Brasil lewat drama adu penalti. Proses serupa turut dilalui Argentina yang mendepak Belanda di perempatfinal. Maroko melaju dengan menyingkirkan Portugal, sekaligus mengubur mimpi Cristiano Ronaldo menjadi juara Piala Dunia. Prancis ke semifinal usai menaklukkan Inggris.  Pada babak semifinal Piala Dunia 2022, Kroasia dipertemukan dengan Argentina. Maroko dan Prancis bakal beradu tiket ke babak final.  Argentina vs Kroasia menjadi laga semifinal yang digelar pertama. Duel berlangsung di Lusail Stadium, Rabu (14/12/2022) pukul 2.00 dini hari WIB.  Prancis vs Maroko digelar satu hari berikutnya. Stadion Al Bayt menjadi arena pertarungan yang dimulai pukul 2.00\r\n\r\n\r\n\r\n\r\nPemenang fase ini akan memperebutkan titel juara di partai pamungkas, Minggu (18/12) malam WIB. Tim yang kalah beradu tempat ketiga, Sabtu (17/12) malam WIB.\r\n\r\n\r\n\r\nJadwal Semifinal Piala Dunia 2022\r\nRabu (14/12)\r\nArgentina vs Kroasia\r\nPukul 2.00 WIB\r\n\r\n\r\n\r\nKamis (15/12)\r\nPrancis vs Maroko\r\nPukul 2.00 WIB.\r\n\r\n'),
(2, 1, 'Semifinal Piala Dunia 2022, Lionel Messi Menuju 2 Rekor Langka', '2022-07-29', '19:03:30', '854-messi.png', 'Kapten timnas Argentina, Lionel Messi, berpotensi mengukir dua rekor langka ketika menghadapi Kroasia pada semifinal Piala Dunia 2022 Qatar.Pertandingan Argentina vs Kroasia akan dihelat di Lusail Stadium, Kota Doha, Qatar, pada Rabu (14/12/2022) dini hari WIB.Jika bermain pada laga Argentina vs Kroasia, Lionel Messi akan menyamai rekor legenda timnas Jerman, Lothar Matthaus, perihal jumlah penampilan Piala Dunia.\r\n\r\nLothar Matthaus sampai saat ini masih tercatat sebagai pemain dengan jumlah penampilan terbanyak dalam sejarah Piala Dunia dengan koleksi 25 pertandingan. Di lain sisi, Messi sudah melakoni 24 pertandingan Piala Dunia bersama timnas Argentina.\r\n\r\nTerlepas dari hasil laga Argentina vs Kroasia nanti, Lionel Messi hampir dipastikan akan mengalahkan rekor Lothar Matthaus jika tidak cedera. Sebab, Messi yang kini berusia 35 tahun memiliki kesempatan tampil dua pertandingan lagi pada Piala Dunia 2022 Qatar. Selain semifinal, peraih tujuh trofi Ballon d\'Or itu juga berpeluang bermain pada laga perebutan tempat ketiga atau final Piala Dunia 2022. Rekor lain yang juga berpotensi pecah atas nama Lionel Messi adalah top skor timnas Argentina di Piala Dunia. La Pulga, julukan Messi, kini hanya membutuhkan satu gol lagi untuk mengambil alih mahkota top skor timnas Argentina di Piala Dunia dari tangan Gabriel Batistuta. Baca juga: Messi, Modric, Mbappe, atau Hakimi yang Akan Angkat Trofi Piala Dunia 2022? Sebab, Messi sudah menyamai rekor 10 gol Piala Dunia milik Batistuta yang bertahan selama 20 tahun sejak 2002. Manusia rekor mungkin adalah kalimat yang tepat untuk menggambarkan penampilan Lionel Messi sejak fase grup hingga perempat final Piala Dunia 2022 Qatar. Bintang milik Paris Saint-Germain itu sebelumnya sudah mengukir rekor pemain timnas Argentina pertama yang mampu bermain pada lima edisi Piala Dunia berbeda. Striker kelahiran Kota Rosario itu sukses mengalahkan rekor empat Piala Dunia milik dua legenda timnas Argentina, yakni Diego Maradona dan Javier Mascherano. Messi juga mengalahkan jumlah pertandingan Piala Dunia milik Diego Maradona (21 laga) dan Javier Mascherano (20). Baca juga: Semifinal Piala Dunia 2022 Argentina Vs Kroasia, Modric Tahu Cara Hentikan Messi Dengan demikian, Messi kini sudah tercatat sebagai pemain Argentina dengan jumlah pertandingan terbanyak dalam sejarah Piala Dunia. Rekor Messi semakin terlihat spesial karena dia juga menjadi pemain termuda yang mampu tampil pada lima edisi Piala Dunia berbeda. Terdapat dua rekor Piala Dunia lain yang juga pecah atas nama Lionel Messi akhir tahun ini. Dikutip dari TyC Sports, Lionel Messi kini menyandang status sebagai kapten dengan pertandingan terbanyak dalam sejarah Piala Dunia. Mantan pemain Barcelona itu tercatat memimpin timnas Argentina sebagai kapten pada 17 pertandingan Piala Dunia (data hingga perempat final Piala Dunia 2022). Messi kembali mengalahkan rekor Diego Maradona yang memakai ban kapten timnas Argentina pada 16 pertandingan Piala Dunia.\r\n\r\nSebab, Messi sudah menyamai rekor 10 gol Piala Dunia milik Batistuta yang bertahan selama 20 tahun sejak 2002. Manusia rekor mungkin adalah kalimat yang tepat untuk menggambarkan penampilan Lionel Messi sejak fase grup hingga perempat final Piala Dunia 2022 Qatar. Bintang milik Paris Saint-Germain itu sebelumnya sudah mengukir rekor pemain timnas Argentina pertama yang mampu bermain pada lima edisi Piala Dunia berbeda. Striker kelahiran Kota Rosario itu sukses mengalahkan rekor empat Piala Dunia milik dua legenda timnas Argentina, yakni Diego Maradona dan Javier Mascherano. Messi juga mengalahkan jumlah pertandingan Piala Dunia milik Diego Maradona (21 laga) dan Javier Mascherano (20). Baca juga: Semifinal Piala Dunia 2022 Argentina Vs Kroasia, Modric Tahu Cara Hentikan Messi Dengan demikian, Messi kini sudah tercatat sebagai pemain Argentina dengan jumlah pertandingan terbanyak dalam sejarah Piala Dunia. Rekor Messi semakin terlihat spesial karena dia juga menjadi pemain termuda yang mampu tampil pada lima edisi Piala Dunia berbeda. Terdapat dua rekor Piala Dunia lain yang juga pecah atas nama Lionel Messi akhir tahun ini. Dikutip dari TyC Sports, Lionel Messi kini menyandang status sebagai kapten dengan pertandingan terbanyak dalam sejarah Piala Dunia. Mantan pemain Barcelona itu tercatat memimpin timnas Argentina sebagai kapten pada 17 pertandingan Piala Dunia (data hingga perempat final Piala Dunia 2022). Messi kembali mengalahkan rekor Diego Maradona yang memakai ban kapten timnas Argentina pada 16 pertandingan Piala Dunia.\r\n\r\nSelain mencetak empat gol, Messi juga sudah mengukir dua assist dari total lima pertandingan Piala Dunia 2022 Qatar. Statistik itu menjadikan Messi pemain pertama yang mampu selalu mencetak assist pada lima edisi Piala Dunia berbeda. Terlepas dari berbagai rekor di atas, tugas Messi bersama timnas Argentina di Piala Dunia 2022 masih belum tuntas. Messi wajib membawa timnas Argentina menjuarai Piala Dunia 2022 Qatar untuk menyempurnakan berbagai rekor yang akan atau sudah dia tulis. Tugas pertama Lionel Messi adalah membantu timnas Argentina mengalahkan Kroasia pada semifinal Piala Dunia 2022. Jika mampu menyingkirkan Kroasia, Messi bersama timnas Argenitina akan bertemu pemenang dari laga Perancis vs Maroko pada final Piala Dunia 2022.\r\n\r\n'),
(3, 1, 'Jelang Lawan Persija, PSIS Pastikan Kondisi Fortes dan Dewangga  ', '2022-06-06', '20:28:00', '304-gambar2.jpeg', 'Semarang - PSIS Semarang masih mempertimbangkan momen turun lapangan untuk Carlos Fortes dan Alfeandra Dewangga dalam pertandingan melawan Persija hari Selasa (13/12) besok. Komunikasi dengan tim medis dilakukan soal kondisi cedera keduanya. Pelatih PSIS, Ian Andrew Gillan mengatakan PSIS selalu mengawasi cedera pemainnya termasuk Fortes dan Dewangga. Besok tim akan memastikan waktu bermain bagi mereka. \r\n\r\n\"Fortes seperti yang sudah sering dikatakan, kemarin cedera cukup lama dan PSIS me-manage cedera Fortes dengan cukup baik. Besok akan dipastikan lagi bagaimana Fortes, apakah akan bermain dari awal atau tidak. Jadi dari tim pelatih akan diskusi dengan medical staf bagaimana yang terbaik untuk menit bermain Fortes,\" jelas Ian dalam jumpa pers yang digelar daring, Senin (12/12/2022).\r\n\r\nPerlakuan sama juga diterapkan untuk Dewangga. Coach Ian menegaskan akan kembali mendiskusikan apakah Dewangga akan bermain besok. Meski demikian menurutnya banyak pemain yang bisa menggantikan posisi Dewangga jika memang belum bisa dimainkan.\r\n\r\n\"Dewangga habis cedera dan pemain yang cukup penting, sama seperti Fortes dan akan didiskusikan lagi besok apakah siap bermain atau tidak. Tapi kalau dia tidak siap bermain masih banyak pemain lain yang bisa untuk menggantikan peran Dewangga sama bagusnya dengan Dewangga,\" jelasnya.\r\n\r\nIan sebelumnya juga menjelaskan mengevaluasi lini belakang agar tidak melakukan kesalahan saat melawan Persija. Berbagai persiapan sudah dilakukan dan tim antusias untuk melaksanakan pertandingan di Stadion Maguwoharjo, Sleman, besok.\r\n\"Pertama yang dilakukan recovery, kita melihat video detail bagaimana harus improve. Kita tahu Persija tim bagus dan PSIS ada pemain cedera, tapi itu bukan alasan dan kita harus siap. PSIS akan perbaiki kesalahan, gol-gol akibat kelengahan di lini belakang akan diperbaiki,\" tegas Ian.\r\n\r\n\r\n '),
(4, 3, 'Berikut 168 daftar sirup obat yang aman, menurut hasil pengawasan BPOM', '0000-00-00', '20:38:00', '485-gambar4.jpg', 'Berikut 15 daftar sirup obat yang aman dari etilen glikol/dietilen glikol, menurut hasil pengawasan BPOM: \r\n1. PT Itrasal: Saldextamin (sirup dalam kemasan dus dengan 1 botol isi 60 ml) \r\n2. PT Ifars Pharmaceutical Laboratories: Cazetin (drops dalam kemasan dus dengan 1 botol isi 15 ml) \r\n3.PT Metiska Farma: Kandistatin (suspensi dalam kemasan dus dengan 1 botol isi 12 ml) PT Ifars Pharmaceutical Laboratories: Nystatin (suspensi dalam kemasan dus dengan 1 botol isi 15 ml) \r\n4. PT Novell Pharmaceutical Laboratories: Noprenia (larutan oral dalam kemasan dus dengan 1 botol isi 30 ml) \r\n5. PT Soho Industri Pharmasi: Risperdal (cairan oral dalam kemasan dus dengan 1 botol isi 30 ml) \r\n6. PT Meprofarm: Chloramphenicol palmitate (suspensi dalam kemasan botol isi 60 ml) \r\n7. PT Sanbe Farma: Colsancetine (suspensi dalam kemasan dus dengan 1 botol isi 60 ml) PT Harsen: Cotrimoxazole (suspensi dalam kemasan dus dengan 1 botol isi 60 ml) \r\n8.PT Holi Pharma: Cotrimoxazole (suspensi dalam kemasan dus dengan 1 botol isi 60 ml) PT Erlangga Edi Laboratories (Erela): Erlamycetin (suspensi dalam kemasan dus dengan 1 botol isi 60 ml) \r\n9. PT Holi Pharma: Gitri (suspensi dalam kemasan dus dengan 1 botol isi 60 ml) \r\n10. PT LAPI Laboratories: Lapicef (drops dalam kemasan dus dengan 1 botol isi 15 ml) \r\n11. PT Itrasal: Saltrim forte (suspensi dalam kemasan dus dengan 1 botol isi 60 ml) \r\n12.PT Meprofarm: Supreachlor (suspensi dalam kemasan dus dengan 1 botol isi 60 ml) \r\n13. PT Meprofarm: Supramox (drops dalam kemasan dus dengan 1 botol isi 20 ml) \r\n14. PT Intijaya Meta Ratna Pharmindo: Trimeta (suspensi dalam kemasan dus dengan 1 botol isi 60 ml) \r\n15. PT Harsen: Decatrim (suspensi dalam kemasan dus dengan 1 botol isi 60 ml) '),
(5, 2, 'Momen Nahyan Ketua dari Medan Tampil Beda di Nikahan Kaesang', '2022-07-28', '09:20:00', '861-gambar5.jpg', 'Rombongan Jokowi sekeluarga, yang berangkat dari Gedung Agung Yogyakarta, tampak kompak memakai busana tradisional. Rombongan pria memakai beskap warna krem lengkap dengan blangkon dan jaritSementara itu, rombongan wanita tampak memakai kebaya dengan warna senada. Mereka juga memakai jarit dan menggunakan sanggul.Jokowi pun akhirnya mengalah dan menuruti keinginan cucunya menggunakan baju biru itu agar tidak terlambat di lokasi akad nikah. Rombongan itu akhirnya berangkat ke lokasi pernikahan  Pernikahan Kaesang Pangarep dan Erina Gundono masih menjadi perbincangan hingga saat ini. Bukan cuma acara dan busana yang dikenakan pengantin yang menuai perhatian, tetapi sosok putra Kahiyang Ayu, Al Nahyan Nasution menjadi trending topic di sosial media. Hal tersebut karena cucu Jokowi itu kerap menggunakan busana yang berbeda dari sepupu dan kakaknya. Al Nahyan justru mengenakan singlet, kaus dan celana pendek. Seorang netizen di Twitter membagikan video keluarga Jokowi berfoto bersama di tengah gelaran tasyakuran Kaesang-Erina. Di sana Al Nahyan tetap tak mengenakan busana adat. Dia memakai kaos warna hitam dan celana warna putih. \" Anak Medan selalu di depan. Tingkah Nahyan gemesin. Tumben enggak buka kaos,\" tulis akun tersebut. Unggahan itupun di-retweet oleh ayah Al Nahyan, Bobby Nasution. \" Perkenalkan Ketua #Nahyan dari Medan,\" cuit Bobby. Kaesang yang telah sah menjadi suami Erina, menuliskan keluh kesah perbedaan foto keluarga saat pernikahanbya dengan kedua kakaknya. “ Waktu mas Gibran nikah, foto keluarga bagus-bagus. Waktu mbak Ayang nikah, foto keluarga bagus-bagus. Waktu saya nikah, foto keluarga ada bocil pake kutang doang,” tulis Kaesang di akun twitternya,'),
(6, 2, 'Kilas Perjalanan RKUHP, Penantian Puluhan Tahun hingga Disahkan Jadi UU   ', '2022-07-28', '09:20:00', '970-gambar9.png', 'JAKARTA,- Dewan Perwakilan Rakyat (DPR) menyetujui Rancangan Kitab Undang-Undang Hukum Pidana (RKUHP) menjadi undang-undang. Hal itu terjadi dalam pengambilan keputusan tingkat II yang dilakukan DPR Rapat Paripurna ke-11 Masa Persidangan II Tahun Sidang 2022-2023, Selasa (6/12/2022). \"Selanjutnya, saya akan menanyakan kepada setiap fraksi apakah rancangan undang undang tentang kitab hukum pidana dapat disetujui?\" kata Wakil Ketua DPR Sufmi Dasco Ahmad selaku pemimpin sidang, Selasa.  \"Setuju,\" jawab peserta sidang diiringi ketukan palu Dasco tanda persetujuan. Keputusan mengesahkan RKUHP menjadi undang-undang mengakhiri penantian selama puluhan tahun. Perjalanan RKUHP KUHP sebelumnya merupakan warisan dari masa kolonial Hindia Belanda dengan nama resmi Wetboek van Strafrecht voor Nederlandsch Indie (WvSNI). Hal ini dikarenakan setelah Proklamasi Kemerdekaan pada 17 Agustus 1945, pemerintah belum menetapkan terjemahan resmi WvSNI. KUHP merupakan induk peraturan hukum pidana di Indonesia. WvSNI merupakan turunan dari Wetboek van Strafrecht (WvS) yang diberlakukan di Belanda sejak tahun 1886. Baca juga: Pengesahan RKUHP Diwarnai Adu Mulut, Anggota PKS Sebut Pimpinan DPR Diktator Aturan hukum pidana itu bersumber dari Code Napoleon atau Kitab Hukum Pidana Napoleon pada 1810. Saat itu Perancis menjajah Belanda dan sang pemimpin saat itu, Napoleon Bonaparte, menerapkan aturan hukum itu di wilayah jajahannya. Pemerintah Belanda yang menduduki Indonesia saat itu menerapkan penyesuaian dalam memberlakukan WvS. Beberapa pasal dihilangkan dan disesuaikan dengan kondisi dan misi kolonialisme Belanda. WvSNI diberlakukan di Indonesia sejak 1918. Saat itu, Indonesia yang dijajah Belanda masih bernama Hindia Belanda. Pasca kemerdekaan, pemerintah Indonesia mengganti sebutan WvSNI menjadi Kitab Undang-undang Hukum Pidana atau KUHP pada 1946. Upaya memperbarui KUHP sudah mulai muncul sejak berdirinya Lembaga Pembinaan Hukum Nasional pada 1958.  Gagasan pembaruan KUHP juga dibahas dalam Seminar Hukum Nasional I pada 1963. Pemerintah kemudian mulai merancang RKUHP sejak 1970 untuk mengganti KUHP yang berlaku saat ini. Saat itu tim penyusun RKUHP diketuai oleh Prof Soedarto dan diperkuat beberapa Guru Besar Hukum Pidana lain di Indonesia yakni Prof Roeslan Saleh, Prof Moeljanto, Prof Satochid Kartanegara, Prof Oemar Seno Adji, Prof Andi Zainal Abidin, dan Prof Barda Nawawi Arief. Draf RKUHP sebenarnya selesai disusun pada 1993. Namun, pembahasannya terhenti di masa Menteri Kehakiman Oetojo Oesman. Pembahasan RKUHP kembali dilanjutkan pada masa Menteri Kehakiman Muladi (1998), Menkumham Yusril Ihza Mahendra (2001-2004), dan Hamid Awaluddin (2004-2007). Baca juga: Koalisi Masyarakat Sipil Minta Larangan Unjuk Rasa dalam RKUHP Dievaluasi Pada 2004, tim baru pembuatan RKUHP dibentuk di bawah Muladi. Draf RKUHP itu kemudian diserahkan oleh Presiden Susilo Bambang Yudhoyono (SBY) pada DPR untuk dibahas 8 tahun kemudian atau pada 2012. DPR periode 2014-2019 kemudian menyepakati draf RKUHP dalam pengambilan keputusan tingkat pertama. Namun, timbul berbagai reaksi dari masyarakat. Gelombang protes terhadap sejumlah pasal RKUHP muncul dari masyarakat, termasuk dari para pegiat hukum dan mahasiswa. Pada September 2019, Presiden Joko Widodo yang menggantikan SBY memutuskan untuk menunda pengesahan RKUHP dan memerintahkan peninjauan kembali pasal-pasal yang bermasalah. Menurut catatan, pembahasan RKUHP dilakukan di masa kepemimpinan dari 7 presiden berbeda. Yaitu Soekarno, Soeharto, Bacharuddin Jusuf Habibie, Abdurrahman Wahid (Gus Dur), Megawati Soekarnoputri, SBY, dan Joko Widodo.'),
(7, 2, 'Deretan Pengakuan Ferdy Sambo yang Buat Hakim Heran', '2022-12-08', '00:09:00', '736-gambar10.jpg', 'JAKARTA, - Majelis hakim Pengadilan Negeri Jakarta Selatan (PN Jaksel) berkali-kali dibuat heran dengan pengakuan Ferdy Sambo soal kasus kematian Nofriansyah Yosua Hutabarat atau Brigadir J. Pengakuan Sambo itu disampaikan saat hadir sebagai saksi dalam sidang pembunuhan berencana Brigadir Yosua dengan terdakwa Richard Eliezer, Ricky Rizal, dan Kuat Maruf di PN Jaksel, Rabu (7/12/2022). Dalam kesaksiannya, Sambo sempat menyinggung soal dugaan kekerasan seksual yang diklaim istrinya, Putri Candrawathi. Di hadapan majelis hakim, Sambo juga membuat pengakuan soal penembakan Brigadir J.  Berikut sederet keterangan Ferdy Sambo dalam sidang yang membuat hakim terheran-heran  Singgung soal pelecehan Dalam persidangan,  Sambo sempat menyampaikan soal dugaan pelecehan seksual yang diklaim istrinya, Putri Candrawathi, dilakukan oleh Yosua. Sambo bercerita, Kamis (7/7/2022) malam dirinya ditelepon oleh sang istri yang sedang berada di Magelang, Jawa Tengah. Dalam teleponnya, Putri menangis dan mengatakan bahwa Yosua telah berbuat kurang ajar ke dirinya di rumah Magelang. \"Saya kaget karena istri saya menelepon dalam kondisi menangis, Yang Mulia. Istri saya menyampaikan bahwa Yosua berlaku kurang ajar kepada saya, dia masuk ke kamar,\" kata Sambo di persidangan. Mendengar cerita itu, Sambo mengaku sempat menawarkan diri untuk menjemput sang istri, namun Putri enggan. Dia juga hendak melaporkan kejadian tersebut Polres setempat, tetapi lagi-lagi ditolak oleh sang istri. Baca juga: Ferdy Sambo: Yosua Perkosa Istri Saya Menurut Sambo, Putri memintanya agar merahasiakan kejadian ini karena dia tak ingin terjadi keributan di Magelang. Putri juga bilang, keesokan harinya dia akan bertolak kembali ke Jakarta. Sambo pun menuruti permintaan Putri dan tak menghubungi siapa pun setelah itu. Pernyataan Sambo tersebut membuat hakim terheran-heran. Dengan jabatan sebagai Kepala Divisi Profesi dan Pengamanan (Kadiv Propam) Polri saat itu, menurut hakim, mudah saja jika Sambo langsung menindak Yosua dengan menghubungi kepolisian setempat. \"Ketika saudara mengatakan bahwa tadi ada istri dalam melaporkan seperti itu dan berkaitan dengan tugas dan pokok fungsi saudara sebagai Kadiv Propam, saudara cuma mengikuti dia saja?\" tanya Ketua Majelis Hakim PN Jaksel Wahyu Imam Santosa. \"Saya lebih mementingkan keselamatan istri saya, Yang Mulia,\" jawab Sambo. Sambo mengaku sadar jika saja saat itu dirinya melaporkan kejadian tersebut ke Kapolres atau bahkan Kapolda setempat, jajaran kepolisian daerah akan langsung mengambil tindakan. Namun, langkah itu tak diambil Sambo lantaran sang istri memintanya untuk merahasiakan peristiwa di Magelang. Baca juga: Hakim Heran pada Pengakuan Ferdy Sambo: Saudara Bilang Khawatir ke Istri, tapi Main Bulu Tangkis Bisa Bermain badminton Cerita berlanjut. Keesokan harinya atau Jumat (8/7/2022) sekitar pukul 09.00 WIB, Putri memberi kabar ke suaminya melalui pesan WhatsApp bahwa dia hendak kembali ke Jakarta bersama para ajudan. Putri juga bilang, kondisinya lemah karena sakit. Sementara, di Jakarta, Sambo mengaku bekerja seperti biasa. Pada Jumat (8/7/2022) pagi dia memimpin rapat dan menghadiri sidang kode etik salah satu personel Polri. Siang harinya, Sambo bersiap-siap untuk mendampingi Kapolri dalam kegiatan main bulu tangkis bersama para pimpinan Polri yang akan digelar pada malam harinya. Saat itulah, hakim kembali dibuat heran dengan pernyataan Sambo. Hakim mempertanyakan, Sambo masih bisa tenang hendak bermain bulu tangkis, padahal istrinya mengaku dilecehkan. \"Tadi Saudara mengatakan bahwa saya tidak pernah mendengar istri saya mengeluh atau bercerita sampai nangis dan saudara agak khawatir. Tapi pada saat yang sama saudara main bulu tangkis bisa?\" tanya hakim Wahyu. \"Karena saya tidak berpikir akan sefatal ini kejadiannya,\" jawab Sambo. Baca juga: Dalam Persidangan, Ferdy Sambo Ngaku Tak Ikut Tembak Brigadir Yosua Menurut hakim, perkataan Sambo bertolak belakang dengan perbuatannya \"Maksud saya, ini bertolak belakang. Artinya, kalau saudara mengatakan bahwa saya khawatir, saudara menuruti apa permintaan istri saudara untuk tidak menghubungi aparat kepolisian setempat, tapi pada saat yang sama saudara tidak khawatir juga dan bisa bermain bulu tangkis,\" kata hakim Wahyu lagi. Sambo lantas beralasan bahwa dirinya baru mempersiapkan diri untuk kegiatan bulu tangkis tersebut. Aktivitas itu sedianya baru akan digelar pada malam harinya. \"Karena memang malam biasanya rutin untuk kegiatan bulu tangkis,\" katanya. Namun, Sambo pada akhirnya tak jadi menghadiri kegiatan tersebut lantaran pada Jumat sore terjadi penembakan Brigadir Yosua di rumah dinasnya di Kompleks Polri, Duren Tiga, Jakarta Selatan. Perintah menembak Hakim juga sempat dibuat heran dengan pernyataan Sambo yang menyebut dirinya sebenarnya tak ingin Yosua kehilangan nyawa. Sebabnya, Sambo sendiri yang memerintahkan anak buahnya untuk menembak Brigadir J. \"Saudara menghendaki korban Yosua itu meninggal tidak?\" tanya hakim dalam sidang. \"Tidak, Yang Mulia,\" jawab Sambo. \"Kalaulah saudara tidak menghendaki korban Yosua meninggal, kenapa pada saat di (rumah) Saguling saudara mengatakan bahwa nanti kalau melawan tembak?\" tanya hakim lagi.'),
(8, 1, 'Menpora Inspeksi Stadion Jatidiri, Pastikan Liga 1 Akan Lancar ', '2022-12-31', '22:19:00', '394-gambar11.jpg', 'Semarang - Menteri Pemuda dan Olahraga Zainudin Amali menyaksikan laga Liga 1 2022 akhir pekan kemarin. Dia ingin memastikan segalanya berjalan lancar. Amali datang ke Stadion Jatidiri, Semarang, Minggu (11/12/2022) sore WIB, yang jadi tuan rumah untuk dua pertandingan, Arema FC vs Persis Solo dan Barito Putera vs Dewa United.  Liga sudah berjalan dua pekan setelah digulirkan lagi menyusul turunnya izin dari Pemerintah pascatragedi Kanjuruhan Oktober lalu. Amali ditemani oleh anggota Exco PSSI Yoyok Sukawi.  Kehadiran Amali disebut Yoyok sebagai wujud perhatian terhadap persepakbolaan Tanah Air, terutama menyemangati Panpel (Panitia Pelaksana) yang sudah bekerja maraton sedari pagi hingga malam.  Hasil Liga 1 Madura United Vs Bali United: Serdadu Tridatu Menang Comeback '),
(9, 3, 'Tetap Bugar saat Nonton Piala Dunia 2022? Berikut Ini Tipsnya ', '2022-08-16', '07:57:00', '967-gambar12.jpg', 'Jakarta - Piala Dunia 2022 akan dimulai dalam hitungan jam. Kesehatan pun perlu dijaga agar tidak kelewatan satu pun pertandingan. Piala Dunia tahun ini akan dibuka duel tuan rumah Qatar vs Ekuador, Minggu (20/11/2022) pukul 23.00 WIB. Dengan perbedaan waktu empat jam lebih lambat di Qatar, tentu saja waktunya bersahabat untuk para penggemar sepakbola di Tanah Air.  Ada beberapa laga yang kickoff pukul 17.00 WIB dan 20.00 WIB, lalu untuk yang larut malam di pukul 23.00 WIB dan terakhir di pukul 02.00 dini hari WIB. Khusus untuk laga tengah malam, ada sekitar 16 dari total 48 pertandingan atau sepertiga  Oleh karenanya, para penikmat sepakbola yang doyan menonton sampai larut harus menjaga kesehatan, agar badan tidak tumbang. Apalagi bagi mereka yang harus berangkat kerja sedari pagi buta, yang bisa membuat waktu istirahat terganggu.  Salah satu penggiat olahraga golf yang juga Direktur Utama PT Bringin Karya Sejahtera, perusahaan yang bergerak di bidang teknologi, properti, dan service, Andik Eko Putro, punya tips untuk para pembaca detikSport.  '),
(10, 2, 'Bukan Kaleng-kaleng, Ini Rekam Jejak Pekerjaan Erina Gudono Istri Kaesang', '2022-12-12', '07:59:00', '584-gambar13.jpg', 'Erina lahir di Philadelphia, Pennsylvania, Amerika Serikat, pada 11 Desember 1996. Menurut profil Erina Gudono di situs Puteri Indonesia, ia pernah menempuh pendidikan di Universitas Gadjah Mada jurusan Manajemen keuangan sebelum akhirnya lanjut mengambil gelar S2 di Columbia University Master of Public Administration.  Segudang prestasi baik level lokal maupun internasional sudah Erina Gudono ukir. Prestasi tersebut antara lain delegasi Indonesia untuk Harvard World Model United Nation  Selain itu ada juga juara 1 Business Project Competition di Tokyo, Japan, lalu juara 1 AIESEC Social Initiative Competition, juara 1 National Business Plan Competition, dan peraih Most Social Spirited Scholar dari UGM FEB Award.  Sedangkan untuk kariernya secara profesional, Erina Gudono dikenal bekerja di bidang keuangan. Sebelumnya dirinya sempat bekerja di Bank Indonesia sebagai Project at Payment System Policy Department dan Assistant Manager Apprenticeship pada 2020.  Kemudian saat ini berlanjut di JP Morgan sebagai Asia Analyst dan menjadi satu-satunya lulusan universitas dalam negeri di angkatannya.  Di luar itu, dia juga tercatat aktif di beragam kegiatan sosial. Salah satunya adalah di Harapan Fian Yogyakarta, Komunitas Sekolah Marjinal yang bergerak dalam pengadaan akses pendidikan dan kesehatan gratis untuk kaum marjinal.  Selain itu, Erina Gudono yang kini sudah resmi jadi istri Kaesang itu juga bergabung dengan Takesbook Indonesia. Ini adalah komunitas pendidikan advokat bagi anak-anak marjinal.'),
(11, 1, 'Prediksi Argentina Vs Kroasia, Perancis Vs Maroko di Semifinal Piala Dunia 2022 ', '2022-12-17', '07:08:00', '955-gambar14.jpg', 'Perjalanan menuju singgasana juara semakin dekat. Berikut adalah prediksi Argentina vs Kroasia dan Perancis vs Maroko di semifinal Piala Dunia 2022. Empat tim telah menyegel tempat di semifinal Piala Dunia 2022 Qatar yaitu Argentina, Kroasia, Perancis, dan Maroko. Sempat kalah dari Arab Saudi pada laga pembuka Piala Dunia 2022, Argentina berhasil mengamankan satu tempat di empat besar. Dua finalis empat tahun lalu, Perancis dan Kroasia, juga kembali ke semifinal Piala Dunia 2022 Qatar. Sementara itu, kejutan tercipta dengan Maroko mengukir sejarah sebagai tim Afrika pertama yang mampu menembus semifinal Piala Dunia FIFA. Lantas siapa tim yang akan melaju ke partai puncak Piala Dunia 2022 Qatar?  Kroasia membuktikan bahwa keberhasilan mereka lolos ke finali empat tahun lalu di Rusia bukanlah kebetulan. Kini, pasukan Vatreni hadir di empat besar Piala Dunia. Di perempat final, Kroasia sukses menyingkirkan Brasil lewat drama adu penalti. Hasil ini membuktikan bahwa Luka Modric dkk tak boleh dipandang sebelah mata. Kali terakhir Kroasia bersua Argentina adalah pada fase grup Piala Dunia 2018 di Rusia. Kala itu, Argentina yang dikapteni Lionel Messi dibuat bertekuk lutut di hadapan Kroasia dengan skor tiga gol tanpa balas.  Situs penyedia data statistik sepak bola Squawka memprediksi Argentina bakal menghadapi ujian berat saat jumpa Kroasia di semifinal Piala Dunia 2022. Duel Argentina vs Kroasia kali ini diprediksi bakal rampung dengan extra time atau adu penalti. Apabila selesai dalam extra time, Squawka menempatkan Argentina dengan kemenangan tipis 2-1 atas Kroasia. Namun, jika harus ditentukan melalui adu penalti, Kroasia punya rekor bagus. Kroasia tercatat tidak pernah kalah dalam empat kali adu penalti di panggung Piala Dunia, termasuk saat melawan Jepang (16 besar) dan Brasil (8 besar) pada turnamen di Qatar ini.  Perancis menjadi tim juara bertahan Piala Dunia pertama yang mampu lolos ke semifinal setelah Brasil melakukannya pada 1998. Di Qatar, kutukan juara bertahan yang kerap gugur di fase grup terbukti tak mempan kepada armada Didier Deshamps. Kini, langkah Perancis untuk mempertahankan gelar Piala Dunia semakin dekat. Namun, tantangan berat dalam wujud timnas Maroko sudah menunggu pasukan Les Bleus.  Maroko lolos ke fase gugur sebagai juara Grup F, mengungguli Kroasia dan mendepak mantan tim peringkat satu FIFA, Belgia. Di fase gugur, Singa-singa Atlas membuat kejutan dengan menyingkirkan Spanyol di 16 besar lalu Portugal di perempat final. Jika melihat situasi di atas kertas, Perancis lebih diunggulkan. Namun, sepak bola tidak hanya sebatas hitung-hitungan di atas kertas. Maroko sudah membuktikan bahwa mereka bisa menjungkalkan tim-tim papan atas dan membalikkan prediksi. Squawka menjagokan Perancis bakal memenangi laga semifinal Piala Dunia 2022 kontra Maroko dengan skor tipis 2-1.'),
(12, 2, 'Jokowi Terbitkan Perppu Pemilu terkait 4 Daerah Otonomi Baru di Papua  ', '2022-12-13', '09:00:00', '479-gambar14 (1).jpg', 'Jakarta - Presiden Joko Widodo (Jokowi) menerbitkan Peraturan Pemerintah Pengganti Undang-undang (Perppu) tentang pemilu, berkaitan dengan penyelenggaraan Pemilu 2024 di empat Daerah Otonomi Baru (DOB) di Papua.  Berdasarkan informasi yang diterima detikcom, Selasa (13/12/2022), Jokowi telah menerbitkan Perppu Nomor 1 Tahun 2022 tentang Perubahan atas Undang-Undang Nomor 7 Tahun 2017 tentang Pemilihan Umum  Dalam Perppu ini diatur bahwa KPU membentuk KPU Provinsi di Provinsi Papua Selatan, Provinsi Papua Tengah, Provinsi Papua Pegunungan, dan Provinsi Papua Barat daya. Aturan itu termaktub dalam Pasal 10A Bawaslu juga diatur untuk membentuk Bawaslu Provinsi Papua Selatan, Provinsi Papua Tengah, Provinisi Papua Pegunungan, dan Provinsi Papua Barat Daya.  KPU membutuhkan Perppu baru ini untuk menyelenggarakan Pemilu 2024 di DOB Papua. Sebelumnya, Ketua KPU Hasyim Asyari berharap Perppu ini terbit sebelum 14 Desember 2022. Kini, Perppu ini sudah terbit  Perlu perhatian bersama betapa pentingnya Perppu sebagai perubahan beberapa ketentuan dalam UU Nomor 7 Tahun 2017 tentang Pemilu, untuk menjamin kepastian penyelenggaraan Pemilu 2024 terutama di DOB Provinsi, ujar Hasyim dalam keterangannya, Jumat (9/12) pekan lalu.'),
(13, 3, 'Terapkan Sistem Organisasi Andal, BPJS  Raih Penghargaan  ', '2022-12-13', '09:00:00', '582-gambar15.jpg', 'BPJS Kesehatan meraih penghargaan Bronze Award for Performance Excellence Growth Achievement dan Emerging Industry Leader. BPJS Kesehatan dinilai berhasil dalam membangun sistem organisasi yang andal. Adapun penghargaan tersebut diberikan oleh Ketua Indonesian Quality Award (IQA) Foundation Orie Andari Sutadji kepada Direktur Utama BPJS Kesehatan Ghufron Mukti di Jakarta, Senin (12/12) kemarin.  Diketahui sebelumnya IQA Foundation telah melakukan penilaian terhadap sistem manajemen BPJS Kesehatan dengan menggunakan metode Baldrige Excellence Framework pada 18 Oktober-3 Desember 2022  Direktur Utama BPJS Kesehatan Ghufron Mukti mengatakan BPJS Kesehatan melakukan asesmen menggunakan Baldrige Excellence Framework untuk memastikan sistem di organisasi berjalan selaras dengan upaya untuk mencapai fokus peningkatan mutu layanan.  '),
(14, 2, 'COVID di RI 12 Desember 2022 Tembus 6,7 Juta Kasus ', '2022-12-13', '10:08:00', '661-gambar16.jpg', 'Jakarta - Pemerintah memperbarui data terkait kasus Corona di Indonesia. Hari ini dilaporkan ada tambahan 1.225 kasus positif COVID-19 di Indonesia. Data perkembangan penyebaran COVID-19 ini disampaikan Satgas Penanganan COVID-19, Senin (12/12/2022). Data ini diperbarui setiap hari dengan cut off pukul 12.00 WIB.  Dengan tambahan tersebut, jumlah total kasus COVID-19 yang ditemukan di Indonesia sejak Maret 2020 hingga hari ini menjadi 6.700.015 kasus. Dilaporkan juga, hari ini ada 3.848 orang di Indonesia yang sembuh dari COVID-19. Jumlah total yang telah sembuh dari Corona sebanyak 6.502.605 orang.  Selain itu, hari ini dilaporkan sebanyak 31 pasien positif Corona di Tanah Air meninggal dunia. Dengan demikian, jumlah total pasien positif COVID-19 yang meninggal sebanyak 160.255 orang.  Pemerintah mengimbau warga menaati protokol kesehatan pencegahan COVID-19, yakni mengenakan masker, mencuci tangan menggunakan sabun dengan air yang mengalir, serta menjaga jarak.  Program vaksinasi COVID-19 juga tengah digencarkan agar tercipta kekebalan komunal (herd immunity).Pemerintah juga telah menerapkan pemberlakuan pembatasan kegiatan masyarakat (PPKM) level 1 hingga 4 untuk menekan laju penyebaran Corona. Warga diminta menaati aturan yang diberlakukan selama PPKM agar pandemi virus Corona dapat teratasi'),
(15, 3, 'Mitos atau Fakta, Makan Nasi Bikin Kita Gemuk?  ', '2022-12-14', '10:00:00', '507-gambar17.jpg', 'Bagi orang Indonesia, nasi adalah makanan pokok. Bahkan, banyak dari mereka beranggapa bahwa makan tanpa nasi tidak akan membuat kenyang. Di sisi lain, banyak juga yang percaya bahwa cara terbaik untuk menurunkan berat badan adalah dengan tidak makan nasi. Seperti diketahui, manfaat nasi adalah sebagai sumber karbohidrat. Namun, banyak orang menganggap nasi sebagai penyebab banyak penyakit, seperti diabetes dan obesitas  Faktanya, nasi adalah bagian penting dari pola makan yang seimbang dan bergizi. Rendah lemak dan gula, mudah dicerna, bebas gluten dan sumber vitamin B yang baik. Selain itu, sebagai salah satu makanan padat energi, beberapa varietas beras merupakan gudang nutrisi bermanfaat lainnya seperti magnesium, fosfor, mangan, selenium, dan zat besi. Nasi adalah makanan berkarbohidrat tinggi yang menyediakan energi bagi tubuh. Serat dalam nasi membantu mengatur pencernaan, dan protein membantu membangun dan memperbaiki jaringan. Selain itu, asam amino dalam nasi membantu memecah kandungan lemak yang tersimpan dalam tubuh. Nasi juga mengandung vitamin B yang memainkan peran penting dalam metabolisme lemak dan mencegah kembung. Mengkonsumsi nasi membantu menyeimbangkan kadar hormon, yang sangat penting dalam mengurangi lemak perut. Nasi juga membantu mengatur resistensi leptin, mencegah individu makan berlebihan dan menambah berat badan.  Sebenarnya, nasi tidak akan bikin gemuk atau membuat berat badan kita naik. Berat badan kita bisa naik jika porsi makan kita berlebihan. Semua makanan bermanfaat bagi kesehatan dengan satu atau lain cara, tetapi kuantitasnya dapat menangkal manfaatnya. Demikian pula, nasi dapat menyebabkan kenaikan berat badan saat Anda mengonsumsi lebih dari yang Anda butuhkan. Namun, perlu diingat, sebagai kelompok makanan tinggi karbohidrat, indeks glikemik nasi sedikit tinggi, yaitu 64. Akibatnya, nasi dapat meningkatkan kadar gula darah dan memengaruhi fungsi insulin. Itulah sebabnya, orang yang memiliki diabetes disarankan untuk mengurangi konsumsi nasi.  Jadi, jawaban apakah tidak makan nasi bisa menurunkan berat badan atau makan nasi bikin gemuk, semua sangat tergantung dengan pola makan Anda di luar nasi. '),
(16, 3, 'Hari Kesehatan Mental Sedunia', '2022-12-11', '07:08:00', '406-gambar19.jpg', 'Organisasi Kesehatan Dunia (WHO) mengungkapkan bahwa 1 miliar orang di dunia hidup dengan gangguan mental. Bahkan, menurut rilis WHO dalam rangka peringatan Hari Kesehatan Mental Sedunia, Sabtu (10/10/2020), 3 juta orang meninggal setiap tahunnya akibat penggunaan alkohol dan setiap 40 detik satu orang meninggal karena bunuh diri. Kini di tengah pandemi Covid-19, ancaman kesehatan mental semakin memengaruhi dan memberi dampak yang lebih jauh. Kendati demikian, di seluruh dunia, orang yang memiliki akses layanan kesehatan mental relatif sedikit. WHO mencatat negara dengan penghasilan rendah dan menengah, lebih dari 75 persen orang dengan gangguan mental, neurologis dan penyalahgunaan zat tidak menerima pengobatan yang sesuai kondisi mereka. Akses terbatas ke perawatan kesehatan mental yang berkualitas dan terjangkau di dunia sebelum pandemi. Terutama dalam keadaan darurat kemanusiaan dan pengaturan konflik, semakin berkurang karena Covid-19, sebab pandemi telah mengganggu layanan kesehatan di seluruh dunia. Penyebab utama terbatasnya akses perawatan bagi mereka yang memiliki gangguan mental adalah infeksi dan risiko infeksi di fasilitas jangka panjang seperti panti jompo dan lembaga psikiatri. Selain itu penyebab lainnya, hambatan untuk bertemu orang secara langsung, staf kesehatan mental terinfeksi virus, dan penutupan fasilitas kesehatan mental untuk mengubahnya menjadi fasilitas perawatan bagi penderita Covid-19. Bertepatan dengan Hari Kesehatan Mental Sedunia, WHO bersama dengan United for Global Mental Health dan World Federation for Mental Health menyerukan peningkatan investasi kesehatan mental. Direktur Jenderal WHO, Dr Tedros Adhanom Ghebreyesus mengatakan Hari Kesehatan Mental Sedunia adalah kesempatan bagi dunia untuk berkumpul dan mulai memperbaiki pengabaian kesehatan mental. ');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categorys` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
