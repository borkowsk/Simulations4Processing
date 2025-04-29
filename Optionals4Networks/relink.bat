@echo off
if "%1"=="" (
    echo You need exacly one parameter - the unix like symlink imported by git.
    exit /b 1
)

set /p linia=<%1
set zawartosc=%linia:/=\%
set name=%1
set copyname=%name:.pde=_copy.pde%

echo Expected link from "%name%" is "%linia%" ( "%zawartosc%" , "%copyname%" )

REM exit /b 0

echo move "%1" "%1.bak"
move "%1" "%1.bak"
REM Note! Junction does not work with Processing 4.x
REM       So, you need hard link or copy.
echo mklink "%1" "%zawartosc%"
mklink "%1" "%zawartosc%"
if errorlevel 1 (
	echo You have not admin privileges to create hard link!
	REM move  "%1.bak" "%1"
        echo copy "%zawartosc%" "%copyname%"
        copy "%zawartosc%" "%copyname%"
	attrib +r "%copyname%"
)

