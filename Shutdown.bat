@echo off
color 0A

:start
echo.
echo.
echo Wann soll der Pc Runterfahren?
echo.
echo.
set /p min=Zeit in Minuten (oder a zum Abbrechen):

if not defined min (
  echo.
  echo Du musst eine Zahl eingeben!
  echo.
  goto start
)

set /a test = %min%*1

if %test% LEQ 0 (
  if %min% == a (
    goto cancel
  )
  echo.
  echo Du musst eine Zahl eingeben!
  echo.
)

set /a zeit = %min%*60
echo Shutdown in %min% Minuten
shutdown.exe -s -t %zeit% -f
exit

:cancel
echo.
echo Herunterfahren Abgebrochen.
shutdown.exe -a
pause