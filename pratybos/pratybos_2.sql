-- Pratybos 2.1
INSERT INTO `authors` SET `name` = 'Mano vardas';
INSERT INTO `authors` SET `name` = 'Autorius';

-- Pratybos 2.2
INSERT INTO `books` SET `authorId`=8, `title`='Knyga apie Vardas';
INSERT INTO `books` SET `authorId`=8, `title`='Knyga 2 apie Vardas', `year`='1999';
INSERT INTO `books` SET `authorId`=9, `title`='Knyga apie Autorius', `year`='2018';

-- Pratybos 2.3
UPDATE `books` SET `authorId`=8 WHERE `authorId` IS NULL LIMIT 1;