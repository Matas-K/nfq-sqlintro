-- Pratybos 1.1
SELECT * FROM `books`;

-- Pratybos 1.2
SELECT `title` FROM `books` ORDER BY `title` ASC;

-- Pratybos 1.3 versija 1, kai išvedamas autoriaus ID ir knygų kiekis
SELECT `authorId`, COUNT(*) FROM `books` GROUP BY `authorId`;

-- Pratybos 1.3 versija 2, kai išvedamas autoriaus NAME ir knygų kiekis
SELECT `authors`.`name`, COUNT(`books`.`bookId`) FROM `books` 
    LEFT JOIN `authors` ON (`authors`.`authorId` = `books`.`authorId`)
    GROUP BY `books`.`authorId`;