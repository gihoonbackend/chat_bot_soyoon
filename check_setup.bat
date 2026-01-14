@echo off
chcp 65001 > nul
echo ==================================
echo 유아발달상황 평가 도우미 - 환경 체크
echo ==================================
echo.

REM Python 버전 확인
echo ✓ Python 버전 확인...
python --version > nul 2>&1
if %errorlevel% neq 0 (
    echo   ❌ Python이 설치되지 않았습니다!
    echo   https://www.python.org/downloads/ 에서 다운로드하세요
    pause
    exit /b 1
)
for /f "tokens=*" %%i in ('python --version') do set PYTHON_VERSION=%%i
echo   %PYTHON_VERSION% 설치됨

REM pip 확인
echo.
echo ✓ pip 확인...
pip --version > nul 2>&1
if %errorlevel% neq 0 (
    echo   ❌ pip이 설치되지 않았습니다!
    pause
    exit /b 1
)
echo   pip 설치됨

REM 필수 패키지 확인
echo.
echo ✓ 필수 패키지 확인 중...

pip show streamlit > nul 2>&1
if %errorlevel% equ 0 (
    echo   ✅ streamlit 설치됨
) else (
    echo   ⚠️  streamlit 설치 필요
    set NEED_INSTALL=1
)

pip show openai > nul 2>&1
if %errorlevel% equ 0 (
    echo   ✅ openai 설치됨
) else (
    echo   ⚠️  openai 설치 필요
    set NEED_INSTALL=1
)

echo.
if defined NEED_INSTALL (
    echo ❌ 일부 패키지가 설치되지 않았습니다.
    echo.
    echo 설치 방법:
    echo   pip install -r requirements.txt
    echo 또는
    echo   pip install -r requirements_advanced.txt
    echo.
    pause
    exit /b 1
)

echo ==================================
echo ✅ 모든 준비가 완료되었습니다!
echo ==================================
echo.
echo 실행 방법:
echo   기본 버전: streamlit run app.py
echo   고급 버전: streamlit run app_advanced.py
echo.
pause
