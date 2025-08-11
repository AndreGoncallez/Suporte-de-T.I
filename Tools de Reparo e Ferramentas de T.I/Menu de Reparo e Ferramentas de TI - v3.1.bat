@echo off
title Menu de Reparo e Ferramentas de TI - v3.1
color 0A

rem ***************************************************
rem *        Criado por André Gonçallez             *
rem * Menu de Reparo e Ferramentas de TI - v3.1     *
rem * Data de Criacao: Agosto de 2025                 *
rem * Contato: Andregoncallez@yahoo.com.br      *
rem ***************************************************

set LOGFILE=%~dp0suporte_log.txt
echo ================================================== >> %LOGFILE%
echo Iniciando Sessao: %date% %time% >> %LOGFILE%
echo ================================================== >> %LOGFILE%

:menu
cls
echo ==================================================
echo        MENU DE REPARO E FERRAMENTAS DE TI - v3.1
echo ==================================================
echo [ SISTEMA ]
echo  1. Verificar e Reparar Disco (CHKDSK)
echo  2. Reparar Arquivos de Sistema (SFC)
echo  3. Verificar Integridade de Arquivos (DISM)
echo  4. Limpar Arquivos Temporarios
echo  5. Restaurar Sistema
echo  6. Criar Ponto de Restauracao
echo  7. Verificar Erros de Memoria (Diagnostico)
echo  8. Desfragmentar Disco
echo  9. Testar Velocidade de Disco
echo 10. Informacoes do Sistema
echo 11. Relatorio Completo de Hardware (dxdiag)
echo 12. Gerenciar Aplicativos com Winget

echo.
echo [ REDE ]
echo 13. Verificar Conectividade de Rede (Ping)
echo 14. Testar Rota (tracert)
echo 15. Testar Porta Remota (Test-NetConnection)
echo 16. Limpar Cache DNS
echo 17. Reiniciar Servicos de Rede
echo 18. Checar Integridade e Latencia do DNS
echo 19. Testar Velocidade de Internet
echo 20. Teste de Latencia Cont nuo (ping -t)

echo.
echo [ SEGURANCA ]
echo 21. Ativar/Desativar Firewall do Windows
echo 22. Verificar Status do Antiv rus
echo 23. Monitorar Portas USB Conectadas
echo 24. Backup de Logs de Eventos
echo 25. Limpeza Avancada de Logs do Windows

echo.
echo [ BACKUP / SUPORTE ]
echo 26. Backup de Drivers
echo 27. Backup da Pasta do Usuario
echo 28. Exportar Lista de Programas Instalados
echo 29. Exportar Contatos/E-mails do Outlook
echo 30. Limpar Fila de Impressao
echo 31. Mapear/Desmapear Unidade de Rede

echo.
echo [ UTILITARIOS ]
echo 32. Gerenciar Processos (Task Manager)
echo 33. Gerenciar Usuarios Locais
echo 34. Executar Comando Personalizado (CMD)
echo 35. Abrir PowerShell
echo 36. Sair
echo ==================================================
set /p opcao=Escolha uma opcao: 

