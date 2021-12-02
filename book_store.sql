SHOW DATABASES; 

CREATE DATABASE `bookstore`;

USE `bookstore`;

SHOW TABLES;

CREATE TABLE `bookstore`.`books` ( `id` INT NULL AUTO_INCREMENT ,  `author1` VARCHAR(100) NOT NULL ,  `author2` VARCHAR(100) NULL ,  `author3` VARCHAR(100) NULL ,  `title` VARCHAR(100) NULL ,  `description` TEXT NULL ,  `place_sell` CHAR(3) NULL ,  `stock` INT NULL DEFAULT '0' ,  `creation_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ,    PRIMARY KEY  (`id`));

ALTER TABLE `books` ADD `price` INT NULL DEFAULT '0' AFTER `creation_date`, ADD `status` ENUM('available', 'out of stock', 'limited') NULL AFTER `price`;

INSERT INTO `books` (`id`, `author1`, `author2`, `author3`, `title`, `description`, `stock`, `creation_date`, `price`, `status`) VALUES ('90807874', 'Leila Salikha Chudori', NULL, NULL, 'Laut Bercerita', 'Laut Bercerita menceritakan terkait perilaku kekejaman dan kebengisan yang dirasakan oleh kelompok aktivis mahasiswa di masa Orde Baru. Tidak hanya itu, novel ini pun merenungkan kembali akan hilangnya 13 aktivis, bahkan sampai saat ini belum juga ada yang mendapatkan petunjuknya.', '25', CURRENT_TIMESTAMP, '80000', 'available'), ('65738695', 'Mark Manson', NULL, NULL, 'Sebuah Seni untuk Bersikap Bodo Amat', 'Novel ini merupakan kisah nyata Bukowski yang intinya bagaimana ia menyikapi kegagalan dan kesulitan yang dihadapi dalam kehidupannya dengan cara bersikap “bodo amat” sehingga dia bertahan, merasa baik dan menerima disaat keadaan buruknya sehingga dia bisa menghadapi kesulitan-kesulitan tersebut.', '0', CURRENT_TIMESTAMP, '70000', 'out of stock'), ('56478301', 'Stephen Covey', NULL, NULL, '7 Kebiasaan Manusia yang Sangat Efektif', 'Stephen R. Covey dalam bukunya 7 Habbits of Highly Effective People memaparkan kepada pembacanya ada 7 kebiasaan manusia yang bisa dipraktekkan agar hidup bisa lebih produktif dan efektif', '15', CURRENT_TIMESTAMP, '95000', 'limited');

SELECT * FROM `books`;

SELECT `id` AS `ID`, `author1` AS `A1`, `author2` AS `A2`, `author3` AS `A3` FROM `books`;

SELECT * FROM `books` WHERE `id`= '56478301';

SELECT * FROM `books` WHERE `stock` = 0 AND `stock`= 'out of stock';

SELECT * FROM `books` WHERE `stock` = 0 OR `stock`= 'available';

SELECT * FROM `books` WHERE NOT `status` LIKE 'available';

SELECT * FROM `books` ORDER BY `id` ASC;

SELECT * FROM `books` LIMIT 2;

UPDATE `books` SET `author1`= 'Leila S. Chudori', `price`= '75000';

DELETE FROM `books` WHERE `author1` = 'Mark Manson';

