-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2021 at 06:12 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupons` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `returnorder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orders` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reports` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alluser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adminuserrole` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(25) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `brand`, `category`, `product`, `slider`, `coupons`, `shipping`, `blog`, `setting`, `returnorder`, `review`, `orders`, `stock`, `reports`, `alluser`, `adminuserrole`, `type`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2021-02-02 15:36:52', '$2y$10$1IAnWz9JmMWYqwKk/Hua4.ophwWsqJHkP03Uz.X332eduOPOI4n7m', '34343434', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, '411TZHzVFy56UOVwpuh58CCAW1h7BFsHbvsHJ5kEI0FnstXtr3HJRLWHIHP0', NULL, '202102052224images.png', '2021-02-02 15:36:52', '2021-02-05 17:01:12'),
(2, 'test', 'test@gmail.com', NULL, '$2y$10$BriM5goGI3sRlwtlwTyiBulr7k94DtKIfKtHujowg/L7V31xEOapu', '43434343', NULL, NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 'upload/admin_images/1695601760025664.jpg', '2021-03-29 17:50:37', '2021-03-29 17:50:37'),
(3, 'hello', 'hello@gmail.com', NULL, '$2y$10$0gb.urbBzEayr7HhSv7diuHyAeGgh.RIATiFEmcOKNVo14E4zxBBS', '343434111', '1', NULL, '1', '1', NULL, NULL, '1', '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, 2, NULL, NULL, 'upload/admin_images/1695604311132468.png', '2021-03-29 17:48:15', '2021-03-29 17:48:15');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE IF NOT EXISTS `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `post_title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_details_hin` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `category_id`, `post_title_en`, `post_title_hin`, `post_slug_en`, `post_slug_hin`, `post_image`, `post_details_en`, `post_details_hin`, `created_at`, `updated_at`) VALUES
(1, 3, 'What is Lorem Ipsum?', 'ट्विटर स्वचालित अनुवाद का परीक्षण कर रहा है', 'what-is-lorem-ipsum?', 'ट्विटर-स्वचालित-अनुवाद-का-परीक्षण-कर-रहा-है', 'upload/post/1695147561533345.jpg', '<p>Here at CBD For The People, we don&#39;t release a product until certain that it can be the best option on the market. For years, our customers have been asking us why we&#39;ve yet to introduce gummies to our product lineup, despite gummies being one of the most popular types of hemp products since cannabidiol first hit the scene years ago.&nbsp;&nbsp;</p>\r\n\r\n<p>Well, our answer is simple. Our company has been spending years hard at work figuring out how to ensure that our gummies outshine the competition by being the most effective, delicious and high-quality options on the market.&nbsp;&nbsp;</p>\r\n\r\n<p>And, at long last, we can finally introduce to you our Gummy NOIDS, which we can confidently say are unlike any other CBD gummies that you will find today. These gummies result from amazing dedication to ensuring that the formula itself meets our incredibly high standards.</p>\r\n\r\n<p>&nbsp;What makes CBD FTP Gummy NOIDS the real deal?</p>\r\n\r\n<p>CBD FTP Gummy NOIDS is the perfect way to consume hemp each day in edible form, and they have what it takes to give you the hemp experience you&#39;re looking for.</p>\r\n\r\n<p>Full spectrum hemp:&nbsp;FTP Gummy NOIDS are made with full-spectrum hemp extract, which shouldn&#39;t surprise anyone who has been a customer of ours for a while. We only use full-spectrum hemp extract because research has shown that it is simply the best way to consume the hemp plant. Full-spectrum hemp naturally contains every naturally occurring chemical compound in the hemp plant&#39;s buds; each compound is incredibly useful in its way, playing an important role in delivering desirable properties to the body.</p>\r\n\r\n<p>Full-spectrum hemp extract also offers the entourage effect, which has to do with the synergistic advantage of taking all of the compounds together at once. Full-spectrum hemp is generally more effective, as each compound boosts the bioavailability of the others through this natural synergistic process.</p>\r\n\r\n<p>Dark and unrefined:&nbsp;CBD For The People&nbsp;believes that hemp should be unrefined and uncut, which is why we do not engage in all of the purification processes used by other companies. Purification sounds good in theory, but its real aim is to weaken hemp&#39;s natural taste and give it an attractive color to appeal to the masses more. These processes ultimately dilute the plant&#39;s chemical compounds and take away from the entourage effect.&nbsp;&nbsp;&nbsp;</p>', '<p>सीबीडी फॉर द पीपल पर, हम किसी उत्पाद को तब तक जारी नहीं करते हैं जब तक कि यह बाजार पर सबसे अच्छा विकल्प न हो। सालों से, हमारे ग्राहक हमसे पूछते रहे हैं कि क्यों हम अभी तक अपने उत्पाद लाइनअप के लिए गमियों को पेश करना चाहते हैं, गमियों को सबसे लोकप्रिय प्रकार के भांग उत्पादों में से एक होने के बावजूद, क्योंकि कैनबिडिओल ने सबसे पहले इस दृश्य को हिट किया।</p>\r\n\r\n<p>खैर, हमारा जवाब आसान है। हमारी कंपनी वर्षों से मेहनत कर रही है कि कैसे यह सुनिश्चित करें कि हमारी gummies बाजार पर सबसे प्रभावी, स्वादिष्ट और उच्च गुणवत्ता वाले विकल्प बनकर प्रतिस्पर्धा को बढ़ावा दे।</p>\r\n\r\n<p>और, लंबे समय तक, हम अंत में आपको हमारे गमी एड्स से परिचित करा सकते हैं, जिसे हम विश्वास के साथ कह सकते हैं कि किसी भी अन्य सीबीडी गमियों के विपरीत हैं जो आपको आज मिलेंगे। इन गमियों का परिणाम अद्भुत समर्पण से यह सुनिश्चित करने के लिए है कि सूत्र स्वयं हमारे अविश्वसनीय उच्च मानकों को पूरा करता है।</p>\r\n\r\n<p>क्या सीबीडी एफ़टीपी गमी एड्स असली सौदा है?</p>\r\n\r\n<p>CBD FTP Gummy NOIDS हर दिन खाद्य रूप में गांजा का सेवन करने का एक सही तरीका है, और आपके पास वह गांजा अनुभव है जिसे आप खोज रहे हैं।</p>\r\n\r\n<p>फुल स्पेक्ट्रम हैम्प: एफ़टीपी गमी एड्स फुल-स्पेक्ट्रम हैम्प एक्सट्रैक्ट के साथ बनाये जाते हैं, जो किसी को भी आश्चर्यचकित नहीं करना चाहिए जो कुछ समय के लिए हमारा ग्राहक रहा है। हम केवल पूर्ण-स्पेक्ट्रम गांजा निकालने का उपयोग करते हैं क्योंकि अनुसंधान से पता चला है कि यह भांग के पौधे का उपभोग करने का सबसे अच्छा तरीका है। फुल-स्पेक्ट्रम हेम्प में स्वाभाविक रूप से हेम प्लांट की कलियों में हर प्राकृतिक रूप से पाए जाने वाले रासायनिक यौगिक होते हैं; प्रत्येक यौगिक अपने तरीके से अविश्वसनीय रूप से उपयोगी है, जो शरीर को वांछनीय गुण प्रदान करने में महत्वपूर्ण भूमिका निभा रहा है।</p>\r\n\r\n<p>फुल-स्पेक्ट्रम हेम्प एक्सट्रैक्ट भी प्रभाव प्रदान करता है, जो सभी यौगिकों को एक साथ लेने के सहक्रियात्मक लाभ के साथ करना है। पूर्ण-स्पेक्ट्रम गांजा आम तौर पर अधिक प्रभावी होता है, क्योंकि प्रत्येक यौगिक इस प्राकृतिक तालमेल प्रक्रिया के माध्यम से दूसरों की जैव उपलब्धता को बढ़ाता है।</p>\r\n\r\n<p>डार्क एंड अनरिफाइंड: सीबीडी फॉर द पीपल का मानना ​​है कि गांजा अपरिष्कृत और अपरिष्कृत होना चाहिए, यही कारण है कि हम अन्य कंपनियों द्वारा उपयोग किए जाने वाले सभी शुद्धिकरण प्रक्रियाओं में संलग्न नहीं होते हैं। शुद्धिकरण सिद्धांत में अच्छा लगता है, लेकिन इसका असली उद्देश्य भांग के प्राकृतिक स्वाद को कमजोर करना है और इसे बड़े पैमाने पर लोगों के लिए अपील करने के लिए एक आकर्षक रंग देना है। ये प्रक्रियाएं अंततः पौधे के रासायनिक यौगिकों को पतला कर देती हैं और अंतःस्रावी प्रभाव से दूर ले जाती हैं।</p>', '2021-03-24 21:23:23', NULL),
(2, 3, 'These CBD Gummies Are Full Spectrum And Flavorful', 'ये CBD Gummies फुल स्पेक्ट्रम और फ्लेवरफुल हैं', 'these-cbd-gummies-are-full-spectrum-and-flavorful', 'ये-CBD-Gummies-फुल-स्पेक्ट्रम-और-फ्लेवरफुल-हैं', 'upload/post/1695147664666717.jpg', '<p>Here at CBD For The People, we don&#39;t release a product until certain that it can be the best option on the market. For years, our customers have been asking us why we&#39;ve yet to introduce gummies to our product lineup, despite gummies being one of the most popular types of hemp products since cannabidiol first hit the scene years ago.&nbsp;&nbsp;</p>\r\n\r\n<p>Well, our answer is simple. Our company has been spending years hard at work figuring out how to ensure that our gummies outshine the competition by being the most effective, delicious and high-quality options on the market.&nbsp;&nbsp;</p>\r\n\r\n<p>And, at long last, we can finally introduce to you our Gummy NOIDS, which we can confidently say are unlike any other CBD gummies that you will find today. These gummies result from amazing dedication to ensuring that the formula itself meets our incredibly high standards.</p>\r\n\r\n<p>&nbsp;What makes CBD FTP Gummy NOIDS the real deal?</p>\r\n\r\n<p>CBD FTP Gummy NOIDS is the perfect way to consume hemp each day in edible form, and they have what it takes to give you the hemp experience you&#39;re looking for.</p>\r\n\r\n<p>Full spectrum hemp:&nbsp;FTP Gummy NOIDS are made with full-spectrum hemp extract, which shouldn&#39;t surprise anyone who has been a customer of ours for a while. We only use full-spectrum hemp extract because research has shown that it is simply the best way to consume the hemp plant. Full-spectrum hemp naturally contains every naturally occurring chemical compound in the hemp plant&#39;s buds; each compound is incredibly useful in its way, playing an important role in delivering desirable properties to the body.</p>\r\n\r\n<p>Full-spectrum hemp extract also offers the entourage effect, which has to do with the synergistic advantage of taking all of the compounds together at once. Full-spectrum hemp is generally more effective, as each compound boosts the bioavailability of the others through this natural synergistic process.</p>\r\n\r\n<p>Dark and unrefined:&nbsp;CBD For The People&nbsp;believes that hemp should be unrefined and uncut, which is why we do not engage in all of the purification processes used by other companies. Purification sounds good in theory, but its real aim is to weaken hemp&#39;s natural taste and give it an attractive color to appeal to the masses more. These processes ultimately dilute the plant&#39;s chemical compounds and take away from the entourage effect.&nbsp;&nbsp;&nbsp;</p>', '<p>सीबीडी फॉर द पीपल पर, हम किसी उत्पाद को तब तक जारी नहीं करते हैं जब तक कि यह बाजार पर सबसे अच्छा विकल्प न हो। सालों से, हमारे ग्राहक हमसे पूछते रहे हैं कि क्यों हम अभी तक अपने उत्पाद लाइनअप के लिए गमियों को पेश करना चाहते हैं, गमियों को सबसे लोकप्रिय प्रकार के भांग उत्पादों में से एक होने के बावजूद, क्योंकि कैनबिडिओल ने सबसे पहले इस दृश्य को हिट किया।</p>\r\n\r\n<p>खैर, हमारा जवाब आसान है। हमारी कंपनी वर्षों से मेहनत कर रही है कि कैसे यह सुनिश्चित करें कि हमारी gummies बाजार पर सबसे प्रभावी, स्वादिष्ट और उच्च गुणवत्ता वाले विकल्प बनकर प्रतिस्पर्धा को बढ़ावा दे।</p>\r\n\r\n<p>और, लंबे समय तक, हम अंत में आपको हमारे गमी एड्स से परिचित करा सकते हैं, जिसे हम विश्वास के साथ कह सकते हैं कि किसी भी अन्य सीबीडी गमियों के विपरीत हैं जो आपको आज मिलेंगे। इन गमियों का परिणाम अद्भुत समर्पण से यह सुनिश्चित करने के लिए है कि सूत्र स्वयं हमारे अविश्वसनीय उच्च मानकों को पूरा करता है।</p>\r\n\r\n<p>क्या सीबीडी एफ़टीपी गमी एड्स असली सौदा है?</p>\r\n\r\n<p>CBD FTP Gummy NOIDS हर दिन खाद्य रूप में गांजा का सेवन करने का एक सही तरीका है, और आपके पास वह गांजा अनुभव है जिसे आप खोज रहे हैं।</p>\r\n\r\n<p>फुल स्पेक्ट्रम हैम्प: एफ़टीपी गमी एड्स फुल-स्पेक्ट्रम हैम्प एक्सट्रैक्ट के साथ बनाये जाते हैं, जो किसी को भी आश्चर्यचकित नहीं करना चाहिए जो कुछ समय के लिए हमारा ग्राहक रहा है। हम केवल पूर्ण-स्पेक्ट्रम गांजा निकालने का उपयोग करते हैं क्योंकि अनुसंधान से पता चला है कि यह भांग के पौधे का उपभोग करने का सबसे अच्छा तरीका है। फुल-स्पेक्ट्रम हेम्प में स्वाभाविक रूप से हेम प्लांट की कलियों में हर प्राकृतिक रूप से पाए जाने वाले रासायनिक यौगिक होते हैं; प्रत्येक यौगिक अपने तरीके से अविश्वसनीय रूप से उपयोगी है, जो शरीर को वांछनीय गुण प्रदान करने में महत्वपूर्ण भूमिका निभा रहा है।</p>\r\n\r\n<p>फुल-स्पेक्ट्रम हेम्प एक्सट्रैक्ट भी प्रभाव प्रदान करता है, जो सभी यौगिकों को एक साथ लेने के सहक्रियात्मक लाभ के साथ करना है। पूर्ण-स्पेक्ट्रम गांजा आम तौर पर अधिक प्रभावी होता है, क्योंकि प्रत्येक यौगिक इस प्राकृतिक तालमेल प्रक्रिया के माध्यम से दूसरों की जैव उपलब्धता को बढ़ाता है।</p>\r\n\r\n<p>डार्क एंड अनरिफाइंड: सीबीडी फॉर द पीपल का मानना ​​है कि गांजा अपरिष्कृत और अपरिष्कृत होना चाहिए, यही कारण है कि हम अन्य कंपनियों द्वारा उपयोग किए जाने वाले सभी शुद्धिकरण प्रक्रियाओं में संलग्न नहीं होते हैं। शुद्धिकरण सिद्धांत में अच्छा लगता है, लेकिन इसका असली उद्देश्य भांग के प्राकृतिक स्वाद को कमजोर करना है और इसे बड़े पैमाने पर लोगों के लिए अपील करने के लिए एक आकर्षक रंग देना है। ये प्रक्रियाएं अंततः पौधे के रासायनिक यौगिकों को पतला कर देती हैं और अंतःस्रावी प्रभाव से दूर ले जाती हैं।</p>', '2021-03-24 21:23:36', NULL),
(3, 1, 'Fintech Startup Qraft Technologies', 'फिनटेक स्टार्टअप क्राफ्ट टेक्नोलॉजीज', 'fintech-startup-qraft-technologies', 'फिनटेक-स्टार्टअप-क्राफ्ट-टेक्नोलॉजीज', 'upload/post/1695147735524570.png', '<p>Here at CBD For The People, we don&#39;t release a product until certain that it can be the best option on the market. For years, our customers have been asking us why we&#39;ve yet to introduce gummies to our product lineup, despite gummies being one of the most popular types of hemp products since cannabidiol first hit the scene years ago.&nbsp;&nbsp;</p>\r\n\r\n<p>Well, our answer is simple. Our company has been spending years hard at work figuring out how to ensure that our gummies outshine the competition by being the most effective, delicious and high-quality options on the market.&nbsp;&nbsp;</p>\r\n\r\n<p>And, at long last, we can finally introduce to you our Gummy NOIDS, which we can confidently say are unlike any other CBD gummies that you will find today. These gummies result from amazing dedication to ensuring that the formula itself meets our incredibly high standards.</p>\r\n\r\n<p>&nbsp;What makes CBD FTP Gummy NOIDS the real deal?</p>\r\n\r\n<p>CBD FTP Gummy NOIDS is the perfect way to consume hemp each day in edible form, and they have what it takes to give you the hemp experience you&#39;re looking for.</p>\r\n\r\n<p>Full spectrum hemp:&nbsp;FTP Gummy NOIDS are made with full-spectrum hemp extract, which shouldn&#39;t surprise anyone who has been a customer of ours for a while. We only use full-spectrum hemp extract because research has shown that it is simply the best way to consume the hemp plant. Full-spectrum hemp naturally contains every naturally occurring chemical compound in the hemp plant&#39;s buds; each compound is incredibly useful in its way, playing an important role in delivering desirable properties to the body.</p>\r\n\r\n<p>Full-spectrum hemp extract also offers the entourage effect, which has to do with the synergistic advantage of taking all of the compounds together at once. Full-spectrum hemp is generally more effective, as each compound boosts the bioavailability of the others through this natural synergistic process.</p>\r\n\r\n<p>Dark and unrefined:&nbsp;CBD For The People&nbsp;believes that hemp should be unrefined and uncut, which is why we do not engage in all of the purification processes used by other companies. Purification sounds good in theory, but its real aim is to weaken hemp&#39;s natural taste and give it an attractive color to appeal to the masses more. These processes ultimately dilute the plant&#39;s chemical compounds and take away from the entourage effect.&nbsp;&nbsp;&nbsp;</p>', '<p>सीबीडी फॉर द पीपल पर, हम किसी उत्पाद को तब तक जारी नहीं करते हैं जब तक कि यह बाजार पर सबसे अच्छा विकल्प न हो। सालों से, हमारे ग्राहक हमसे पूछते रहे हैं कि क्यों हम अभी तक अपने उत्पाद लाइनअप के लिए गमियों को पेश करना चाहते हैं, गमियों को सबसे लोकप्रिय प्रकार के भांग उत्पादों में से एक होने के बावजूद, क्योंकि कैनबिडिओल ने सबसे पहले इस दृश्य को हिट किया।</p>\r\n\r\n<p>खैर, हमारा जवाब आसान है। हमारी कंपनी वर्षों से मेहनत कर रही है कि कैसे यह सुनिश्चित करें कि हमारी gummies बाजार पर सबसे प्रभावी, स्वादिष्ट और उच्च गुणवत्ता वाले विकल्प बनकर प्रतिस्पर्धा को बढ़ावा दे।</p>\r\n\r\n<p>और, लंबे समय तक, हम अंत में आपको हमारे गमी एड्स से परिचित करा सकते हैं, जिसे हम विश्वास के साथ कह सकते हैं कि किसी भी अन्य सीबीडी गमियों के विपरीत हैं जो आपको आज मिलेंगे। इन गमियों का परिणाम अद्भुत समर्पण से यह सुनिश्चित करने के लिए है कि सूत्र स्वयं हमारे अविश्वसनीय उच्च मानकों को पूरा करता है।</p>\r\n\r\n<p>क्या सीबीडी एफ़टीपी गमी एड्स असली सौदा है?</p>\r\n\r\n<p>CBD FTP Gummy NOIDS हर दिन खाद्य रूप में गांजा का सेवन करने का एक सही तरीका है, और आपके पास वह गांजा अनुभव है जिसे आप खोज रहे हैं।</p>\r\n\r\n<p>फुल स्पेक्ट्रम हैम्प: एफ़टीपी गमी एड्स फुल-स्पेक्ट्रम हैम्प एक्सट्रैक्ट के साथ बनाये जाते हैं, जो किसी को भी आश्चर्यचकित नहीं करना चाहिए जो कुछ समय के लिए हमारा ग्राहक रहा है। हम केवल पूर्ण-स्पेक्ट्रम गांजा निकालने का उपयोग करते हैं क्योंकि अनुसंधान से पता चला है कि यह भांग के पौधे का उपभोग करने का सबसे अच्छा तरीका है। फुल-स्पेक्ट्रम हेम्प में स्वाभाविक रूप से हेम प्लांट की कलियों में हर प्राकृतिक रूप से पाए जाने वाले रासायनिक यौगिक होते हैं; प्रत्येक यौगिक अपने तरीके से अविश्वसनीय रूप से उपयोगी है, जो शरीर को वांछनीय गुण प्रदान करने में महत्वपूर्ण भूमिका निभा रहा है।</p>\r\n\r\n<p>फुल-स्पेक्ट्रम हेम्प एक्सट्रैक्ट भी प्रभाव प्रदान करता है, जो सभी यौगिकों को एक साथ लेने के सहक्रियात्मक लाभ के साथ करना है। पूर्ण-स्पेक्ट्रम गांजा आम तौर पर अधिक प्रभावी होता है, क्योंकि प्रत्येक यौगिक इस प्राकृतिक तालमेल प्रक्रिया के माध्यम से दूसरों की जैव उपलब्धता को बढ़ाता है।</p>\r\n\r\n<p>डार्क एंड अनरिफाइंड: सीबीडी फॉर द पीपल का मानना ​​है कि गांजा अपरिष्कृत और अपरिष्कृत होना चाहिए, यही कारण है कि हम अन्य कंपनियों द्वारा उपयोग किए जाने वाले सभी शुद्धिकरण प्रक्रियाओं में संलग्न नहीं होते हैं। शुद्धिकरण सिद्धांत में अच्छा लगता है, लेकिन इसका असली उद्देश्य भांग के प्राकृतिक स्वाद को कमजोर करना है और इसे बड़े पैमाने पर लोगों के लिए अपील करने के लिए एक आकर्षक रंग देना है। ये प्रक्रियाएं अंततः पौधे के रासायनिक यौगिकों को पतला कर देती हैं और अंतःस्रावी प्रभाव से दूर ले जाती हैं।</p>', '2021-03-24 21:23:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_categories`
--

CREATE TABLE IF NOT EXISTS `blog_post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `blog_category_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_name_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_post_categories`
--

INSERT INTO `blog_post_categories` (`id`, `blog_category_name_en`, `blog_category_name_hin`, `blog_category_slug_en`, `blog_category_slug_hin`, `created_at`, `updated_at`) VALUES
(1, 'Tech', 'तकनीक', 'tech', 'तकनीक', NULL, NULL),
(2, 'Wealth', 'पैसा', 'wealth', 'पैसा', '2021-03-24 13:03:37', NULL),
(3, 'Technology', 'प्रौद्योगिकी', 'technology', 'प्रौद्योगिकी', '2021-03-24 13:04:25', NULL),
(4, 'Marketing222', 'विपणन222', 'marketing222', 'विपणन222', '2021-03-24 13:14:38', '2021-03-24 13:14:38');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_name_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name_en`, `brand_name_hin`, `brand_slug_en`, `brand_slug_hin`, `brand_image`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', 'सैमसंग', 'samsung', 'सैमसंग', 'upload/brand/1691209622019189.png', NULL, NULL),
(2, 'Xiaomi', 'श्याओमी', 'xiaomi', 'श्याओमी', 'upload/brand/1691209839163555.png', NULL, NULL),
(3, 'Apple', 'सेब', 'apple', 'सेब', 'upload/brand/1691209870345575.png', NULL, NULL),
(4, 'Oppo', 'ओप्पो', 'oppo', 'ओप्पो', 'upload/brand/1691209896492269.png', NULL, NULL),
(5, 'Vivo', 'विवो', 'vivo', 'विवो', 'upload/brand/1691209919264366.png', NULL, NULL),
(6, 'Huawei', 'हुवाई', 'huawei', 'हुवाई', 'upload/brand/1691211972322769.png', NULL, '2021-02-09 04:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name_en`, `category_name_hin`, `category_slug_en`, `category_slug_hin`, `category_icon`, `created_at`, `updated_at`) VALUES
(7, 'Fashion', 'फैशन', 'fashion', 'फैशन', 'fa fa-paw', NULL, '2021-02-22 15:26:14'),
(8, 'Electronics', 'इलेक्ट्रानिक्स', 'electronics', 'इलेक्ट्रानिक्स', 'fa fa-user', NULL, NULL),
(9, 'Sweet Home', 'प्यारा घर', 'sweet-home', 'प्यारा-घर', 'fa fa-shopping-cart', NULL, NULL),
(10, 'Appliances', 'उपकरण', 'appliances', 'उपकरण', 'fa fa-shopping-bag', NULL, '2021-02-22 15:25:13'),
(11, 'Beauty', 'सुंदरता', 'beauty', 'सुंदरता', 'fa fa-laptop', NULL, '2021-02-22 15:25:48');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE IF NOT EXISTS `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `coupon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_discount` int(11) NOT NULL,
  `coupon_validity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_discount`, `coupon_validity`, `status`, `created_at`, `updated_at`) VALUES
(1, 'HAPPY NEW YEAR', 201, '2021-03-30', 1, '2021-03-03 16:05:26', '2021-03-03 16:05:26'),
(2, 'TEST', 20, '2021-02-10', 1, '2021-03-03 15:46:50', NULL),
(4, 'HAPPY LEARNING', 30, '2021-03-30', 1, '2021-03-03 16:05:53', NULL),
(5, 'EASY LEARNING', 20, '2021-04-30', 1, '2021-04-10 14:06:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_02_02_203839_create_sessions_table', 1),
(7, '2021_02_02_212221_create_admins_table', 2),
(8, '2021_02_09_054528_create_brands_table', 3),
(9, '2021_02_09_111701_create_categories_table', 4),
(10, '2021_02_09_121910_create_sub_categories_table', 5),
(11, '2021_02_16_183944_create_sub_sub_categories_table', 6),
(12, '2021_02_16_204006_create_products_table', 7),
(13, '2021_02_16_205349_create_multi_imgs_table', 7),
(14, '2021_02_20_204829_create_sliders_table', 8),
(15, '2021_03_02_194613_create_wishlists_table', 9),
(16, '2021_03_03_211157_create_coupons_table', 10),
(17, '2021_03_03_222308_create_ship_divisions_table', 11),
(18, '2021_03_09_183956_create_ship_districts_table', 12),
(19, '2021_03_09_194733_create_ship_states_table', 13),
(20, '2021_03_11_201106_create_shippings_table', 14),
(21, '2021_03_14_203654_create_orders_table', 15),
(22, '2021_03_14_203901_create_order_items_table', 15),
(23, '2021_03_24_183649_create_blog_post_categories_table', 16),
(24, '2021_03_24_194838_create_blog_posts_table', 17),
(25, '2021_03_24_223430_create_site_settings_table', 18),
(26, '2021_03_26_194141_create_seos_table', 19),
(27, '2021_03_27_192140_create_reviews_table', 20);

-- --------------------------------------------------------

--
-- Table structure for table `multi_imgs`
--

CREATE TABLE IF NOT EXISTS `multi_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `photo_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `product_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'upload/products/multi-image/1692065308417794.jpeg', '2021-02-18 14:13:46', NULL),
(2, 1, 'upload/products/multi-image/1692065308955858.jpeg', '2021-02-18 14:13:47', NULL),
(3, 1, 'upload/products/multi-image/1692065309489786.jpeg', '2021-02-18 14:13:47', NULL),
(4, 1, 'upload/products/multi-image/1692065310111315.jpeg', '2021-02-18 14:13:48', NULL),
(5, 1, 'upload/products/multi-image/1692065310564033.jpeg', '2021-02-18 14:13:48', NULL),
(9, 3, 'upload/products/multi-image/1692067277985229.jpeg', '2021-02-18 14:45:04', NULL),
(10, 3, 'upload/products/multi-image/1692067278384233.jpeg', '2021-02-18 14:45:05', NULL),
(11, 3, 'upload/products/multi-image/1692067278755983.jpeg', '2021-02-18 14:45:05', NULL),
(12, 4, 'upload/products/multi-image/1692434617371894.jpeg', '2021-02-22 16:03:47', NULL),
(13, 4, 'upload/products/multi-image/1692434617964727.jpeg', '2021-02-22 16:03:47', NULL),
(14, 5, 'upload/products/multi-image/1692434756683622.jpeg', '2021-02-22 16:06:00', NULL),
(15, 5, 'upload/products/multi-image/1692434757242803.jpeg', '2021-02-22 16:06:00', NULL),
(16, 5, 'upload/products/multi-image/1692434757798923.jpeg', '2021-02-22 16:06:01', NULL),
(17, 6, 'upload/products/multi-image/1692434892672340.jpeg', '2021-02-22 16:08:09', NULL),
(18, 7, 'upload/products/multi-image/1692435015295836.jpeg', '2021-02-22 16:10:06', NULL),
(19, 7, 'upload/products/multi-image/1692435015729243.jpeg', '2021-02-22 16:10:07', NULL),
(20, 7, 'upload/products/multi-image/1692435016210628.jpeg', '2021-02-22 16:10:07', NULL),
(21, 8, 'upload/products/multi-image/1692435198442301.jpeg', '2021-02-22 16:13:01', NULL),
(22, 8, 'upload/products/multi-image/1692435198812554.jpeg', '2021-02-22 16:13:01', NULL),
(23, 9, 'upload/products/multi-image/1692435294308001.jpeg', '2021-02-22 16:14:32', NULL),
(24, 9, 'upload/products/multi-image/1692435294741496.jpeg', '2021-02-22 16:14:33', NULL),
(25, 10, 'upload/products/multi-image/1692435397186949.jpeg', '2021-02-22 16:16:10', NULL),
(26, 10, 'upload/products/multi-image/1692435397621306.jpeg', '2021-02-22 16:16:11', NULL),
(27, 11, 'upload/products/multi-image/1692435522145178.jpeg', '2021-02-22 16:18:09', NULL),
(28, 11, 'upload/products/multi-image/1692435522521654.jpeg', '2021-02-22 16:18:10', NULL),
(29, 11, 'upload/products/multi-image/1692435522990857.jpeg', '2021-02-22 16:18:10', NULL),
(30, 12, 'upload/products/multi-image/1696782744767125.jpeg', '2021-04-11 15:55:24', NULL),
(31, 12, 'upload/products/multi-image/1696782745223009.jpeg', '2021-04-11 15:55:25', NULL),
(32, 12, 'upload/products/multi-image/1696782745738394.jpeg', '2021-04-11 15:55:25', NULL),
(33, 12, 'upload/products/multi-image/1696782746215973.jpeg', '2021-04-11 15:55:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmed_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processing_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picked_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipped_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `return_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `division_id`, `district_id`, `state_id`, `name`, `email`, `phone`, `post_code`, `notes`, `payment_type`, `payment_method`, `transaction_id`, `currency`, `amount`, `order_number`, `invoice_no`, `order_date`, `order_month`, `order_year`, `confirmed_date`, `processing_date`, `picked_date`, `shipped_date`, `delivered_date`, `cancel_date`, `return_date`, `return_order`, `return_reason`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 'User', 'user@gmail.com', '232323233', 3433434, 'dsfsdafsd', 'card_1IV2N7ALc6pn5BvMpVhkE3iq', 'Stripe', 'txn_1IV2N8ALc6pn5BvM6eHoAiGV', 'usd', 840.00, '604e8d4cdd003', 'EOS62246852', '14 March 2021', 'March', '2021', NULL, NULL, NULL, NULL, NULL, NULL, '26 March 2021', '2', 'Broken Product', 'delivered', '2021-03-14 16:25:18', '2021-03-26 15:48:14'),
(2, 1, 1, 1, 1, 'User', 'user@gmail.com', '232323233', 3434344, 'test', 'card_1IV2TrALc6pn5BvMAqQzyGcM', 'Stripe', 'txn_1IV2TtALc6pn5BvM9tIbusWv', 'usd', 1890.00, '604e8eef4c099', 'EOS20726967', '14 March 2021', 'March', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'processing', '2021-03-14 16:32:16', NULL),
(3, 1, 1, 1, 1, 'User', 'user@gmail.com', '232323233', 23223, 'fdsfsdfa', 'card_1IVMfGALc6pn5BvM6Zjbjj3p', 'Stripe', 'txn_1IVMfJALc6pn5BvMeUywpmVU', 'usd', 840.00, '604fbe03c727a', 'EOS45273629', '15 March 2021', 'March', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'delivered', '2021-03-15 14:05:29', '2021-03-30 15:45:11'),
(4, 1, 1, 1, 1, 'User', 'user@gmail.com', '232323233', 3433434, 'dfsfsdf', 'card_1IVMlsALc6pn5BvMWTUsDN2v', 'Stripe', 'txn_1IVMluALc6pn5BvMV3FCTZYz', 'usd', 1680.00, '604fbf9d4ab8e', 'EOS89888482', '15 March 2021', 'March', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'delivered', '2021-03-15 14:12:14', '2021-03-30 15:37:18'),
(5, 1, 1, 1, 1, 'User', 'user@gmail.com', '232323233', 434343, 'sadfasdf', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 840.00, NULL, 'EOS12797593', '15 March 2021', 'March', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'delivered', '2021-03-15 17:52:24', '2021-03-29 13:35:09'),
(6, 1, 1, 1, 1, 'User', 'user@gmail.com', '232323233', 434343, 'sdfsdfasdf', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 280.00, NULL, 'EOS92948923', '15 March 2021', 'March', '2021', NULL, NULL, NULL, NULL, NULL, NULL, '26 March 2021', '1', 'Wrong Product', 'delivered', '2021-03-15 17:55:24', '2021-03-26 15:18:29'),
(7, 1, 1, 1, 1, 'User', 'user@gmail.com', '232323233', 343434, 'sdfsadfasd', 'card_1IVQHhALc6pn5BvMgewlcR5w', 'Stripe', 'txn_1IVQHjALc6pn5BvMa65krkYi', 'usd', 1500.00, '604ff45df3f31', 'EOS12420971', '15 March 2021', 'March', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'confirm', '2021-03-15 17:57:20', '2021-03-20 13:36:45'),
(8, 1, 1, 1, 1, 'User', 'user@gmail.com', '232323233', 3434, 'nice', 'card_1IemPbALc6pn5BvMzT3Vd62S', 'Stripe', 'txn_1IemPfALc6pn5BvMftO9UxWx', 'usd', 2400.00, '6071fb58a749a', 'EOS83852139', '10 April 2021', 'April', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'pending', '2021-04-10 13:24:15', NULL),
(9, 1, 1, 1, 1, 'User', 'user@gmail.com', '232323233', 3434, 'great', 'card_1IemRLALc6pn5BvMjDrFp9qK', 'Stripe', 'txn_1IemRNALc6pn5BvMJAVH7MVf', 'usd', 1200.00, '6071fbc405eef', 'EOS96007355', '10 April 2021', 'April', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'pending', '2021-04-10 13:25:57', NULL),
(10, 1, 1, 5, 3, 'User', 'user@gmail.com', '232323233', 5555, 'test', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 2400.00, NULL, 'EOS64839072', '10 April 2021', 'April', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'pending', '2021-04-10 13:26:55', NULL),
(11, 1, 1, 1, 1, 'User', 'user@gmail.com', '232323233', 43434, 'test', 'card_1IfBT6ALc6pn5BvMAbh7Z9RQ', 'Stripe', 'txn_1IfBT9ALc6pn5BvMM6UlAzvw', 'usd', 5120.00, '607373946d53a', 'EOS31288249', '11 April 2021', 'April', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'processing', '2021-04-11 16:09:30', '2021-04-11 16:19:47');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE IF NOT EXISTS `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_order_id_foreign` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `color`, `size`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 9, 'red', 'Small', '1', 1200.00, '2021-03-14 16:25:18', NULL),
(2, 2, 9, 'red', 'Small', '1', 1200.00, '2021-03-14 16:32:16', NULL),
(3, 2, 8, 'red', 'Small', '1', 1500.00, '2021-03-14 16:32:16', NULL),
(4, 4, 9, 'red', 'Small', '2', 1200.00, '2021-03-15 14:12:18', NULL),
(5, 5, 9, 'red', 'Small', '1', 1200.00, '2021-03-15 17:52:28', NULL),
(6, 6, 4, 'red', 'Small', '1', 400.00, '2021-03-15 17:55:27', NULL),
(7, 7, 8, 'red', 'Small', '1', 1500.00, '2021-03-15 17:57:23', NULL),
(8, 8, 7, 'red', 'Small', '2', 1200.00, '2021-04-10 13:24:25', NULL),
(9, 9, 9, 'red', 'Small', '1', 1200.00, '2021-04-10 13:26:00', NULL),
(10, 10, 9, 'red', 'Small', '2', 1200.00, '2021-04-10 13:26:58', NULL),
(11, 11, 12, 'red', 'Small', '4', 1100.00, '2021-04-11 16:09:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('user@gmail.com', '$2y$10$dSEt79KznbV4QqY6HO..perPzZM3fPUy2J4rrQQWPG7kEX/17A7MG', '2021-03-15 13:42:13');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_id` int(11) NOT NULL,
  `product_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_tags_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_tags_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size_hin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_descp_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_descp_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_descp_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_descp_hin` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_thambnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot_deals` int(11) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `special_offer` int(11) DEFAULT NULL,
  `special_deals` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `product_name_en`, `product_name_hin`, `product_slug_en`, `product_slug_hin`, `product_code`, `product_qty`, `product_tags_en`, `product_tags_hin`, `product_size_en`, `product_size_hin`, `product_color_en`, `product_color_hin`, `selling_price`, `discount_price`, `short_descp_en`, `short_descp_hin`, `long_descp_en`, `long_descp_hin`, `product_thambnail`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 7, 7, 10, 'Printed Men Round Neck', 'प्रिंटेड मेन राउंड नेक', 'printed-men-round-neck', 'प्रिंटेड-मेन-राउंड-नेक', '234234', '200', 'Round Neck', 'Round Neck', 'Small,Midium,Large', 'Small,Midium,Large', 'red,Black,white', 'red,Black,white', '500', '400', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अ', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '<p>लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञात प्रिंटर ने एक प्रकार की गली ली और एक प्रकार की पुस्तक बनाने के लिए इसे छान डाला। यह न केवल पाँच शताब्दियों तक जीवित रहा है, बल्कि इलेक्ट्रॉनिक टंकण में भी छलांग लगाता है, शेष अनिवार्य रूप से अपरिवर्तित रहता है। इसे 1960 के दशक में लॉरेम इप्सम मार्ग के साथ लेटसेट शीट जारी करने के साथ लोकप्रिय किया गया था, और हाल ही में एल्दस पेजमेकर जैसे डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ जिसमें लोरम इप्सम के संस्करण भी शामिल हैं।</p>', 'upload/products/thambnail/1692065307871661.jpeg', 1, NULL, 1, NULL, 1, '2021-02-25 14:36:49', '2021-02-25 14:36:49'),
(3, 2, 8, 13, 29, 'Amkette EvoFox Fireblade LED11', 'Amkette EvoFox Fireblade LED11', 'amkette-evofox-fireblade-led11', 'Amkette-EvoFox-Fireblade-LED11', '222222', '200', 'test', 'test', 'Midium,Large', 'Midium,Large', 'red,Black,white', 'red,Black,white', '1300', '1100', 'Lorem Ipsum is simply dummy text of the printing and typesetting11', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के11', '<p>111Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '<p>11लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञात प्रिंटर ने एक प्रकार की गली ली और एक प्रकार की पुस्तक बनाने के लिए इसे छान डाला। यह न केवल पाँच शताब्दियों तक जीवित रहा है, बल्कि इलेक्ट्रॉनिक टंकण में भी छलांग लगाता है, शेष अनिवार्य रूप से अपरिवर्तित रहता है। इसे 1960 के दशक में लॉरेम इप्सम मार्ग के साथ लेटसेट शीट जारी करने के साथ लोकप्रिय किया गया था, और हाल ही में एल्दस पेजमेकर जैसे डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ जिसमें लोरम इप्सम के संस्करण भी शामिल हैं।</p>', 'upload/products/thambnail/1692067277609010.jpeg', 1, 1, NULL, NULL, 1, '2021-02-27 15:16:30', '2021-02-27 15:16:30'),
(4, 3, 7, 7, 10, 'Printed Men Round Neck Black', 'प्रिंटेड मेन राउंड नेक ब्लैक', 'printed-men-round-neck-black', 'प्रिंटेड-मेन-राउंड-नेक-ब्लैक', '45345323', '400', 'Round Neck', 'Round Neck', 'Small,Midium,Large', 'Small,Midium,Large', 'red,Black,Amet', 'red,Black,Large', '400', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dum', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञा', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p>लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञात प्रिंटर ने एक प्रकार की गली ली और एक प्रकार की पुस्तक बनाने के लिए इसे छान डाला। यह न केवल पाँच शताब्दियों तक जीवित रहा है, बल्कि इलेक्ट्रॉनिक टंकण में भी छलांग लगाता है, अनिवार्य रूप से अपरिवर्तित रहता है। इसे 1960 के दशक में लॉरेम इप्सम मार्ग के साथ लेटसेट शीट जारी करने के साथ लोकप्रिय किया गया था, और हाल ही में एलडस पेजमेकर जैसे डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ जिसमें लोरम इप्सम के संस्करण भी शामिल हैं।</p>', 'upload/products/thambnail/1692434616868994.jpeg', 1, 1, 1, NULL, 1, '2021-02-25 14:36:22', '2021-02-25 14:36:22'),
(5, 2, 7, 7, 10, 'Printed Men Hooded Neck Orange', 'प्रिंटेड मेन हूडेड नेक ऑरेंज', 'printed-men-hooded-neck-orange', 'प्रिंटेड-मेन-हूडेड-नेक-ऑरेंज', '322343243', '0', 'Hooded Neck', 'Hooded Neck', 'Small,Midium', 'Small,Midium', 'red,Black', 'red,Black', '399', '300', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dum', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञा', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type</p>\r\n\r\n<p>and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p>लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञात प्रिंटर ने एक प्रकार की गली ली और एक प्रकार की पुस्तक बनाने</p>\r\n\r\n<p>के लिए इसे छान डाला। यह न केवल पाँच शताब्दियों तक जीवित रहा है, बल्कि इलेक्ट्रॉनिक टंकण में भी छलांग लगाता है, अनिवार्य रूप से अपरिवर्तित रहता है। इसे 1960 के दशक में लॉरेम इप्सम मार्ग के साथ लेटसेट शीट जारी करने के साथ लोकप्रिय किया गया था, और हाल ही में एलडस पेजमेकर जैसे डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ जिसमें लोरम इप्सम के संस्करण भी शामिल हैं।</p>', 'upload/products/thambnail/1692434756119029.jpeg', NULL, 1, NULL, 1, 1, '2021-02-27 14:47:36', '2021-02-27 14:47:36'),
(6, 2, 7, 7, 11, 'Striped Men Round Neck Blue', 'धारीदार पुरुष गोल नीली नीली', 'striped-men-round-neck-blue', 'धारीदार-पुरुष-गोल-नीली-नीली', '322343244', '200', 'Round Neck', 'Round Neck', 'Small,Midium,Large', 'Small,Midium,Large', 'red,Black,Amet', 'red,Black,Large', '399', '300', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dum', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञा', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p>लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञात प्रिंटर ने एक प्रकार की गली ली और एक प्रकार की पुस्तक बनाने के लिए इसे छान डाला। यह न केवल पाँच शताब्दियों तक जीवित रहा है, बल्कि इलेक्ट्रॉनिक टंकण में भी छलांग लगाता है, अनिवार्य रूप से अपरिवर्तित रहता है। इसे 1960 के दशक में लॉरेम इप्सम मार्ग के साथ लेटसेट शीट जारी करने के साथ लोकप्रिय किया गया था, और हाल ही में एलडस पेजमेकर जैसे डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ जिसमें लोरम इप्सम के संस्करण भी शामिल हैं।</p>', 'upload/products/thambnail/1692434892084466.jpeg', NULL, NULL, 1, NULL, 1, '2021-02-25 14:37:28', '2021-02-25 14:37:28'),
(7, 4, 7, 9, 16, 'Running Shoes For Men', 'पुरुषों के लिए जूते चलाना', 'running-shoes-for-men', 'पुरुषों-के-लिए-जूते-चलाना', '45345344', '400', 'test,', 'test,', 'Small,Midium,Large', 'Small,Midium,Large', 'red,Black,Amet', 'red,Black,Large', '2000', '1200', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dum', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञा', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p>लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञात प्रिंटर ने एक प्रकार की गली ली और एक प्रकार की पुस्तक बनाने के लिए इसे छान डाला। यह न केवल पाँच शताब्दियों तक जीवित रहा है, बल्कि इलेक्ट्रॉनिक टंकण में भी छलांग लगाता है, अनिवार्य रूप से अपरिवर्तित रहता है। इसे 1960 के दशक में लॉरेम इप्सम मार्ग के साथ लेटसेट शीट जारी करने के साथ लोकप्रिय किया गया था, और हाल ही में एलडस पेजमेकर जैसे डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ जिसमें लोरम इप्सम के संस्करण भी शामिल हैं।</p>', 'upload/products/thambnail/1692435014662276.jpeg', NULL, NULL, 1, 1, 1, '2021-02-24 16:06:52', '2021-02-24 16:06:52'),
(8, 2, 8, 11, 22, 'Epson L3100 Multi-function', 'एप्सों L3100 मल्टी-फंक्शन', 'epson-l3100-multi-function', 'एप्सों-L3100-मल्टी-फंक्शन', '3223432444', '200', 'test,', 'test,', 'Small,Midium,Large', 'Small,Midium,Large', 'red,Black,Amet', 'red,Black,Large', '2000', '1500', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dum', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञा', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p>लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञात प्रिंटर ने एक प्रकार की गली ली और एक प्रकार की पुस्तक बनाने के लिए इसे छान डाला। यह न केवल पाँच शताब्दियों तक जीवित रहा है, बल्कि इलेक्ट्रॉनिक टंकण में भी छलांग लगाता है, अनिवार्य रूप से अपरिवर्तित रहता है। इसे 1960 के दशक में लॉरेम इप्सम मार्ग के साथ लेटसेट शीट जारी करने के साथ लोकप्रिय किया गया था, और हाल ही में एलडस पेजमेकर जैसे डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ जिसमें लोरम इप्सम के संस्करण भी शामिल हैं।</p>', 'upload/products/thambnail/1692435198078978.jpeg', NULL, 1, NULL, NULL, 1, '2021-02-24 15:50:04', '2021-02-24 15:50:04'),
(9, 3, 8, 11, 22, 'Canon G3012 Multi-function', 'कैनन G3012 मल्टी-फंक्शन', 'canon-g3012-multi-function', 'कैनन-G3012-मल्टी-फंक्शन', '3223432666', '197', 'test,', 'test,', 'Small,Midium,Large', 'Small,Midium,Large', 'red,Black,Amet', 'red,Black,Large', '2000', '1200', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dum', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञा', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p>लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञात प्रिंटर ने एक प्रकार की गली ली और एक प्रकार की पुस्तक बनाने के लिए इसे छान डाला। यह न केवल पाँच शताब्दियों तक जीवित रहा है, बल्कि इलेक्ट्रॉनिक टंकण में भी छलांग लगाता है, अनिवार्य रूप से अपरिवर्तित रहता है। इसे 1960 के दशक में लॉरेम इप्सम मार्ग के साथ लेटसेट शीट जारी करने के साथ लोकप्रिय किया गया था, और हाल ही में एलडस पेजमेकर जैसे डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ जिसमें लोरम इप्सम के संस्करण भी शामिल हैं।</p>', 'upload/products/thambnail/1692435293558991.jpeg', NULL, 1, NULL, 1, 1, '2021-02-24 16:20:35', '2021-03-30 15:37:18'),
(10, 2, 8, 11, 24, 'Samsung 24 inch Curved Full', 'सैमसंग 24 इंच कर्व्ड फुल', 'samsung-24-inch-curved-full', 'सैमसंग-24-इंच-कर्व्ड-फुल', '32234326546', '400', 'test', 'test', NULL, NULL, 'red,Black,Amet', 'red,Black,Large', '1200', '1100', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dum', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञा', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p>लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञात प्रिंटर ने एक प्रकार की गली ली और एक प्रकार की पुस्तक बनाने के लिए इसे छान डाला। यह न केवल पाँच शताब्दियों तक जीवित रहा है, बल्कि इलेक्ट्रॉनिक टंकण में भी छलांग लगाता है, अनिवार्य रूप से अपरिवर्तित रहता है। इसे 1960 के दशक में लॉरेम इप्सम मार्ग के साथ लेटसेट शीट जारी करने के साथ लोकप्रिय किया गया था, और हाल ही में एलडस पेजमेकर जैसे डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ जिसमें लोरम इप्सम के संस्करण भी शामिल हैं।</p>', 'upload/products/thambnail/1692435396611543.jpeg', NULL, 1, NULL, NULL, 1, '2021-02-27 18:01:40', '2021-02-27 18:01:40'),
(11, 1, 8, 11, 23, 'Samsung 26.5 inch LED Backlit', 'सैमसंग 26.5 इंच एलईडी बैकलिट', 'samsung-26.5-inch-led-backlit', 'सैमसंग-26.5-इंच-एलईडी-बैकलिट', '322343255', '400', 'test,', 'test,', 'Small,Midium,Large', 'Small,Midium,Large', 'red,Black,Amet', 'red,Black,Large', '2000', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dum', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञा', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />\r\n&nbsp;</p>', '<p>लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञात प्रिंटर ने एक प्रकार की गली ली और एक प्रकार की पुस्तक बनाने के लिए इसे छान डाला। यह न केवल पाँच शताब्दियों तक जीवित रहा है, बल्कि इलेक्ट्रॉनिक टंकण में भी छलांग लगाता है, अनिवार्य रूप से अपरिवर्तित रहता है। इसे 1960 के दशक में लॉरेम इप्सम मार्ग के साथ लेटसेट शीट जारी करने के साथ लोकप्रिय किया गया था, और हाल ही में एलडस पेजमेकर जैसे डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ जिसमें लोरम इप्सम के संस्करण भी शामिल हैं।</p>', 'upload/products/thambnail/1692435521667396.jpeg', NULL, NULL, NULL, NULL, 1, '2021-02-24 15:32:57', '2021-02-24 15:32:57'),
(12, 3, 7, 7, 10, 'Lenovo Yoga Smart Tab', 'लेनोवो योगा स्मार्ट टैब', 'lenovo-yoga-smart-tab', 'लेनोवो-योगा-स्मार्ट-टैब', '234234', '200', 'Lenovo', 'Lenovo', 'Small,Midium', 'Small,Midium', 'red,Black,Blue', 'red,Black,blue', '1200', '1100', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dum', 'लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञा', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p>लोरम इप्सम केवल मुद्रण और टंकण उद्योग का डमी पाठ है। लोरम इप्सम 1500 के दशक के बाद से उद्योग का मानक डमी पाठ रहा है, जब एक अज्ञात प्रिंटर ने एक प्रकार की गली ली और एक प्रकार की पुस्तक बनाने के लिए इसे छान डाला। यह न केवल पाँच शताब्दियों तक जीवित रहा है, बल्कि इलेक्ट्रॉनिक टंकण में भी छलांग लगाता है, अनिवार्य रूप से अपरिवर्तित रहता है। इसे 1960 के दशक में लॉरेम इप्सम मार्ग के साथ लेटसेट शीट जारी करने के साथ लोकप्रिय किया गया था, और हाल ही में एलडस पेजमेकर जैसे डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ जिसमें लोरम इप्सम के संस्करण भी शामिल हैं।</p>', 'upload/products/thambnail/1696782743225057.jpeg', NULL, 1, NULL, NULL, 1, '2021-04-11 15:55:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_product_id_foreign` (`product_id`),
  KEY `reviews_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `comment`, `summary`, `status`, `created_at`, `updated_at`) VALUES
(1, 10, 1, 'Really It Is very nice product', 'nice product', '0', '2021-03-27 13:55:16', NULL),
(2, 10, 1, 'This Best Samsung Product Review', 'Best Samsung Product', '1', '2021-03-27 13:56:40', '2021-03-27 15:03:52'),
(3, 11, 1, 'Size is very big', 'Samsung Monitor is nice', '1', '2021-03-27 13:57:26', '2021-03-27 15:02:14'),
(4, 11, 1, 'TESTFTESTFTESTFTESTF', 'test', '1', '2021-03-27 14:23:08', '2021-03-27 15:03:22'),
(6, 10, 1, 'test Review', 'test', '1', '2021-04-11 16:16:03', '2021-04-11 16:16:32');

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE IF NOT EXISTS `seos` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_title`, `meta_author`, `meta_keyword`, `meta_description`, `google_analytics`, `created_at`, `updated_at`) VALUES
(1, 'Easy Online Shop', 'Easy Shop', 'Best online shop, Best Product, Best ecommerce Store', 'Learn Programing skills, from absolute beginner to advanced mastery.We try to create project base course which help your to learn professionally and make you fell as a complete developer', 'window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-84816806-1\');', NULL, '2021-03-26 14:09:33');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('79rGK83GFle8EbPN5Wy0wi8heogu37IfXzZjOYW7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnd1WFI4VjlmUUt2Sm82MzZxNGxxVURsTXJydHhtRmJ3MG9ZS0JGSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1618183518),
('8hR2HE5kzJp2xuNF8JY03bOXdrNFTM9EKSOwXTkW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiTVY5bFdGUDVrQjBUNXZUN0JnSjhqU3RtUW1SOEpOUk8zRlBiWFQ2UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjQ6ImNhcnQiO2E6MDp7fXM6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkSFMzWlRibldwcVZ3bTdZM1NtSTBYLks0RWVyQkRLUVpDVVI1djZBZjBlYXlqb3ZOcG5uRjYiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEhTM1pUYm5XcHFWd203WTNTbUkwWC5LNEVlckJES1FaQ1VSNXY2QWYwZWF5am92TnBubkY2IjtzOjg6Imxhbmd1YWdlIjtzOjc6ImVuZ2xpc2giO30=', 1618183511),
('npjXELbvn9jd4nwsGiAgy8vevoavicrSILgd4C0L', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTUprVXJsb1JqTmY1ZU40Z1d3RGFJUFBaYzRaWVhhRWd4dXpuaFE4UCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1618174373);

-- --------------------------------------------------------

--
-- Table structure for table `ship_districts`
--

CREATE TABLE IF NOT EXISTS `ship_districts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_districts`
--

INSERT INTO `ship_districts` (`id`, `division_id`, `district_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Gazipur', '2021-03-09 13:14:54', NULL),
(2, 1, 'Faridpur', '2021-03-09 13:15:23', NULL),
(3, 2, 'Rangamati', '2021-03-09 13:15:40', NULL),
(4, 8, 'Feni333', '2021-03-09 13:30:35', '2021-03-09 13:30:35'),
(5, 1, 'Rajbari', '2021-03-09 13:16:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_divisions`
--

CREATE TABLE IF NOT EXISTS `ship_divisions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `division_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_divisions`
--

INSERT INTO `ship_divisions` (`id`, `division_name`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', '2021-03-03 16:34:42', NULL),
(2, 'Chittagong', '2021-03-03 16:34:52', NULL),
(4, 'Mymensingh', '2021-03-09 12:15:33', NULL),
(5, 'Khulna', '2021-03-09 12:15:39', NULL),
(6, 'Rajshahi', '2021-03-09 12:15:45', NULL),
(7, 'Rangpur', '2021-03-09 12:15:51', NULL),
(8, 'Sylhet', '2021-03-09 12:15:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_states`
--

CREATE TABLE IF NOT EXISTS `ship_states` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_states`
--

INSERT INTO `ship_states` (`id`, `division_id`, `district_id`, `state_name`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Sreepur', '2021-03-09 14:06:53', NULL),
(2, 5, 2, 'Bhanga4444', '2021-03-09 14:24:05', '2021-03-09 14:24:05'),
(3, 1, 5, 'Mohonpur', '2021-03-09 14:08:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE IF NOT EXISTS `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `logo`, `phone_one`, `phone_two`, `email`, `company_name`, `company_address`, `facebook`, `twitter`, `linkedin`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'upload/logo/1695157834673141.png', '343434344', '545454545', 'Support@easylearningbd.com', 'Easy Online Shop', 'Anytown, CA 12345 USA', 'https://www.facebook.com/ele', 'https://twitter.com/ele', 'https://www.linkedin.com/ele', 'https://www.youtube.com/ele', NULL, '2021-03-24 17:28:55');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slider_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_img`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'upload/slider/1692252988277813.jpg', 'Slider One', 'Slider One test Decription', 1, NULL, '2021-02-20 16:17:19'),
(2, 'upload/slider/1692251099174083.jpg', NULL, 'Slider two test Decription', 1, NULL, '2021-02-22 15:54:20'),
(4, 'upload/slider/1692433956907277.jpg', 'test', 'test', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE IF NOT EXISTS `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `subcategory_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_name_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name_en`, `subcategory_name_hin`, `subcategory_slug_en`, `subcategory_slug_hin`, `created_at`, `updated_at`) VALUES
(7, 7, 'Mans Top Ware', 'मैंस टॉप वेयर', 'mans-top-ware', 'मैंस-टॉप-वेयर', NULL, NULL),
(8, 7, 'Mans Bottom Ware', 'मैंस बॉटम वेयर', 'mans-bottom-ware', 'मैंस-बॉटम-वेयर', NULL, NULL),
(9, 7, 'Mans Footwear', 'मैन फुटवियर', 'mans-footwear', 'मैन-फुटवियर', NULL, NULL),
(10, 7, 'Women Footwear', 'महिला जूते', 'women-footwear', 'महिला-जूते', NULL, NULL),
(11, 8, 'Computer Peripherals', 'कंप्यूटर परिधीय', 'computer-peripherals', 'कंप्यूटर-परिधीय', NULL, NULL),
(12, 8, 'Mobile Accessory', 'मोबाइल एक्सेसरी', 'mobile-accessory', 'मोबाइल-एक्सेसरी', NULL, NULL),
(13, 8, 'Gaming', 'गेमिंग', 'gaming', 'गेमिंग', NULL, NULL),
(14, 9, 'Home Furnishings', 'घरेलू सामान', 'home-furnishings', 'घरेलू-सामान', NULL, NULL),
(15, 9, 'Living Room', 'लिविंग रूम', 'living-room', 'लिविंग-रूम', NULL, NULL),
(16, 9, 'Home Decor', 'गृह सज्जा', 'home-decor', 'गृह-सज्जा', NULL, NULL),
(17, 10, 'Televisions', 'टेलीविजन', 'televisions', 'टेलीविजन', NULL, NULL),
(18, 10, 'Washing Machines', 'वाशिंग मशीन', 'washing-machines', 'वाशिंग-मशीन', NULL, NULL),
(19, 10, 'Refrigerators', 'रेफ्रिजरेटर', 'refrigerators', 'रेफ्रिजरेटर', NULL, NULL),
(20, 11, 'Beauty and Personal Care', 'सौंदर्य और व्यक्तिगत देखभाल', 'beauty-and-personal-care', 'सौंदर्य-और-व्यक्तिगत-देखभाल', NULL, NULL),
(21, 11, 'Food and Drinks', 'भोजन और पेय', 'food-and-drinks', 'Food-and-Drinks', NULL, '2021-02-18 12:22:55'),
(22, 11, 'Bady Care', 'बुरी देखभाल', 'bady-care', 'बुरी-देखभाल', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE IF NOT EXISTS `sub_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_name_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_slug_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_sub_categories`
--

INSERT INTO `sub_sub_categories` (`id`, `category_id`, `subcategory_id`, `subsubcategory_name_en`, `subsubcategory_name_hin`, `subsubcategory_slug_en`, `subsubcategory_slug_hin`, `created_at`, `updated_at`) VALUES
(10, 7, 7, 'Mans Tshirt', 'मैन टीशर्ट', 'mans-tshirt', 'मैन-टीशर्ट', NULL, NULL),
(11, 7, 7, 'Mans Casual Shirts', 'मैन्स कैजुअल शर्ट्स', 'mans-casual-shirts', 'मैन्स-कैजुअल-शर्ट्स', NULL, NULL),
(12, 7, 7, 'Mans Kurtas', 'मैन्स कुर्तस', 'mans-kurtas', 'मैन्स-कुर्तस', NULL, NULL),
(13, 7, 8, 'Mans Jeans', 'मैन जीन्स', 'mans-jeans', 'मैन-जीन्स', NULL, NULL),
(14, 7, 8, 'Mans Trousers', 'मैन ट्रॉज़र्स', 'mans-trousers', 'मैन-ट्रॉज़र्स', NULL, NULL),
(15, 7, 8, 'Mans Cargos', 'मैन्स कैरोस', 'mans-cargos', 'मैन्स-कैरोस', NULL, NULL),
(16, 7, 9, 'Mans Sports Shoes', 'मैन स्पोर्ट्स शूज़', 'mans-sports-shoes', 'मैन-स्पोर्ट्स-शूज़', NULL, NULL),
(17, 7, 9, 'Mans Casual Shoes', 'मनुष्य आरामदायक जूते', 'mans-casual-shoes', 'मनुष्य-आरामदायक-जूते', NULL, NULL),
(18, 7, 9, 'Mans Formal Shoes', 'मैन्स फॉर्मल शूज़', 'mans-formal-shoes', 'मैन्स-फॉर्मल-शूज़', NULL, NULL),
(19, 7, 10, 'Women Flats', 'महिला फ्लैट', 'women-flats', 'महिला-फ्लैट', NULL, NULL),
(20, 7, 10, 'Women Heels', 'महिला हील्स', 'women-heels', 'महिला-हील्स', NULL, NULL),
(21, 7, 10, 'Woman Sheakers', 'महिला शेकर्स', 'woman-sheakers', 'महिला-शेकर्स', NULL, NULL),
(22, 8, 11, 'Printers', 'प्रिंटर', 'printers', 'प्रिंटर', NULL, NULL),
(23, 8, 11, 'Monitors', 'मॉनिटर्स', 'monitors', 'मॉनिटर्स', NULL, NULL),
(24, 8, 11, 'Projectors', 'प्रोजेक्टर', 'projectors', 'प्रोजेक्टर', NULL, NULL),
(25, 8, 12, 'Plain Cases', 'सादे मामले', 'plain-cases', 'सादे-मामले', NULL, NULL),
(26, 8, 12, 'Designer Cases', 'डिजाइनर मामले', 'designer-cases', 'डिजाइनर-मामले', NULL, NULL),
(27, 8, 12, 'Screen Guards', 'स्क्रीन गार्ड', 'screen-guards', 'स्क्रीन-गार्ड', NULL, NULL),
(28, 8, 13, 'Gaming Mouse', 'गेमिंग माउस', 'gaming-mouse', 'गेमिंग-माउस', NULL, NULL),
(29, 8, 13, 'Gaming Keyboars', 'गेमिंग कीबार', 'gaming-keyboars', 'गेमिंग-कीबार', NULL, NULL),
(30, 8, 13, 'Gaming Mousepads', 'गेमिंग माउसपैड', 'gaming-mousepads', 'गेमिंग-माउसपैड', NULL, NULL),
(31, 9, 14, 'Bed Liners', 'बिस्तर पर चादरें', 'bed-liners', 'बिस्तर-पर-चादरें', NULL, NULL),
(32, 9, 14, 'Bedsheets', 'बेडशीट', 'bedsheets', 'बेडशीट', NULL, NULL),
(33, 9, 14, 'Blankets', 'कंबल', 'blankets', 'कंबल', NULL, NULL),
(34, 9, 15, 'Tv Units', 'टीवी इकाइयाँ', 'tv-units', 'टीवी-इकाइयाँ', NULL, NULL),
(35, 9, 15, 'Dining Sets', 'डाइनिंग सेट', 'dining-sets', 'डाइनिंग-सेट', NULL, NULL),
(36, 9, 15, 'Coffee Tables', 'कॉफी टेबल', 'coffee-tables', 'कॉफी-टेबल', NULL, NULL),
(37, 9, 16, 'Lightings', 'बिजली', 'lightings', 'बिजली', NULL, NULL),
(38, 9, 16, 'Clocks', 'घड़ियाँ', 'clocks', 'घड़ियाँ', NULL, NULL),
(39, 9, 16, 'Wall Decor', 'दीवार सजावट', 'wall-decor', 'दीवार-सजावट', NULL, NULL),
(40, 10, 17, 'Big Screen TVs', 'बिग स्क्रीन टीवी', 'big-screen-tvs', 'बिग-स्क्रीन-टीवी', NULL, NULL),
(41, 10, 17, 'Smart TVs', 'स्मार्ट टीवी', 'smart-tvs', 'स्मार्ट-टीवी', NULL, NULL),
(42, 10, 17, 'OLED TVs', 'ओएलईडी टीवी', 'oled-tvs', 'ओएलईडी-टीवी', NULL, NULL),
(43, 10, 18, 'Washer Dryers', 'वॉशर ड्रायर', 'washer-dryers', 'वॉशर-ड्रायर', NULL, NULL),
(44, 10, 18, 'Washer Only', 'वॉशर ओनली', 'washer-only', 'वॉशर-ओनली', NULL, NULL),
(45, 10, 18, 'Energy Efficient', 'ऊर्जा कुशल', 'energy-efficient', 'ऊर्जा-कुशल', NULL, NULL),
(46, 10, 19, 'Single Door', 'एकल दरवाजा', 'single-door', 'एकल-दरवाजा', NULL, NULL),
(47, 10, 19, 'Double Door', 'डबल डोर', 'double-door', 'डबल-डोर', NULL, NULL),
(48, 10, 19, 'Mini Rerigerators', 'मिनी रेयरिगरेटर्स', 'mini-rerigerators', 'मिनी-रेयरिगरेटर्स', NULL, NULL),
(49, 11, 20, 'Eys Makeup', 'Eys मेकअप', 'eys-makeup', 'Eys-मेकअप', NULL, NULL),
(50, 11, 20, 'Lip Makeup', 'लिप मेकअप', 'lip-makeup', 'लिप-मेकअप', NULL, NULL),
(51, 11, 20, 'Hair Care', 'बालों की देखभाल', 'hair-care', 'बालों-की-देखभाल', NULL, NULL),
(52, 11, 21, 'Beverages', 'पेय पदार्थ', 'beverages', 'पेय-पदार्थ', NULL, NULL),
(53, 11, 21, 'Chocolates', 'चॉकलेट', 'chocolates', 'चॉकलेट', NULL, NULL),
(54, 11, 21, 'Snacks', 'स्नैक्स', 'snacks', 'स्नैक्स', NULL, NULL),
(55, 11, 22, 'Baby Diapers', 'बेबी डायपर', 'baby-diapers', 'बेबी-डायपर', NULL, NULL),
(56, 11, 22, 'Baby Wipes', 'बेबी वाइप्स', 'baby-wipes', 'बेबी-वाइप्स', NULL, NULL),
(57, 11, 22, 'Baby Food', 'बेबी फ़ूड', 'baby-food', 'बेबी-फ़ूड', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_seen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `last_seen`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'User', 'user@gmail.com', '232323233', '2021-04-11 22:22:03', NULL, '$2y$10$HS3ZTbnWpqVwm7Y3SmI0X.K4EerBDKQZCUR5v6Af0eayjovNpnnF6', NULL, NULL, 'R9j5LDylVA58UkctvX43YpeVHEayPISQe3w4I5vzWijbHGillTEzLigfsRUL', NULL, '202102072204download.jpg', '2021-02-02 14:54:02', '2021-04-11 16:22:03'),
(2, 'Kazi Ariyan', 'ariyan@gmail.com', '2983923892222', NULL, NULL, '$2y$10$MExaejZQX4NtGPhetUYXM.pznu.qFlIEDTDltM0aYXS5jmd4wgev2', NULL, NULL, 'd41vViPTDlet10gfPHureVsIH8C8aDnEtFX0CJ5Fj6rGLbrLYr9TOg8Ew0jq', NULL, '202102072202ariyan.jpg', '2021-02-07 13:54:27', '2021-02-07 16:26:26');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE IF NOT EXISTS `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(13, 1, 9, '2021-03-02 16:23:33', NULL),
(14, 1, 12, '2021-04-11 16:06:02', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