REM Fun  o para registrar log
set ACTION=
if "%opcao%"=="1"  set ACTION="Verificar e Reparar Disco" & chkdsk C: /f /r
if "%opcao%"=="2"  set ACTION="Reparar Arquivos de Sistema (SFC)" & sfc /scannow
if "%opcao%"=="3"  set ACTION="Reparar Imagem Windows (DISM)" & DISM /Online /Cleanup-Image /RestoreHealth
if "%opcao%"=="4"  set ACTION="Limpar Arquivos Temporarios" & del /s /q %temp%\*.* & cleanmgr /sagerun:1
if "%opcao%"=="5"  set ACTION="Restaurar Sistema" & rstrui.exe
if "%opcao%"=="6"  set ACTION="Criar Ponto de Restauracao" & powershell.exe -Command "Checkpoint-Computer -Description 'Ponto de Restauracao Manual' -RestorePointType 'MODIFY_SETTINGS'"
if "%opcao%"=="7"  set ACTION="Verificar Erros de Memoria" & mdsched.exe
if "%opcao%"=="8"  set ACTION="Desfragmentar Disco" & defrag C: /U /V
if "%opcao%"=="9"  set ACTION="Testar Velocidade de Disco" & winsat disk
if "%opcao%"=="10" set ACTION="Informacoes do Sistema" & msinfo32
if "%opcao%"=="11" set ACTION="Relatorio Completo de Hardware" & dxdiag /t dxdiag_report.txt & notepad dxdiag_report.txt
if "%opcao%"=="12" set ACTION="Gerenciar Aplicativos (Winget)" & winget list

if "%opcao%"=="13" set ACTION="Ping 8.8.8.8" & ping 8.8.8.8
if "%opcao%"=="14" set ACTION="Testar Rota" & tracert 8.8.8.8
if "%opcao%"=="15" set ACTION="Testar Porta 443" & powershell.exe Test-NetConnection -ComputerName google.com -Port 443
if "%opcao%"=="16" set ACTION="Limpar Cache DNS" & ipconfig /flushdns
if "%opcao%"=="17" set ACTION="Reiniciar Servicos de Rede" & net stop "DHCP Client" & net start "DHCP Client" & net stop "DNS Client" & net start "DNS Client"
if "%opcao%"=="18" set ACTION="Checar DNS" & nslookup google.com
if "%opcao%"=="19" set ACTION="Testar Velocidade Internet" & start https://www.speedtest.net
if "%opcao%"=="20" set ACTION="Ping Continuo" & ping -t 8.8.8.8

if "%opcao%"=="21" set ACTION="Ativar/Desativar Firewall" & netsh advfirewall set allprofiles state off & timeout /t 2 & netsh advfirewall set allprofiles state on
if "%opcao%"=="22" set ACTION="Verificar Status Antivirus" & powershell.exe Get-MpComputerStatus
if "%opcao%"=="23" set ACTION="Monitorar Portas USB" & powershell.exe Get-PnpDevice -Class USB
if "%opcao%"=="24" set ACTION="Backup Logs Eventos" & wevtutil epl System system_logs.evtx & wevtutil epl Application app_logs.evtx
if "%opcao%"=="25" set ACTION="Limpeza Avancada Logs" & for /F "tokens=*" %%G in ('wevtutil el') DO wevtutil cl "%%G"

if "%opcao%"=="26" set ACTION="Backup Drivers" & pnputil /export-driver * drivers_backup
if "%opcao%"=="27" set ACTION="Backup Pasta Usuario" & robocopy "%USERPROFILE%" "%HOMEDRIVE%\Backup_User" /E
if "%opcao%"=="28" set ACTION="Exportar Lista Programas" & wmic product get name,version > programas_instalados.txt & notepad programas_instalados.txt
if "%opcao%"=="29" set ACTION="Exportar Outlook" & echo Exportacao do Outlook requer script adicional
if "%opcao%"=="30" set ACTION="Limpar Fila Impressao" & net stop spooler & del /Q /F %systemroot%\System32\spool\PRINTERS\* & net start spooler
if "%opcao%"=="31" set ACTION="Mapear Unidade de Rede" & net use Z: \\servidor\pasta /user:usuario senha

if "%opcao%"=="32" set ACTION="Gerenciar Processos" & taskmgr
if "%opcao%"=="33" set ACTION="Gerenciar Usuarios" & lusrmgr.msc
if "%opcao%"=="34" set ACTION="CMD" & cmd
if "%opcao%"=="35" set ACTION="PowerShell" & powershell
if "%opcao%"=="36" exit

if defined ACTION echo %date% %time% - %ACTION% >> %LOGFILE%

pause
goto menu
