.mode   columns
.headers    on
.nullvalue  NULL

--Listagem de equipas que não passaram da fase pré eliminatória
select e.idEquipa, e.nome
from equipa e
join desempenho d on d.equipa = e.idEquipa
where d.jogos = 1;

