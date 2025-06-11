-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th6 08, 2025 lúc 01:52 AM
-- Phiên bản máy phục vụ: 10.6.22-MariaDB
-- Phiên bản PHP: 8.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `interclo_sdfs44`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `stk` text NOT NULL,
  `name` text NOT NULL,
  `bank_name` text NOT NULL,
  `chi_nhanh` text NOT NULL,
  `logo` text DEFAULT NULL,
  `ghichu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `bank`
--

INSERT INTO `bank` (`id`, `stk`, `name`, `bank_name`, `chi_nhanh`, `logo`, `ghichu`) VALUES
(17, '0337816872', 'MOMO', 'Nguyen Thi Dao', '', 'MOMO', 'Chuyển khoản đúng nội dung, hệ thống sẽ tự động cộng tiền.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `username` varchar(250) DEFAULT NULL,
  `loaithe` varchar(250) DEFAULT NULL,
  `menhgia` varchar(250) DEFAULT NULL,
  `pin` varchar(250) DEFAULT NULL,
  `seri` varchar(250) DEFAULT NULL,
  `thucnhan` varchar(250) NOT NULL,
  `requestid` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `cards`
--

INSERT INTO `cards` (`id`, `username`, `loaithe`, `menhgia`, `pin`, `seri`, `thucnhan`, `requestid`, `status`, `thoigian`) VALUES
(1, 'thanhpccoderdev', 'VIETTEL', '30000', '582624745821761', '22222222222354', '24600', '90598763178', 'xuly', '2024-02-06 06:42:08'),
(2, 'thanhpccoderdev', 'VIETTEL', '50000', '587268726334512', '10008461453176', '41000', '109950533748', 'xuly', '2024-02-06 06:45:55'),
(3, 'thanhpccoderdev', 'VIETTEL', '50000', '235345345636454', '10013423523562', '41000', '79641532786', 'xuly', '2024-02-06 06:53:35'),
(4, 'thanhpccoderdev', 'VIETTEL', '50000', '234534534634566', '21347234677235', '41000', '69079574544', 'xuly', '2024-02-06 08:14:53'),
(5, 'onwewadngdbthanh', 'VIETTEL', '50000', '582674745821761', '10005867167628', '41000', '73703327179', 'thatbai', '2025-06-05 15:06:38'),
(6, 'onwewadngdbthanh', 'VIETTEL', '200000', '578623723967234', '10005858167628', '164000', '50939231790', 'thatbai', '2025-06-06 02:34:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dongtien`
--

