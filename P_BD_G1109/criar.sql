--
-- File generated with SQLiteStudio v3.4.1 on ter. dez. 6 13:13:13 2022
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: COMPETICAO
CREATE TABLE IF NOT EXISTS COMPETICAO (
    idCompeticao INTEGER PRIMARY KEY,
    nome         TEXT    NOT NULL,
    dataInicio   TEXT    NOT NULL,
    dataFim      TEXT    NOT NULL,
    vencedor   INTEGER NOT NULL
                 REFERENCES EQUIPA (idEquipa)
);

-- Table: CLUBE
CREATE TABLE IF NOT EXISTS CLUBE (
    idClube INTEGER PRIMARY KEY,
    nome    TEXT    NOT NULL,
    pais    TEXT    NOT NULL,
    equipa INTEGER NOT NULL
             REFERENCES EQUIPA (idEquipa)
);

-- Table: EQUIPA
CREATE TABLE IF NOT EXISTS EQUIPA (
    idEquipa INTEGER PRIMARY KEY,
    capacidade INTEGER NOT NULL,
    nome     TEXT    NOT NULL,
    clube INTEGER NOT NULL
                     REFERENCES CLUBE (idClube)
);

-- Table: ESTADIO
CREATE TABLE IF NOT EXISTS ESTADIO (
    idEstadio INTEGER PRIMARY KEY,
    nome      TEXT    NOT NULL,
    local     TEXT    NOT NULL
);

-- Table: JOGADOR
CREATE TABLE IF NOT EXISTS JOGADOR (
    idJogador     INTEGER PRIMARY KEY,
    nome          TEXT    NOT NULL,
    nacionalidade TEXT    NOT NULL,
    idade         TEXT    NOT NULL
                          CHECK (idade >= 16),
    equipa      INTEGER NOT NULL
                  REFERENCES EQUIPA (idEquipa)
);

-- Table: JOGO
CREATE TABLE IF NOT EXISTS JOGO (
    idJogo    INTEGER PRIMARY KEY,
    data      TEXT    NOT NULL,
    duracao   INTEGER NOT NULL,
    golosCasa INTEGER NOT NULL
                      CHECK (golosCasa >= 0),
    golosFora INTEGER NOT NULL
                      CHECK (golosFora >= 0),
    fase   TEXT    NOT NULL,
    estadio INTEGER NOT NULL
              REFERENCES ESTADIO (idEstadio),
    equipaCasa INTEGER NOT NULL
                 REFERENCES EQUIPA (idEquipa),
    equipaFora INTEGER NOT NULL
                 REFERENCES EQUIPA (idEquipa),
    vencedor   INTEGER NOT NULL
                 REFERENCES EQUIPA (idEquipa),
    mvp        INTEGER NOT NULL
                 REFERENCES JOGADOR (idJogador)
);

CREATE TABLE IF NOT EXISTS DESEMPENHO (
    idDesempenho INTEGER PRIMARY KEY,
    jogos        INTEGER    NOT NULL,
    vitorias     INTEGER    NOT NULL,
    derrotas     INTEGER    NOT NULL,
    empates      INTEGER    NOT NULL,
    equipa     INTEGER    NOT NULL
                 REFERENCES EQUIPA (idEquipa)
);

CREATE TABLE IF NOT EXISTS PRE (
    idPreEli INTEGER PRIMARY KEY,
    dataInicio   TEXT    NOT NULL,
    dataFim      TEXT    NOT NULL
);

CREATE TABLE IF NOT EXISTS FGRUPOS (
    idFG INTEGER PRIMARY KEY,
    dataInicio   TEXT    NOT NULL,
    dataFim      TEXT    NOT NULL
);

CREATE TABLE IF NOT EXISTS ELIMINATORIAS (
    idEli INTEGER PRIMARY KEY,
    dataInicio   TEXT    NOT NULL,
    dataFim      TEXT    NOT NULL
);

CREATE TABLE IF NOT EXISTS GRUPOEQUIPA (
    equipa INTEGER REFERENCES EQUIPA (idEquipa)
                     PRIMARY KEY,
    nome      TEXT    NOT NULL,
    pontos   INTEGER  NOT NULL
);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
