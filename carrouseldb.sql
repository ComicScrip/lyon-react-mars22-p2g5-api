CREATE TABLE `wildquiz` (
    `id` int NOT NULL AUTO_INCREMENT,
    `category` TEXT NOT NULL,
    `difficulty` TEXT NOT NULL,
    `type` TEXT NOT NULL,
    `question` TEXT NOT NULL,
    `correct_answer` TEXT NOT NULL,
    `incorrect_answers` TEXT NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;


INSERT INTO `wildquiz` (category, difficulty, type, question, correct_answer, incorrect_answers)
VALUES ('Custom', 'easy', 'multiple', 'En quelle année fut créé la Wild Code School ?', '2014', '["2009", "2015", "2019"]'),
('Custom', 'easy', 'multiple', 'Qui a créé la Wild Code School ?', 'Anna Stépanoff & Romain Cœur', '["Pierre Genthon & Nicolas Chavanoud", "Bob Smith & Bradley McKenzie", "Elon Musk"]'),
('Custom', 'easy', 'multiple', 'Le siège social de la Wild Code School est situé à :', 'La Loupe', '["Los Angeles", "Lyon", "En Guadeloupe"]'),
('Custom', 'easy', 'multiple', 'Un Wilder qui a du style a choisi comme langage de programmation :', 'Javascript', '["PHP", "Le langage binaire", "Le Wildscript"]'),
('Custom', 'easy', 'multiple', 'Quand tu es Wilder la journée tu bois :', 'Du café', '["Du café", "Du café", "Du café"]');


CREATE TABLE `lyonquiz` (
    `id` int NOT NULL AUTO_INCREMENT,
    `category` TEXT NOT NULL,
    `difficulty` TEXT NOT NULL,
    `type` TEXT NOT NULL,
    `question` TEXT NOT NULL,
    `correct_answer` TEXT NOT NULL,
    `incorrect_answers` TEXT NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;


INSERT INTO `lyonquiz` (category, difficulty, type, question, correct_answer, incorrect_answers)
VALUES ('Custom', 'easy', 'multiple', 'Quelle est la population municipale de Lyon (2019) ?', '522 969', '["601 563", "488 944", "1 322 527"]'),
('Custom', 'easy', 'multiple', 'Comment s’appelait Lyon à l’époque Romaine ?', 'Lugdunum', '["Lutèce", "Lyonnum", "Periculum"]'),
('Custom', 'easy', 'multiple', 'Qui était le maire de Lyon en 2000 ?', 'Raymond Barre', '["Gérard Collomb", "Georges Képénékian", "Michel Noir"]'),
('Custom', 'easy', 'multiple', 'Combien de lignes de métro il y a-t-il à Lyon ?', '4', '["5", "3", "Il n’y a pas de métro"]'),
('Custom', 'easy', 'multiple', 'L’OL, le club de foot lyonnais, a été crée en :', '1950', '["1927", "1912", "1964"]');