use transaktiondb;
-- aufgaben Transaction und so
-- clear commit
commit;

-- disable autocommit
set autocommit = 0;

-- aufgabe 3
start transaction;
	insert into produkt (produktId,bezeichnung,kategorieID_FK)
    VALUES (1, "Samsung Galaxy S4", 1,"Mobile");
 -- write back   
commit;


-- aufgabe 4
/** mysql> connect transaktiondb
Connection id:    7
Current database: transaktiondb

mysql> use transaktiondb;
Database changed
mysql>
mysql> select * from kategorie where kategorieID = 1;
+-------------+-----------------------+
| KategorieID | Bezeichnung           |
+-------------+-----------------------+
|           1 | Tragbare Telefonzelle |
+-------------+-----------------------+
1 row in set (0.00 sec)

mysql> update kategorie set bezeichnung = "NATEL" where kategorieID =1;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update kategorie set bezeichnung = "handy" where kategorieID =1;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> commit;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from kategorie where kategorieID=1;
+-------------+-------------+
| KategorieID | Bezeichnung |
+-------------+-------------+
|           1 | handy       |
+-------------+-------------+
1 row in set (0.00 sec)

**/

select bezeichnung from kategorie where kategorieID = 1;
set autocommit = 0;
start transaction;
	update kategorie
    set kategorie.Bezeichnung = "NATEL"
    where kategorieID = 1;

commit;

/** der letze gewinnt hier ganz klar **/


-- aufgabe 5 Dirty Read
SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

select * from kategorie where kategorieId = 1;

set autocommit = 0;
start transaction;
update kategorie
    set bezeichnung = "Tragbare Telefonzelle"
    where kategorieId = 1;
rollback;

-- das ergebnis wird wieder auf handy gestellt weill kein commit sondern rollback statement abgesetzt wurde

-- aufgabe 6
START TRANSACTION;
INSERT INTO kategorie (KategorieID, Bezeichnung) VALUES (2, 'Test – READ COMMITTED');