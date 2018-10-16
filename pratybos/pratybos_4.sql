-- Pratybos 4.1
(
    SELECT `authors`.`name`, count(`books`.`bookId`) FROM `books`
        LEFT JOIN `authors` ON (`books`.`authorId` = `authors`.`authorId`)
        GROUP BY `authors`.`authorId`
)
UNION
(
    SELECT `authors`.`name`, count(`books`.`bookId`) FROM `books`
        RIGHT JOIN `authors` ON (`books`.`authorId` = `authors`.`authorId`)
        GROUP BY `authors`.`authorId`
);

-- Pratybos 4.2
DELETE `authors` FROM `authors`
    LEFT JOIN `books` ON (`books`.`authorId` = `authors`.`authorId`)
    WHERE `books`.`bookId` IS NULL;