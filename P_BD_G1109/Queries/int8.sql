.mode   columns
.headers    on
.nullvalue  NULL

--Listagem de equipas que venceram jogos na fase eliminatória
select e.idEquipa, e.nome
from equipa e
join jogo jg on e.idEquipa = jg.vencedor
where jg.fase != "Pre Eliminatorias" and jg.fase != "Fase de Grupos"
group by e.nome;