.mode   columns
.headers    on
.nullvalue  NULL

--Quem foram os melhores jogadores em campo (mvp) na fase eliminatória?
--Indicar idJogador, o nome do jogador, a equipa a que pertencem e a quantidade de jogos por ordem descendente
select j.idJogador, j.nome as Jogador, e.nome as Equipa, count(*)
from jogador j
join equipa e on e.idEquipa = j.equipa
join jogo jg on jg.mvp = j.idJogador
where jg.mvp = j.idJogador and jg.fase != "Fase de Grupos" and jg.fase != "Pre Eliminatorias"
group by j.nome
order by count(*) desc;
