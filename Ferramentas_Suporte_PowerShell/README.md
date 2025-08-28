# 🛠️ AndreGoncallez - Support Tools

[![PowerShell](https://img.shields.io/badge/PowerShell-5.1%2B-blue?logo=powershell&logoColor=white)]()
[![Windows](https://img.shields.io/badge/Windows-10%2F11-lightgrey?logo=windows&logoColor=blue)]()
[![License](https://img.shields.io/badge/license-MIT-green)]()

Ferramenta em **PowerShell** desenvolvida para auxiliar **analistas de suporte (Júnior, Pleno e Sênior)** em atividades de diagnóstico, manutenção e administração de sistemas Windows.

O script oferece um **menu interativo**, com opções organizadas por **nível de complexidade**, permitindo desde verificações básicas até operações administrativas avançadas.

---

## 🚀 Funcionalidades

### 🌐 Rede
- 🔹 **Júnior**
  - Exibir configurações de IP (`ipconfig /all`)
  - Limpar cache DNS (`ipconfig /flushdns`)
  - Renovar IP (`ipconfig /renew`)
  - Reset Winsock (`netsh winsock reset`)
  - Tabela ARP e rotas (`arp -a`, `route print`)

- 🔹 **Pleno**
  - Teste de conectividade (ping/porta) `Test-NetConnection`
  - Status de adaptadores de rede
  - Conexões ativas (`netstat -ano`)

- 🔹 **Sênior**
  - Rota de rede (`tracert`)
  - Conexões TCP detalhadas (`Get-NetTCPConnection`)
  - Regras de firewall ativas

---

### 👥 Usuários e Domínio
- Usuário atual (`whoami`)
- Grupos do usuário (`whoami /groups`)
- Validação de domínio (`nltest /dsgetdc`)

---

### 💾 Disco e Sistema
- Espaço em disco (`Get-PSDrive`)
- Processos em uso de CPU/RAM (`Get-Process`)
- Últimos erros de sistema (`Get-EventLog`)
- Verificação de arquivos (`SFC /scannow`)
- Verificação de disco (`CHKDSK`)
- Reparo de imagem Windows (`DISM`)

---

### ⚙️ Administração Avançada (Sênior)
- Inventário rápido da máquina (`Get-ComputerInfo`)
- Sincronização de hora (`w32tm /resync`)
- Forçar atualização do Windows Update (`wuauclt /detectnow`)
- Últimos eventos de segurança (`Get-EventLog Security`)
- Reiniciar spooler de impressão

---

## 📥 Instalação e Uso

1. **Baixe** o script:
   ```powershell
   git clone https://github.com/AndreGoncallez/SupportTools.git
   cd SupportTools
