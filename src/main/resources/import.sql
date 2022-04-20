
INSERT INTO `countries` (`country`) VALUES ('Afghanistan');

INSERT INTO `countries` (`country`) VALUES ('Belgium');

INSERT INTO `countries` (`country`) VALUES ('Albania');;

INSERT INTO `countries` (`country`) VALUES ('Canada');
INSERT INTO `countries` (`country`) VALUES ('Ethiopia');
INSERT INTO `countries` (`country`) VALUES ('Fiji');
INSERT INTO `countries` (`country`) VALUES ('France');
INSERT INTO `countries` (`country`) VALUES ('Germany');
INSERT INTO `countries` (`country`) VALUES ('Hungary');
INSERT INTO `countries` (`country`) VALUES ('Iceland');
INSERT INTO `countries` (`country`) VALUES ('India');
INSERT INTO `countries` (`country`) VALUES ('Ireland');
INSERT INTO `countries` (`country`) VALUES ('Italy');
INSERT INTO `countries` (`country`) VALUES ('Jamaica');
INSERT INTO `countries` (`country`) VALUES ('Japan');
INSERT INTO `countries` (`country`) VALUES ('Kenya');
INSERT INTO `countries` (`country`) VALUES ('Kuwait');
INSERT INTO `countries` (`country`) VALUES ('Liberia');
INSERT INTO `countries` (`country`) VALUES ('Libya');
INSERT INTO `countries` (`country`) VALUES ('Malta');
INSERT INTO `countries` (`country`) VALUES ('Mexico');
INSERT INTO `countries` (`country`) VALUES ('Morocco');
INSERT INTO `countries` (`country`) VALUES ('Netherlands');
INSERT INTO `countries` (`country`) VALUES ('New Zeland');
INSERT INTO `countries` (`country`) VALUES ('Pakistan');
INSERT INTO `countries` (`country`) VALUES ('Peru');
INSERT INTO `countries` (`country`) VALUES ('Poland');
INSERT INTO `countries` (`country`) VALUES ('Romania');
INSERT INTO `countries` (`country`) VALUES ('Russia');
INSERT INTO `countries` (`country`) VALUES ('Senegal');
INSERT INTO `countries` (`country`) VALUES ('United Kingdom');
INSERT INTO `countries` (`country`) VALUES ('United States of America');


INSERT INTO `searches` (`search`, `standard_country`, `method`, `insert_date`) VALUES ('ita', 'Italy', 'manual', '2022-04-13 14:48:41');
INSERT INTO `searches` (`search`, `standard_country`, `method`, `insert_date`) VALUES ('United K', 'United Kingdom', 'manual', '2022-04-20 09:05:03');
INSERT INTO `searches` (`search`, `standard_country`, `method`, `insert_date`) VALUES ('United King', 'United Kingdom', 'levenhstain', '2022-04-20 08:52:34');
INSERT INTO `searches` (`search`, `standard_country`, `method`, `insert_date`) VALUES ('USA', 'United States of America', 'manual', '2022-04-13 16:22:12');


INSERT INTO `user` (`username`, `password`, `first_name`, `last_name`, `birth_date`, `admin`) VALUES ('DomenicoSarcina', 'Dom123', 'Domenico', 'Sarcina', '1997-10-19', 0);
INSERT INTO `user` (`username`, `password`, `first_name`, `last_name`, `birth_date`, `admin`)  VALUES ('federico.fede@gmail.com', 'Federcio123*', 'Federico', 'Rainò', '1997-04-19', 0);
INSERT INTO `user` (`username`, `password`, `first_name`, `last_name`, `birth_date`, `admin`)  VALUES ('federico.raino@studio.unibo.it', 'Federico123*', 'Federico', 'Rainò', '1997-04-19', 1);
INSERT INTO `user` (`username`, `password`, `first_name`, `last_name`, `birth_date`, `admin`)  VALUES ('FedericoRaino', 'Fede123', 'Federico', 'Rainò', '1997-04-19', 0);
INSERT INTO `user` (`username`, `password`, `first_name`, `last_name`, `birth_date`, `admin`)  VALUES ('GiuseppeIzzo', 'Giuse123', 'Giuseppe', 'Izzo', '1998-12-29', 0);
INSERT INTO `user` (`username`, `password`, `first_name`, `last_name`, `birth_date`, `admin`)  VALUES ('MatteoCarrozzo', 'Matte123', 'Matteo', 'Carrozzo', '2000-03-01', 0);
INSERT INTO `user` (`username`, `password`, `first_name`, `last_name`, `birth_date`, `admin`)  VALUES ('OscarDeFilpo', 'Oscar123', 'Oscar', 'De Filpo', '1995-02-05', 1);


INSERT INTO `trains` (`id`, `owner_username`, `build_country`, `sigla`) VALUES (1, 'FedericoRaino', 'Italy', 'LPPPPR');
INSERT INTO `trains` (`id`, `owner_username`, `build_country`, `sigla`) VALUES (2, 'FedericoRaino', 'United States of America', 'LPPPPRPP');
INSERT INTO `trains` (`id`, `owner_username`, `build_country`, `sigla`) VALUES (3, 'OscarDeFilpo', 'United Kingdom', 'PPPPRPPL');
INSERT INTO `trains` (`id`, `owner_username`, `build_country`, `sigla`) VALUES (4, 'DomenicoSarcina', 'Pakistan', 'LPPPRPPP');
INSERT INTO `trains` (`id`, `owner_username`, `build_country`, `sigla`) VALUES (5, 'GiuseppeIzzo', 'Albania', 'LCCCCCC');
INSERT INTO `trains` (`id`, `owner_username`, `build_country`, `sigla`) VALUES (6, 'GiuseppeIzzo', 'Hungary', 'LRPPP');
INSERT INTO `trains` (`id`, `owner_username`, `build_country`, `sigla`) VALUES (8, 'OscarDeFilpo', 'Fiji', 'LPRP');
INSERT INTO `trains` (`id`, `owner_username`, `build_country`, `sigla`) VALUES (9, 'MatteoCarrozzo', 'United States of America', 'LP');
INSERT INTO `trains` (`id`, `owner_username`, `build_country`, `sigla`) VALUES (11, 'GiuseppeIzzo', 'Pakistan', 'LPPPPPRP');
INSERT INTO `trains` (`id`, `owner_username`, `build_country`, `sigla`) VALUES (12, 'FedericoRaino', 'Cambodia', 'DIOCANE');




