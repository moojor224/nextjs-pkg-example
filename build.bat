@echo off

@REM ignore the escape characters in the following lines, they just make the text colored

echo n[93m Installing dependencies... [0mn
call npm i
echo n[93m Compiling app... [0mn
call npm run build
echo n[93m Packaging app... [0mn
call npx pkg .

echo n[92m DONE! [0mn

SET /P AREYOUSURE1=[93m Open output folder in explorer?[0m ([92mY[0m/[[91mN[0m])?
IF /I "%AREYOUSURE1%" EQU "Y" GOTO OPEN
GOTO END1
:OPEN
explorer .\dist
:END1
