-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2022 at 11:22 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

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

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"relation_lines\":\"true\",\"angular_direct\":\"direct\"}');

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
('root', '[{\"db\":\"rpl\",\"table\":\"client_list\"},{\"db\":\"rpl\",\"table\":\"users\"},{\"db\":\"rpl\",\"table\":\"booking_list\"},{\"db\":\"rpl\",\"table\":\"system_info\"},{\"db\":\"rpl\",\"table\":\"lapangan\"},{\"db\":\"rpl\",\"table\":\"jadwal\"},{\"db\":\"rpl\",\"table\":\"facility_list\"},{\"db\":\"rpl\",\"table\":\"category_list\"},{\"db\":\"rpl\",\"table\":\"operator\"},{\"db\":\"rpl\",\"table\":\"address\"}]');

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
('root', '2022-07-04 09:21:59', '{\"Console\\/Mode\":\"collapse\"}');

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
-- Database: `rpl`
--
CREATE DATABASE IF NOT EXISTS `rpl` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rpl`;

-- --------------------------------------------------------

--
-- Table structure for table `booking_list`
--

CREATE TABLE `booking_list` (
  `id` int(30) NOT NULL,
  `ref_code` varchar(100) NOT NULL,
  `client_id` int(30) NOT NULL,
  `facility_id` int(30) NOT NULL,
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0 = Pending,\r\n1 = Confirmed,\r\n2 = Done,\r\n3 = Cancelled',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_list`
--

