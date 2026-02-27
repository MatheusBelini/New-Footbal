# 🏆 Sistema de Gestão para Escolas de Futebol  
## 📘 Administração Esportiva

---

## 📌 Visão Geral

Este projeto consiste no desenvolvimento de um **sistema web de gestão para escolas esportivas (futebol)**, com foco na organização administrativa e melhoria da comunicação entre gestores, treinadores, responsáveis e alunos.

O sistema foi desenvolvido como **Trabalho de Conclusão de Curso (TCC)**, diante do crescimento da demanda por escolas de futebol e das dificuldades administrativas enfrentadas por essas instituições.

---

## 📊 Problema Identificado

As escolas de futebol enfrentam desafios como:

- ❌ Falta de controle de frequência dos alunos  
- ❌ Desorganização de treinos e jogos  
- ❌ Comunicação falha entre escola e responsáveis  
- ❌ Ausência de sistema centralizado de informações  
- ❌ Dificuldade de acompanhamento do desempenho dos atletas  

Esses fatores impactam o desenvolvimento técnico, disciplinar e social dos alunos, além de gerar insatisfação dos responsáveis.

---

## 🎯 Objetivo do Projeto

Desenvolver um sistema web capaz de:

- ✔️ Organizar treinos, jogos e turmas  
- ✔️ Controlar a frequência dos alunos  
- ✔️ Melhorar a comunicação entre professores, responsáveis e alunos  
- ✔️ Disponibilizar informações de forma acessível e responsiva  

---

## 🏗️ Escopo do Sistema

### ✅ Requisitos Funcionais

- Cadastro e login de usuários  
- Controle de chamada (registro de presença)  
- Cadastro de treinos e jogos  
- Acesso dos responsáveis às informações de frequência  
- Tela administrativa para gestão de turmas, horários e jogos  
- Painel administrativo para diretor e treinadores  

### 🔒 Requisitos Não Funcionais

- Usabilidade  
- Responsividade  
- Desempenho  
- Segurança  
- Acessibilidade  

---

## 👥 Perfis de Usuário e Controle de Acesso

O sistema trabalha com níveis de permissão:

- 👨‍💼 **Administrador** → Gerenciamento geral do sistema  
- 🧑‍🏫 **Professor** → Registro de presença e cadastro de treinos/jogos  
- 👨‍👩‍👧 **Responsável** → Consulta de frequência e acompanhamento  
- 🧑‍🎓 **Aluno** → Visualização de treinos, jogos e presença  

---

## 🔄 Fluxo Básico do Sistema

1. Usuário realiza login no sistema  
2. Sistema valida credenciais  
3. Dados são consultados no banco MySQL  
4. Interface exibe informações conforme nível de acesso  
5. Professores registram presença e agendam atividades  
6. Responsáveis acompanham frequência e desempenho  

---

## 🗃️ Modelagem e Banco de Dados

O banco de dados contém tabelas para:

- Alunos  
- Professores  
- Administrador  
- Treinos  
- Jogos  
- Campeonatos  
- Controle de presença e frequência  

A tabela de jogos possui conexão com a tabela de campeonatos.

### 🔐 Segurança Implementada

- Criptografia de senhas com **bcrypt**  
- Controle de acesso por permissão  
- Prevenção contra **SQL Injection**  

---

## 🛠️ Arquitetura Tecnológica

### 💻 Linguagens Utilizadas

- **HTML** → Estrutura das páginas  
- **CSS** → Estilização e responsividade  
- **JavaScript** → Atualização dinâmica da interface  
- **PHP** → Lógica do sistema e integração com banco  
- **MySQL** → Armazenamento das informações  

### 🧰 Ferramentas

- Laragon (servidor local)  
- Visual Studio Code  
- Canva (design)  
- Domínio  
- Hospedagem  

---

## 📂 Estrutura do Projeto

Organizado em:

- Camada de Interface (Front-end)  
- Camada de Lógica (Back-end)  
- Banco de Dados  
- Arquivos de Configuração  
- Recursos Visuais  

---

## 🚀 Como Executar o Projeto

1. Clonar o repositório:
2. Configurar ambiente local utilizando Laragon.  
3. Criar banco de dados MySQL.  
4. Importar o arquivo `.sql` do banco de dados (se disponível).  
5. Configurar as credenciais de conexão no arquivo do sistema.  
6. Executar o sistema no servidor local.  

---

## 🧪 Testes

Foram realizados:

- ✔️ Testes funcionais  
- ✔️ Testes não funcionais  
- ✔️ Correção de erros após validação  

Funcionalidades validadas:

- Cadastro e login  
- Registro de presença  
- Cadastro de jogos  
- Acesso por nível de permissão  

---

## 💻 Infraestrutura

### 🖥️ Hardware

- Computadores  
- Smartphones  
- Tablets  

### 🌐 Hospedagem

- Hospedagem compartilhada  
- Acesso à internet  

---

## 💰 Estimativa de Custos

| Item | Custo Estimado |
|------|----------------|
| Domínio | R$ 20 a R$ 100/ano |
| Hospedagem | R$ 9,99 a R$ 125/mês |
| Ferramentas | R$ 0,00 |
| Ambiente de Desenvolvimento | R$ 0,00 |
| Protótipo e Design | R$ 0,00 |
| Mão de Obra | R$ 0,00 |

**💵 Total estimado anual:** R$ 138,80 a R$ 1600  

---

## 📅 Cronograma de Desenvolvimento

- Apresentação do tema  
- Levantamento de dados  
- Pesquisa  
- Desenvolvimento do artigo  
- Criação do banco de dados  
- Desenvolvimento do front-end  
- Integração front-end e banco  
- Desenvolvimento do back-end  
- Implementação de segurança  
- Testes  
- Correção de erros  
- Finalização e entrega  

---

## 📈 Pontos Fortes

- ✔️ Inovação tecnológica aplicada à gestão esportiva  
- ✔️ Melhoria na comunicação  
- ✔️ Centralização das informações  
- ✔️ Transparência administrativa  
- ✔️ Organização de presença, treinos e jogos  

---

## ⚠️ Pontos de Melhoria Identificados

- Necessidade de aprimorar a segurança  
- Ausência de testes com usuários reais  
- Falta de backup automático  
- Limitação técnica em algumas áreas  

---

## 🔮 Evoluções Futuras

- Análise estatística do rendimento de cada atleta  
- Compatibilidade com aplicativos móveis  
- Implementação de canais de comunicação direta  

---

## 📌 Status do Projeto

✔️ Projeto concluído como Trabalho de Conclusão de Curso  
🔄 Possível expansão futura  

---

## 📜 Licença

Projeto acadêmico desenvolvido para fins educacionais.

---

## 👨‍💻 Autores

- Guilherme Bonatti Isac  
- Julio Cesar Toledo  
- Matheus Expedito Belini  

📚 Curso: Desenvolvimento de Sistemas  
🏫 Instituição: ETEC Dr. Nelson Alves Vianna  
🎓 Centro Estadual de Educação Tecnológica Paula Souza
