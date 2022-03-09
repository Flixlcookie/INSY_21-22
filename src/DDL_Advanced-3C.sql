CREATE DATABASE IF NOT EXISTS sushi;
USE sushi;
CREATE TABLE gast(
    gastnr INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    strasse VARCHAR(50),
    plz INT DEFAULT 3400,
    ort VARCHAR(50) DEFAULT 'Klosterneuburg'
);

DESCRIBE gast;
INSERT INTO gast (gastnr, name, strasse, plz, ort) 
    VALUES(1,"Meier", "Wexstraße 187", "1160", "Wien");

INSERT INTO gast (gastnr, name, strasse, plz, ort) 
    VALUES(DEFAULT, "Mustermann", "Haschhofstrasse", DEFAULT, DEFAULT);

INSERT INTO gast (name) 
    VALUES ("Hausmann");

DELETE FROM gast WHERE gastnr= 2;

INSERT INTO gast
    VALUES (DEFAULT, "Mannfred", "Hauptsrasse 4", DEFAULT, DEFAULT);

INSERT INTO gast (gastnr, name, strasse, plz, ort) 
    VALUES(DEFAULT, "Mustermann", "Haschhofstrasse", DEFAULT, DEFAULT);

TRUNCATE TABLE gast; -- Leert den TABLE

INSERT INTO gast (name) 
    VALUES ("Hausmann");

INSERT INTO gast (gastnr, name, strasse, plz, ort) 
    VALUES(DEFAULT, "Mustermann", "Haschhofstra", DEFAULT, DEFAULT);

UPDATE gast SET strasse= 'Haschhofstrasse 7a' WHERE gastnr=2; -- Upadeted den Datensatz mit gastnr 2

UPDATE gast SET strasse="Hauptstrasse 4" WHERE gastnr=1;

SELECT * FROM gast; -- Zeigt die Tabelle an

CREATE TABLE gastzwei LIKE gast; -- Erzeugt ein Duplikat der struktur von gast
INSERT INTO gastzwei SELECT * FROM gast; -- Kopiert den Inhalt von gast

CREATE TABLE speise(
    nr INT AUTO_INCREMENT,
    bezeichnung VARCHAR(50) NOT NULL,
    speisecode INT NOT NULL,
    preis DOUBLE,
    PRIMARY KEY (nr),
    FOREIGN KEY (speisecode) REFERENCES speiseart(code)
);

INSERT INTO speise VALUES(DEFAULT,"California Rolls 8 Stk.",1,8.0);

CREATE TABLE speiseart(
    code INT PRIMARY KEY,
    speiseart VARCHAR(50)
);

INSERT INTO speiseart VALUES(1, 'Vorspeise');

INSERT INTO speise VALUES (DEFAULT,'Sushi 6 Stueck', 1, 4.99);

INSERT INTO speiseart VALUES (2,'Menue');

