-- Pratybos 7.1
CREATE TABLE `author_book_map` (
  `authorId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `author_book_map` ADD KEY `bookId` (`bookId`);

-- Pratybos 7.2
INSERT INTO `author_book_map` (`authorId`, `bookId`)
    SELECT `books`.`authorId`, `books`.`bookId` FROM `books`
    LEFT JOIN `authors` ON (`books`.`authorId` = `authors`.`authorId`)
    WHERE `authors`.`authorId` IS NOT NULL;

INSERT INTO `author_book_map` SET `authorId`=2, `bookId`=1;
INSERT INTO `author_book_map` SET `authorId`=2, `bookId`=3;

-- Pratybos 7.3
SELECT `books`.`title`, GROUP_CONCAT(`authors`.`name`) FROM `books`
    LEFT JOIN `author_book_map` ON (`author_book_map`.`bookId` = `books`.`bookId`)
    LEFT JOIN `authors` ON (`author_book_map`.`authorId` = `authors`.`authorId`)
    GROUP BY `books`.`bookId`;

-- Pratybos 7.4
ALTER TABLE `books` CONVERT TO CHARACTER SET utf8 COLLATE utf8_unicode_ci;
ALTER TABLE `books` CHANGE `title` `title` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL;

UPDATE `books` SET `title`='Žąsinų mįslė' WHERE `bookId` = 1 LIMIT 1;