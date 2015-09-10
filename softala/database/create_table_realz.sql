CREATE TABLE paikka (
	paikka_id INT NOT NULL,
	hloMaara INT NOT NULL,
	lisatiedot VARCHAR(255),
	PRIMARY KEY(paikka_id)
	);
	

CREATE TABLE opettaja (
	ope_id INT NOT NULL AUTO_INCREMENT,
	etunimi VARCHAR(100) NOT NULL,
	sukunimi VARCHAR(100) NOT NULL,
	puhNro INT NOT NULL,
	email VARCHAR(255) NOT NULL,
	lisatiedot VARCHAR(255),
	PRIMARY KEY(ope_id)
	);


CREATE TABLE kouluttaja (
	kouluttaja_id INT NOT NULL AUTO_INCREMENT,
	etunimi VARCHAR(100) NOT NULL,
	sukunimi VARCHAR(100) NOT NULL,
	puhNro INT NOT NULL,
	email VARCHAR(255) NOT NULL,
	lisatiedot VARCHAR(255),
	PRIMARY KEY(kouluttaja_id)
	);


CREATE TABLE koulutus (
	koulutus_id INT NOT NULL AUTO_INCREMENT,
	pvm DATE NOT NULL,
	alkamisaika TIME NOT NULL,
	paattymisaika TIME NOT NULL,
	paikka INT NOT NULL,
	aihe VARCHAR(50) NOT NULL,
	kuvaus VARCHAR(255),
	opettaja INT NOT NULL,
	PRIMARY KEY(koulutus_id),
	FOREIGN KEY paikka REFERENCES paikka(paikka_id),
	FOREIGN KEY opettaja REFERENCES opettaja(ope_id)
	);
	

CREATE TABLE koulutuksen_kouluttajat (
	koulutus_id INT NOT NULL,
	kouluttaja_id INT NOT NULL
	PRIMARY KEY(koulutus_id, kouluttaja_id)
	FOREIGN KEY koulutus_id REFERENCES koulutus(koulutus_id),
	FOREIGN KEY kouluttaja_id REFERENCES kouluttaja(kouluttaja_id)
	);