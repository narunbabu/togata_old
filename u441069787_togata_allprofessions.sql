-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 26, 2023 at 01:27 PM
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
-- Table structure for table `all_professions`
--

CREATE TABLE `all_professions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `all_professions`
--

INSERT INTO `all_professions` (`id`, `name`, `created_by_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Central Administrative Services (IAS, IPS, IFS, IRS, etc.)', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(2, 'Central Investigative/Intelligence Agencies', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(3, 'State Administrative Services', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(4, 'PSU Management Positions (Chairman, Managing Director, Executive Director, General Manager, etc.)', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(5, 'PSU Specialist Roles (Engineers, HR, Finance, etc.)', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(6, 'Indian Armed Forces (Army, Navy, Air Force)', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(7, 'Central Armed Police Forces (CRPF, BSF, ITBP, SSB, CISF)', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(8, 'State Police/Paramilitary Forces', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(9, 'State Investigative/Anticorruption Agencies', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(10, 'State Transport Services (RTC driver, Conductor etc.)', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(11, 'Banking and Insurance: Management Positions (Chairman, Managing Director, Executive Director, General Manager, etc.)', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(12, 'Banking and Insurance: Specialist Roles (Probationary Officers, Specialist Officers, etc.)', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(13, 'Railway Administrative Positions (Chairman & CEO, General Manager, Divisional Railway Manager, etc.)', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(14, 'Railway Technical Positions (Engineers, Technicians, etc.)', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(15, 'Teaching Positions (Professor, Associate Professor, Assistant Professor, etc.)', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(16, 'Research Positions (Scientist, Research Associate, Project Manager, etc.)', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(17, 'Judges (Supreme Court, High Court, District Court)', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(18, 'Legal Professionals (Public Prosecutors, Legal Advisers, etc.)', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(19, 'Medical Professionals (Doctors, Nurses, Paramedics, etc.)', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(20, 'Medical Administrative Positions (Chief Medical Officer, Senior Medical Officer, etc.)', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(21, 'Medical Service Other (Nurses, technicians)', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(22, 'Engineering Positions (Civil, Mechanical, Electrical, etc.)', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(23, 'Scientific Positions (Research & Development, Project Management, etc.)', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(24, 'Forest and Environmental Officers', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(25, 'Wildlife and Conservation Specialists', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(26, 'Cultural, Tourism, and Sports Officers', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(27, 'Event Management and Promotion Specialists', 1, 1, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(28, 'Information Technology (IT) and Software Services', 1, 2, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(29, 'Banking, Finance, and Insurance', 1, 2, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(30, 'Manufacturing and Production', 1, 2, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(31, 'Healthcare and Pharmaceuticals', 1, 2, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(32, 'Retail and E-commerce', 1, 2, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(33, 'Telecommunications', 1, 2, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(34, 'Education and Research', 1, 2, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(35, 'Media and Entertainment', 1, 2, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(36, 'Travel, Tourism, and Hospitality', 1, 2, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(37, 'Real Estate and Construction', 1, 2, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(38, 'Logistics and Supply Chain', 1, 2, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(39, 'Energy and Utilities', 1, 2, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(40, 'Professional Services (Consulting, Legal, Accounting, etc.)', 1, 2, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(41, 'Non-Governmental Organizations (NGOs) and Social Enterprises', 1, 2, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(42, 'Retail Business (Grocery, Clothing, Electronics, etc.)', 1, 3, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(43, 'Wholesale Business (Distributor, Supplier, etc.)', 1, 3, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(44, 'Food and Beverage Business (Restaurant, Cafe, Catering, etc.)', 1, 3, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(45, 'Professional Services (Consulting, Legal, Accounting, etc.)', 1, 3, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(46, 'Healthcare Services (Clinic, Pharmacy, Diagnostic Center, etc.)', 1, 3, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(47, 'Real Estate (Property Management, Brokerage, etc.)', 1, 3, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(48, 'Automotive Services (Vehicle Sales, Repair, Spare Parts, etc.)', 1, 3, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(49, 'Tourism and Travel Services (Travel Agency, Tour Operator, etc.)', 1, 3, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(50, 'Beauty and Personal Care Services (Salon, Spa, etc.)', 1, 3, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(51, 'Event Management and Entertainment Services', 1, 3, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(52, 'Education and Training Services (Tutoring, Coaching, etc.)', 1, 3, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(53, 'Agriculture and Agribusiness (Professional Farming, Livestock, etc.)', 1, 3, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(54, 'Manufacturing and Production', 1, 3, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(55, 'Transportation and Logistics Services (Courier, Freight, etc.)', 1, 3, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(56, 'Crop Farming (Cotton, Mirchi, Cereals, Vegetables, Fruits, etc.)', 1, 4, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(57, 'Animal Husbandry (Dairy, Poultry, Goat, etc.)', 1, 4, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(58, 'Fisheries (Marine, Freshwater, Aquaculture)', 1, 4, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(59, 'Apiculture (Beekeeping)', 1, 4, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(60, 'Sericulture (Silk Farming)', 1, 4, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(61, 'Horticulture (Floriculture, Landscaping)', 1, 4, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(62, 'Organic Farming', 1, 4, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(63, 'Agroforestry (Tree Farming)', 1, 4, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(64, 'Handloom Weaving', 1, 4, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(65, 'Powerloom Weaving', 1, 4, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(66, 'Knitting and Crochet', 1, 4, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(67, 'Embroidery and Needlework', 1, 4, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(68, 'Traditional Textile Crafts (Block Printing, Batik, etc.)', 1, 4, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(69, 'Real Estate Developer', 1, 5, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(70, 'Building Contractor', 1, 5, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(71, 'Project Manager', 1, 5, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(72, 'Site Supervisor', 1, 5, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(73, 'Quantity Surveyor', 1, 5, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(74, 'Shop Worker', 1, 6, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(75, 'Construction Laborer', 1, 6, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(76, 'Agricultural Laborer', 1, 6, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(77, 'Domestic Helper', 1, 6, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(78, 'Driver (Truck, Bus, Taxi, Auto)', 1, 6, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(79, 'Journalist', 1, 7, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(80, 'TV/Radio Presenter', 1, 7, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(81, 'Content Creator (YouTube, Instagram, TikTok, etc.)', 1, 7, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(82, 'Social Media Manager', 1, 7, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(83, 'Digital Marketer', 1, 7, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(84, 'Graphic Designer', 1, 8, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(85, 'Web Developer', 1, 8, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(86, 'Writer (Content, Copy, Technical)', 1, 8, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(87, 'Consultant (Business, Marketing, IT, etc.)', 1, 8, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(88, 'Photographer/Videographer', 1, 8, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(89, 'Other', 1, 9, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(90, 'House wife', 1, 10, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(91, 'Student', 1, 11, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(92, 'Retired', 1, 12, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(93, 'Unemployed', 1, 13, '2023-05-26 18:53:44', '2023-05-26 18:53:44'),
(94, 'Not Applicable', 1, 14, '2023-05-26 18:53:44', '2023-05-26 18:53:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_professions`
--
ALTER TABLE `all_professions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `all_professions_created_by_id_foreign` (`created_by_id`),
  ADD KEY `all_professions_category_id_foreign` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_professions`
--
ALTER TABLE `all_professions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `all_professions`
--
ALTER TABLE `all_professions`
  ADD CONSTRAINT `all_professions_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `profession_categories` (`id`),
  ADD CONSTRAINT `all_professions_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
