# 🛠️ Painel Profissional de Suporte Técnico e Redes - v3.0

Painel interativo e automatizado para diagnóstico, manutenção e suporte técnico em ambientes Windows. Ideal para técnicos de infraestrutura, help desk, redes e segurança da informação.

**Desenvolvido por:** André Gonçalles  
**Atualizado:** Agosto de 2025  
**Contato:** andregoncallez@yahoo.com.br  

---

## 📦 Instalação

1. Baixe ou clone este repositório.
2. Execute o arquivo `PainelSuporteTI_PRO_v3.0.bat` **como administrador**.
3. Utilize o menu para selecionar a função desejada.

---

## 🔧 Estrutura do Menu

As opções são organizadas por frequência de uso e agrupadas por categoria:

### [+] FUNÇÕES MAIS UTILIZADAS:

| Nº | Função                                  | O que faz                                                                 |
|----|------------------------------------------|---------------------------------------------------------------------------|
| 1  | Reparar Arquivos do Sistema (SFC)        | Executa `sfc /scannow` para reparar arquivos corrompidos do Windows.      |
| 2  | Verificar Disco com Reparo (CHKDSK)      | Usa `chkdsk /f /r` para checar erros e setores defeituosos no disco.      |
| 3  | Restaurar Integridade do Windows (DISM)  | Utiliza `dism /restorehealth` para reparar a imagem do sistema.           |
| 4  | Verificar Conectividade de Rede          | Testa internet via `ping` e mostra gateway local.                         |
| 5  | Reiniciar Serviços de Rede               | Executa `netsh winsock reset` e `ip reset`.                               |

---

### [+] SEGURANÇA E MONITORAMENTO:

| Nº | Função                                | O que faz                                                               |
|----|----------------------------------------|-------------------------------------------------------------------------|
| 6  | Limpar Cache DNS                      | Executa `ipconfig /flushdns` para limpar cache de DNS.                  |
| 7  | Verificar Status do Defender          | Mostra status atual do antivírus do Windows.                            |
| 8  | Verificação Rápida com o Defender     | Executa varredura de ameaças com PowerShell (`Start-MpScan`).           |
| 9  | Logs do Sistema                       | Abre o visualizador de eventos do Windows.                              |
| 10 | Gerenciar Firewall                    | Abre as configurações do firewall (`firewall.cpl`).                     |

---

### [+] SISTEMA E BACKUP:

| Nº | Função                        | O que faz                                                              |
|----|-------------------------------|------------------------------------------------------------------------|
| 11 | Limpeza de Arquivos Temporários | Usa o `cleanmgr` para liberar espaço no disco.                         |
| 12 | Diagnóstico de Memória RAM     | Executa `mdsched.exe` para detectar erros na memória.                  |
| 13 | Criar Ponto de Restauração     | Gera um ponto de restauração com `wmic`.                               |

---

### [+] MANUTENÇÃO AVANÇADA:

| Nº | Função              | O que faz                                                                |
|----|---------------------|--------------------------------------------------------------------------|
| 14 | Backup de Drivers   | Exporta os drivers instalados para `C:\DriverBackup` via `DISM`.         |

---

### [+] MONITORAMENTO E INFORMAÇÕES:

| Nº | Função                      | O que faz                                                        |
|----|-----------------------------|------------------------------------------------------------------|
| 15 | Testar Desempenho do Disco | Mede a performance do disco com `winsat disk`.                   |

---

### [+] UTILITÁRIOS:

| Nº | Função                    | O que faz                                                           |
|----|---------------------------|---------------------------------------------------------------------|
| 16 | Ver Informações do Sistema | Exibe informações detalhadas com `systeminfo`.                      |
| 17 | Gerenciar Usuários Locais | Abre `lusrmgr.msc` para gerenciar contas de usuário.                |

---

### [+] ATUALIZAÇÃO:

| Nº | Função                        | O que faz                                                         |
|----|-------------------------------|-------------------------------------------------------------------|
| 18 | Verificar Atualizações       | Força o Windows a buscar atualizações com `wuauclt`.              |

---

### [+] GERENCIAMENTO DE APLICATIVOS:

| Nº | Função         | O que faz                                                              |
|----|----------------|------------------------------------------------------------------------|
| 19 | Winget CLI     | Lista, instala ou remove aplicativos com o gerenciador `winget`.       |

---

### [+] FLUXO AUTOMATIZADO:

| Nº | Função                          | O que faz                                                                 |
|----|----------------------------------|---------------------------------------------------------------------------|
| 20 | Execução Completa de Manutenção | Executa uma rotina com `SFC`, `DISM`, `Flush DNS`, `Reset Rede`, e Updates.|

---

### [+] ENCERRAR:

| Nº | Função     | O que faz                    |
|----|------------|------------------------------|
| 21 | Encerrar   | Fecha o painel de forma segura. |

---

## 📝 Observações

- Alguns comandos exigem execução como administrador.
- O log das ações fica salvo em `diagnostico_ti_log.txt` na mesma pasta do script.
- Ideal para técnicos que desejam agilidade e padronização nas tarefas de suporte.

---

## 📄 Licença

Este projeto é de uso **livre para fins educacionais e profissionais**, desde que mantido o crédito ao autor original.

---

Desenvolvido com 💻 por **André Gonçalles**
