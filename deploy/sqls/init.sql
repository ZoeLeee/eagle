-- 创建数据库
CREATE DATABASE IF NOT EXISTS `driving`;

USE `driving`;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;

/*!40101 SET NAMES utf8 */
;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */
;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */
;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */
;

# Dump of table users_addr
# ------------------------------------------------------------
DROP TABLE IF EXISTS `users_addr`;

CREATE TABLE `users_addr` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `user_id` int(10) unsigned NOT NULL DEFAULT '0',
    `zip` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '邮编',
    `province` varchar(255) NOT NULL DEFAULT '',
    `city` varchar(255) NOT NULL DEFAULT '',
    `district` varchar(255) NOT NULL DEFAULT '',
    `address` varchar(255) NOT NULL DEFAULT '',
    `created_at` datetime DEFAULT NULL,
    `updated_at` datetime DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `uniq_uid_fuid` (`user_id`),
    KEY `idx_status_uid` (`user_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT = '用户地址表';

-- LOCK TABLES `users_addr` WRITE;
-- /*!40000 ALTER TABLE `users_addr` DISABLE KEYS */
-- ;
-- /*!40000 ALTER TABLE `user_follow` ENABLE KEYS */
-- ;
-- UNLOCK TABLES;
# Dump of table user_info
# ------------------------------------------------------------
DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `user_info` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
    `username` varchar(255) NOT NULL DEFAULT '',
    `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
    `phone` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '手机号',
    `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮箱',
    `sex` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '性别 0:未知 1:男 2:女',
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `uniq_uid` (`user_id`),
    UNIQUE KEY `uniq_phone` (`phone`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT = '用户信息表';

-- LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */
;

-- INSERT INTO
--     `user_info` (
--         `id`,
--         `user_id`,
--         'username',
--         `avatar`,
--         'phone',
--         `email`,
--         `sex`,
--         `created_at`,
--         `updated_at`
--     )
-- VALUES
--     (
--         1,
--         1,
--         'Joe',
--         '/uploads/avatar.jpg',
--         13010102020,
--         '123@cc.com',
--         1,
--         '2020-05-23 00:12:30',
--         '2020-05-29 12:50:54'
--     ),
--     (
--         2,
--         2,
--         `Zoe`,
--         '/uploads/avatar.jpg',
--         13010102021,
--         '1234@cc.com',
--         1,
--         '2020-05-23 00:12:30',
--         '2020-05-23 00:20:09'
--     );
-- /*!40000 ALTER TABLE `user_stat` ENABLE KEYS */
-- ;
-- UNLOCK TABLES;
# Dump of table user_login 
# ------------------------------------------------------------
DROP TABLE IF EXISTS `user_login`;

CREATE TABLE `user_login` (
    `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `login_name` varchar(255) NOT NULL DEFAULT '' COMMENT '登录名',
    `password` varchar(60) NOT NULL DEFAULT '',
    `status` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '状态 0:删除 1:正常',
    `deleted_at` timestamp NULL DEFAULT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`user_id`),
    UNIQUE KEY `uniq_login_name` (`login_name`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT = '用户登录表';

-- LOCK TABLES `user_login` WRITE;
/*!40000 ALTER TABLE `user_login` DISABLE KEYS */
;

INSERT INTO
    `user_login` (
        `user_id`,
        `login_name`,
        `password`,
        `status`,
        `deleted_at`,
        `created_at`,
        `updated_at`
    )
VALUES
    (
        1,
        'test-name',
        '$2a$10$WhJY.MCtsp5kmnyl/UAdQuWbbMzxvmLCPeDhcpxyL84lYey829/ym',
        1,
        NULL,
        '2020-02-09 10:23:33',
        '2020-05-09 10:23:33'
    ),
    (
        2,
        'admin',
        '$2a$10$WhJY.MCtsp5kmnyl/UAdQuWbbMzxvmLCPeDhcpxyL84lYey829/ym',
        1,
        NULL,
        '2020-05-20 22:42:18',
        '2020-05-20 22:42:18'
    );

/*!40000 ALTER TABLE `user_login` ENABLE KEYS */
;

-- UNLOCK TABLES;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */
;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */
;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */
;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;