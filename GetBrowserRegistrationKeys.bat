@ECHO off
set OUTFILE="BrowserRegistrationKeys.txt"

ECHO Getting Registered Browser Association Keys from Registry...
REM Get HKCU keys
ECHO Query HKCU\Software\Clients\StartMenuInternet: >> %OUTFILE%
REG QUERY HKCU\Software\Clients\StartMenuInternet /s >> %OUTFILE%
ECHO Query HKCU\Software\Classes keys with value Firefox: >> %OUTFILE%
REG QUERY HKCU\Software\Classes /s /f Firefox >> %OUTFILE%
ECHO Query HKCU\Software\Classes keys with value Waterfox: >> %OUTFILE%
REG QUERY HKCU\Software\Classes /s /f Waterfox >> %OUTFILE%
ECHO Query HKCU\Software\Classes\HTTP values: >> %OUTFILE%
REG QUERY HKCU\Software\Classes\HTTP /s >> %OUTFILE%
ECHO Query HKCU\Software\Classes\HTTPS values: >> %OUTFILE%
REG QUERY HKCU\Software\Classes\HTTPS /s >> %OUTFILE%

REM Get HKLM key
ECHO Query HKLM\Software\Clients\StartMenuInternet: >> %OUTFILE%
REG QUERY HKLM\Software\Clients\StartMenuInternet /s >> %OUTFILE%
ECHO Query HKLM\Software\Classes keys with value Firefox: >> %OUTFILE%
REG QUERY HKLM\Software\Classes /s /f Firefox >> %OUTFILE%
ECHO Query HKLM\Software\Classes keys with value Waterfox: >> %OUTFILE%
REG QUERY HKLM\Software\Classes /s /f Waterfox >> %OUTFILE%
ECHO Information Saved to %OUTFILE%

PAUSE