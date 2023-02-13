.mode   columns
.headers    on
.nullvalue  NULL

--Listagem de resultados na fase de grupos e fase eliminatoria
--Indicar a o nome da equipa em casa, os golos da equipa em casa, os golos da equipa de fora, o nome da equipa de fora
select ec.nome as Casa, jg.golosCasa, jg.golosFora, ef.nome as Fora
from jogo jg
join equipa ec on ec.idEquipa = jg.equipaCasa
join equipa ef on ef.idEquipa = jg.equipaFora
where fase != "Pre Eliminatorias";