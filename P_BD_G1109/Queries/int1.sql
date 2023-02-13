.mode   columns
.headers    on
.nullvalue  NULL

--Qual foi a esquipa vencedora do torneio?
select e.nome as Campeão
from equipa e
join competicao cmp on cmp.vencedor = e.idEquipa
where cmp.vencedor = e.idEquipa;