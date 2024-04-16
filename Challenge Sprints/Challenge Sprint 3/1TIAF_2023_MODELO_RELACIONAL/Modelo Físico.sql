-- 1TIAF - GRUPO:

-- 97672 - Henrique Marra Barbosa
-- 551882 - Arthur Hieda Cunha
-- 552162 - Lucas Bueno Taets Gustavo
-- 99018 - Julia Cristina Ferreira Silva
-- 552188 - Fabricio Yukio Yamashiro
-- 550700 - Leonardo Vaidotas de Araujo

-- NACIONAIS
CREATE TABLE NACIONAIS (
  id_nacional NUMBER(7) PRIMARY KEY,
  taxacao VARCHAR2(2000) NOT NULL,
  inflacao VARCHAR2(2000) NOT NULL,
  crise VARCHAR2(2000) NOT NULL,
  CONSTRAINT taxacao_unique UNIQUE (taxacao),
  CONSTRAINT inflacao_check CHECK (inflacao IS NOT NULL)
);

-- REGIONAIS
CREATE TABLE REGIONAIS (
  id_regional NUMBER(7) PRIMARY KEY,
  clima VARCHAR2(2000) NOT NULL,
  solo VARCHAR2(2000) NOT NULL,
  relevo VARCHAR2(2000) NOT NULL,
  CONSTRAINT clima_unique UNIQUE (clima),
  CONSTRAINT solo_check CHECK (solo IS NOT NULL)
);

-- GLOBAIS
CREATE TABLE GLOBAIS (
  id_global NUMBER(7) PRIMARY KEY,
  agricultura VARCHAR2(2000) NOT NULL,
  pecuaria VARCHAR2(2000) NOT NULL,
  industria VARCHAR2(2000) NOT NULL,
  setor_servico VARCHAR2(2000) NOT NULL,
  recurso_nat VARCHAR2(2000) NOT NULL,
  tech_inovacao VARCHAR2(2000) NOT NULL,
  servico_fin VARCHAR2(2000) NOT NULL,
  CONSTRAINT agricultura_unique UNIQUE (agricultura),
  CONSTRAINT setor_servico_check CHECK (setor_servico IS NOT NULL)
);

-- CAUSALIDADES
CREATE TABLE CAUSALIDADES (
  id_causalidades NUMBER(7) PRIMARY KEY,
  NACIONAIS_id_nacional NUMBER(7),
  GLOBAIS_id_global NUMBER(7),
  REGIONAIS_id_regional NUMBER(7),
  CONSTRAINT CAUSALIDADES_NACIONAIS_FK FOREIGN KEY (NACIONAIS_id_nacional) REFERENCES NACIONAIS(id_nacional),
  CONSTRAINT CAUSALIDADES_GLOBAIS_FK FOREIGN KEY (GLOBAIS_id_global) REFERENCES GLOBAIS(id_global),
  CONSTRAINT CAUSALIDADES_REGIONAIS_FK FOREIGN KEY (REGIONAIS_id_regional) REFERENCES REGIONAIS(id_regional)
);
