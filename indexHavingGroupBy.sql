use sqlteacherdb;

#Aufgaben 1- 3 Index

SHOW INDEXES FROM kunde;

CREATE INDEX idx_ort ON kunde (ort);

CREATE INDEX idx_name_vorname ON kunde (name,vorname);

DROP INDEX idx_ort ON kunde;


use perftestdb;
# Aufgaben uebungen select,group by,having

# Aufgabe 1
SELECT count(*) FROM ww_posall where plz = 1617;

# Aufgabe2
SELECT count(*) FROM ww_posall where plz like '%617';

# Aufgabe 3
SELECT * FROM ww_posall WHERE menge between 700 and 900 order by menge desc;

# Aufgabe 4 
SELECT count(distinct Artikel) FROM ww_posall where plz=1617;

# Aufgabe 5
SELECT sum(artikel) FROM ww_posall where plz=1617;

# Aufgabe 6 
SELECT * FROM ww_posall where Nachname in ('Maier','Mayer','Meier','Meyer');
SELECT * FROM ww_posall WHERE Nachname like 'M_er';

# Aufgabe 7
SELECT DISTINCT einheit FROM ww_posall;

# Aufgabe 8
SELECT * FROM ww_posall where land not like 'CH';
SELECT * FROM ww_posall where land != 'CH';

# Aufgabe 9

SELECT min(datum) FROM ww_posall;
SELECT max(datum) FROM ww_posall;

SELECT datum from ww_posall ORDER BY datum limit 1;
SELECT datum from ww_posall ORDER BY datum DESC LIMIT 1;

# Aufgabe 10
SELECT * FROM ww_posall WHERE nachname = 'Müller' and vorname = 'Sonja';

# Aufgabe 11
SELECT * FROM ww_posall WHERE Vorname LIKE '___e_s%';

# Aufgabe 12
SELECT plz, count(*) FROM ww_posall GROUP BY PLZ ORDER BY count(*) desc;

# Aufgabe13
SELECT nachname,vorname, strasse,plz FROM ww_posall WHERE artikel = '99980' GROUP BY nachname,vorname,strasse,plz having count(*)=18;

# Aufgabe 14
CREATE INDEX idx_plz ON ww_posall (plz);
CREATE INDEX idx_menge ON ww_posall (menge);
CREATE INDEX idx_nachname ON ww_posall (nachname);
CREATE INDEX idx_vorname ON ww_posall (vorname);
CREATE INDEX idx_datum ON ww_posall (datum);
CREATE INDEX idx_einheit ON ww_posall (einheit);

SHOW INDEXES from ww_posall;

