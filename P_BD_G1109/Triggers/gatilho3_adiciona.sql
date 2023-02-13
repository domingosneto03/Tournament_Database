.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- Gatilho que permite a transferência (venda) de um jogador
CREATE TRIGGER PodeVender
BEFORE DELETE ON JOGADOR
FOR EACH ROW
WHEN ( select capacidade
       from EQUIPA
       where EQUIPA.idEquipa = OLD.equipa ) <= 19
BEGIN
    SELECT RAISE(ABORT, 'Esta equipa não tem jogadores suficientes');
END;

CREATE TRIGGER Venda
AFTER DELETE ON JOGADOR
FOR EACH ROW
BEGIN
    UPDATE EQUIPA
    SET capacidade = capacidade - 1
    WHERE EQUIPA.idEquipa = OLD.equipa;
END;