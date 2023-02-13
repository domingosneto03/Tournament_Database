.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- Gatilho que permite a transferência (compra) de um jogador de uma equipa não participante
CREATE TRIGGER PodeComprar
BEFORE INSERT ON JOGADOR
FOR EACH ROW
WHEN ( select capacidade
       from EQUIPA
       where EQUIPA.idEquipa = NEW.equipa ) >= 23
BEGIN
    SELECT RAISE(ABORT, 'Esta equipa tem demasiados jogadores');
END;

CREATE TRIGGER Compra
AFTER INSERT ON JOGADOR
FOR EACH ROW
BEGIN
    UPDATE EQUIPA
    SET capacidade = capacidade + 1
    WHERE EQUIPA.idEquipa = NEW.equipa;
END;

