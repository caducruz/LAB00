@echo off
REM Uso: commit_push.bat "mensagem do commit"
set MSG=LAB00: atualiza arquivos
if not "%~1"=="" set MSG=%*
git add .
git commit -m "%MSG%"
git branch -M main
git push -u origin main
echo.
echo Feito! Se pedir senha, use seu Personal Access Token do GitHub.
pause
