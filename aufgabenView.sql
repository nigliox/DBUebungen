use sqlteacherdb;

# Aufgabe1 j
CREATE View v_hamburger_kunden as
SELECT name,vorname,strasse,plz,ort FROM kunde WHERE ort = 'Hamburg';

# Aufgabe 2
CREATE VIEW v_artikelliste
AS
SELECT a.bezeichnung, a.nettopreis, h.name
FROM artikel a INNER JOIN Hersteller h
ON a.hersteller = h.herstellernr;

# Aufgabe 3
CREATE VIEW v_kunde_bonn as
SELECT * FROM kunde WHERE ort = 'Bonn';

DROP VIEW v_kunde_bonn;

# Aufgabe 4

CREATE View v_abt_support AS
SELECT * FROM mitarbeiter INNER JOIN abteilung WHERE abteilung.bezeichnung = 'support';

# Aufgabe 5 
INSERT INTO v_abt_suupport (name,vorname,mitarbeiternr,abteilung) values ('Dent','Arthur',42,1);