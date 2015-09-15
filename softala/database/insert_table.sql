INSERT INTO Paikka
(paikka_id, hloMaara, lisatiedot)
VALUES
(5009, 999, 'taulutussit korvattu simpukoilla');

INSERT INTO Opettaja
(etunimi, sukunimi, puhNro, email, lisatiedot)
VALUES
('Katka', 'Rapunen', 0401337101, 'katka.rapunen@pitkaleka.com', 'Palkka maksetaan katkarapuina');

INSERT INTO Kouluttaja
(etunimi, sukunimi, puhNro, email, lisatiedot)
VALUES
('Tuhka', 'Tomaattikastike', 050101337, 'tuhka.tomaattikastike@makaroni.com', 'Kouluttajan kohtalo on muuttua kastikkeeksi');

INSERT INTO Koulutus
(pvm, alkamisaika, paattymisaika, paikka, aihe, kuvaus, opettaja)
VALUES
('2015-09-08', '13:37', '13:38', 5009, 'Katkarapujen koulutus', 'Luento kertoo syvällisesti katkarapujen sielunelämästä', 1);

INSERT INTO koulutus
(pvm, alkamisaika, paattymisaika, paikka, aihe, kuvaus, opettaja)
VALUES
('2014-10-27', '14:45', '15:15', 5009, 'Pizzanpyöritys', 'Opetellaan tekemään erilaisia pizzoja', 1);

INSERT INTO koulutus
(pvm, alkamisaika, paattymisaika, paikka, aihe, kuvaus, opettaja)
VALUES
('2018-03-22', '16:00', '18:00', 5009, 'Hajoamisen ensiasteet', 'Harjoitellaan Githubin käyttöä ja todennäköisesti hajotaan siihen', 1);

INSERT INTO koulutus
(pvm, alkamisaika, paattymisaika, paikka, aihe, kuvaus, opettaja)
VALUES
('2016-01-01', '10:00', '12:00', 5001, 'Päiväunien lyhyt oppimäärä', 'Pohditaan, mitä hyötyjä ja haittoja päiväunista on... ja ehkä nukutaan', 1);

INSERT INTO koulutus
(pvm, alkamisaika, paattymisaika, paikka, aihe, kuvaus, opettaja)
VALUES
('2016-02-14', '14:00', '18:00', 5001, 'Pussailun pitkä oppimäärä', 'Pussailun harjoittelua, ota mukaan oma parisi', 1);

INSERT INTO Koulutuksen_kouluttajat
(koulutus_id, kouluttaja_id)
VALUES
(1, 2);