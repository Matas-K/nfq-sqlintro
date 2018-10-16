SELECT 
    `news`.`newsId` AS `newsId`, 
    `news`.`date` AS `newsDate`, 
    `news`.`text` AS `newsText`, 
    `comments`.`date` AS `commentDate`, 
    `comments`.`text` AS `commentText` 
FROM `news`
LEFT JOIN `comments` ON (`comments`.`commentId` = (
	SELECT `commentId` FROM `comments` WHERE `comments`.`newsId`=`news`.`newsId` ORDER BY `date` DESC LIMIT 1
)) 
ORDER BY `news`.`date` DESC LIMIT 10;