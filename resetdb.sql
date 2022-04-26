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
