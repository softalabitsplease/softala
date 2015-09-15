CREATE TABLE Paikka (
	paikka_id INT NOT NULL,
	hloMaara INT NOT NULL,
	lisatiedot VARCHAR(255),
	PRIMARY KEY(paikka_id)
	);
	

CREATE TABLE Opettaja (
	ope_id INT NOT NULL AUTO_INCREMENT,
	etunimi VARCHAR(100) NOT NULL,
	sukunimi VARCHAR(100) NOT NULL,
	puhNro INT NOT NULL,
	email VARCHAR(255) NOT NULL,
	lisatiedot VARCHAR(255),
	PRIMARY KEY(ope_id)
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
	alkamisaika TIME NOT NULL,
	paattymisaika TIME NOT NULL,
	paikka INT NOT NULL,
	aihe VARCHAR(50) NOT NULL,
	kuvaus VARCHAR(255),
	opettaja INT NOT NULL,
	PRIMARY KEY(koulutus_id),
	CONSTRAINT FOREIGN KEY(paikka) REFERENCES Paikka(paikka_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FOREIGN KEY(opettaja) REFERENCES Opettaja(ope_id) ON DELETE CASCADE ON UPDATE CASCADE
	);
	
	
CREATE TABLE Koulutuksen_kouluttajat (
	koulutus_id INT NOT NULL,
	kouluttaja_id INT NOT NULL,
	PRIMARY KEY(koulutus_id, kouluttaja_id),
	CONSTRAINT FOREIGN KEY(koulutus_id) REFERENCES Koulutus(koulutus_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FOREIGN KEY(kouluttaja_id) REFERENCES Kouluttaja(kouluttaja_id) ON DELETE CASCADE ON UPDATE CASCADE
	);
