INSERT INTO paikka
(paikka_id, hloMaara, lisatiedot)
VALUES
(5009, 999, 'taulutussit korvattu simpukoilla');

INSERT INTO opettaja
(etunimi, sukunimi, puhNro, email, lisatiedot)
VALUES
('Katka', 'Rapunen', 0401337101, 'katka.rapunen@pitkaleka.com', 'Palkka maksetaan katkarapuina');

INSERT INTO kouluttaja
(etunimi, sukunimi, puhNro, email, lisatiedot)
VALUES
('Tuhka', 'Tomaattikastike', 050101337, 'tuhka.tomaattikastike@makaroni.com', 'Kouluttajan kohtalo on muuttua kastikkeeksi');

INSERT INTO koulutus
(pvm, alkamisaika, paattymisaika, paikka, aihe, kuvaus, opettaja)
VALUES
('2015-09-08', '13:37', '13:38', 5009, 'Katkarapujen koulutus', 'Luento kertoo syvällisesti katkarapujen sielunelämästä', 1);

INSERT INTO koulutuksen_kouluttajat
(koulutus_id, kouluttaja_id)
VALUES
(1, 2);