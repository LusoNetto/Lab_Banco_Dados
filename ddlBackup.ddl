-- Gerado por Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   em:        2023-03-10 16:45:50 GMT-03:00
--   site:      Oracle Database 12cR2
--   tipo:      Oracle Database 12cR2



CREATE user app identified by account unlock 
;

CREATE TABLE app.contratacoes (
    ctt_jog_id  NUMBER(*, 0) NOT NULL,
    ctt_tim_id  NUMBER(*, 0) NOT NULL,
    ctt_inicio  DATE
        CONSTRAINT ck_ctt_01 NOT NULL,
    ctt_fim     DATE
        CONSTRAINT ck_ctt_02 NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX app.pk_ctt ON
    app.contratacoes (
        ctt_jog_id
    ASC,
        ctt_tim_id
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE app.contratacoes
    ADD CONSTRAINT pk_ctt PRIMARY KEY ( ctt_jog_id,
                                        ctt_tim_id )
        USING INDEX app.pk_ctt;

CREATE TABLE app.estacoes (
    est_id    NUMBER(*, 0) NOT NULL,
    est_nome  VARCHAR2(34 BYTE)
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX app.pk_est ON
    app.estacoes (
        est_id
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE app.estacoes
    ADD CONSTRAINT pk_est PRIMARY KEY ( est_id )
        USING INDEX app.pk_est;

CREATE TABLE app.estatisticas (
    stt_jog_id                     NUMBER(*, 0) NOT NULL,
    stt_jgd_id                     NUMBER(*, 0) NOT NULL,
    stt_chutes_ao_gol              NUMBER(*, 0),
    stt_gols                       NUMBER(*, 0),
    stt_defesas                    NUMBER(*, 0),
    stt_assistencias               NUMBER(*, 0),
    stt_pontuacao                  NUMBER(*, 0),
    stt_relacao_chute_gol          NUMBER,
    stt_impulso_por_minuto         NUMBER,
    stt_med_impulso                NUMBER,
    stt_impulso_coletado           NUMBER(*, 0),
    stt_impulso_roubado            NUMBER(*, 0),
    stt_impulso_grande_coletado    NUMBER(*, 0),
    stt_impulso_grande_roubado     NUMBER(*, 0),
    stt_impulso_pequeno_coletado   NUMBER(*, 0),
    stt_impulso_pequeno_roubado    NUMBER(*, 0),
    stt_blocos_grandes_coletados   NUMBER(*, 0),
    stt_blocos_grandes_roubados    NUMBER(*, 0),
    stt_blocos_pequenos_coletados  NUMBER(*, 0),
    stt_blocos_pequenos_roubados   NUMBER(*, 0),
    stt_velocidade_med             NUMBER,
    stt_distancia_percorrida       NUMBER,
    stt_distancia_med_da_bola      NUMBER,
    stt_distancia_med_posse        NUMBER,
    stt_distancia_med_sem_posse    NUMBER,
    stt_distancia_med_dos_aliados  NUMBER,
    stt_demolicoes_causadas        NUMBER(*, 0),
    stt_demolicoes_recebidas       NUMBER(*, 0),
    stt_participacoes_gols         NUMBER(*, 0)
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX app.pk_stt ON
    app.estatisticas (
        stt_jog_id
    ASC,
        stt_jgd_id
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE app.estatisticas
    ADD CONSTRAINT pk_stt PRIMARY KEY ( stt_jog_id,
                                        stt_jgd_id )
        USING INDEX app.pk_stt;

CREATE TABLE app.eventos (
    evt_id           NUMBER(*, 0) NOT NULL,
    evt_nome         VARCHAR2(50 BYTE)
        CONSTRAINT ck_evt_01 NOT NULL,
    evt_reg_id       NUMBER(*, 0)
        CONSTRAINT ck_evt_02 NOT NULL,
    evt_data_inicio  DATE
        CONSTRAINT ck_evt_03 NOT NULL,
    evt_data_fim     DATE
        CONSTRAINT ck_evt_04 NOT NULL,
    evt_presencial   CHAR(1 BYTE)
        CONSTRAINT ck_evt_05 NOT NULL,
    evt_loc_id       NUMBER(*, 0)
        CONSTRAINT ck_evt_06 NOT NULL,
    evt_est_id       NUMBER(*, 0)
        CONSTRAINT ck_evt_07 NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX app.pk_evt ON
    app.eventos (
        evt_id
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE app.eventos
    ADD CONSTRAINT pk_evt PRIMARY KEY ( evt_id )
        USING INDEX app.pk_evt;

CREATE TABLE app.formatos (
    for_id    NUMBER(*, 0) NOT NULL,
    for_nome  CHAR(8 BYTE)
        CONSTRAINT ck_for_01 NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX app.pk_for ON
    app.formatos (
        for_id
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE app.formatos
    ADD CONSTRAINT pk_for PRIMARY KEY ( for_id )
        USING INDEX app.pk_for;

CREATE TABLE app.jogadores (
    jgd_id      NUMBER(*, 0) NOT NULL,
    jgd_tag     VARCHAR2(50 BYTE)
        CONSTRAINT ck_jgd_01 NOT NULL,
    jgd_nome    VARCHAR2(50 BYTE),
    jgd_pis_id  NUMBER(*, 0)
        CONSTRAINT ck_jgd_02 NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX app.pk_jgd ON
    app.jogadores (
        jgd_id
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE app.jogadores
    ADD CONSTRAINT pk_jgd PRIMARY KEY ( jgd_id )
        USING INDEX app.pk_jgd;

CREATE TABLE app.jogos (
    jog_id           NUMBER(*, 0) NOT NULL,
    jog_numero       NUMBER(*, 0),
    jog_data         DATE,
    jog_duracao      NUMBER(*, 0)
        CONSTRAINT ck_jog_01 NOT NULL,
    jog_ser_id       NUMBER(*, 0)
        CONSTRAINT ck_jog_02 NOT NULL,
    jog_tim_laranja  NUMBER(*, 0)
        CONSTRAINT ck_jog_03 NOT NULL,
    jog_tim_azul     NUMBER(*, 0)
        CONSTRAINT ck_jog_04 NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX app.pk_jog ON
    app.jogos (
        jog_id
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE app.jogos
    ADD CONSTRAINT pk_jog PRIMARY KEY ( jog_id )
        USING INDEX app.pk_jog;

CREATE TABLE app.localizacoes (
    loc_id      NUMBER(*, 0) NOT NULL,
    loc_arena   VARCHAR2(50 BYTE)
        CONSTRAINT ck_loc_01 NOT NULL,
    loc_cidade  VARCHAR2(50 BYTE)
        CONSTRAINT ck_loc_02 NOT NULL,
    loc_pis_id  NUMBER(*, 0)
        CONSTRAINT ck_loc_03 NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX app.pk_loc ON
    app.localizacoes (
        loc_id
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE app.localizacoes
    ADD CONSTRAINT pk_loc PRIMARY KEY ( loc_id )
        USING INDEX app.pk_loc;

CREATE TABLE app.paises (
    pis_id     NUMBER(*, 0) NOT NULL,
    pis_nome   VARCHAR2(50 BYTE)
        CONSTRAINT ck_pis_01 NOT NULL,
    pis_sigla  CHAR(2 BYTE)
        CONSTRAINT ck_pis_02 NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX app.pk_pis ON
    app.paises (
        pis_id
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE app.paises
    ADD CONSTRAINT pk_pis PRIMARY KEY ( pis_id )
        USING INDEX app.pk_pis;

CREATE TABLE app.regioes (
    reg_id    NUMBER(*, 0) NOT NULL,
    reg_nome  VARCHAR2(40 BYTE)
        CONSTRAINT ck_reg_01 NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX app.pk_reg ON
    app.regioes (
        reg_id
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE app.regioes
    ADD CONSTRAINT pk_reg PRIMARY KEY ( reg_id )
        USING INDEX app.pk_reg;

CREATE TABLE app.rounds (
    rnd_id    NUMBER(*, 0) NOT NULL,
    rnd_nome  VARCHAR2(30 BYTE)
        CONSTRAINT ck_rnd_01 NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX app.pk_rnd ON
    app.rounds (
        rnd_id
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE app.rounds
    ADD CONSTRAINT pk_rnd PRIMARY KEY ( rnd_id )
        USING INDEX app.pk_rnd;

CREATE TABLE app.series (
    ser_id      NUMBER(*, 0) NOT NULL,
    ser_numero  NUMBER(*, 0),
    ser_for_id  NUMBER(*, 0)
        CONSTRAINT ck_ser_01 NOT NULL,
    ser_rnd_id  NUMBER(*, 0)
        CONSTRAINT ck_ser_02 NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX app.pk_ser ON
    app.series (
        ser_id
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE app.series
    ADD CONSTRAINT pk_ser PRIMARY KEY ( ser_id )
        USING INDEX app.pk_ser;

CREATE TABLE app.times (
    tim_id      NUMBER(*, 0) NOT NULL,
    tim_reg_id  NUMBER(*, 0)
        CONSTRAINT ck_tim_01 NOT NULL,
    tim_nome    VARCHAR2(50 BYTE)
        CONSTRAINT ck_tim_02 NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE users LOGGING
    STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX app.pk_tim ON
    app.times (
        tim_id
    ASC )
        TABLESPACE users PCTFREE 10
            STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE app.times
    ADD CONSTRAINT pk_tim PRIMARY KEY ( tim_id )
        USING INDEX app.pk_tim;

ALTER TABLE app.contratacoes
    ADD CONSTRAINT fk_ctt_jog FOREIGN KEY ( ctt_jog_id )
        REFERENCES app.jogadores ( jgd_id )
    NOT DEFERRABLE;

ALTER TABLE app.contratacoes
    ADD CONSTRAINT fk_ctt_tim FOREIGN KEY ( ctt_tim_id )
        REFERENCES app.times ( tim_id )
    NOT DEFERRABLE;

ALTER TABLE app.eventos
    ADD CONSTRAINT fk_evt_est FOREIGN KEY ( evt_est_id )
        REFERENCES app.estacoes ( est_id )
    NOT DEFERRABLE;

ALTER TABLE app.eventos
    ADD CONSTRAINT fk_evt_loc FOREIGN KEY ( evt_loc_id )
        REFERENCES app.localizacoes ( loc_id )
    NOT DEFERRABLE;

ALTER TABLE app.eventos
    ADD CONSTRAINT fk_evt_reg FOREIGN KEY ( evt_reg_id )
        REFERENCES app.regioes ( reg_id )
    NOT DEFERRABLE;

ALTER TABLE app.jogadores
    ADD CONSTRAINT fk_jgd_pis FOREIGN KEY ( jgd_pis_id )
        REFERENCES app.paises ( pis_id )
    NOT DEFERRABLE;

ALTER TABLE app.jogos
    ADD CONSTRAINT fk_jog_ser FOREIGN KEY ( jog_ser_id )
        REFERENCES app.series ( ser_id )
    NOT DEFERRABLE;

ALTER TABLE app.jogos
    ADD CONSTRAINT fk_jog_tim_a FOREIGN KEY ( jog_tim_azul )
        REFERENCES app.times ( tim_id )
    NOT DEFERRABLE;

ALTER TABLE app.localizacoes
    ADD CONSTRAINT fk_loc_pis FOREIGN KEY ( loc_pis_id )
        REFERENCES app.paises ( pis_id )
    NOT DEFERRABLE;

ALTER TABLE app.series
    ADD CONSTRAINT fk_ser_for FOREIGN KEY ( ser_for_id )
        REFERENCES app.formatos ( for_id )
    NOT DEFERRABLE;

ALTER TABLE app.series
    ADD CONSTRAINT fk_ser_rnd FOREIGN KEY ( ser_rnd_id )
        REFERENCES app.rounds ( rnd_id )
    NOT DEFERRABLE;

ALTER TABLE app.estatisticas
    ADD CONSTRAINT fk_stt_jgd FOREIGN KEY ( stt_jgd_id )
        REFERENCES app.jogadores ( jgd_id )
    NOT DEFERRABLE;

ALTER TABLE app.estatisticas
    ADD CONSTRAINT fk_stt_jog FOREIGN KEY ( stt_jog_id )
        REFERENCES app.jogos ( jog_id )
    NOT DEFERRABLE;

ALTER TABLE app.times
    ADD CONSTRAINT fk_tim_reg FOREIGN KEY ( tim_reg_id )
        REFERENCES app.regioes ( reg_id )
    NOT DEFERRABLE;

ALTER TABLE app.jogos
    ADD CONSTRAINT pk_jog_tim_l FOREIGN KEY ( jog_tim_laranja )
        REFERENCES app.times ( tim_id )
    NOT DEFERRABLE;

CREATE OR REPLACE TRIGGER APP.TG_SEQ_EST 
    BEFORE INSERT ON APP.ESTACOES 
    FOR EACH ROW 
BEGIN
    :new.est_id := seq_est.nextval;
END; 
/

CREATE OR REPLACE TRIGGER APP.TG_SEQ_EVT 
    BEFORE INSERT ON APP.EVENTOS 
    FOR EACH ROW 
BEGIN
    :new.evt_id := seq_evt.nextval;
END; 
/

CREATE OR REPLACE TRIGGER APP.TG_SEQ_FOR 
    BEFORE INSERT ON APP.FORMATOS 
    FOR EACH ROW 
BEGIN
    :new.for_id := seq_for.nextval;
END; 
/

CREATE OR REPLACE TRIGGER APP.TG_SEQ_JGD 
    BEFORE INSERT ON APP.JOGADORES 
    FOR EACH ROW 
BEGIN
    :new.jgd_id := seq_jgd.nextval;
END; 
/

CREATE OR REPLACE TRIGGER APP.TG_SEQ_JOG 
    BEFORE INSERT ON APP.JOGOS 
    FOR EACH ROW 
BEGIN
    :new.jog_id := seq_jog.nextval;
END; 
/

CREATE OR REPLACE TRIGGER APP.TG_SEQ_LOC 
    BEFORE INSERT ON APP.LOCALIZACOES 
    FOR EACH ROW 
BEGIN
    :new.loc_id := seq_loc.nextval;
END; 
/

CREATE OR REPLACE TRIGGER APP.TG_SEQ_PIS 
    BEFORE INSERT ON APP.PAISES 
    FOR EACH ROW 
BEGIN
    :new.pis_id := seq_pis.nextval;
END; 
/

CREATE OR REPLACE TRIGGER APP.TG_SEQ_REG 
    BEFORE INSERT ON APP.REGIOES 
    FOR EACH ROW 
BEGIN
    :new.reg_id := seq_reg.nextval;
END; 
/

CREATE OR REPLACE TRIGGER APP.TG_SEQ_RND 
    BEFORE INSERT ON APP.ROUNDS 
    FOR EACH ROW 
BEGIN
    :new.rnd_id := seq_rnd.nextval;
END; 
/

CREATE OR REPLACE TRIGGER APP.TG_SEQ_SER 
    BEFORE INSERT ON APP.SERIES 
    FOR EACH ROW 
BEGIN
    :new.ser_id := seq_ser.nextval;
END; 
/

CREATE OR REPLACE TRIGGER APP.TG_SEQ_TIM 
    BEFORE INSERT ON APP.TIMES 
    FOR EACH ROW 
BEGIN
    :new.tim_id := seq_tim.nextval;
END; 
/



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            13
-- CREATE INDEX                            13
-- ALTER TABLE                             28
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                          11
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              1
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
