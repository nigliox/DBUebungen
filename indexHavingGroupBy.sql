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

