-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2024 at 03:01 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`id`, `question`, `answer`) VALUES
(1, 'hello', 'Hello! How can I help you?'),
(2, 'how are you', 'I am just a bot, but I am functioning as expected!'),
(3, 'bye', 'Goodbye! Have a great day!'),
(4, 'what services do you offer', 'We offer web development, mobile app development, and digital marketing services.'),
(5, 'what is your pricing', 'Our pricing varies based on the project. Please contact us for a detailed quote.'),
(6, 'do you offer seo services', 'Yes, we offer comprehensive SEO services to help improve your website\'s visibility.'),
(7, 'how long does it take to build a website', 'The time it takes to build a website depends on the project scope. Typically, it can take anywhere from 4 to 12 weeks.'),
(8, 'can you develop e-commerce websites', 'Yes, we specialize in developing e-commerce websites using platforms like WooCommerce, Shopify, and Magento.'),
(9, 'do you provide website maintenance', 'Yes, we offer website maintenance services to ensure your site runs smoothly.'),
(10, 'can you create a custom website', 'Absolutely! We can create a custom website tailored to your specific needs.'),
(11, 'what technologies do you use', 'We use a variety of technologies including HTML, CSS, JavaScript, PHP, Laravel, React, and Angular.'),
(12, 'do you offer web hosting', 'Yes, we offer web hosting services to ensure your website is always accessible.'),
(13, 'can you redesign my website', 'Yes, we can redesign your website to give it a fresh, modern look.'),
(14, 'what is your development process', 'Our development process includes planning, design, development, testing, and deployment.'),
(15, 'do you provide content creation services', 'Yes, we offer content creation services including copywriting, graphic design, and video production.'),
(16, 'can you integrate third-party services', 'Yes, we can integrate third-party services such as payment gateways, CRM systems, and social media platforms.'),
(17, 'what payment methods do you accept', 'We accept various payment methods including credit cards, PayPal, and bank transfers.'),
(18, 'do you offer support after the website is launched', 'Yes, we offer ongoing support and maintenance after your website is launched.'),
(19, 'can you help with domain registration', 'Yes, we can assist with domain registration and management.'),
(20, 'do you offer email marketing services', 'Yes, we provide email marketing services to help you reach your audience effectively.'),
(21, 'can you develop mobile apps', 'Yes, we offer mobile app development services for both iOS and Android platforms.'),
(22, 'do you provide training on how to use the website', 'Yes, we provide training to help you manage and update your website.'),
(23, 'can you optimize my website for speed', 'Yes, we offer website optimization services to improve your site\'s speed and performance.'),
(24, 'what cms do you use', 'We use various CMS platforms including WordPress, Joomla, and Drupal.'),
(25, 'do you offer graphic design services', 'Yes, we provide graphic design services for logos, banners, and other visual content.'),
(26, 'can you create a blog for my website', 'Yes, we can create a blog section on your website and provide training on how to use it.'),
(27, 'do you offer social media integration', 'Yes, we can integrate social media platforms into your website.'),
(28, 'what is your refund policy', 'We offer refunds on a case-by-case basis. Please contact us for more details.'),
(29, 'how can I contact you', 'You can contact us via email, phone, or through our website contact form.'),
(30, 'do you offer custom software development', 'Yes, we provide custom software development services tailored to your business needs.'),
(31, 'can you help with website analytics', 'Yes, we offer website analytics services to help you track and understand your site\'s performance.'),
(32, 'do you offer a free consultation', 'Yes, we offer a free initial consultation to discuss your project requirements.'),
(33, 'can you create a multilingual website', 'Yes, we can develop multilingual websites to cater to a global audience.'),
(34, 'what is your team size', 'Our team consists of 20 experienced web developers, designers, and digital marketers.'),
(35, 'do you offer project management services', 'Yes, we provide project management services to ensure your project is completed on time and within budget.'),
(36, 'can you help with online advertising', 'Yes, we offer online advertising services including Google Ads and social media marketing.'),
(37, 'do you provide user testing', 'Yes, we offer user testing services to ensure your website provides a great user experience.'),
(38, 'can you develop custom plugins', 'Yes, we can develop custom plugins to extend the functionality of your website.'),
(39, 'do you offer branding services', 'Yes, we provide branding services including logo design, brand strategy, and brand guidelines.'),
(40, 'can you help with content migration', 'Yes, we can assist with content migration from your old website to the new one.'),
(41, 'what is your experience', 'We have over 10 years of experience in web development and digital marketing.'),
(42, 'do you offer security services', 'Yes, we offer website security services to protect your site from threats and vulnerabilities.'),
(43, 'can you integrate CRM systems', 'Yes, we can integrate CRM systems such as Salesforce and HubSpot into your website.'),
(44, 'do you provide hosting migration services', 'Yes, we can help you migrate your website to a new hosting provider.'),
(45, 'can you create interactive elements', 'Yes, we can create interactive elements such as forms, sliders, and animations for your website.'),
(46, 'do you offer A/B testing', 'Yes, we provide A/B testing services to help you optimize your website for better performance.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `responses`
--
ALTER TABLE `responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
