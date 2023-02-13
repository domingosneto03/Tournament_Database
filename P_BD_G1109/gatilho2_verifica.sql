.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- compra
select * from EQUIPA where idEquipa = 210;
select * from JOGADOR where equipa = 210;

INSERT INTO JOGADOR (idJogador, nome, nacionalidade, idade, equipa) VALUES (1799, 'Cristiano Ronaldo', 'Portugal', 26, 210);
INSERT INTO JOGADOR (idJogador, nome, nacionalidade, idade, equipa) VALUES (1800, 'Lionel Messi', 'Argentina', 23, 210);
INSERT INTO JOGADOR (idJogador, nome, nacionalidade, idade, equipa) VALUES (1801, 'Harry Maguire', 'Inglaterra', 18, 210);

select * from EQUIPA where idEquipa = 210;
select * from JOGADOR where equipa = 210;