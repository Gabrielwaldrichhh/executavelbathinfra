@echo off
cls
:menu
cls
color B
echo ALGUNS AVISOS:
echo CRIADO E DESENVOLVIDO POR GABRIEL WALDRICH INFRAFAPP PARA AUXILIAR NO PROCESSO DE 
echo SEMI-AUTOMATIZAR O PROCESSO DE INSTALACAO E CONFIGURACAO DE APPS
echo QUALQUER DUVIDA ENTRAR EM CONTATO
echo SEMPRE EXECUTAR COMO ADM
echo LEMBRAR SE USAR SEMPRE O PENDRIVE E CONFERIR SE ESTA NO DISCO CERTO, SE NAO TIVER ALTERAR NO CODIGO
echo ------------------------------------------------------------------------------------------------------------------------------------------------
echo Usuario Logado: %username%                            Computador: %computername%
date /t  

echo ----------------------------------------------------------------------------------------------------------------------------------------------------
echo     ESCOLHA UM APLICATIVO     
echo  1. SLACK        
echo  2. 7-ZIP
echo  3. ADOBE READER 
echo  4. SAP
echo  5. Trend Micro Apex One
echo  6. Teams
echo  7. MicroSIP
echo  8. AnyDesk
echo  9. QualysAgent (Esse copia o arquivo do E: para nosso disco local, o comando de ativacao nao funciona, mas tem outro executavel que faz)
echo  10. Remover o Administrador da maquina
echo  11. Setar uma senha para o usuario
echo  12. OpenVPN 
echo  13. Lightshot
echo  14. TeamViwer
echo  15. MySQL
echo  16. Pasta Enable (Esta tando erro, tem que arrumar)
echo  17.

echo ------------------------------------------------------------------------------------------------------------------------------------------------
               
set /p opcao= Escolha uma opcao a ser executada: 
echo ------------------------------------------------------------------------------------------------------------------------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto opcao6
if %opcao% equ 7 goto opcao7
if %opcao% equ 8 goto opcao8
if %opcao% equ 9 goto opcao9
if %opcao% equ 10 goto opcao10
if %opcao% equ 11 goto opcao11
if %opcao% equ 12 goto opcao12
if %opcao% equ 13 goto opcao13
if %opcao% equ 14 goto opcao14
if %opcao% equ 15 goto opcao15
if %opcao% equ 16 goto opcao16
if %opcao% equ 17 goto opcao17
if %opcao% equ 18 goto opcao18

if %opcao% GEQ  goto opcao

:opcao1
cls
start D:\SlackSetup.exe
pause
goto menu

:opcao2
cls
start D:\7z2201-x64.exe 
pause
goto menu

:opcao3
cls
start D:\readerdc64_br_xa_crd_mdr_install.exe 
pause
goto menu

:opcao4
cls
xcopy "D:\SAPGUI760" "C:\Users\%username%\Downloads\" /y
pause
goto menu

:opcao5
cls
start D:\TrendMicroApexOne-Instaladorx64.msi
pause
goto menu

:opcao6
cls
start D:\TeamsSetup_c_w_.exe
pause
goto menu

:opcao7
cls
start D:\MicroSIP-Lite-3.20.5.exe
pause
goto menu

:opcao8
cls
start D:\AnyDesk.exe
pause
goto menu

:opcao9
cls
xcopy "E:\QualysCloudAgent.exe" "C:\" /y
pause
goto menu

:opcao10
cls
net user Administrador /active:no
pause
goto menu

:opcao11
net user "Fapp" *
pause
gotomenu

:opcao12
cls
start D:\OpenVPN-2.5.4-I604-amd64.msi
pause
goto menu

:opcao13
cls
start D:\setup-lightshot.exe
pause
goto menu

:opcao14
cls
start D:\TeamViewer_Setup_x64.exe
pause
goto menu

:opcao15
cls
start D:\mysql-installer-community-8.0.30.0.msi
pause
goto menu

:opcao16
xcopy "D:\AGENTESN-ABLE" "C:\Users\%username%\Downloads\" /y
pause
goto menu