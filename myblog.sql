-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2019 at 01:16 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_vietnamese_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_vietnamese_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_vietnamese_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$TWAg7R4AbeXx$RdxnkSfqcLcZ46VPIx5SkS/3owI8rlcPCUyI7u8ZT5A=', '2019-12-22 11:47:50.878073', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2019-12-14 09:46:56.395981'),
(2, 'pbkdf2_sha256$180000$AnAsW5AumSFW$yRrqdgbhJvziA1CMy2sbK3aWsQbLSj5SNk0kLRw9LMI=', '2019-12-15 15:10:44.800374', 0, 'test', '', '', 'testB@gmail.com', 0, 1, '2019-12-15 13:58:07.342220'),
(3, 'pbkdf2_sha256$180000$joIyErFaM9WT$xgzQz/Jdbxnl0wKC69yOwFn+v2phNOR7yd1rt3i7Mi4=', '2019-12-16 15:49:23.334428', 0, 'test123', '', '', 'hoangnhh140697@gmail.com', 0, 1, '2019-12-16 15:49:13.491508');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cate_id` int(11) NOT NULL,
  `cate_name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `cate_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cate_id`, `cate_name`, `cate_status`) VALUES
(1, 'Thủ thuật', 0),
(2, 'Thủ thuật Internet', 1),
(3, 'Thủ thuật máy tính', 1),
(4, 'Thủ thuật lập trình', 1),
(5, 'Mẹo hay cuộc sống', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_vietnamese_ci NOT NULL,
  `parent_comment` int(11) NOT NULL,
  `visiter_name` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `comment_date` date DEFAULT NULL,
  `approve` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `post_id`, `user_id`, `content`, `parent_comment`, `visiter_name`, `comment_date`, `approve`) VALUES
(2, 2, 1, '123', 0, 'a', '2019-12-15', 0),
(3, 2, NULL, '123456', 0, 'A', '2019-12-15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `contact_phone` varchar(11) COLLATE utf8_vietnamese_ci NOT NULL,
  `contact_email` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `subject` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `message` text COLLATE utf8_vietnamese_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_sended` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_name`, `contact_phone`, `contact_email`, `subject`, `message`, `status`, `date_sended`) VALUES
