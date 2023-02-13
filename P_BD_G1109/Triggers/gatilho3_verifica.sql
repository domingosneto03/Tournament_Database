PRAGMA foreign_keys = ON;

-- venda
select * from EQUIPA where idEquipa = 237;
select * from JOGADOR where equipa = 237;

DELETE FROM JOGADOR WHERE idJogador = 1775;
DELETE FROM JOGADOR WHERE idJogador = 1776;
DELETE FROM JOGADOR WHERE idJogador = 1777;

select * from EQUIPA where idEquipa = 237;
select * from JOGADOR where equipa = 237;