-- Pratybos 5.1
(SELECT `authors`.`authorId`, `authors`.`authorId` FROM `authors`)
UNION
(SELECT `books`.`title`, `books`.`year` FROM `books`);