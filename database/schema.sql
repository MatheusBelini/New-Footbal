CREATE DATABASE IF NOT EXISTS admesporte_ade
  DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_general_ci;

USE admesporte_ade;

-- =========================
-- TABELA ADMIN
-- =========================
CREATE TABLE admin (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  email VARCHAR(100) UNIQUE,
  senha VARCHAR(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- =========================
-- TABELA PROFESSORES
-- =========================
CREATE TABLE professores (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  data_nascimento DATE,
  cpf VARCHAR(14),
  email VARCHAR(100) UNIQUE,
  senha VARCHAR(255) NOT NULL,
  telefone VARCHAR(20)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- =========================
-- TABELA TURMAS
-- =========================
CREATE TABLE turmas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  professor_id INT,
  dias_treino VARCHAR(50) NOT NULL,
  horario TIME NOT NULL,
  CONSTRAINT fk_turma_professor
    FOREIGN KEY (professor_id)
    REFERENCES professores(id)
    ON DELETE SET NULL
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- =========================
-- TABELA ALUNOS
-- =========================
CREATE TABLE alunos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  data_nascimento DATE,
  cpf VARCHAR(14),
  email VARCHAR(100) UNIQUE,
  senha VARCHAR(255) NOT NULL,
  telefone VARCHAR(20),
  nome_responsavel VARCHAR(100),
  cpf_responsavel VARCHAR(14),
  turma_id INT,
  CONSTRAINT fk_aluno_turma
    FOREIGN KEY (turma_id)
    REFERENCES turmas(id)
    ON DELETE SET NULL
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- =========================
-- TABELA CAMPEONATOS
-- =========================
CREATE TABLE campeonatos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  data_inicio DATE,
  idade_maxima INT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- =========================
-- TABELA JOGOS
-- =========================
CREATE TABLE jogos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  professor_id INT,
  turma_id INT,
  data DATE,
  horario TIME,
  local VARCHAR(100),
  adversario VARCHAR(100),
  logo_url VARCHAR(255),
  categoria VARCHAR(100),
  tipo VARCHAR(100),
  CONSTRAINT fk_jogo_professor
    FOREIGN KEY (professor_id)
    REFERENCES professores(id)
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT fk_jogo_turma
    FOREIGN KEY (turma_id)
    REFERENCES turmas(id)
    ON DELETE SET NULL
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- =========================
-- TABELA TREINOS
-- =========================
CREATE TABLE treinos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  turma_id INT,
  professor_id INT,
  data DATE,
  horario TIME,
  CONSTRAINT fk_treino_turma
    FOREIGN KEY (turma_id)
    REFERENCES turmas(id)
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT fk_treino_professor
    FOREIGN KEY (professor_id)
    REFERENCES professores(id)
    ON DELETE SET NULL
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- =========================
-- TABELA FREQUENCIA
-- =========================
CREATE TABLE frequencia (
  id INT AUTO_INCREMENT PRIMARY KEY,
  aluno_id INT,
  data DATE NOT NULL,
  treino_id INT,
  presente BOOLEAN DEFAULT FALSE,
  data_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_frequencia_aluno
    FOREIGN KEY (aluno_id)
    REFERENCES alunos(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_frequencia_treino
    FOREIGN KEY (treino_id)
    REFERENCES treinos(id)
    ON DELETE SET NULL
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- =========================
-- TABELA CONVOCACOES
-- =========================
CREATE TABLE convocacoes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  jogo_id INT,
  aluno_id INT,
  campeonato_id INT,
  professor_id INT,
  CONSTRAINT fk_conv_jogo
    FOREIGN KEY (jogo_id)
    REFERENCES jogos(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_conv_aluno
    FOREIGN KEY (aluno_id)
    REFERENCES alunos(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_conv_campeonato
    FOREIGN KEY (campeonato_id)
    REFERENCES campeonatos(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_conv_professor
    FOREIGN KEY (professor_id)
    REFERENCES professores(id)
    ON DELETE SET NULL
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- =========================
-- TABELA HISTORICO TURMA
-- =========================
CREATE TABLE historico_turma (
  id INT AUTO_INCREMENT PRIMARY KEY,
  aluno_id INT,
  turma_anterior INT,
  turma_nova INT,
  data_mudanca DATE,
  CONSTRAINT fk_hist_aluno
    FOREIGN KEY (aluno_id)
    REFERENCES alunos(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- =========================
-- TABELA TURMA_PROFESSOR (N:N)
-- =========================
CREATE TABLE turma_professor (
  id INT AUTO_INCREMENT PRIMARY KEY,
  turma_id INT NOT NULL,
  professor_id INT NOT NULL,
  CONSTRAINT fk_tp_turma
    FOREIGN KEY (turma_id)
    REFERENCES turmas(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_tp_professor
    FOREIGN KEY (professor_id)
    REFERENCES professores(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;