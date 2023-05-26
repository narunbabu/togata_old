-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 26, 2023 at 01:16 PM
-- Server version: 10.5.19-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u441069787_togata`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `for_tweet_id` bigint(20) UNSIGNED NOT NULL,
  `this_tweet_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `for_tweet_id`, `this_tweet_id`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 6, '2023-04-09 19:25:11', '2023-04-09 19:25:11'),
(2, 5, 7, 8, '2023-04-10 17:54:05', '2023-04-10 17:54:05'),
(3, 1, 10, 11, '2023-04-11 00:10:53', '2023-04-11 00:10:53'),
(4, 1, 10, 12, '2023-04-11 10:18:19', '2023-04-11 10:18:19'),
(5, 1, 10, 13, '2023-04-11 10:20:47', '2023-04-11 10:20:47'),
(6, 1, 9, 14, '2023-04-11 10:27:03', '2023-04-11 10:27:03'),
(7, 1, 9, 15, '2023-04-11 10:28:24', '2023-04-11 10:28:24'),
(8, 1, 9, 16, '2023-04-11 10:29:24', '2023-04-11 10:29:24'),
(9, 1, 21, 23, '2023-04-14 06:48:23', '2023-04-14 06:48:23'),
(10, 6, 17, 24, '2023-04-14 18:56:17', '2023-04-14 18:56:17'),
(11, 1, 29, 30, '2023-04-15 07:56:29', '2023-04-15 07:56:29'),
(12, 1, 28, 32, '2023-04-24 09:22:31', '2023-04-24 09:22:31'),
(13, 1, 32, 33, '2023-04-24 09:22:51', '2023-04-24 09:22:51'),
(14, 1, 33, 34, '2023-04-24 09:23:12', '2023-04-24 09:23:12'),
(15, 1, 32, 36, '2023-04-24 09:25:19', '2023-04-24 09:25:19');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tweet_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `tweet_id`, `created_at`, `updated_at`) VALUES
(1, 3, 4, '2023-04-09 19:28:15', '2023-04-09 19:28:15');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `cover_photo` varchar(191) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `married` tinyint(1) DEFAULT NULL,
  `gotram` varchar(191) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `best_known_for` text DEFAULT NULL,
  `achievements_recognitions` text DEFAULT NULL,
  `native_place_id` varchar(191) DEFAULT NULL,
  `work_place_id` varchar(191) DEFAULT NULL,
  `education_id` varchar(191) DEFAULT NULL,
  `profession_id` varchar(191) DEFAULT NULL,
  `about_work` text DEFAULT NULL,
  `work_experience` varchar(191) DEFAULT NULL,
  `interests` text DEFAULT NULL,
  `twitter_handle` varchar(191) DEFAULT NULL,
  `linkedin_handle` varchar(191) DEFAULT NULL,
  `facebook_handle` varchar(191) DEFAULT NULL,
  `instagram_handle` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `avatar`, `cover_photo`, `date_of_birth`, `gender`, `married`, `gotram`, `bio`, `best_known_for`, `achievements_recognitions`, `native_place_id`, `work_place_id`, `education_id`, `profession_id`, `about_work`, `work_experience`, `interests`, `twitter_handle`, `linkedin_handle`, `facebook_handle`, `instagram_handle`, `created_at`, `updated_at`) VALUES
