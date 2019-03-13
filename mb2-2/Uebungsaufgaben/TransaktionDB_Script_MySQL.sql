-- Exportiere Datenbank Struktur für transaktiondb
CREATE DATABASE IF NOT EXISTS `transaktiondb`;
USE `transaktiondb`;


-- Exportiere Struktur von Tabelle transaktiondb.kategorie
CREATE TABLE IF NOT EXISTS `kategorie` (
  `KategorieID` int(11) NOT NULL AUTO_INCREMENT,
  `Bezeichnung` varchar(255) NOT NULL,
  PRIMARY KEY (`KategorieID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportiere Struktur von Tabelle transaktiondb.produkt
CREATE TABLE IF NOT EXISTS `produkt` (
  `ProduktID` int(11) NOT NULL AUTO_INCREMENT,
  `Bezeichnung` varchar(255) NOT NULL,
  `KategorieID_FK` int(11) NOT NULL,
  PRIMARY KEY (`ProduktID`),
  KEY `fk_Produkt_Kategorie_idx` (`KategorieID_FK`),
  CONSTRAINT `fk_Produkt_Kategorie` FOREIGN KEY (`KategorieID_FK`) REFERENCES `kategorie` (`KategorieID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

