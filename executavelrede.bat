@echo off
cls
:menu
cls
color B
echo CRIADO E DESENVOLVIDO GABRIEL WALDRICH INFRAFAPP QUALQUER DUVIDA ENTRAR EM CONTATO
echo SEMPRE EXECUTAR COMO ADM
echo --
echo Usuario Logado: %username%                            Computador: %computername%
date /t  

echo  __________________________
echo     ESCOLHA UM APLICATIVO     
echo  1. SLACK        
echo  2. 7-ZIP
echo  3. ADOBE READER (Nao ta funcionando ADOBE bloqueia)
echo  4. SAP
echo  5. Trend Micro Apex One (Esta funcionando caso esteja instalado, mas o link direto tem que ser mudado)
echo  6. Teams
echo  7. MicroSIP
echo  8. AnyDesk
echo  9. QualysAgent (Esse copia o arquivo do E: para nosso disco local, o comando de ativacao nao funciona, mas tem outro executavel que faz)
              
echo __________________________ 
               
set /p opcao= Escolha uma opcao: 
echo _______________________
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto opcao6
if %opcao% equ 7 goto opcao7
if %opcao% equ 8 goto opcao8
if %opcao% equ 9 goto opcao9
if %opcao% GEQ  goto opcao


:opcao1
cls
if exist "C:\Users\%username%\Downloads\SlackSetup.exe" (
start C:\Users\%username%\Downloads\SlackSetup.exe
pause
goto menu
) else (
bitsadmin /transfer slack /priority normal https://shp.icu/Sjpf C:\Users\%username%\Downloads\SlackSetup.exe
pause
start C:\Users\%username%\Downloads\SlackSetup.exe
pause
goto menu
)

:opcao2
cls
if exist "C:\Program Files\7-Zip\7zFM.exe" (
start 7zFM.exe
pause
goto menu
) else (
bitsadmin /transfer instalador7zip /priority normal https://www.7-zip.org/a/7z2107-x64.exe C:\Users\%username%\Downloads\7zipSetup.exe
pause
start C:\Users\%username%\Downloads\7zipSetup.exe
pause
start 7zFM.exe
pause
goto menu
)

:opcao3
cls
if exist "C:\Users\%username%\Downloads\readerdc64_br_xa_mdr_install.exe" (
start C:\Users\%username%\Downloads\readerdc64_br_xa_mdr_install.exe
pause
goto menu
) else (
bitsadmin /transfer instaladorAdobe /priority normal https://shp.icu/de8M C:\Users\%username%\Downloads\readerdc64_br_xa_mdr_install.exe 
pause
start C:\Users\%username%\Downloads\readerdc64_br_xa_mdr_install.exe
pause
goto menu
)

:opcao4
cls
if exist "C:\Users\%username%\Downloads\SAPGUI760.zip" (
start C:\Users\%username%\Downloads\SAPGUI760.zip
pause
goto menu
) else (
bitsadmin /transfer instaladorAdobe /priority normal https://fapp-desktop-files.s3.amazonaws.com/SAPGUI760.zip C:\Users\%username%\Downloads\SAPGUI760.zip
pause
start C:\Users\%username%\Downloads\SAPGUI760.zip
pause
goto menu
)

:opcao5
cls
if exist "C:\Users\%username%\Downloads\TrendMicroApexOne-Instaladorx64.msi" (
start C:\Users\%username%\Downloads\TrendMicroApexOne-Instaladorx64.msi
pause
goto menu
) else (
bitsadmin /transfer instaladorTrendMicro /priority normal https://shp.icu/orQa C:\Users\%username%\Downloads\TrendMicroApexOne-Instaladorx64.msi
pause
start C:\Users\%username%\Downloads\TrendMicroApexOne-Instaladorx64.msi
pause
goto menu
)

:opcao6
cls
if exist "C:\Users\%username%\Downloads\TeamsSetup_c_w_.exe" (
start C:\Users\%username%\Downloads\TeamsSetup_c_w_.exe
pause
goto menu
) else (
bitsadmin /transfer instaladorTeams /priority normal https://shp.icu/t7Jm C:\Users\%username%\Downloads\TeamsSetup_c_w_.exe
pause
start C:\Users\%username%\Downloads\TeamsSetup_c_w_.exe
pause
goto menu
)

:opcao7
cls
if exist "C:\Users\%username%\Downloads\MicroSIP-3.20.5.exe" (
start C:\Users\%username%\Downloads\MicroSIP-3.20.5.exe
pause
goto menu
) else (
bitsadmin /transfer instaladorMicroSIP /priority normal https://www.microsip.org/download/MicroSIP-3.20.5.exe C:\Users\%username%\Downloads\MicroSIP-3.20.5.exe
pause
start C:\Users\%username%\Downloads\MicroSIP-3.20.5.exe
pause
goto menu
)

:opcao8
cls
if exist "C:\Users\%username%\Downloads\Anydesk.exe" (
start C:\Users\%username%\Downloads\Anydesk.exe
pause
goto menu
) else (
bitsadmin /transfer AcessoRemoto /priority normal https://download.anydesk.com/AnyDesk.exe C:\Users\%username%\Downloads\Anydesk.exe
pause
start C:\Users\%username%\Downloads\Anydesk.exe
pause
goto menu
)

:opcao9
cls
xcopy "E:\QualysCloudAgent.exe" "C:\" /y
pause
goto menu
