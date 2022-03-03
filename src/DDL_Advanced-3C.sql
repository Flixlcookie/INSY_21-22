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

TRUNCATE TABLE gast; --Leert den TABLE

INSERT INTO gast (name) 
    VALUES ("Hausmann");
