.mode   columns
.headers    on
.nullvalue  NULL

--Listagem de estádios ordenados por ordem decrescente de jogos disputados
select est.nome, count(*)
from estadio est
join jogo jg on jg.estadio = est.idEstadio
where jg.estadio = est.idEstadio
group by est.nome
order by count(*) desc;