@echo off
setlocal enabledelayedexpansion
set INTEXTFILE=Input.xml
set OUTTEXTFILE=Output.xml
set SEARCHTEXT=%1
set REPLACETEXT=%2

for /f "tokens=1,* delims=¶" %%A in ( '"findstr /n ^^ %INTEXTFILE%"') do (
   SET string=%%A
   for /f "delims=: tokens=1,*" %%a in ("!string!") do set "string=%%b"
   if  "!string!" == "" (
       echo.>>%OUTTEXTFILE%
   ) else (
      SET modified=!string:%SEARCHTEXT%=%REPLACETEXT%!
      echo !modified! >> %OUTTEXTFILE%
  )
)
