
# 🤖 Testes Automatizados - Hospital Flow

Este repositório contém os testes automatizados desenvolvidos com **Robot Framework** para o sistema **Hospital Flow**, responsável pelo controle de internações hospitalares.

## 📁 Estrutura do Projeto

```
📂 testes_hospital_flow
├── 📂 tests
│   ├── login.robot
│   ├── internacoes.robot
│   ├── pacientes.robot
|   └── ralatorios.robot
├── 📂 resources
│   ├── internacoes_resources.robot
│   ├── login_resources.robot
│   ├── pacientes_resources.robot
│   └── relatorios_resources.robot
└── README.md
```

## 🧪 Funcionalidades Testadas

- Login de usuários
- Cadastro de internações
- Edição e exclusão de registros
- Filtros e busca de internações
- Geração de relatórios (downloads)

## 🚀 Como Executar os Testes

1. **Clone o repositório:**

```bash
git clone https://github.com/seu-usuario/testes_hospital_flow.git
cd testes_hospital_flow
```

2. **Instale as dependências:**

```bash
pip install -r requirements.txt
```

3. **Execute os testes:**

```bash
robot tests/
```

4. **Visualize o relatório:**

Após a execução, será gerado um relatório em `report.html` na pasta `results/`.

## 🧩 Requisitos

- Python 3.10+
- Robot Framework
- Browser (caso utilize SeleniumLibrary)
- Webdriver compatível (ex: ChromeDriver)

Instale o Robot Framework com:

```bash
pip install robotframework
```

## 📎 Observações

- Os testes estão configurados para rodar localmente com base na URL `http://localhost:4200` (ajuste no arquivo de variáveis, se necessário).
- Para testes de download, garanta que o diretório de destino esteja correto e com permissões adequadas.

## 📚 Referência

Este projeto faz parte do sistema **Hospital Flow** (projeto acadêmico para controle de internações hospitalares), desenvolvido com:

- Front-end: Angular
- Back-end: C# .NET 8
- Banco de dados: SQLite

O código-fonte da automação e os scripts de testes estão disponíveis publicamente neste repositório.

