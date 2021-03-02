@echo off
set file=images
if exist %file% (
    echo %file% found.
    for /f "tokens=1,2 delims==" %%i in (%file%) do (
        echo pulling %%i ...
        docker pull %%i
    )
) else (
    echo %file% not found.
)
pause
