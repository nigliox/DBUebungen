use perftestdb;

-- aufgabe 1 | result 79
select count(plz) as Anzahl from ww_posall
where plz = '1617';

-- aufgabe 2 | result 79
select count(plz)  as Anzahl from ww_posall
where plz LIKE '%617'; 

-- aufgabe 3 | result 452
select count(Menge) as Artikel from ww_posall
where Menge between 700 and 900;

-- aufgabe 4 | result 7
select count(*) as VerschiedeneArtikel from ww_posall
where plz = '1617';

-- aufgabe 6 | result 79
select * from  ww_posall
where Nachname = 'M_yer' or Nachname = 'M_ier';


-- aufgabe 7 | result
SELECT distinct COUNT(Einheit)
FROM `perftestdb`.`ww_posall`;


-- aufgabe 8
set @schweiz = 0;
set @schweiz = (select COUNT(*) from ww_posall where land !='CH');
DELIMITER //
select @schweiz;
if @schweiz != 0;
then 'yes';
else 'no';
endif;
end //
DELIMITER ;


select land from ww_posall where land !='CH';

-- aufgabe 9, älteeste
select datum
from ww_posall 
order by datum asc
LIMIT 1;

-- aufgabe 9 jüngste
select Datum 
from ww_posall
order by datum desc
LIMIT 1;

-- aufgabe 10 | result 0
select COUNT(*) from ww_posall
where nachname = 'Müller' and vorname = 'Sonja';

-- aufgabe 11 | result null
select vorname from mitarbeiter
where VORNAME LIKE'___e_s%';

-- aufgabe 12 |
select bestellung.KUNDENNR, COUNT(plz) Anzahl
from bestellung
join kunde on bestellung.KUNDENNR = kunde.KUNDENNR
group by plz;


-- aufgabe 14 |
create index idxPlz on ww_posall (plz);
create index idxMenge on ww_posall (menge);
create index idxNachname on ww_posall (nachname);
create index idxVorname on ww_posall (vorname);
create index idxDatum on ww_posall (datum);
create index idxEinheit on ww_posall (einheit);

-- aufgabe 15 |
--
create index idxVNname on ww_posall (vorname,nachname);