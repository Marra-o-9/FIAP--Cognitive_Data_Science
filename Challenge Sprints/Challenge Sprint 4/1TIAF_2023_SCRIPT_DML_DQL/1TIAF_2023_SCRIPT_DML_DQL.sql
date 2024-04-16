-- 1TIAF - GRUPO:

-- 97672 - Henrique Marra Barbosa
-- 551882 - Arthur Hieda Cunha
-- 552162 - Lucas Bueno Taets Gustavo
-- 552188 - Fabricio Yukio Yamashiro
-- 550700 - Leonardo Vaidotas de Araujo

-- Este arquivo possui os códigos do Sprint 3 e 4 aglutinados em um só

DELETE FROM CAUSALIDADES;
DROP TABLE CAUSALIDADES;
DROP TABLE NACIONAIS;
DROP TABLE REGIONAIS;
DROP TABLE GLOBAIS;

-- NACIONAIS
CREATE TABLE NACIONAIS (
  id_nacional NUMBER(7) PRIMARY KEY,
  taxacao VARCHAR2(2000) NOT NULL,
  inflacao VARCHAR2(2000) NOT NULL,
  crise VARCHAR2(2000) NOT NULL,
  CONSTRAINT inflacao_check CHECK (inflacao IS NOT NULL)
);

