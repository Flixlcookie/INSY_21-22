CREATE DATABASE kino; -- Datenbank anlegen
USE kino;   --Befehle gelten, wenn nicht anders angegebenn für kino

CREATE TABLE film (
    titel VARCHAR(100),
    jahr INT,
    untertitel VARCHAR(250),
    land CHAR(2),
    PRIMARY KEY (titel,jahr)
); 