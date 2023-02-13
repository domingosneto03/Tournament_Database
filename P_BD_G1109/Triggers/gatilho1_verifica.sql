.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

select * from GRUPOEQUIPA order by nome, pontos desc;

UPDATE JOGO SET vencedor = 237 where vencedor = 224 and idJogo = 3007;
UPDATE JOGO SET vencedor = 207 where vencedor = 218 and idJogo = 3024;
UPDATE JOGO SET vencedor = 201 where vencedor = 231 and idJogo = 3037;

select * from GRUPOEQUIPA order by nome, pontos desc;