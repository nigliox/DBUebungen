-- aufgabe 1 MB2-1
use sqlteacherdb;

create index idx_ort
on kunde(ort);

-- aufgabe 2 MB2-1
create index idx_name_vorname
ON kunde (name, vorname)

-- aufgabe 3 MB2-1
drop index if exists idx_ort 
ON kunde;

