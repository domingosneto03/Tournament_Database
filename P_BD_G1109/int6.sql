.mode   columns
.headers    on
.nullvalue  NULL

--Qual foi o melhor jogador do torneio?
--Indicar o idJogador, nome, nacionalidade, idade, equipa
select j.idJogador, j.nome, j.nacionalidade, j.idade, e.nome as equipa
from jogador j
join equipa e on e.idEquipa = j.equipa
join jogo jg on jg.mvp = j.idJogador
group by j.nome
order by count(*) desc
limit 1;