(1, 1, 'images/avatar/j40tdQgc92.jpg', 'images/cover_photo/eiJhQ1IdRf.jpg', '1981-06-07', 'Female', 1, 'Vamana Rishi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Best known for lorem ipsum', 'Received recognition for X', '8030205', '4525', '4', '60', 'నేను ఒక భూగర్భ శాస్త్రవేత్తను నేను ఒక కంపెనీ నడుపుతున్నాను మొబైల్ అప్లికేషన్స్ కూడా తయారు చేస్తాను', 'మొత్తం 15 ఇయర్స్ ఎక్స్పీరియన్స్ ఉంది అందులో 12 సంవత్సరాలు వేరే చోట వర్క్ చేయటం నాలుగు సంవత్సరాల నుంచి సొంత కంపెనీ పెట్టి పనిచేయటం', 'ప్రోగ్రాం రాయటం నాలెడ్జ్ బేస్డ్ యూట్యూబ్ వీడియోలు చూడటం వాకింగ్ చేయడం థింక్ చేయటం', 'nalamara', 'AbLinkdin', 'nalamaraFB', 'example', '2023-04-07 00:20:38', '2023-04-14 06:50:21'),
(2, 2, 'http://127.0.0.1:8000/images/avatar/user2.jpg', 'http://127.0.0.1:8000/images/1679701774.jpg', '1990-01-01', 'Male', 0, 'Some Gotram', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Best known for lorem ipsum', 'Received recognition for X', '569219', '592348', '7', '94', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Worked at X for 5 years', 'Interests include lorem ipsum', 'example', 'example', 'example', 'example', '2023-04-07 00:20:40', '2023-04-07 00:20:40'),
(3, 3, 'images/1680847456.jpg', 'images/1681048525.jpg', '1981-06-07', NULL, NULL, 'Vamana rishi', 'Good to know', 'Good work', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-07 01:06:36', '2023-04-09 19:25:25'),
(4, 4, 'images/1681047616.jpg', NULL, '1985-05-19', 'Male', 1, 'Kadhambakula', 'I am SAP Finance Consultant. ', 'Friendly nature', 'Semi Qualified Cost&Management Accountant', '589863', '4516', '5', '28', 'SAP Finance Functional Consultant. ', '10 years Finance experience. ', 'Playing with Kids& Spending with family. ', 'Venu', 'Venu😃😃', 'Venugopal', 'Venu😃😃', '2023-04-09 19:04:33', '2023-04-09 19:23:08'),
(5, 5, 'images/avatar/6CDK707WL9.jpg', 'images/cover_photo/6jmCFJ2bmN.jpg', '1979-07-01', 'Male', 1, 'Padmashya', NULL, NULL, NULL, '589863', '8030207', '5', '79', 'HOD(HEAD OF THE DEPARTMENT) Editing', '20yrs', 'Writing movie songs', NULL, NULL, '9951881222', NULL, '2023-04-10 00:27:27', '2023-04-12 09:27:45'),
(6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-14 18:30:49', '2023-04-14 18:30:49'),
(7, 7, NULL, NULL, '1967-10-10', 'Male', 1, 'Kowshika', NULL, 'Paramedical professional ', 'Got success in Meditation ', '5212', '5230', '5', '19', 'Preventive medicine and health promotion ', '24 years', 'Writing articles and motivational speech ', NULL, NULL, NULL, 'janardhan_yours', '2023-04-14 21:14:24', '2023-04-15 07:56:56'),
(8, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-16 15:32:24', '2023-04-16 15:32:24'),
(9, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-23 17:21:01', '2023-04-23 17:21:01');

-- --------------------------------------------------------

--
-- Table structure for table `retweets`
--

CREATE TABLE `retweets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `for_tweet_id` bigint(20) UNSIGNED NOT NULL,
  `this_tweet_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `retweets`
--

INSERT INTO `retweets` (`id`, `user_id`, `for_tweet_id`, `this_tweet_id`, `created_at`, `updated_at`) VALUES
(1, 1, 10, 17, '2023-04-11 10:52:56', '2023-04-11 10:52:56'),
(2, 1, 9, 19, '2023-04-11 12:31:09', '2023-04-11 12:31:09');

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `message` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `user_id`, `type_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'తొగట యాప్ కి స్వాగతం. ఇక్కడ మీరు మీకు నచ్చిన విషయాన్ని పంచుకొనిన, అది అందరికీ కనిపిస్తుంది. అదృష్టం మీ వైపు చూడగలదు.', '2023-04-07 00:20:35', '2023-04-07 00:20:35'),
(2, 3, 1, 'This is my first message ', '2023-04-07 01:14:48', '2023-04-07 01:14:48'),
(3, 3, 1, 'Second message', '2023-04-07 11:34:34', '2023-04-07 11:34:34'),
(4, 4, 1, 'Hi All... Welcome to Thogata kshatriya', '2023-04-09 19:05:41', '2023-04-09 19:05:41'),
(5, 3, 1, 'Hi all', '2023-04-09 19:16:19', '2023-04-09 19:16:19'),
(6, 4, 3, 'Hi', '2023-04-09 19:25:11', '2023-04-09 19:25:11'),
(7, 5, 1, 'Hi all', '2023-04-10 00:29:50', '2023-04-10 00:29:50'),
(8, 5, 3, 'హెడ్ లైన్స్ మొత్తం ఇంగ్లీషులోనే ఉంచండి హోము కి', '2023-04-10 17:54:05', '2023-04-10 17:54:05'),
(9, 5, 1, 'హెడ్లైన్స్ మొత్తం ఇంగ్లీషులోనే ఉంచండి తెలుగులో ఈ కీసు అర్థం కావడం లేదు', '2023-04-10 17:54:41', '2023-04-10 17:54:41'),
(10, 5, 1, 'ప్రొఫెషన్ కి పని చేయటం లేదు అలాగే విలేజ్ పేరు కొత్తగా టైప్ చేస్తే తీసుకోవడం లేదు', '2023-04-10 17:55:10', '2023-04-10 17:55:10'),
(11, 1, 3, 'ఇప్పుడు చూడన్నా అన్ని వస్తున్నాయి కొత్త యాప్ పంపించాను అది ఇన్స్టాల్ చేసి చూడు', '2023-04-11 00:10:53', '2023-04-11 00:10:53'),
(12, 1, 3, 'hello', '2023-04-11 10:18:19', '2023-04-11 10:18:19'),
(13, 1, 3, 'hello  how are you', '2023-04-11 10:20:47', '2023-04-11 10:20:47'),
(14, 1, 3, 'hello', '2023-04-11 10:27:03', '2023-04-11 10:27:03'),
(15, 1, 3, 'test', '2023-04-11 10:28:24', '2023-04-11 10:28:24'),
(16, 1, 3, 'test2', '2023-04-11 10:29:24', '2023-04-11 10:29:24'),
(17, 1, 2, 'retweet', '2023-04-11 10:52:56', '2023-04-11 10:52:56'),
(19, 1, 2, ' ', '2023-04-11 12:31:09', '2023-04-11 12:31:09'),
(20, 1, 1, 'Finalizing....', '2023-04-11 12:36:00', '2023-04-11 12:36:00'),
(21, 5, 1, 'ఫొటోస్ అప్లోడ్ చేసుకోవటానికి ఆప్షన్ ఉంటే బాగుంటుంది అలాగే వీడియోలు కూడా', '2023-04-12 09:23:11', '2023-04-12 09:23:11'),
(22, 5, 1, 'గ్రూపులో ఉన్న వ్యక్తులకు పర్సనల్గా మెసేజ్ పంపించే ఆప్షన్ లేదు అది ఒకటి సెట్ చేయండి', '2023-04-12 09:29:41', '2023-04-12 09:29:41'),
(23, 1, 3, 'Message lona? Veregana? ', '2023-04-14 06:48:23', '2023-04-14 06:48:23'),
(24, 6, 3, ' ', '2023-04-14 18:56:16', '2023-04-14 18:56:16'),
(25, 6, 1, 'Gfdssds', '2023-04-14 18:58:08', '2023-04-14 18:58:08'),
(26, 1, 1, 'Welcome Bhaskar', '2023-04-14 19:07:00', '2023-04-14 19:07:00'),
(27, 1, 1, 'Good morning all', '2023-04-15 07:02:56', '2023-04-15 07:02:56'),
(28, 7, 1, 'మనం అభివృద్ది పథంలో పయనించాలంటే ఎప్పుడూ  updation తో ఉండాలి. ప్రస్తుత టెక్నాలజీని మరియు సొషల్ మీడియాను ఉపయోగించుకోవటం ఎంతో  అవసరం. ఆదిశగా నేను గతంలో రాష్ట్ర సంఘానికి చేసిన సూచన  పరులపాలైంది. ', '2023-04-15 07:43:04', '2023-04-15 07:43:04'),
(29, 7, 1, 'ప్రస్తుత  రాష్ట్ర సంఘం పుణఃప్రయత్నం చేయడం చాలా సంతోషంగానూ చాలా ఆనందంగానూ ఉంది . ఈ సందర్బంగా ఈ పురోగతిలో  పాలుపంచుకున్న ప్రతీఒక్కరికీ హృదయపూర్వక అబినందనలు మరియు ధన్యవాదాలు తెలియచేస్తున్నాను . ', '2023-04-15 07:43:10', '2023-04-15 07:43:10'),
(30, 1, 3, 'సర్ ఒకసారి మీ ప్రొఫైల్ అప్డేట్ చూసి చూడండి ఏమైనా ప్రాబ్లమ్స్ ఉంటే తెలియజేయండి', '2023-04-15 07:56:29', '2023-04-15 07:56:29'),
(31, 1, 1, 'Hi all', '2023-04-18 23:39:08', '2023-04-18 23:39:08'),
(32, 1, 3, 'ab@ameyem.com', '2023-04-24 09:22:31', '2023-04-24 09:22:31'),
(33, 1, 3, 'ab@ameyem.com', '2023-04-24 09:22:51', '2023-04-24 09:22:51'),
(34, 1, 3, 'ab@ameyem.com', '2023-04-24 09:23:12', '2023-04-24 09:23:12'),
(35, 1, 1, 'ab@ameyem.com', '2023-04-24 09:24:49', '2023-04-24 09:24:49'),
(36, 1, 3, 'ab@ameyem.com', '2023-04-24 09:25:19', '2023-04-24 09:25:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `surname` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `editing_village_id` int(11) DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `surname`, `name`, `username`, `email`, `email_verified_at`, `password`, `mobile`, `status`, `editing_village_id`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nalamara', 'Arun', 'arunnalamara', 'ab@ameyem.com', NULL, '$2y$10$zOqYFUxjXpx4ctSbv.iibOkVvyp/6SG9uSqD8vzMrs3yjUklnK/pS', '8800197778', 1, 1, 1, NULL, '2023-04-07 00:20:05', '2023-04-20 06:42:22'),
(2, 'Nalamara', 'Arun', 'arunbabu', 'ab2@ameyem.com', NULL, '$2y$10$C4pOauRV1Vun3jnoxumyi.Ap.KMVWdYsn2ApyUUkDnjxqFNhyrnM.', '8800197778', 1, 1, 1, NULL, '2023-04-07 00:20:05', '2023-04-07 00:20:05'),
(3, 'Nalamara', 'Arun', 'arun4', 'narun.iitb@gmail.com', NULL, '$2y$10$RfQpAGpdA7T2lE4mav48UOD.P625yfp4zWT.aK8QsfNaxp9/TCu9W', '8800197778', 1, NULL, NULL, NULL, '2023-04-07 00:37:23', '2023-04-07 23:23:32'),
(4, 'Neelam', 'Venugopal', 'Venugopalneelam', 'venuicwa@gmail.com', NULL, '$2y$10$9ZgGleBwMZeYcf0xDFUQZuxhbQigXxF4HSjHbTgASlqqNY.M.VY7K', '9581488578', 1, NULL, NULL, NULL, '2023-04-09 19:03:47', '2023-04-09 19:06:48'),
(5, 'Pappuri', 'Subbarao', 'Editorsubbu', 'editorsubbu2601@gmail.com', NULL, '$2y$10$Je/d39LSXD0eN.ZUC3IYpumOJEdAUu2CXSK4gRGlalZs/W4OFpX3m', '9951881222', 1, NULL, NULL, NULL, '2023-04-10 00:15:17', '2023-04-10 17:47:44'),
(6, 'kalle', 'bhaskar', NULL, 'bhaskar_818@rediffmail.com', NULL, '$2y$10$jQSJuLalvxsvCcitAzFv1./dBkjayS4LOaf/nSdZhqdX1T2wi/pgS', '9704125624', 1, NULL, NULL, NULL, '2023-04-14 18:30:02', '2023-04-14 18:30:48'),
(7, 'vummadichetty', 'janardhan', NULL, 'janardhan.yours@gmail.com', NULL, '$2y$10$5cbClXEmYttkdaSn79yvxe8YW/xQ7uq68hmVIADe4.w8HIxzfPkCK', '9494435306', 1, NULL, NULL, NULL, '2023-04-14 21:13:54', '2023-04-14 21:14:23'),
(8, 'Jalli', 'Venkat', NULL, 'jalli.venkat@gmail.com', NULL, '$2y$10$i9L.Gjj994YS22c78NI5CegYdLTnk4ZLwYbWc1oxfzAsuTc84RCwa', '8886889093', 1, NULL, NULL, NULL, '2023-04-16 15:31:46', '2023-04-16 15:32:23'),
(12, 'Surname', 'Name', NULL, 'arun.nalamara@gmail.com', NULL, '$2y$10$jDTQ.Qf.xaS6rCrl5t1fN.WgYSjGDmLrorGXuvVgs.oItASv0ujOm', '8800197778', 0, NULL, NULL, NULL, '2023-04-23 13:19:51', '2023-04-23 13:19:51'),
(13, 'Surname', 'Name', NULL, 'nalamara.arun@gmail.com', NULL, '$2y$10$yLNGBE4jrrXPPqeNijMjg.ZeMtpbwrJ3YBo2xfjWa3Z4cdnovvk3e', '8800197778', 1, NULL, NULL, NULL, '2023-04-23 17:19:34', '2023-04-23 17:21:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_for_tweet_id_foreign` (`for_tweet_id`),
  ADD KEY `comments_this_tweet_id_foreign` (`this_tweet_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_user_id_foreign` (`user_id`),
  ADD KEY `likes_tweet_id_foreign` (`tweet_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `retweets`
--
ALTER TABLE `retweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `retweets_user_id_foreign` (`user_id`),
  ADD KEY `retweets_for_tweet_id_foreign` (`for_tweet_id`),
  ADD KEY `retweets_this_tweet_id_foreign` (`this_tweet_id`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tweets_user_id_foreign` (`user_id`),
  ADD KEY `tweets_type_id_foreign` (`type_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `retweets`
--
ALTER TABLE `retweets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_for_tweet_id_foreign` FOREIGN KEY (`for_tweet_id`) REFERENCES `tweets` (`id`),
  ADD CONSTRAINT `comments_this_tweet_id_foreign` FOREIGN KEY (`this_tweet_id`) REFERENCES `tweets` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_tweet_id_foreign` FOREIGN KEY (`tweet_id`) REFERENCES `tweets` (`id`),
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `retweets`
--
ALTER TABLE `retweets`
  ADD CONSTRAINT `retweets_for_tweet_id_foreign` FOREIGN KEY (`for_tweet_id`) REFERENCES `tweets` (`id`),
  ADD CONSTRAINT `retweets_this_tweet_id_foreign` FOREIGN KEY (`this_tweet_id`) REFERENCES `tweets` (`id`),
  ADD CONSTRAINT `retweets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tweets`
--
ALTER TABLE `tweets`
  ADD CONSTRAINT `tweets_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`),
  ADD CONSTRAINT `tweets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
