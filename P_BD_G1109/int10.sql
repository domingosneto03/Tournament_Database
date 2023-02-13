.mode   columns
.headers    on
.nullvalue  NULL

--Listagem dos jogos disputados em abril que tenha havido golos
--Indicar o idJogo, o nome da equipa em casa, os golos da equipa em casa, os golos da equipa de fora, o nome da equipa de fora, data do jogo
select jg.idJogo, ec.nome as Casa, jg.golosCasa, jg.golosFora, ef.nome as Fora, jg.data
from jogo jg
join equipa ec on ec.idEquipa = jg.equipaCasa
join equipa ef on ef.idEquipa = jg.equipaFora
where (jg.golosCasa > 0 or jg.golosFora > 0) and jg.data like "%/04/%";