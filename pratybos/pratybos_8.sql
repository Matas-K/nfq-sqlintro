-- Pratybos 8.1
CREATE TABLE `author_book_map` (
  `authorId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `author_book_map` ADD KEY `bookId` (`bookId`);

INSERT INTO `author_book_map` (`authorId`, `bookId`)
    SELECT `books`.`authorId`, `books`.`bookId` FROM `books`
    LEFT JOIN `authors` ON (`books`.`authorId` = `authors`.`authorId`)
    WHERE `authors`.`authorId` IS NOT NULL;

ALTER TABLE `books` DROP `authorId`;