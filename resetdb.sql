CREATE TABLE `jokes` (
 `id` int NOT NULL AUTO_INCREMENT,
 `question` TEXT NOT NULL,
 `answer` TEXT NOT NULL,
 PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO `jokes` (question, answer)
VALUES ('Qu’est-ce qu’un chat dans l’espace ?', 'Un chatellite'), 
('Qu’est-ce qu’un chat tout terrain? ', 'Un cat cat'), 
('Qu’est-ce qu’un hamster dans l’espace ?', 'Un hamsteroide'),
('Pourquoi une vache a les yeux fermée ?', 'Parce qu’elle fait du lait concentré'),
('Pourquoi les vaches ne parlent-elles pas ?', 'Car il est inscrit sur la porte « la ferme »'),
('Qu’est-ce qui est poilu et qui roucoule ?','Une portugaise qui sort la voiture du garage « je recoule je recoule »'),
('Qu’est-ce qu’un canif ?', 'Un petit fien'),
('Que fait un curé dans un garage ?', 'Il démonte un scout'),
('Comment appelle-t-on un chat sans pattes ?', 'On ne l’appelle pas, on va le chercher'),
('Pourquoi on peint les coucouniettes du chat en rouge à Noël ?', 'Pour faire un chapin de Noël'),
('Comment on fait rentrer un éléphant en 3 étapes dans un frigo ?', 'On ouvre le frigo, on met l’éléphant dedans, on ferme le frigo'),
('Comment on met une girafe en 4 étapes dans un frigo ?', 'On ouvre le frigo, on enlève l’éléphant, on met la girafe et on ferme le frigo'),
('Tu connais l’histoire du Petit dej ?', 'Non ? Pas d’bol'),
('C’est quoi un petit pois avec une épée face à une carotte avec une épée ?', 'Un bonduel'),
('Qu’est-ce qui est mignon derrière une vitre ?', 'Un bébé dans un micro-onde'),
('Que fait on après avoir serré les mains d’un lépreux ?', 'On lui rend'),
('Comment fait-on tourner un belge en rond ?', 'Met le dans une pièce ronde et dis lui qu’il y une frite dans le coin'),
('Pourquoi un belge nage-il toujours au fond ?', 'Parce que dans le fond ils ne sont pas si cons');


CREATE TABLE `scores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `player` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `score` decimal(10,0) NOT NULL,
  `Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

INSERT INTO `scores` VALUES (7,'Jean-Jérome',40,'2022-05-04 11:19:41'),(8,'Marie-Odile',45,'2022-05-04 11:20:25'),(9,'Mégère',50,'2022-05-04 11:20:52'),(10,'Jacquouille',6,'2022-05-04 11:26:30'),(11,'Edmond',2,'2022-05-04 11:28:56'),(12,'Johnny la Brute',27,'2022-05-04 11:37:07'),(13,'La reine des neiges',20,'2022-05-04 14:21:04'),(14,'Jacqueline',40,'2022-05-04 16:17:11'),(15,'Ursule',40,'2022-05-04 16:18:27'),(16,'Cunégonde',70,'2022-05-04 16:20:09'),(17,'Dark Vador',27,'2022-05-04 16:20:45'),(18,'Flétan',65,'2022-05-04 16:21:52'),(19,'Ronald MC',27,'2022-05-04 16:21:55'),(20,'Cécé',33,'2022-05-04 18:45:28');
