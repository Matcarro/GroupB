
INSERT INTO `countries` (`country`) VALUES
('Afghanistan'),
('Albania'),
('Belgium'),
('Cambodia'),
('Canada'),
('Ethiopia'),
('Fiji'),
('France'),
('Germany'),
('Hungary'),
('Iceland'),
('India'),
('Ireland'),
('Italy'),
('Jamaica'),
('Japan'),
('Kenya'),
('Kuwait'),
('Liberia'),
('Libya'),
('Malta'),
('Mexico'),
('Morocco'),
('Netherlands'),
('New Zeland'),
('Pakistan'),
('Peru'),
('Poland'),
('Romania'),
('Russia'),
('Senegal'),
('United Kingdom'),
('United States of America');


INSERT INTO `searches` (`search`, `standard_country`, `method`, `insert_date`) VALUES
('ita', 'Italy', 'manual', '2022-04-13 14:48:41'),
('United K', 'United Kingdom', 'manual', '2022-04-20 09:05:03'),
('United King', 'United Kingdom', 'manual', '2022-04-20 08:52:34'),
('USA', 'United States of America', 'manual', '2022-04-13 16:22:12');


INSERT INTO `user` (`username`, `password`, `first_name`, `last_name`, `birth_date`, `admin`) VALUES
('DomenicoSarcina', 'Dom123', 'Domenico', 'Sarcina', '1997-10-19', 0),
('federico.fede@gmail.com', 'Federcio123*', 'Federico', 'RainÃ²', '1997-04-19', 0),
('federico.raino@studio.unibo.it', 'Federico123*', 'Federico', 'RainÃ²', '1997-04-19', 1),
('FedericoRaino', 'Fede123', 'Federico', 'Rainò', '1997-04-19', 0),
('GiuseppeIzzo', 'Giuse123', 'Giuseppe', 'Izzo', '1998-12-29', 0),
('MatteoCarrozzo', 'Matte123', 'Matteo', 'Carrozzo', '2000-03-01', 0),
('OscarDeFilpo', 'Oscar123', 'Oscar', 'De Filpo', '1995-02-05', 0);


INSERT INTO `trains` (`id`, `owner_username`, `build_country`, `sigla`) VALUES
(1, 'FedericoRaino', 'Italy', 'LPPPPR'),
(2, 'FedericoRaino', 'United States of America', 'LPPPPRPP'),
(3, 'OscarDeFilpo', 'United Kingdom', 'PPPPRPPL'),
(4, 'DomenicoSarcina', 'Pakistan', 'LPPPRPPP'),
(5, 'GiuseppeIzzo', 'Albania', 'LCCCCCC'),
(6, 'GiuseppeIzzo', 'Hungary', 'LRPPP'),
(8, 'OscarDeFilpo', 'Fiji', 'LPRP'),
(9, 'MatteoCarrozzo', 'United States of America', 'LP'),
(11, 'GiuseppeIzzo', 'Pakistan', 'LPPPPPRP'),
(12, 'FedericoRaino', 'Cambodia', 'DIOCANE');




