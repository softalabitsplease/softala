CREATE TABLE Paikka (
	paikka_id INT NOT NULL,
	hloMaara INT NOT NULL,
	lisatiedot VARCHAR(255),
	PRIMARY KEY(paikka_id)
	);

CREATE TABLE Opettaja (
	opettaja_id INT NOT NULL AUTO_INCREMENT,
	etunimi VARCHAR(100) NOT NULL,
	sukunimi VARCHAR(100) NOT NULL,
	puhNro INT NOT NULL,
	email VARCHAR(255) NOT NULL,
	lisatiedot VARCHAR(255),
	PRIMARY KEY(opettaja_id)
	);


CREATE TABLE Kouluttaja (
	kouluttaja_id INT NOT NULL AUTO_INCREMENT,
	etunimi VARCHAR(100) NOT NULL,
	sukunimi VARCHAR(100) NOT NULL,
	puhNro INT NOT NULL,
	email VARCHAR(255) NOT NULL,
	lisatiedot VARCHAR(255),
	PRIMARY KEY(kouluttaja_id)
	);
	
CREATE TABLE Koulutus (
	koulutus_id INT NOT NULL AUTO_INCREMENT,
	pvm DATE NOT NULL,
	osallistuja_lkm INT,
	alkamisaika TIME NOT NULL,
	paattymisaika TIME NOT NULL,
	paikka_id INT NOT NULL,
	aihe VARCHAR(100) NOT NULL,
	kuvaus TEXT,
	opettaja_id INT NOT NULL,
	PRIMARY KEY(koulutus_id),
	CONSTRAINT FOREIGN KEY(paikka_id) REFERENCES Paikka(paikka_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FOREIGN KEY(opettaja_id) REFERENCES Opettaja(opettaja_id) ON DELETE CASCADE ON UPDATE CASCADE
	);
	
	
CREATE TABLE Koulutuksen_kouluttaja (
	koulutus_id INT NOT NULL,
	kouluttaja_id INT NOT NULL,
	PRIMARY KEY(koulutus_id, kouluttaja_id),
	CONSTRAINT FOREIGN KEY(koulutus_id) REFERENCES Koulutus(koulutus_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FOREIGN KEY(kouluttaja_id) REFERENCES Kouluttaja(kouluttaja_id) ON DELETE CASCADE ON UPDATE CASCADE
	);
