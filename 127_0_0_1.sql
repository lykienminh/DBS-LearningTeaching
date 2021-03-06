-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2020 at 03:29 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `courses_enrollment`
--
CREATE DATABASE IF NOT EXISTS `courses_enrollment` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `courses_enrollment`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'giangvien'),
(3, 'khoa'),
(4, 'pdt'),
(1, 'sinhvien');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$ccO6jZwnu95z$4soWjfZX7wQVP/734bK0HV3bZ95gs6HK+IKUWP7iAoI=', '2020-12-25 02:25:15.818463', 1, 'nhom9', '', '', 'nhom9@gmail.com', 1, 1, '2020-12-24 08:47:20.486152'),
(2, 'pbkdf2_sha256$216000$7nEM04SriwBd$KCj6l2leelbBmUo4Sfnk6nWP8AaHZF5NgFNAS9HFGvQ=', '2020-12-25 02:26:13.651032', 0, 'sinhvien00', '', '', '', 0, 1, '2020-12-24 08:48:51.000000'),
(3, 'pbkdf2_sha256$216000$78NXSnL8CTPS$GcgeDfqFqD3weC1AVleBYp5LoICEwosjIgb+Bgw9Uo0=', '2020-12-25 02:24:33.385231', 0, 'giangvien1', '', '', '', 0, 1, '2020-12-24 08:49:19.000000'),
(4, 'pbkdf2_sha256$216000$8wUts6G2aPvz$fRATEqmk4KJfn0SHbzZhOLMxNqNzgDMQy+I7W+jXX3U=', NULL, 0, 'khoa1', '', '', '', 0, 1, '2020-12-24 08:49:33.000000'),
(5, 'pbkdf2_sha256$216000$oZ8UNoHDe1JY$VKBKQJghAiFwk5nMs6occh4lQn1/HYsm6cnQ8xEnVtY=', NULL, 0, 'daotao1', '', '', '', 0, 1, '2020-12-24 08:49:46.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 2, 1),
(2, 3, 2),
(3, 4, 3),
(4, 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bang_cap`
--

CREATE TABLE `bang_cap` (
  `MSNV` char(16) NOT NULL,
  `mot_bang_cap` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bien_soan`
--

CREATE TABLE `bien_soan` (
  `ma_tac_gia` varchar(16) NOT NULL,
  `ISBN` varchar(45) NOT NULL,
  `nam_xuat_ban` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chi_dinh`
--

CREATE TABLE `chi_dinh` (
  `MSNV` char(16) NOT NULL,
  `id_lop` int(11) NOT NULL,
  `ISBN` varchar(45) NOT NULL,
  `nam_xuat_ban` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dang_ky`
--

CREATE TABLE `dang_ky` (
  `MSSV` int(11) NOT NULL,
  `id_lop` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dang_ky`
--

INSERT INTO `dang_ky` (`MSSV`, `id_lop`) VALUES
(1610001, 1),
(1610001, 5),
(1810001, 1),
(1810001, 4);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-12-24 08:47:59.385192', '1', 'sinhvien', 1, '[{\"added\": {}}]', 3, 1),
(2, '2020-12-24 08:48:03.315792', '2', 'giangvien', 1, '[{\"added\": {}}]', 3, 1),
(3, '2020-12-24 08:48:08.631298', '3', 'khoa', 1, '[{\"added\": {}}]', 3, 1),
(4, '2020-12-24 08:48:11.733820', '4', 'pdt', 1, '[{\"added\": {}}]', 3, 1),
(5, '2020-12-24 08:48:51.926988', '2', 'sinhvien00', 1, '[{\"added\": {}}]', 4, 1),
(6, '2020-12-24 08:48:59.558047', '2', 'sinhvien00', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(7, '2020-12-24 08:49:19.937131', '3', 'giangvien1', 1, '[{\"added\": {}}]', 4, 1),
(8, '2020-12-24 08:49:24.828257', '3', 'giangvien1', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(9, '2020-12-24 08:49:33.928459', '4', 'khoa1', 1, '[{\"added\": {}}]', 4, 1),
(10, '2020-12-24 08:49:39.059500', '4', 'khoa1', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(11, '2020-12-24 08:49:46.437183', '5', 'daotao1', 1, '[{\"added\": {}}]', 4, 1),
(12, '2020-12-24 08:49:50.939431', '5', 'daotao1', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-12-24 08:46:03.803330'),
(2, 'auth', '0001_initial', '2020-12-24 08:46:03.957545'),
(3, 'admin', '0001_initial', '2020-12-24 08:46:04.797413'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-12-24 08:46:04.971880'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-12-24 08:46:04.978396'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-12-24 08:46:05.068497'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-12-24 08:46:05.156132'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-12-24 08:46:05.240424'),
(9, 'auth', '0004_alter_user_username_opts', '2020-12-24 08:46:05.286198'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-12-24 08:46:05.362976'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-12-24 08:46:05.371608'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-12-24 08:46:05.419478'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-12-24 08:46:05.444521'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-12-24 08:46:05.469615'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-12-24 08:46:05.682485'),
(16, 'auth', '0011_update_proxy_permissions', '2020-12-24 08:46:05.722227'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-12-24 08:46:05.761122'),
(18, 'home', '0001_initial', '2020-12-24 08:46:05.803014'),
(19, 'home', '0002_auto_20201206_1123', '2020-12-24 08:46:05.842903'),
(20, 'home', '0003_delete_evaluateform', '2020-12-24 08:46:05.858861'),
(21, 'sessions', '0001_initial', '2020-12-24 08:46:05.893048');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('xxre57wwm0jp4yyveg4u4jkjm8nkpowq', '.eJxVjMsOwiAUBf-FtSEIFyQu3fsN5L4qVUOT0q6M_65NutDtmZnzMgXXpZa161xGMWfjzeF3I-SHtg3IHdttsjy1ZR7JbordabfXSfR52d2_g4q9fusTEKNT5ZiHowA6LxmDy5RAIg0EgYJAxoTOiQbQgJQoZmFlEB_N-wMKQDkE:1ksco1:_pfsq8CEK49wCOPG_PwOrxtfnEKMCbZWb5HyPgh9SP8', '2021-01-08 02:26:13.659445');

-- --------------------------------------------------------

--
-- Table structure for table `ghi_diem`
--

CREATE TABLE `ghi_diem` (
  `MSSV` int(11) NOT NULL,
  `MSNV` char(16) NOT NULL,
  `id_lop` int(11) NOT NULL,
  `diem_so` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `giang_vien`
--

CREATE TABLE `giang_vien` (
  `MSNV` char(16) NOT NULL,
  `MSNV_quan_ly` char(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `giao_trinh`
--

CREATE TABLE `giao_trinh` (
  `ISBN` varchar(45) NOT NULL,
  `nam_xuat_ban` date NOT NULL,
  `ten_giao_trinh` varchar(45) DEFAULT NULL,
  `tenNXB` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `khoa`
--

CREATE TABLE `khoa` (
  `ma_khoa` varchar(16) NOT NULL,
  `ten_khoa` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `khoa`
--

INSERT INTO `khoa` (`ma_khoa`, `ten_khoa`) VALUES
('003', 'Khoa h???c ???ng d???ng'),
('001', 'Khoa h???c va K??? thu???t M??y t??nh'),
('004', 'Qu??n l?? c??ng nghi???p'),
('002', '??i???n ??i???n t???');

-- --------------------------------------------------------

--
-- Table structure for table `lop`
--

CREATE TABLE `lop` (
  `idlop` int(11) NOT NULL,
  `ma_lop_hoc` varchar(16) NOT NULL,
  `hoc_ky` int(11) NOT NULL,
  `ma_mon_hoc` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lop`
--

INSERT INTO `lop` (`idlop`, `ma_lop_hoc`, `hoc_ky`, `ma_mon_hoc`) VALUES
(1, 'L01', 191, 'CO2013'),
(4, 'L01', 201, 'CO2013'),
(2, 'L02', 191, 'CO2013'),
(5, 'L02', 201, 'CO2013'),
(3, 'L03', 191, 'CO2013'),
(6, 'L03', 201, 'CO2013');

-- --------------------------------------------------------

--
-- Table structure for table `mon_hoc`
--

CREATE TABLE `mon_hoc` (
  `ma_mon_hoc` varchar(16) NOT NULL,
  `ten_mon_hoc` varchar(45) DEFAULT NULL,
  `so_tin_chi` int(11) DEFAULT NULL,
  `ma_khoa` varchar(16) NOT NULL
) ;

--
-- Dumping data for table `mon_hoc`
--

INSERT INTO `mon_hoc` (`ma_mon_hoc`, `ten_mon_hoc`, `so_tin_chi`, `ma_khoa`) VALUES
('CO2001', 'Nhap mon dien toan', 2, '001'),
('CO2002', 'Ky thuat lap trinh', 2, '001'),
('CO2013', 'He co so du lieu', 3, '001');

-- --------------------------------------------------------

--
-- Table structure for table `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `Username` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL,
  `Ho` varchar(45) DEFAULT NULL,
  `Ten` varchar(45) DEFAULT NULL,
  `gioi_tinh` enum('Nam','Nu') DEFAULT NULL,
  `CMND` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`Username`, `password`, `Ho`, `Ten`, `gioi_tinh`, `CMND`, `Email`, `ngay_sinh`) VALUES
('daotao1', '1234', 'Phan H???ng', 'H???i', 'Nam', '123456789', 'namphan@hcmut.edu.vn', '0000-00-00'),
('daotao2', '1234', 'Nguy???n ', 'H???nh', 'Nu', '222645444', 'hanhnguyen@hcmut.edu.vn', '0000-00-00'),
('giangvien0', '1234', 'Tr???n Nguy??n', 'Tr?????ng', 'Nam', '222333444', 'truongtran@hcmut.edu.vn', '1888-02-03'),
('giangvien1', '1234', 'Nguy???n H???ng', 'Thao', 'Nu', '345765344', 'thaonguyen@hcmut.edu.vn', '1993-11-12'),
('giangvien10', '1234', 'Phan Ti???n ', 'Khang', 'Nam', '634897789', 'khangphan@hcmut.edu.vn', '1987-06-28'),
('giangvien11', '1234', '????? ', 'Xu??n Tr?????ng', 'Nam', '132856744', 'truongdo@hcmut.edu.vn', '1992-02-28'),
('giangvien2', '1234', 'Hu???nh Nh???t', 'Anh', 'Nu', '556377494', 'anhhuynh@hcmut.edu.vn', '1979-03-04'),
('giangvien3', '1234', 'L????ng H??', 'Anh', 'Nu', '562334987', 'anhluong@hcmut.edu.vn', '1989-02-25'),
('giangvien4', '1234', 'Phan ????ng', 'D????ng', 'Nam', '644876789', 'duongphan1@hcmut.edu.vn', '1984-01-08'),
('giangvien5', '1234', 'Nguy???n Th??nh ', '?????t', 'Nam', '153387984', 'datnguyen@hcmut.edu.vn', '1985-07-12'),
('giangvien6', '1234', 'Tr???n Trung', 'Tr???c', 'Nam', '667788991', 'tructran@hcmut.edu.vn', '1994-03-06'),
('giangvien7', '1234', 'Nguy???n An', 'Nhi??n', 'Nam', '534567567', 'nhiennguyen@hcmut.edu.vn', '1993-12-06'),
('giangvien8', '1234', 'Hu???nh T?????ng', 'Nguy??n', 'Nam', '123645494', 'nguyenhuynh@hcmut.edu.vn', '1980-05-07'),
('giangvien9', '1234', 'Tr???nh Minh', 'H???i', 'Nam', '864224553', 'haitrinhg@hcmut.edu.vn', '1988-05-28'),
('qlkhoa1', '1234', 'Tr???n Nguy??n', 'Tr?????ng', 'Nam', '222929444', 'truongtran1@hcmut.edu.vn', '0000-00-00'),
('qlkhoa2', '1234', 'Nguy???n Anh', 'Khoa', 'Nam', '222324344', 'khoanguyen@hcmut.edu.vn', '0000-00-00'),
('qlkhoa3', '1234', 'Hu???nh Minh', 'H????ng', 'Nu', '234348494', 'huonghuynh@hcmut.edu.vn', '0000-00-00'),
('qlkhoa4', '1234', 'L????ng Nguy???t', 'Minh', 'Nu', '266378987', 'minhluong@hcmut.edu.vn', '0000-00-00'),
('sinhvien00', '1234', 'Tran Nguyen', 'Trung', 'Nam', '666333444', 'trungtran@hcmut.edu.vn', '1998-10-03'),
('sinhvien01', '1234', 'Nguyen Hong', 'Tham', 'Nu', '664335344', 'thamnguyen@hcmut.edu.vn', '2000-11-12'),
('sinhvien02', '1234', 'Huynh Nhat', 'Dieu', 'Nu', '556222043', 'dieuhuynh@hcmut.edu.vn', '1999-03-14'),
('sinhvien03', '1234', 'L????ng Anh', 'Th??', 'Nu', '978555987', 'thuluong@hcmut.edu.vn', '1999-02-25'),
('sinhvien04', '1234', 'Phan ????ng', 'Minh', 'Nam', '648876009', 'duongphan@hcmut.edu.vn', '2000-10-08'),
('sinhvien05', '1234', 'Nguy???n Th??nh ', 'Nh???t', 'Nam', '808778984', 'nhatnguyen@hcmut.edu.vn', '2001-12-17'),
('sinhvien06', '1234', 'Tr???n Anh', 'Khoa', 'Nam', '900888991', 'khoatran@hcmut.edu.vn', '2002-03-16'),
('sinhvien07', '1234', 'Nguy???n ', 'Nh??n', 'Nam', '777567567', 'nhannguyen@hcmut.edu.vn', '2001-12-06'),
('sinhvien08', '1234', 'Hu???nh ', 'Ng???n', 'Nam', '131234549', 'nganhuynh@hcmut.edu.vn', '2000-07-05'),
('sinhvien09', '1234', 'Tr???nh Minh', 'Anh', 'Nam', '867457753', 'anhtrinhg@hcmut.edu.vn', '1998-10-25'),
('sinhvien10', '1234', 'Phan Trung ', 'Kh????ng', 'Nam', '634232089', 'khuongphan@hcmut.edu.vn', '1997-06-08');

-- --------------------------------------------------------

--
-- Table structure for table `nhan_vien`
--

CREATE TABLE `nhan_vien` (
  `MSNV` char(16) NOT NULL,
  `Username` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nha_xuat_ban`
--

CREATE TABLE `nha_xuat_ban` (
  `tenNXB` varchar(16) NOT NULL,
  `dia_chi` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ns_khoa_quan_ly`
--

CREATE TABLE `ns_khoa_quan_ly` (
  `MSNV` char(16) NOT NULL,
  `ngay_bat_dau` date DEFAULT NULL,
  `ma_khoa` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ns_phong_dao_tao`
--

CREATE TABLE `ns_phong_dao_tao` (
  `MSNV` char(16) NOT NULL,
  `ngay_bat_dau` date DEFAULT NULL,
  `chuc_vu` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sinh_vien`
--

CREATE TABLE `sinh_vien` (
  `MSSV` int(11) NOT NULL,
  `GPA` decimal(4,2) DEFAULT NULL,
  `nam_nhap_hoc` date DEFAULT NULL,
  `Username` varchar(16) NOT NULL,
  `ma_khoa` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sinh_vien`
--

INSERT INTO `sinh_vien` (`MSSV`, `GPA`, `nam_nhap_hoc`, `Username`, `ma_khoa`) VALUES
(1610001, '0.00', '2016-08-15', 'sinhvien00', '001'),
(1710001, '0.00', '2017-08-15', 'sinhvien02', '001'),
(1810001, '0.00', '2018-08-15', 'sinhvien01', '001');

-- --------------------------------------------------------

--
-- Table structure for table `sodt`
--

CREATE TABLE `sodt` (
  `Username` varchar(16) NOT NULL,
  `mot_so_DT` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tac_gia`
--

CREATE TABLE `tac_gia` (
  `ma_tac_gia` varchar(16) NOT NULL,
  `ho` varchar(45) DEFAULT NULL,
  `ten` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `thuoc`
--

CREATE TABLE `thuoc` (
  `ISBN` varchar(45) NOT NULL,
  `nam_xuat_ban` date NOT NULL,
  `ma_mon_hoc` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `trang_thai_hoc_tap`
--

CREATE TABLE `trang_thai_hoc_tap` (
  `MSSV` int(11) NOT NULL,
  `hoc_ky` int(11) NOT NULL,
  `trang_thai` enum('Dang hoc','Tam dung','Da thoi h???') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tuan_hoc`
--

CREATE TABLE `tuan_hoc` (
  `thu_tu_tuan` int(11) NOT NULL,
  `id_lop` int(11) NOT NULL,
  `MSNV` char(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vi_tri`
--

CREATE TABLE `vi_tri` (
  `MSNV` char(16) NOT NULL,
  `mot_vi_tri` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Indexes for table `bang_cap`
--
ALTER TABLE `bang_cap`
  ADD PRIMARY KEY (`MSNV`,`mot_bang_cap`);

--
-- Indexes for table `bien_soan`
--
ALTER TABLE `bien_soan`
  ADD PRIMARY KEY (`ma_tac_gia`,`ISBN`,`nam_xuat_ban`),
  ADD KEY `sachbiensoan` (`ISBN`,`nam_xuat_ban`);

--
-- Indexes for table `chi_dinh`
--
ALTER TABLE `chi_dinh`
  ADD PRIMARY KEY (`MSNV`,`nam_xuat_ban`,`ISBN`,`id_lop`),
  ADD KEY `lopchidinh` (`id_lop`),
  ADD KEY `sachchidinh` (`ISBN`,`nam_xuat_ban`);

--
-- Indexes for table `dang_ky`
--
ALTER TABLE `dang_ky`
  ADD PRIMARY KEY (`MSSV`,`id_lop`),
  ADD KEY `dknhom_idx` (`id_lop`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `ghi_diem`
--
ALTER TABLE `ghi_diem`
  ADD PRIMARY KEY (`MSSV`,`MSNV`,`id_lop`),
  ADD KEY `diemgv` (`MSNV`),
  ADD KEY `diemlop` (`id_lop`);

--
-- Indexes for table `giang_vien`
--
ALTER TABLE `giang_vien`
  ADD PRIMARY KEY (`MSNV`),
  ADD KEY `quan_ly` (`MSNV_quan_ly`);

--
-- Indexes for table `giao_trinh`
--
ALTER TABLE `giao_trinh`
  ADD PRIMARY KEY (`ISBN`,`nam_xuat_ban`),
  ADD KEY `xuatban_idx` (`tenNXB`);

--
-- Indexes for table `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`ma_khoa`),
  ADD UNIQUE KEY `ten_khoa_UNIQUE` (`ten_khoa`);

--
-- Indexes for table `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`idlop`),
  ADD UNIQUE KEY `ma_lop_hoc` (`ma_lop_hoc`,`hoc_ky`,`ma_mon_hoc`),
  ADD KEY `lop` (`ma_mon_hoc`);

--
-- Indexes for table `mon_hoc`
--
ALTER TABLE `mon_hoc`
  ADD PRIMARY KEY (`ma_mon_hoc`),
  ADD KEY `mhkhoa_idx` (`ma_khoa`);

--
-- Indexes for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`Username`),
  ADD UNIQUE KEY `CMND_UNIQUE` (`CMND`),
  ADD UNIQUE KEY `Email_UNIQUE` (`Email`);

--
-- Indexes for table `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD PRIMARY KEY (`MSNV`),
  ADD UNIQUE KEY `Username_UNIQUE` (`Username`);

--
-- Indexes for table `nha_xuat_ban`
--
ALTER TABLE `nha_xuat_ban`
  ADD PRIMARY KEY (`tenNXB`);

--
-- Indexes for table `ns_khoa_quan_ly`
--
ALTER TABLE `ns_khoa_quan_ly`
  ADD PRIMARY KEY (`MSNV`),
  ADD KEY `nsqlkhoa_idx` (`ma_khoa`);

--
-- Indexes for table `ns_phong_dao_tao`
--
ALTER TABLE `ns_phong_dao_tao`
  ADD PRIMARY KEY (`MSNV`);

--
-- Indexes for table `sinh_vien`
--
ALTER TABLE `sinh_vien`
  ADD PRIMARY KEY (`MSSV`),
  ADD UNIQUE KEY `Username_UNIQUE` (`Username`),
  ADD KEY `svkhoa_idx` (`ma_khoa`);

--
-- Indexes for table `sodt`
--
ALTER TABLE `sodt`
  ADD PRIMARY KEY (`Username`,`mot_so_DT`);

--
-- Indexes for table `tac_gia`
--
ALTER TABLE `tac_gia`
  ADD PRIMARY KEY (`ma_tac_gia`);

--
-- Indexes for table `thuoc`
--
ALTER TABLE `thuoc`
  ADD PRIMARY KEY (`ISBN`,`nam_xuat_ban`,`ma_mon_hoc`),
  ADD KEY `monhocchua` (`ma_mon_hoc`);

--
-- Indexes for table `trang_thai_hoc_tap`
--
ALTER TABLE `trang_thai_hoc_tap`
  ADD PRIMARY KEY (`MSSV`,`hoc_ky`);

--
-- Indexes for table `tuan_hoc`
--
ALTER TABLE `tuan_hoc`
  ADD PRIMARY KEY (`thu_tu_tuan`,`id_lop`),
  ADD KEY `id_lop` (`id_lop`),
  ADD KEY `gvphutrach_idx` (`MSNV`);

--
-- Indexes for table `vi_tri`
--
ALTER TABLE `vi_tri`
  ADD PRIMARY KEY (`MSNV`,`mot_vi_tri`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `lop`
--
ALTER TABLE `lop`
  MODIFY `idlop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- Constraints for table `bang_cap`
--
ALTER TABLE `bang_cap`
  ADD CONSTRAINT `banggv` FOREIGN KEY (`MSNV`) REFERENCES `giang_vien` (`MSNV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bien_soan`
--
ALTER TABLE `bien_soan`
  ADD CONSTRAINT `sachbiensoan` FOREIGN KEY (`ISBN`,`nam_xuat_ban`) REFERENCES `giao_trinh` (`ISBN`, `nam_xuat_ban`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tgbiensoan` FOREIGN KEY (`ma_tac_gia`) REFERENCES `tac_gia` (`ma_tac_gia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `chi_dinh`
--
ALTER TABLE `chi_dinh`
  ADD CONSTRAINT `gvchidinh` FOREIGN KEY (`MSNV`) REFERENCES `giang_vien` (`MSNV`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lopchidinh` FOREIGN KEY (`id_lop`) REFERENCES `lop` (`idlop`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sachchidinh` FOREIGN KEY (`ISBN`,`nam_xuat_ban`) REFERENCES `giao_trinh` (`ISBN`, `nam_xuat_ban`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dang_ky`
--
ALTER TABLE `dang_ky`
  ADD CONSTRAINT `dknhom` FOREIGN KEY (`id_lop`) REFERENCES `lop` (`idlop`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dksinhvien` FOREIGN KEY (`MSSV`) REFERENCES `sinh_vien` (`MSSV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `ghi_diem`
--
ALTER TABLE `ghi_diem`
  ADD CONSTRAINT `diemgv` FOREIGN KEY (`MSNV`) REFERENCES `giang_vien` (`MSNV`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `diemlop` FOREIGN KEY (`id_lop`) REFERENCES `lop` (`idlop`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `diemsv` FOREIGN KEY (`MSSV`) REFERENCES `sinh_vien` (`MSSV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `giang_vien`
--
ALTER TABLE `giang_vien`
  ADD CONSTRAINT `MSNV` FOREIGN KEY (`MSNV`) REFERENCES `nhan_vien` (`MSNV`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quan_ly` FOREIGN KEY (`MSNV_quan_ly`) REFERENCES `ns_khoa_quan_ly` (`MSNV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `giao_trinh`
--
ALTER TABLE `giao_trinh`
  ADD CONSTRAINT `xuatban` FOREIGN KEY (`tenNXB`) REFERENCES `nha_xuat_ban` (`tenNXB`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `lop` FOREIGN KEY (`ma_mon_hoc`) REFERENCES `mon_hoc` (`ma_mon_hoc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mon_hoc`
--
ALTER TABLE `mon_hoc`
  ADD CONSTRAINT `mhkhoa` FOREIGN KEY (`ma_khoa`) REFERENCES `khoa` (`ma_khoa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD CONSTRAINT `Username` FOREIGN KEY (`Username`) REFERENCES `nguoi_dung` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ns_khoa_quan_ly`
--
ALTER TABLE `ns_khoa_quan_ly`
  ADD CONSTRAINT `MSNV_khoa` FOREIGN KEY (`MSNV`) REFERENCES `nhan_vien` (`MSNV`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nsqlkhoa` FOREIGN KEY (`ma_khoa`) REFERENCES `khoa` (`ma_khoa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ns_phong_dao_tao`
--
ALTER TABLE `ns_phong_dao_tao`
  ADD CONSTRAINT `ns_pdt` FOREIGN KEY (`MSNV`) REFERENCES `nhan_vien` (`MSNV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sinh_vien`
--
ALTER TABLE `sinh_vien`
  ADD CONSTRAINT `sv` FOREIGN KEY (`Username`) REFERENCES `nguoi_dung` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `svkhoa` FOREIGN KEY (`ma_khoa`) REFERENCES `khoa` (`ma_khoa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sodt`
--
ALTER TABLE `sodt`
  ADD CONSTRAINT `sdt` FOREIGN KEY (`Username`) REFERENCES `nguoi_dung` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `thuoc`
--
ALTER TABLE `thuoc`
  ADD CONSTRAINT `monhocchua` FOREIGN KEY (`ma_mon_hoc`) REFERENCES `mon_hoc` (`ma_mon_hoc`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `sachthuoc` FOREIGN KEY (`ISBN`,`nam_xuat_ban`) REFERENCES `giao_trinh` (`ISBN`, `nam_xuat_ban`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `trang_thai_hoc_tap`
--
ALTER TABLE `trang_thai_hoc_tap`
  ADD CONSTRAINT `trang_thai_sv` FOREIGN KEY (`MSSV`) REFERENCES `sinh_vien` (`MSSV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tuan_hoc`
--
ALTER TABLE `tuan_hoc`
  ADD CONSTRAINT `gvphutrach` FOREIGN KEY (`MSNV`) REFERENCES `giang_vien` (`MSNV`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tuan_hoc_ibfk_1` FOREIGN KEY (`id_lop`) REFERENCES `lop` (`idlop`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vi_tri`
--
ALTER TABLE `vi_tri`
  ADD CONSTRAINT `vitri` FOREIGN KEY (`MSNV`) REFERENCES `nhan_vien` (`MSNV`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"courses_enrollment\",\"table\":\"giang_vien\"},{\"db\":\"courses_enrollment\",\"table\":\"django_admin_log\"},{\"db\":\"courses_enrollment\",\"table\":\"dang_ky\"},{\"db\":\"courses_enrollment\",\"table\":\"auth_user\"},{\"db\":\"courses_enrollment\",\"table\":\"auth_user_user_permissions\"},{\"db\":\"courses_enrollment\",\"table\":\"auth_user_groups\"},{\"db\":\"courses_enrollment\",\"table\":\"auth_permission\"},{\"db\":\"courses_enrollment\",\"table\":\"auth_group_permissions\"},{\"db\":\"courses_enrollment\",\"table\":\"auth_group\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-12-25 02:29:28', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":288}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