-- REGIONAIS
CREATE TABLE REGIONAIS (
  id_regional NUMBER(7) PRIMARY KEY,
  clima VARCHAR2(2000) NOT NULL,
  solo VARCHAR2(2000) NOT NULL,
  relevo VARCHAR2(2000) NOT NULL,
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

-- INSERÇÃO DE DADOS EM NACIONAIS
INSERT INTO NACIONAIS (id_nacional, taxacao, inflacao, crise) VALUES
  (1, 'Baixa', 'Moderada', 'Sim');
INSERT INTO NACIONAIS (id_nacional, taxacao, inflacao, crise) VALUES
  (2, 'Alta', 'Baixa', 'Não');
INSERT INTO NACIONAIS (id_nacional, taxacao, inflacao, crise) VALUES
  (3, 'Moderada', 'Alta', 'Sim');
INSERT INTO NACIONAIS (id_nacional, taxacao, inflacao, crise) VALUES
  (4, 'Baixa', 'Baixa', 'Não');
INSERT INTO NACIONAIS (id_nacional, taxacao, inflacao, crise) VALUES
  (5, 'Alta', 'Alta', 'Sim');
INSERT INTO NACIONAIS (id_nacional, taxacao, inflacao, crise) VALUES
  (6, 'Moderada', 'Moderada', 'Não');
INSERT INTO NACIONAIS (id_nacional, taxacao, inflacao, crise) VALUES
  (7, 'Baixa', 'Alta', 'Sim');
INSERT INTO NACIONAIS (id_nacional, taxacao, inflacao, crise) VALUES
  (8, 'Alta', 'Moderada', 'Não');
INSERT INTO NACIONAIS (id_nacional, taxacao, inflacao, crise) VALUES
  (9, 'Baixa', 'Baixa', 'Sim');
INSERT INTO NACIONAIS (id_nacional, taxacao, inflacao, crise) VALUES
  (10, 'Alta', 'Alta', 'Não');

-- INSERÇÃO DE DADOS EM REGIONAIS
INSERT INTO REGIONAIS (id_regional, clima, solo, relevo) VALUES
  (1, 'Tropical', 'Fértil', 'Montanhoso');
INSERT INTO REGIONAIS (id_regional, clima, solo, relevo) VALUES
  (2, 'Temperado', 'Arenoso', 'Plano');
INSERT INTO REGIONAIS (id_regional, clima, solo, relevo) VALUES
  (3, 'Árido', 'Rochoso', 'Montanhoso');
INSERT INTO REGIONAIS (id_regional, clima, solo, relevo) VALUES
  (4, 'Tropical', 'Fértil', 'Plano');
INSERT INTO REGIONAIS (id_regional, clima, solo, relevo) VALUES
  (5, 'Temperado', 'Arenoso', 'Montanhoso');
INSERT INTO REGIONAIS (id_regional, clima, solo, relevo) VALUES
  (6, 'Árido', 'Rochoso', 'Plano');
INSERT INTO REGIONAIS (id_regional, clima, solo, relevo) VALUES
  (7, 'Tropical', 'Fértil', 'Plano');
INSERT INTO REGIONAIS (id_regional, clima, solo, relevo) VALUES
  (8, 'Temperado', 'Arenoso', 'Montanhoso');
INSERT INTO REGIONAIS (id_regional, clima, solo, relevo) VALUES
  (9, 'Árido', 'Rochoso', 'Plano');
INSERT INTO REGIONAIS (id_regional, clima, solo, relevo) VALUES
  (10, 'Tropical', 'Fértil', 'Montanhoso');

-- INSERÇÃO DE DADOS EM GLOBAIS
INSERT INTO GLOBAIS (id_global, agricultura, pecuaria, industria, setor_servico, recurso_nat, tech_inovacao, servico_fin) VALUES
  (1, 'Café', 'Gado', 'Automóveis', 'Turismo', 'Petróleo', 'Tecnologia', 'Bancos');
INSERT INTO GLOBAIS (id_global, agricultura, pecuaria, industria, setor_servico, recurso_nat, tech_inovacao, servico_fin) VALUES
  (2, 'Trigo', 'Frangos', 'Eletrônicos', 'Saúde', 'Minerais', 'Software', 'Seguros');
INSERT INTO GLOBAIS (id_global, agricultura, pecuaria, industria, setor_servico, recurso_nat, tech_inovacao, servico_fin) VALUES
  (3, 'Milho', 'Porcos', 'Química', 'Educação', 'Água', 'Engenharia', 'Investimentos');
INSERT INTO GLOBAIS (id_global, agricultura, pecuaria, industria, setor_servico, recurso_nat, tech_inovacao, servico_fin) VALUES
  (4, 'Arroz', 'Ovelhas', 'Aeroespacial', 'Transporte', 'Madeira', 'Telecom', 'Varejo');
INSERT INTO GLOBAIS (id_global, agricultura, pecuaria, industria, setor_servico, recurso_nat, tech_inovacao, servico_fin) VALUES
  (5, 'Soja', 'Cavalos', 'Farmacêutica', 'Entretenimento', 'Energia', 'Biomedicina', 'Finanças');
INSERT INTO GLOBAIS (id_global, agricultura, pecuaria, industria, setor_servico, recurso_nat, tech_inovacao, servico_fin) VALUES
  (6, 'Algodão', 'Coelhos', 'Construção', 'Mídia', 'Alimentos', 'Inteligência Artificial', 'Contabilidade');
INSERT INTO GLOBAIS (id_global, agricultura, pecuaria, industria, setor_servico, recurso_nat, tech_inovacao, servico_fin) VALUES
  (7, 'Cacau', 'Búfalos', 'Energia Renovável', 'Comunicações', 'Pesca', 'Nanotecnologia', 'Consultoria');
INSERT INTO GLOBAIS (id_global, agricultura, pecuaria, industria, setor_servico, recurso_nat, tech_inovacao, servico_fin) VALUES
  (8, 'Cana-de-açúcar', 'Cabras', 'Metalurgia', 'Tecnologia da Informação', 'Florestas', 'Aeroespacial', 'Gestão de Ativos');
INSERT INTO GLOBAIS (id_global, agricultura, pecuaria, industria, setor_servico, recurso_nat, tech_inovacao, servico_fin) VALUES
  (9, 'Tabaco', 'Cavalos', 'Eletricidade', 'Turismo', 'Reciclagem', 'Biotecnologia', 'Empréstimos');
INSERT INTO GLOBAIS (id_global, agricultura, pecuaria, industria, setor_servico, recurso_nat, tech_inovacao, servico_fin) VALUES
  (10, 'Cevada', 'Bovinos', 'Petróleo e Gás', 'Comércio', 'Pesquisa', 'Nuclear', 'Segurança');

-- INSERÇÃO DE DADOS EM CAUSALIDADES
INSERT INTO CAUSALIDADES (id_causalidades, NACIONAIS_id_nacional, GLOBAIS_id_global, REGIONAIS_id_regional) VALUES
  (1, 1, 1, 1);
INSERT INTO CAUSALIDADES (id_causalidades, NACIONAIS_id_nacional, GLOBAIS_id_global, REGIONAIS_id_regional) VALUES
  (2, 2, 2, 2);
INSERT INTO CAUSALIDADES (id_causalidades, NACIONAIS_id_nacional, GLOBAIS_id_global, REGIONAIS_id_regional) VALUES
  (3, 3, 3, 3);
INSERT INTO CAUSALIDADES (id_causalidades, NACIONAIS_id_nacional, GLOBAIS_id_global, REGIONAIS_id_regional) VALUES
  (4, 4, 4, 4);
INSERT INTO CAUSALIDADES (id_causalidades, NACIONAIS_id_nacional, GLOBAIS_id_global, REGIONAIS_id_regional) VALUES
  (5, 5, 5, 5);
INSERT INTO CAUSALIDADES (id_causalidades, NACIONAIS_id_nacional, GLOBAIS_id_global, REGIONAIS_id_regional) VALUES
  (6, 6, 6, 6);
INSERT INTO CAUSALIDADES (id_causalidades, NACIONAIS_id_nacional, GLOBAIS_id_global, REGIONAIS_id_regional) VALUES
  (7, 7, 7, 7);
INSERT INTO CAUSALIDADES (id_causalidades, NACIONAIS_id_nacional, GLOBAIS_id_global, REGIONAIS_id_regional) VALUES
  (8, 8, 8, 8);
INSERT INTO CAUSALIDADES (id_causalidades, NACIONAIS_id_nacional, GLOBAIS_id_global, REGIONAIS_id_regional) VALUES
  (9, 9, 9, 9);
INSERT INTO CAUSALIDADES (id_causalidades, NACIONAIS_id_nacional, GLOBAIS_id_global, REGIONAIS_id_regional) VALUES
  (10, 10, 10, 10);
INSERT INTO CAUSALIDADES (id_causalidades, NACIONAIS_id_nacional, GLOBAIS_id_global, REGIONAIS_id_regional) VALUES
  (11, 1, 2, 3);
INSERT INTO CAUSALIDADES (id_causalidades, NACIONAIS_id_nacional, GLOBAIS_id_global, REGIONAIS_id_regional) VALUES
  (12, 2, 3, 4);
INSERT INTO CAUSALIDADES (id_causalidades, NACIONAIS_id_nacional, GLOBAIS_id_global, REGIONAIS_id_regional) VALUES
  (13, 3, 4, 5);
INSERT INTO CAUSALIDADES (id_causalidades, NACIONAIS_id_nacional, GLOBAIS_id_global, REGIONAIS_id_regional) VALUES
  (14, 4, 5, 6);
INSERT INTO CAUSALIDADES (id_causalidades, NACIONAIS_id_nacional, GLOBAIS_id_global, REGIONAIS_id_regional) VALUES
  (15, 5, 6, 7);
INSERT INTO CAUSALIDADES (id_causalidades, NACIONAIS_id_nacional, GLOBAIS_id_global, REGIONAIS_id_regional) VALUES
  (16, 6, 7, 8);
INSERT INTO CAUSALIDADES (id_causalidades, NACIONAIS_id_nacional, GLOBAIS_id_global, REGIONAIS_id_regional) VALUES
  (17, 7, 8, 9);
INSERT INTO CAUSALIDADES (id_causalidades, NACIONAIS_id_nacional, GLOBAIS_id_global, REGIONAIS_id_regional) VALUES
  (18, 8, 9, 10);
INSERT INTO CAUSALIDADES (id_causalidades, NACIONAIS_id_nacional, GLOBAIS_id_global, REGIONAIS_id_regional) VALUES
  (19, 9, 10, 1);
INSERT INTO CAUSALIDADES (id_causalidades, NACIONAIS_id_nacional, GLOBAIS_id_global, REGIONAIS_id_regional) VALUES
  (20, 10, 1, 2);
  
-- SELECIONANDO TABELAS
SELECT * FROM NACIONAIS;
SELECT * FROM REGIONAIS;
SELECT * FROM GLOBAIS;
SELECT * FROM CAUSALIDADES;