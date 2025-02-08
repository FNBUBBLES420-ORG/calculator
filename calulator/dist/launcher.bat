@echo off
REM Save the current directory
pushd %~dp0

REM Check if calculator.py exists
if not exist calculator.py (
    echo Error: calculator.py not found in the current directory.
    popd
    pause
    exit /b 1
)

REM Run the Python script and check for errors
echo Running calculator.py...
python calculator.py
if %errorlevel% neq 0 (
    echo Error: calculator.py did not run successfully. Error level: %errorlevel%
    popd
    pause
    exit /b %errorlevel%
)

REM Provide success feedback
echo calculator.py ran successfully.

REM Return to the original directory
popd
pause
