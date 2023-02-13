.mode   columns
.headers    on
.nullvalue  NULL

--Listagem de equipas com mais vitórias do que derrotas por ordem decrescente de vitorias
--Indicar idEquipa, nome da equipa, vitorias e derrotas
select e.idEquipa, e.nome, d.vitorias, d.derrotas
from equipa e 
join desempenho d on d.equipa = e.idEquipa
where d.vitorias > d. derrotas
order by d.vitorias desc;