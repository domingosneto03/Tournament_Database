.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- Gatilho que altera os pontos de uma equipa mediante um resultado modificado
CREATE TRIGGER PontosVitoria
AFTER UPDATE OF vencedor ON JOGO
FOR EACH ROW
BEGIN
    UPDATE GRUPOEQUIPA
    SET pontos = pontos + 3
    WHERE GRUPOEQUIPA.equipa = NEW.vencedor;
END;

CREATE TRIGGER PontosDerrota
AFTER UPDATE OF vencedor ON JOGO
FOR EACH ROW
BEGIN
    UPDATE GRUPOEQUIPA
    SET pontos = pontos - 3
    WHERE GRUPOEQUIPA.equipa = OLD.vencedor;
END;