INSERT INTO `booking_list` (`id`, `ref_code`, `client_id`, `facility_id`, `date_from`, `date_to`, `status`, `date_created`, `date_updated`) VALUES
(1, '202203-00001', 1, 1, '2022-03-24 00:00:00', '2022-03-24 00:00:00', 3, '2022-03-23 13:22:06', '2022-03-23 13:49:09'),
(2, '202203-00002', 1, 2, '2022-03-24 00:00:00', '2022-03-25 00:00:00', 1, '2022-03-23 13:30:40', '2022-03-23 13:49:11'),
(3, '202203-00003', 2, 4, '2022-03-24 00:00:00', '2022-03-25 00:00:00', 3, '2022-03-23 15:40:58', '2022-06-29 20:43:18'),
(4, '202203-00004', 2, 1, '2022-03-28 00:00:00', '2022-03-28 00:00:00', 3, '2022-03-23 15:41:17', '2022-03-23 15:41:26'),
(10, '202206-00001', 6, 6, '2022-06-30 00:06:00', '2022-06-30 13:06:00', 0, '2022-06-30 00:11:20', NULL),
(11, '202206-00002', 6, 6, '2022-07-01 15:30:00', '2022-07-01 16:31:00', 0, '2022-06-30 15:31:18', NULL),
(12, '202206-00003', 6, 6, '2022-06-30 00:06:00', '2022-06-30 13:06:00', 2, '2022-06-30 15:31:36', '2022-06-30 15:32:28');

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`, `description`, `delete_flag`, `status`, `date_created`, `date_updated`) VALUES
(1, 'Basket Ball', 'Basket Ball Facility', 1, 1, '2022-03-23 10:34:53', '2022-06-28 21:41:50'),
(2, 'Badminton', 'Badminton Court', 1, 1, '2022-03-23 10:35:12', '2022-06-28 21:41:43'),
(3, 'Tennis Court', 'Tennis Court', 1, 1, '2022-03-23 10:35:32', '2022-06-28 21:42:01'),
(4, 'Football', 'Football Field', 1, 1, '2022-03-23 10:35:46', '2022-06-28 21:41:53'),
(5, 'Volleyball', 'Volleyball Court', 1, 1, '2022-03-23 10:36:08', '2022-06-28 21:42:04'),
(6, 'Baseball', 'Baseball Field', 1, 1, '2022-03-23 10:36:42', '2022-06-28 21:41:47'),
(7, 'Sample 101', 'This is a sample Facility Category Only', 1, 1, '2022-03-23 15:26:12', '2022-06-28 21:41:56'),
(8, 'Sample 103', 'Test', 1, 0, '2022-03-23 15:26:42', '2022-03-23 15:26:54'),
(9, 'TINJU', 'SEWA LAPANGAN TINJU', 0, 1, '2022-06-28 21:42:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `client_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `image_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_added` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_list`
--

INSERT INTO `client_list` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `image_path`, `status`, `delete_flag`, `date_created`, `date_added`) VALUES
(1, 'Mark', 'D', 'Male', '', '09123456789', 'Sample Address', 'mcooper@sample.com', 'c7162ff89c647f444fcaa5c635dac8c3', 'uploads/clients/1.png?v=1648008107', 1, 0, '2022-03-23 12:01:47', '2022-03-23 12:01:47'),
(2, 'Samantha', 'C', 'Miller', 'Male', '09456789123', 'Sample Address only', 'sam23@gmail.com', '56fafa8964024efa410773781a5f9e93', 'uploads/clients/2.png?v=1648021231', 1, 0, '2022-03-23 15:40:31', '2022-03-23 15:44:07'),
(6, 'YAYAT', 'hidayat', 'HIDAYATULLOH', 'Male', '089872772178', 'jl ksjksjmaiksdajikasd', 'test@gmail.com', '098f6bcd4621d373cade4e832627b4f6', NULL, 1, 0, '2022-06-30 00:11:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `facility_list`
--

CREATE TABLE `facility_list` (
  `id` int(30) NOT NULL,
  `facility_code` varchar(100) NOT NULL,
  `category_id` int(30) NOT NULL,
  `image_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facility_list`
--

INSERT INTO `facility_list` (`id`, `facility_code`, `category_id`, `image_path`, `status`, `delete_flag`, `date_created`, `date_updated`, `name`, `description`, `price`) VALUES
(1, '202203-00001', 1, 'uploads/facility/1.png?v=1648020784', 1, 1, '2022-03-23 11:07:02', '2022-06-28 21:42:41', 'Indoor Basketball Court', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sapien lorem, finibus sit amet tempus et, pharetra vel quam. Vivamus ultrices elementum turpis, in auctor nisi gravida sit amet. Curabitur rutrum sem vel sollicitudin maximus. Nam ut nisi venenatis felis condimentum luctus quis a purus. Donec accumsan lacinia dapibus. Maecenas sagittis tempor mauris, sit amet molestie lacus tempus ac. Morbi eleifend, libero sit amet facilisis consequat, lectus magna scelerisque massa, sit amet iaculis nibh leo nec leo. Curabitur pellentesque convallis lectus nec euismod. Integer maximus sem a ligula mollis, nec facilisis felis molestie. Proin et imperdiet lacus, sit amet sollicitudin libero. Aenean pellentesque augue ac metus consequat, at ultricies diam lacinia. In hac habitasse platea dictumst. Nunc diam sem, placerat sed placerat at, aliquet id nunc. Phasellus efficitur lorem non dui congue, at mattis odio facilisis.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\">Aliquam elementum scelerisque elementum. Sed et nisl arcu. Phasellus sollicitudin dui at tellus faucibus faucibus. Vestibulum quam ipsum, fermentum ut dolor eget, lobortis bibendum dolor. Aliquam suscipit metus nec ligula imperdiet porttitor. Vivamus in tincidunt lorem. Nulla cursus nulla massa, nec eleifend turpis auctor sed.</p>', 500.00),
(2, '202203-00002', 1, 'uploads/facility/2.png?v=1648020799', 1, 1, '2022-03-23 11:44:34', '2022-06-28 21:42:44', 'Outdoor Basketball', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\">Integer rutrum tristique odio vitae mollis. Nullam dapibus porta bibendum. Aliquam et nisi vel velit fringilla dignissim sed sed purus. Aliquam aliquet lacus vitae porttitor sollicitudin. Curabitur a maximus ipsum, nec consequat ex. Sed dapibus, ante ut congue congue, tortor purus pharetra felis, non porttitor purus enim nec mi. Nullam sagittis elit sed dui cursus malesuada. In ullamcorper congue lorem vel bibendum. Phasellus suscipit velit ac fermentum lacinia. Fusce varius condimentum urna vitae posuere. In rhoncus ex eget erat aliquet rutrum. Proin quis arcu vulputate, pharetra enim quis, maximus est. Nulla venenatis fermentum massa, a scelerisque ex tincidunt vel.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\">In ac dignissim urna, nec dapibus neque. Duis massa lectus, rutrum et efficitur in, posuere vel mauris. In vel nulla eu nisl porta scelerisque. Donec quis augue metus. Duis quis mauris ut mi eleifend mattis. Ut pulvinar nisl quis rutrum porttitor. Aliquam in mauris in dolor ultrices viverra id blandit velit. Proin vitae augue et neque efficitur ullamcorper eget vel nunc. Pellentesque placerat urna eu magna volutpat malesuada. Quisque imperdiet sem eros, eu convallis tellus fringilla vitae. Aliquam elementum, nibh ut facilisis faucibus, tortor erat consequat sapien, id condimentum libero tortor nec erat.</p>', 350.00),
(3, '202203-00003', 4, 'uploads/facility/3.png?v=1648020817', 1, 1, '2022-03-23 11:45:24', '2022-06-28 21:42:47', 'Football Field 101', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\">Integer ut congue eros. Nullam non rutrum leo. Vestibulum sollicitudin ac erat sed porta. Donec id neque a libero lacinia ullamcorper vitae quis lorem. In bibendum sodales nunc at viverra. Proin vel ultricies felis, id posuere augue. Donec euismod purus ullamcorper, facilisis nisi non, fringilla arcu. Vivamus enim sem, suscipit sit amet turpis sed, interdum lobortis magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pharetra sapien quis dui auctor suscipit.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\">Nullam in convallis quam. Nulla facilisi. In erat ipsum, convallis sed diam vitae, commodo maximus dui. Vestibulum gravida elementum euismod. Maecenas et viverra enim. Quisque tempus eleifend convallis. Nunc sit amet sem nisi.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\">Quisque tempus nunc felis, ac viverra leo facilisis at. In hac habitasse platea dictumst. Etiam dapibus tortor ligula, sit amet tempus tellus elementum at. Praesent pharetra justo ut est volutpat tempus. Ut tincidunt, neque sed egestas ullamcorper, tortor odio suscipit mi, ac dapibus ligula dolor eu lectus. Vestibulum placerat vulputate elit id fringilla. Mauris diam sapien, commodo et turpis consectetur, porta sagittis turpis. Etiam gravida ullamcorper lacus, eget pharetra arcu consectetur eu. Aliquam at laoreet orci. Sed vel posuere leo. Integer ut imperdiet ipsum. Proin tincidunt mollis orci, ac porttitor nulla tempus a. Nullam ut ipsum odio.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\">Nam condimentum pulvinar turpis, sit amet pharetra purus tincidunt sit amet. Quisque imperdiet dignissim luctus. Nam id odio sit amet odio venenatis tincidunt. Vivamus vel porttitor nunc. Vestibulum vel rutrum nulla. Donec interdum lectus vitae nulla consectetur luctus. Integer eu hendrerit odio, non porta velit. Vestibulum dapibus mauris arcu, eget imperdiet purus facilisis quis. Duis sit amet erat et metus finibus blandit. Duis scelerisque sit amet velit sed ultrices. Nunc facilisis, dolor non fringilla congue, massa odio facilisis justo, vel convallis sem nunc non dolor. Suspendisse ac libero sodales, ullamcorper diam a, consectetur augue. Integer ultrices turpis quis enim blandit bibendum. Donec congue porttitor ligula. Duis quis placerat urna, ac feugiat augue. Vestibulum justo risus, dignissim et massa sagittis, mollis interdum metus.</p>', 5980.98),
(4, '202203-00004', 2, 'uploads/facility/4.png?v=1648020754', 1, 1, '2022-03-23 15:28:01', '2022-06-28 21:42:50', 'Single Court for Badminton', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\">Aliquam eu libero pharetra, lobortis quam eu, efficitur arcu. Suspendisse sed metus varius, consectetur tortor quis, pretium ipsum. Fusce a augue eget ipsum cursus varius. Maecenas ac libero quis sem aliquam fringilla. Phasellus semper rutrum libero sed dapibus. Maecenas euismod ullamcorper massa, sit amet sollicitudin sem elementum non. Curabitur quis dapibus sem, vitae posuere enim. Integer non iaculis nisi. Donec tristique tincidunt nisi dapibus vehicula. Fusce sit amet vulputate ante. Sed porttitor eros augue, vel dictum nulla iaculis sed. Aliquam finibus at elit sit amet feugiat. Curabitur pretium id nibh dignissim accumsan.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\">Aliquam a finibus eros. Etiam ac diam sapien. Integer quis hendrerit nibh, sed volutpat metus. Quisque dapibus finibus fermentum. Mauris facilisis, nibh ac placerat euismod, metus felis efficitur tortor, sed gravida quam nisi id elit. Phasellus vehicula ex ligula. Quisque blandit eleifend orci, at ultricies ligula pellentesque in. Nullam fermentum magna justo, id scelerisque ligula aliquam maximus. Nam varius nulla ut libero semper rutrum. Pellentesque tellus arcu, scelerisque non aliquet quis, aliquam sit amet felis. Ut commodo odio vitae libero mollis, malesuada congue nisi feugiat. Nunc varius, felis eu vestibulum lobortis, quam nisi consectetur elit, nec gravida turpis libero vitae leo. Nulla quam ex, mollis in nisi sit amet, egestas volutpat arcu. Mauris porttitor at nisl ac dictum. Nunc at orci nec est placerat tempor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>', 850.00),
(5, '202203-00005', 6, NULL, 1, 1, '2022-03-23 15:33:48', '2022-03-23 15:33:55', 'test', '<p>test</p>', 123.00),
(6, '202206-00001', 9, NULL, 1, 0, '2022-06-28 21:43:40', NULL, 'SEWA RING TINJU', '<p>SEWA RING TINJU BERSIH AMAN</p>', 150000.00),
(7, '202206-00002', 9, NULL, 1, 1, '2022-06-28 21:43:44', '2022-06-28 21:43:53', 'SEWA RING TINJU', '<p>SEWA RING TINJU BERSIH AMAN</p>', 150000.00),
(8, '202206-00003', 9, NULL, 1, 1, '2022-06-28 21:43:45', '2022-06-28 21:43:55', 'SEWA RING TINJU', '<p>SEWA RING TINJU BERSIH AMAN</p>', 150000.00);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'SATU PADU'),
(6, 'short_name', 'SATU PADU'),
(11, 'logo', 'uploads/system-logo.png?v=1648002319'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/system-cover.png?v=1648002561');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_list`
--
ALTER TABLE `booking_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cab_id` (`facility_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH;

--
-- Indexes for table `facility_list`
--
ALTER TABLE `facility_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_list`
--
ALTER TABLE `booking_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `facility_list`
--
ALTER TABLE `facility_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_list`
--
ALTER TABLE `booking_list`
  ADD CONSTRAINT `booking_list_ibfk_1` FOREIGN KEY (`facility_id`) REFERENCES `facility_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `booking_list_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `facility_list`
--
ALTER TABLE `facility_list`
  ADD CONSTRAINT `facility_list_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
