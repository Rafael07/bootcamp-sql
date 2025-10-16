# 📘 Catálogo de Commits

Este documento define os padrões de commits utilizados neste projeto, garantindo consistência e clareza no histórico. Ele serve como **guia rápido** para manter o histórico de commits limpo, semântico e fácil de entender, refletindo a evolução do projeto de forma profissional.

---

## 🔑 Tipos de commit

| Tipo     | Quando usar                                                                 | Exemplo                                                                 |
|----------|-----------------------------------------------------------------------------|-------------------------------------------------------------------------|
| **feat** | Nova funcionalidade, exercício resolvido ou adição de código relevante       | `feat(sql): adiciona solução do exercício 01 sobre consultas básicas`   |
| **fix**  | Correção de bug, erro em código ou ajuste em exercício                      | `fix(python): corrige cálculo de média removendo divisão por zero`      |
| **docs** | Alterações em documentação (README, tutoriais, guias)                       | `docs: adiciona instruções de execução no README`                       |
| **style**| Ajustes de formatação, indentação, comentários (sem alterar lógica)         | `style(sql): ajusta indentação no exercício 02`                         |
| **chore**| Manutenção e configuração (infra, dependências, arquivos auxiliares)        | `chore: adiciona .gitignore para ignorar cache e logs`                  |
| **refactor** | Refatoração de código sem alterar comportamento                         | `refactor(python): simplifica função de cálculo de média`               |
| **test** | Adição ou ajuste de testes automatizados                                    | `test(python): adiciona testes unitários para função de normalização`   |

---

## 📂 Exemplos práticos por contexto

### Configurações e Infraestrutura
- `chore: adiciona pyproject.toml com configuração inicial do projeto`
- `chore: adiciona uv.lock para garantir reprodutibilidade das dependências`
- `chore(infra): adiciona docker-compose com PostgreSQL e pgAdmin`

### Dados e Fontes
- `chore(data): adiciona base Northwind em SQL para criação de bancos de estudo`
- `chore(data): atualiza script Sakila.sql com inserts adicionais`

### Exercícios
- `feat(sql): adiciona solução do exercício 03 sobre junções entre tabelas`
- `fix(sql): corrige alias incorreto na consulta do exercício 02`
- `style(sql): ajusta indentação e adiciona comentários no exercício 01`

### Documentação
- `docs: atualiza README com descrição das trilhas`
- `docs: adiciona catálogo de commits (COMMITS.md)`

---

## 📝 Boas práticas

- Sempre usar **prefixo + escopo (quando aplicável)** → `feat(sql): ...`, `chore(data): ...`.
- Ser **específico** na descrição: explique o que mudou e por quê.
- Evitar mensagens genéricas como *"update code"* ou *"ajustes"*.
- Usar inglês ou português de forma consistente (neste projeto, adotamos **português**).

---