(12, 'MTB0001', '0944114697', 'hoangnhh140697@gmail.com', '123', '43223423', 0, '2019-12-16'),
(13, 'MTB0002', '0944114697', 'hoangnhh140697@gmail.com', 'sfefsefse', 'sdfsfs', 0, '2019-12-16');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-12-16 11:43:44.472430', '1', 'PostCategory object (1)', 2, '[{\"changed\": {\"fields\": [\"Post\"]}}]', 8, 1),
(2, '2019-12-16 11:43:48.718780', '1', 'PostCategory object (1)', 2, '[{\"changed\": {\"fields\": [\"Post\"]}}]', 8, 1),
(3, '2019-12-16 11:55:30.387196', '1', 'Tag object (1)', 1, '[{\"added\": {}}]', 10, 1),
(4, '2019-12-16 12:19:59.988494', '3', 'Comment object (3)', 2, '[{\"changed\": {\"fields\": [\"Approve\"]}}]', 11, 1),
(5, '2019-12-16 12:21:59.050537', '3', 'Comment object (3)', 2, '[{\"changed\": {\"fields\": [\"Approve\"]}}]', 11, 1),
(6, '2019-12-16 12:26:41.785536', '2', 'Comment object (2)', 2, '[{\"changed\": {\"fields\": [\"Approve\"]}}]', 11, 1),
(7, '2019-12-16 12:26:45.501230', '2', 'Comment object (2)', 2, '[{\"changed\": {\"fields\": [\"Approve\"]}}]', 11, 1),
(8, '2019-12-18 11:33:24.827726', '5', 'Mẹo hay cuộc sống', 2, '[{\"changed\": {\"fields\": [\"Cate status\"]}}]', 9, 1),
(9, '2019-12-18 11:33:28.272365', '4', 'Thủ thuật lập trình', 2, '[{\"changed\": {\"fields\": [\"Cate status\"]}}]', 9, 1),
(10, '2019-12-18 11:33:32.462542', '3', 'Thủ thuật máy tính', 2, '[{\"changed\": {\"fields\": [\"Cate status\"]}}]', 9, 1),
(11, '2019-12-18 11:33:41.359132', '2', 'Thủ thuật Internet', 2, '[{\"changed\": {\"fields\": [\"Cate status\"]}}]', 9, 1),
(12, '2019-12-22 11:37:18.324548', '4', 'Post object (4)', 1, '[{\"added\": {}}]', 7, 1),
(13, '2019-12-22 11:37:37.036771', '6', 'PostCategory object (6)', 1, '[{\"added\": {}}]', 8, 1),
(14, '2019-12-22 11:48:24.415053', '4', 'Post object (4)', 3, '', 7, 1),
(15, '2019-12-22 11:52:53.212665', '6', 'PostCategory object (6)', 3, '', 8, 1),
(16, '2019-12-22 11:53:05.787027', '4', 'Post object (4)', 3, '', 7, 1),
(17, '2019-12-22 11:53:15.832305', '3', 'Post object (3)', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 7, 1),
(18, '2019-12-22 11:53:53.579764', '3', 'Post object (3)', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 7, 1),
(19, '2019-12-22 12:00:04.830687', '3', 'Post object (3)', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 7, 1),
(20, '2019-12-22 12:00:56.541901', '3', 'Post object (3)', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 7, 1),
(21, '2019-12-22 12:04:32.201622', '3', 'Post object (3)', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 7, 1),
(22, '2019-12-22 12:05:54.744280', '3', 'Post object (3)', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 7, 1),
(23, '2019-12-22 12:06:47.785980', '3', 'Post object (3)', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 7, 1),
(24, '2019-12-22 12:07:29.087482', '3', 'Post object (3)', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 7, 1),
(25, '2019-12-22 12:08:23.059634', '3', 'Post object (3)', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 7, 1),
(26, '2019-12-22 12:08:59.815918', '3', 'Post object (3)', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 7, 1),
(27, '2019-12-22 12:09:28.862576', '3', 'Post object (3)', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 7, 1),
(28, '2019-12-22 12:10:52.406094', '3', 'Post object (3)', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 7, 1),
(29, '2019-12-22 12:11:48.477684', '3', 'Post object (3)', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 7, 1),
(30, '2019-12-22 12:12:15.053554', '3', 'Post object (3)', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 7, 1),
(31, '2019-12-22 12:12:34.630235', '3', 'Post object (3)', 2, '[{\"changed\": {\"fields\": [\"Thumbnail\"]}}]', 7, 1),
(32, '2019-12-22 12:14:17.875967', '1', 'Post object (1)', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Thumbnail\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'home', 'category'),
(11, 'home', 'comment'),
(7, 'home', 'post'),
(8, 'home', 'postcategory'),
(10, 'home', 'tag'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-12-14 09:45:21.065760'),
(2, 'auth', '0001_initial', '2019-12-14 09:45:21.165997'),
(3, 'admin', '0001_initial', '2019-12-14 09:45:21.479255'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-12-14 09:45:21.557252'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-12-14 09:45:21.566246'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-12-14 09:45:21.653269'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-12-14 09:45:21.716300'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-12-14 09:45:21.765189'),
(9, 'auth', '0004_alter_user_username_opts', '2019-12-14 09:45:21.774182'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-12-14 09:45:21.814243'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-12-14 09:45:21.817242'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-12-14 09:45:21.827235'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-12-14 09:45:21.841227'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-12-14 09:45:21.861214'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-12-14 09:45:21.910219'),
(16, 'auth', '0011_update_proxy_permissions', '2019-12-14 09:45:21.920839'),
(17, 'sessions', '0001_initial', '2019-12-14 09:45:21.943824');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_vietnamese_ci NOT NULL,
  `session_data` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9ngnbnp4muf87ppcd9bw6g7v2xyqd0my', 'MDY2M2VmZjQ0YTk2ZGE1M2UwMjJmZmU5NjgyY2JkNTFhNmZhOTBhMTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYTYyZjc0YzMzY2RlMzc4NzBkODE4YTliODJkNjg0ODAyYWYxZjg5In0=', '2019-12-29 14:16:51.551894'),
('atov0kbj28gbgfle91az0aogi25ldojw', 'Y2I0NTRkYTM2YTJlMDZkY2RmNjY1NWE2ZGNiYmExNTc3Mjk4OTQ5ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZTZjN2ExNjcyZDYwMGMwMTU5ZWFmMjk3Y2ZiOGY4YzEyOTQwYTU0In0=', '2020-01-05 11:47:50.882094'),
('n7y2ca9noykycze50sx1aa341ms6z7ug', 'Y2I0NTRkYTM2YTJlMDZkY2RmNjY1NWE2ZGNiYmExNTc3Mjk4OTQ5ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZTZjN2ExNjcyZDYwMGMwMTU5ZWFmMjk3Y2ZiOGY4YzEyOTQwYTU0In0=', '2019-12-29 14:15:59.531534'),
('rzn46yd0wztus7vm48cw3uzg38qn36qp', 'Y2I0NTRkYTM2YTJlMDZkY2RmNjY1NWE2ZGNiYmExNTc3Mjk4OTQ5ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZTZjN2ExNjcyZDYwMGMwMTU5ZWFmMjk3Y2ZiOGY4YzEyOTQwYTU0In0=', '2020-01-01 11:33:08.818990'),
('ytj26matqgu4vgwgg5j95s4b98uaxxc2', 'Y2I0NTRkYTM2YTJlMDZkY2RmNjY1NWE2ZGNiYmExNTc3Mjk4OTQ5ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZTZjN2ExNjcyZDYwMGMwMTU5ZWFmMjk3Y2ZiOGY4YzEyOTQwYTU0In0=', '2019-12-29 14:06:54.340856');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `description` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `date_published` date DEFAULT NULL,
  `comment_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `user_id`, `title`, `description`, `thumbnail`, `date_published`, `comment_enabled`) VALUES
(1, 1, 'Hướng dẫn cài lại win10', '123', 'JCZc-cai-win-10-8.jpg', '2019-12-14', 1),
(2, 1, 'Test 111', 'test', 'test.jpg', '2019-12-14', 1),
(3, 1, 'Thủ thuật Facebook', '123', 'tricks_fb.jpg', '2019-12-14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`id`, `cate_id`, `post_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 4, 3),
(4, 3, 1),
(5, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `tag_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`tag_id`, `post_id`, `tag_name`) VALUES
(1, 1, 'test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cate_id` (`cate_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_id`),
  ADD KEY `post_id` (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_fkid_post` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
  ADD CONSTRAINT `comment_fkid_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_fkid_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `post_category`
--
ALTER TABLE `post_category`
  ADD CONSTRAINT `postcate_fkid_cate` FOREIGN KEY (`cate_id`) REFERENCES `category` (`cate_id`),
  ADD CONSTRAINT `postcate_fkid_post` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);

--
-- Constraints for table `tag`
--
ALTER TABLE `tag`
  ADD CONSTRAINT `tag_fkid_post` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
