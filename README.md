# Company Payments Report (Bash CLI)

Um script utilitário em Shell Bash para controle simples e rápido de pagamentos corporativos via terminal. Permite registrar entradas financeiras e consultar o histórico consolidado de pagamentos sem depender de planilhas complexas ou papel.

## 📌 Funcionalidades

- **Menu Interativo:** Navegação direta por terminal com opções numéricas para cada operação.
- **Registro Automático de Data e Hora:** Captura o momento exato da transação (`DD/MM/AA` e horário local) diretamente pelo sistema operacional.
- **Armazenamento em Arquivo Texto:** Registra novos lançamentos no formato de append (`>>`), preservando todo o histórico anterior.
- **Consulta Rápida:** Exibe instantaneamente no terminal a lista de pagadores cadastrados.

## 🛠️ Tecnologias e Pré-requisitos

- **Shell:** GNU Bash (versão 4.0 ou superior recomendada).
- **Sistema Operacional:** Linux, macOS ou WSL (Windows Subsystem for Linux).
- **Utilitários Padrão:** `date`, `cut`, `cat` e `clear` (nativos da maioria das distribuições Unix-like).

## ⚙️ Configuração Prévia

Antes de executar, certifique-se de configurar o caminho do arquivo onde os registros serão salvos:

1. Abra o arquivo do script no seu editor preferido (ex: `nano script.sh`).
2. Localize as linhas com o caminho do arquivo:
```bash
# Substitua "/home/user/list-payers.txt" pelo caminho real do seu usuário:
"$HOME/list-payers.txt"
```

3. Crie o arquivo de texto inicial caso deseje:
```bash
touch ~/list-payers.txt
```

## 🚀 Como Executar

1. Clone o repositório ou salve o script localmente:
```bash
git clone [https://github.com/seu-usuario/company-payments-report.git](https://github.com/seu-usuario/company-payments-report.git)
cd company-payments-report
```

2. Conceda permissão de execução ao script:
```bash
chmod +x payments.sh
```

3. Execute o script:
```bash
./payments.sh
```

## 💡 Estrutura dos Registros

Cada pagamento inserido através da **Opção 1** será gravado no arquivo de texto seguindo o padrão:

```plaintext
Nome do Pagador -> R$ 150.00 paid on the day: 05/09/26 at 08:30:00
```

## 📄 Licença

Este projeto é de uso livre para fins de estudo, automação pessoal e melhorias conforme a necessidade do seu ambiente.