CREATE TABLE `dongtien` (
  `id` int(11) NOT NULL,
  `sotientruoc` int(11) DEFAULT NULL,
  `sotienthaydoi` int(11) DEFAULT NULL,
  `sotiensau` int(11) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `noidung` text DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `dongtien`
--

INSERT INTO `dongtien` (`id`, `sotientruoc`, `sotienthaydoi`, `sotiensau`, `thoigian`, `noidung`, `username`) VALUES
(1, 0, 9999999, 9999999, '2023-03-26 17:14:36', 'Admin cộng tiền (999)', 'Dichvuweb'),
(2, 9999999, 1000000, NULL, '2023-03-26 17:14:53', 'Tạo shop game với tên miền dichvuwebpro.asia', 'Dichvuweb'),
(3, 8999999, 0, 8999999, '2023-03-26 17:15:09', 'Shop đã được tạo thất bại, vui lòng liên hệ Admin', 'Dichvuweb'),
(4, 0, 0, NULL, '2024-01-13 11:19:55', 'Mua Code với tên ', 'thanhpccoderdev'),
(5, 0, 0, NULL, '2024-01-13 16:11:04', 'Mua Code với tên ', '123123'),
(6, 0, 0, NULL, '2024-01-14 02:03:05', 'Mua Code với tên ', 'nguyenuservn'),
(7, 0, 0, NULL, '2024-01-14 05:29:46', 'Mua Code với tên ', 'thanhpccoderdev'),
(8, 0, 99999999, 99999999, '2024-01-14 05:38:07', 'Admin cộng tiền ()', 'thanhpccoderdev'),
(9, 0, 0, NULL, '2024-01-16 15:41:21', 'Mua Code với tên ', 'nguyenkhoi212'),
(10, 0, 0, NULL, '2024-01-16 16:49:55', 'Thanh Toán Source code #', 'nguyenkhoi212'),
(11, 0, 0, NULL, '2024-01-16 16:52:29', 'Thanh Toán Source code #', 'nguyenkhoi212'),
(12, 1, 0, NULL, '2024-01-16 16:59:07', 'Thanh Toán Source code #', 'nguyenkhoi212'),
(13, 1, 0, NULL, '2024-01-16 17:04:32', 'Thanh Toán Source code #', 'nguyenkhoi212'),
(14, 1, 0, NULL, '2024-01-16 17:04:32', 'Thanh Toán Source code #', 'nguyenkhoi212'),
(15, 1, 0, NULL, '2024-01-16 17:06:56', 'Thanh Toán Source code #', 'nguyenkhoi212'),
(16, 1, 0, NULL, '2024-01-16 17:06:56', 'Thanh Toán Source code #', 'nguyenkhoi212'),
(17, 1, 0, NULL, '2024-01-16 17:52:18', 'Thanh Toán Source code #', 'nguyenkhoi212'),
(18, 1, 0, NULL, '2024-01-16 17:52:18', 'Thanh Toán Source code #', 'nguyenkhoi212'),
(19, 1, 0, NULL, '2024-01-16 17:52:18', 'Thanh Toán Source code #', 'nguyenkhoi212'),
(20, 99999999, 0, NULL, '2024-01-16 23:05:09', 'Thanh Toán Source code #', 'thanhpccoderdev'),
(21, 1, 0, NULL, '2024-01-17 13:20:04', 'Thanh Toán Source code #', 'nguyenkhoi212'),
(22, 99999999, 0, NULL, '2024-01-18 12:00:51', 'Thanh Toán Source code #', 'thanhpccoderdev'),
(23, 0, 0, NULL, '2024-01-26 01:06:09', 'Thanh Toán Source code #', 'adcdev2k7'),
(24, 0, 0, NULL, '2025-06-05 14:55:03', 'Thanh Toán Source code #', 'onwewadngdbthanh'),
(25, 0, 0, NULL, '2025-06-05 15:06:08', 'Thanh Toán Source code #', 'nguyenkhoi8'),
(26, 0, 0, NULL, '2025-06-06 04:16:38', 'Tạo shop game với tên miền dichvuwebpro.vn', 'onwewadngdbthanh'),
(27, 0, 2147483647, 2147483647, '2025-06-06 15:09:14', 'Admin cộng tiền ()', 'onwewadngdbthanh'),
(28, 2147483647, 0, NULL, '2025-06-06 15:09:22', 'You Buy Hosting my domain | dichvuwebpro.net', 'onwewadngdbthanh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `goihost`
--

CREATE TABLE `goihost` (
  `id` int(11) NOT NULL,
  `serverhost` varchar(250) DEFAULT NULL,
  `nameGoi` varchar(250) DEFAULT NULL,
  `money` varchar(250) DEFAULT NULL,
  `dungluong` varchar(250) DEFAULT NULL,
  `bangthong` varchar(250) DEFAULT NULL,
  `miencon` varchar(250) DEFAULT NULL,
  `mienkhac` varchar(250) DEFAULT NULL,
  `mienbidanh` varchar(250) DEFAULT NULL,
  `backup` varchar(250) DEFAULT 'NO',
  `loairsl` varchar(250) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `loai` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT 'SHOW'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Đang đổ dữ liệu cho bảng `goihost`
--

INSERT INTO `goihost` (`id`, `serverhost`, `nameGoi`, `money`, `dungluong`, `bangthong`, `miencon`, `mienkhac`, `mienbidanh`, `backup`, `loairsl`, `type`, `loai`, `status`) VALUES
(5, 'hostingnvmessd', 'basic1', '9999999', '102', '1048', '1', '1', '1', 'YES', 'WHM', 'CPANELWHM', 'hosting', 'SHOW');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hisdomain`
--

CREATE TABLE `hisdomain` (
  `id` int(11) NOT NULL,
  `username` varchar(250) DEFAULT NULL,
  `domain` varchar(250) DEFAULT NULL,
  `nam` varchar(250) DEFAULT NULL,
  `tongtien` varchar(250) DEFAULT NULL,
  `nameserver` longtext DEFAULT NULL,
  `timemua` varchar(250) DEFAULT NULL,
  `timedie` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `historyhost`
--

CREATE TABLE `historyhost` (
  `id` int(11) NOT NULL,
  `username` varchar(250) DEFAULT NULL,
  `domain` varchar(250) DEFAULT NULL,
  `server` varchar(250) DEFAULT NULL,
  `goi` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `tongtien` varchar(250) DEFAULT NULL,
  `tienlandau` varchar(250) DEFAULT NULL,
  `linklogin` varchar(250) DEFAULT NULL,
  `taikhoan` varchar(250) DEFAULT NULL,
  `matkhau` varchar(250) DEFAULT NULL,
  `ngaymua` varchar(250) DEFAULT NULL,
  `ngayhet` varchar(250) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `loairsl` varchar(250) DEFAULT NULL,
  `coupon` varchar(250) DEFAULT NULL,
  `autogiahan` varchar(250) DEFAULT 'NO',
  `nsNameServer` longtext DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `loai` varchar(250) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `note` varchar(250) DEFAULT NULL,
  `gioithieu` varchar(250) DEFAULT NULL,
  `hoantien` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Đang đổ dữ liệu cho bảng `historyhost`
--

INSERT INTO `historyhost` (`id`, `username`, `domain`, `server`, `goi`, `email`, `tongtien`, `tienlandau`, `linklogin`, `taikhoan`, `matkhau`, `ngaymua`, `ngayhet`, `thoigian`, `loairsl`, `coupon`, `autogiahan`, `nsNameServer`, `type`, `loai`, `update_date`, `note`, `gioithieu`, `hoantien`, `status`) VALUES
(0, 'onwewadngdbthanh', 'dichvuwebpro.net', 'hostingnvmessd', 'basic1', 'alimylisa2000@gmail.com', '9999999', '9999999', 'https://161.248.163.77', NULL, NULL, '1749222562', '1749222562', '2025-06-06 15:09:22', 'WHM', NULL, 'NO', 'ns1.litespeedserver.com\r\nns2.litespeedserver.com', 'CPANELWHM', 'hosting', NULL, NULL, NULL, NULL, 'dangtao'),
(1, 'onwewadngdbthanh', 'itcloudnet.me', 'ádasdzxc', 'zxczxczxc', 'zxczxc', '99', '99', '99999fzxc', 'zxczxc', 'zxczxc', '', '', NULL, '', '', 'NO', 'zxczxzxc', '', '', NULL, 'czxczxc', '', NULL, 'thanhcong');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `HistorySource`
--

CREATE TABLE `HistorySource` (
  `id` int(11) NOT NULL,
  `username` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `link` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `price` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `download` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `time` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Đang đổ dữ liệu cho bảng `HistorySource`
--

INSERT INTO `HistorySource` (`id`, `username`, `link`, `name`, `price`, `download`, `time`) VALUES
(71, 'nguyenkhoi212', 'https://dilink.net/hSQT', 'CODE WHMCS LAGOM NULL TIẾNG VIỆT', '0', '', '2024-01-16'),
(72, 'nguyenkhoi212', 'https://dilink.net/hSQT', 'CODE WHMCS LAGOM NULL TIẾNG VIỆT', '0', '', '2024-01-16'),
(73, 'nguyenkhoi212', 'https://dilink.net/_lTA', 'CODE BÁN VPS HOSTING AUTO  CỦA SIEUTHICODE', '0', '', '2024-01-16'),
(74, 'nguyenkhoi212', 'https://dilink.net/_lTA', 'CODE BÁN VPS HOSTING AUTO  CỦA SIEUTHICODE', '0', '', '2024-01-16'),
(75, 'nguyenkhoi212', 'https://dilink.net/hSQT', 'CODE WHMCS LAGOM NULL TIẾNG VIỆT', '0', '', '2024-01-16'),
(76, 'nguyenkhoi212', 'https://dilink.net/_lTA', 'CODE BÁN VPS HOSTING AUTO  CỦA SIEUTHICODE', '0', '', '2024-01-16'),
(77, 'nguyenkhoi212', 'https://dilink.net/hSQT', 'CODE WHMCS LAGOM NULL TIẾNG VIỆT', '0', '', '2024-01-16'),
(78, 'nguyenkhoi212', 'https://dilink.net/6KfxXfF64', 'CODE BÁN CODE HOSTING AUTO', '0', '', '2024-01-16'),
(79, 'thanhpccoderdev', 'https://dilink.net/hSQT', 'CODE WHMCS LAGOM NULL TIẾNG VIỆT', '0', '', '2024-01-16'),
(80, 'nguyenkhoi212', 'https://dilink.net/_lTA', 'CODE BÁN VPS HOSTING AUTO  CỦA SIEUTHICODE', '0', '', '2024-01-17'),
(81, 'thanhpccoderdev', 'https://dilink.net/hSQT', 'CODE WHMCS LAGOM NULL TIẾNG VIỆT', '0', '', '2024-01-18'),
(82, 'adcdev2k7', 'https://dilink.net/hSQT', 'CODE WHMCS LAGOM NULL TIẾNG VIỆT', '0', '', '2024-01-26'),
(83, 'onwewadngdbthanh', 'https://dilink.net/hSQT', 'CODE WHMCS LAGOM NULL TIẾNG VIỆT', '0', '', '2025-06-05'),
(84, 'nguyenkhoi8', 'https://dilink.net/hSQT', 'CODE WHMCS LAGOM NULL TIẾNG VIỆT', '0', '', '2025-06-05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history_shop`
--

CREATE TABLE `history_shop` (
  `id` int(11) NOT NULL,
  `username` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `domain` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `timeCreate` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `moneycreate` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `tkadmin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `mkadmin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `status` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `create_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `history_shop`
--

INSERT INTO `history_shop` (`id`, `username`, `title`, `domain`, `timeCreate`, `moneycreate`, `tkadmin`, `mkadmin`, `status`, `create_date`) VALUES
(2, 'onwewadngdbthanh', 'Sss', 'dichvuwebpro.vn', '3 tháng', '0', 'onwewadngdbthanh', 'khkhkh@#@123THANH', 'thanhcong', '2025-06-06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `napatm`
--

CREATE TABLE `napatm` (
  `id` int(11) NOT NULL,
  `username` varchar(250) DEFAULT NULL,
  `hinhthuc` varchar(250) DEFAULT NULL,
  `magd` varchar(250) DEFAULT NULL,
  `sotien` varchar(250) DEFAULT NULL,
  `ndnaptien` varchar(250) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `options`
--

INSERT INTO `options` (`id`, `key`, `value`) VALUES
(1, 'tenweb', 'DICHVUSHOP.LINK'),
(2, 'mota', 'SHOP CUNG CẤP MÃ NGUỒN - TÊN MIỀN UY TÍN - HOÀN TOÀN TỰ ĐỘNG - ĐƯỢC VẬN HÀNH BỞI THÀNH PC DEV'),
(3, 'tukhoa', 'dichvushop, , Shop bán source website, Shop bán source website giá rẻ, uy tín - chất lượng'),
(4, 'logo', 'blob:https://chat.zalo.me/f7b30713-a8d9-4087-9ac0-1325f0cb9a46'),
(11, 'noidung_naptien', 'NAPTIENNHANH_'),
(12, 'thongbao', '<h5 style=\"text-align:center\"><b style=\"\"><font color=\"#ff00ff\" style=\"background-color: rgb(74, 123, 140);\">WELCOME TO&nbsp;</font><font color=\"#00ffff\" style=\"background-color: rgb(255, 0, 0);\">DICHVUSHOP.LINK</font></b></h5><p style=\"text-align:center\"><font color=\"#00ff00\"><b>- HỆ THỐNG CHUYÊN CUNG CẤP :</b></font></p><p style=\"text-align: center;\"><font color=\"#ffd663\"><b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;WEBSITE &amp; SOURCE CODE &amp; HOSTING &amp; DOMAIN &amp; LOGO</b></font></p><p style=\"text-align: center;\"><b style=\"\"><font color=\"#9c00ff\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;SIÊU UY TÍN , CHẤT LƯỢNG &amp; BỔ RẺ NGON VÃI CỨK</font></b></p><p style=\"text-align: left;\"><font color=\"#ffd663\"><b><br></b></font></p><p style=\"text-align:center\"><img src=\"https://i.imgur.com/H2Yyyxu.png\" style=\"width: 100%;\"><br></p><p style=\"text-align:center\"><b><font style=\"background-color: rgb(255, 0, 255);\" color=\"#ffff00\">Zalo hỗ trợ :</font>&nbsp;<a href=\"https://zalo.me/0337816872\" target=\"_blank\"><font color=\"#00ffff\" style=\"background-color: rgb(255, 0, 0);\">Đây Nek</font></a></b></p><p style=\"text-align:center\"><font color=\"#ff00ff\"><span style=\"background-color: rgb(0, 255, 255);\"><b>DEV &amp; DESIGN BY THÀNH PC DEV</b></span></font></p>'),
(13, 'anhbia', 'https://upanh.cf/dxxh4h46cc.png'),
(14, 'favicon', 'https://upanh.cf/dxxh4h46cc.png'),
(17, 'baotri', 'ON'),
(31, 'zalo', 'https://zalo.me/0337816872'),
(42, 'token_bank', 'LẤY TẠI API.WEB2M.COM'),
(43, 'status_napbank', 'ON'),
(44, 'status_demo', 'OFF'),
(51, 'token_momo', 'CHƯA CÓ TOKEN ĐỂ THÊM VÀO CSDL'),
(52, 'stk_bank', '0337816872'),
(53, 'mk_bank', '1'),
(60, 'check_time_cron_bank', '1677657180'),
(61, 'partner_id', '95329354209'),
(62, 'partner_key', 'ddfeb155b8f3feb75f867eb8bd0a002b'),
(63, 'ckcard', '18'),
(65, 'tk_tsr', 'CHƯA CÓ DỮ LIỆU ĐỂ THÊM VÀO CSDL'),
(66, 'mk_tsr', 'CHƯA CÓ DỮ LIỆU ĐỂ THÊM VÀO CSDL'),
(69, 'check_time_cron_domain', '1679767968'),
(70, 'email_admin', 'ntho30454@gmail.com'),
(71, 'bot_tele', '1'),
(72, 'id_chat_tele', '1'),
(73, 'email', 'thanhcodervnvippro@gmail.com'),
(74, 'pass_email', ''),
(75, 'Refund', '1749347297'),
(76, 'check_again', '1749343139'),
(77, 'Listsuspended', '1749347264'),
(78, 'register_hosting', '1749343139'),
(79, 'lock_hosting', '1707653223'),
(80, 'cancel_hosting', '1749343139'),
(81, 'Cron', '1658597223'),
(82, 'status_hosting', 'SHOW'),
(83, 'update_hosting', '1749343139');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `serverhost`
--

CREATE TABLE `serverhost` (
  `id` int(11) NOT NULL,
  `nameServer` varchar(250) DEFAULT NULL,
  `nameGetServer` varchar(240) DEFAULT NULL COMMENT 'không thay đổi',
  `taikhoanrsl` varchar(250) DEFAULT NULL,
  `matkhaursl` varchar(250) DEFAULT NULL,
  `linkrsl` varchar(250) DEFAULT NULL,
  `loairsl` varchar(250) DEFAULT 'WHM',
  `nsNameServer` longtext DEFAULT NULL,
  `number_account` int(11) DEFAULT NULL,
  `backup` varchar(250) DEFAULT 'NO',
  `nangcap` varchar(250) DEFAULT NULL COMMENT 'không được thay đổi',
  `ownership` varchar(250) DEFAULT 'reseller',
  `theloai` varchar(250) DEFAULT NULL,
  `loai` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT 'SHOW'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Đang đổ dữ liệu cho bảng `serverhost`
--

INSERT INTO `serverhost` (`id`, `nameServer`, `nameGetServer`, `taikhoanrsl`, `matkhaursl`, `linkrsl`, `loairsl`, `nsNameServer`, `number_account`, `backup`, `nangcap`, `ownership`, `theloai`, `loai`, `status`) VALUES
(6, 'Hosting NVMe SSD', 'hostingnvmessd', 'interclo', '7Nc2eWw#lO6N;3', 'https://161.248.163.77', 'WHM', 'ns1.litespeedserver.com\r\nns2.litespeedserver.com', 2, 'YES', 'OFF', 'reseller', 'CPANELWHM', 'hosting', 'SHOW');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shopcreate`
--

CREATE TABLE `shopcreate` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `sotien` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `anhdemo` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `demoonline` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `shopcreate`
--

INSERT INTO `shopcreate` (`id`, `title`, `sotien`, `anhdemo`, `demoonline`) VALUES
(3, 'Sss', '0', 'https://toigingiuvedep.vn/wp-content/uploads/2021/11/hinh-anh-meo-bua-buon-cuoi-like.jpg', 'ssfffffffffffffffffffffff');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `SourceCode`
--

CREATE TABLE `SourceCode` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `link` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Đang đổ dữ liệu cho bảng `SourceCode`
--

INSERT INTO `SourceCode` (`id`, `name`, `description`, `price`, `link`, `image`) VALUES
(10, 'CODE BÁN CODE HOSTING AUTO', '', 0, 'https://dilink.net/6KfxXfF64', 'https://i.imgur.com/qwkn13u.png'),
(11, 'CODE BÁN VPS HOSTING AUTO  CỦA SIEUTHICODE', '', 0, 'https://dilink.net/_lTA', 'https://i.imgur.com/HmpeqlK.jpg'),
(14, 'CODE WHMCS LAGOM NULL TIẾNG VIỆT', '', 0, 'https://dilink.net/hSQT', 'https://i.imgur.com/3ZMSRqx.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tongdomain`
--

CREATE TABLE `tongdomain` (
  `id` int(11) NOT NULL,
  `duoimien` varchar(250) DEFAULT NULL,
  `sotien` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tongdomain`
--

INSERT INTO `tongdomain` (`id`, `duoimien`, `sotien`, `status`) VALUES
(2, '.com', '12000', 'SHOW');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `money` int(11) NOT NULL DEFAULT 0,
  `total_money` bigint(20) DEFAULT 0,
  `level` varchar(250) DEFAULT NULL,
  `banned` varchar(250) DEFAULT 'OFF',
  `createdate` datetime DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `online` varchar(8) DEFAULT 'OFFLINE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `money`, `total_money`, `level`, `banned`, `createdate`, `ip`, `online`) VALUES
(24, 'onwewadngdbthanh', 'thanhpcdeveloper@gmail.com', '84a2ca03e76ab3e37e70267b4b280f1b', 2137483648, 0, 'admin', '0', '2025-06-05 09:09:26', '2405:4803:db4d:29a0:9d8d:91a6:6f8f:623a, 172.68.211.194', 'OFFLINE'),
(25, 'nguyenkhoi88', 'nguyenkhoi88|@g4mail.com', 'aaa568a13d636aa0aa265e5f47bfaa91', 0, 0, 'thanhvien', '0', '2025-06-05 11:48:51', '171.236.205.93, 162.158.108.42', 'OFFLINE'),
(26, 'nguyenkhoi8', 'nguyenkhoi8|@g4mail.com', '7482edd7a74488e54555b4f586bb197e', 0, 0, 'thanhvien', '0', '2025-06-05 14:32:17', '171.236.205.93, 172.69.169.143', 'OFFLINE');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `dongtien`
--
ALTER TABLE `dongtien`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `goihost`
--
ALTER TABLE `goihost`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hisdomain`
--
ALTER TABLE `hisdomain`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `historyhost`
--
ALTER TABLE `historyhost`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `HistorySource`
--
ALTER TABLE `HistorySource`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `history_shop`
--
ALTER TABLE `history_shop`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `napatm`
--
ALTER TABLE `napatm`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `serverhost`
--
ALTER TABLE `serverhost`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shopcreate`
--
ALTER TABLE `shopcreate`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `SourceCode`
--
ALTER TABLE `SourceCode`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tongdomain`
--
ALTER TABLE `tongdomain`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `dongtien`
--
ALTER TABLE `dongtien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `goihost`
--
ALTER TABLE `goihost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `hisdomain`
--
ALTER TABLE `hisdomain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `HistorySource`
--
ALTER TABLE `HistorySource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `history_shop`
--
ALTER TABLE `history_shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `napatm`
--
ALTER TABLE `napatm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `serverhost`
--
ALTER TABLE `serverhost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `shopcreate`
--
ALTER TABLE `shopcreate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `SourceCode`
--
ALTER TABLE `SourceCode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tongdomain`
--
ALTER TABLE `tongdomain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
