"%PREFIX%\Scripts\jupyter-nbextension.exe" enable nbpresent --py --sys-prefix > NUL 2>&1 || EXIT /B 1
IF %ERRORLEVEL% NEQ 0 EXIT /B %ERRORLEVEL%

"%PREFIX%\Scripts\jupyter-serverextension.exe" enable --py nbpresent --sys-prefix > NUL 2>&1 || EXIT /B 1
IF %ERRORLEVEL% NEQ 0 EXIT /B %ERRORLEVEL%

if errorlevel 1 exit 1
