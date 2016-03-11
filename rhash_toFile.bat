@REM rhash_toFile.bat
@REM
@REM rhash helper batch file:
@REM        generate --%2 of %1 
@REM    and write to file "%~1.%2%.txt"
@REM
@REM example               rhash_toFile.bat test.zip sha256 
@REM will be written to                     test.zip.sha256.txt
@REM
@REM Plays together with the registry shell extension
@REM    registry_context_menu_rhash_sha256.reg
@REM to enable right mouse click to generate hashes quickly.
@REM
@REM Important:
@REM Copy this into the rhash folder, e.g.
@REM     C:\ProgramData\chocolatey\lib\rhash\tools\RHash-1.3.3-win64\
@REM and adapt the registry file .reg content according to your path.
@REM
@REM
@REM version v01
@REM created 2016.03.11 by:
@REM https://github.com/drandreaskrueger/WindowsExplorerExtensions
@REM
@REM Please extend adapt improve to make this as versatile as possible.
@REM
@REM AND/OR include into rhash.exe as 
@REM    rhash.exe -f %1
@REM In both cases, alert me please. Thanks!
@REM
@REM ... yes, 30 lines of REM, and then two lines of code. *g*
@REM
@set EXTENSION=.txt
@rhash.exe --%2 %1 > "%~1.%2%EXTENSION%"
