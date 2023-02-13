.mode   columns
.headers    on
.nullvalue  NULL

--Listagem de países de origem dos clubes participantes
select c.pais as Países, count(*)
from clube c
group by c.pais;