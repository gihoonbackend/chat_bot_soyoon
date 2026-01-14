#!/bin/bash

echo "=================================="
echo "유아발달상황 평가 도우미 - 환경 체크"
echo "=================================="
echo ""

# Python 버전 확인
echo "✓ Python 버전 확인..."
if command -v python3 &> /dev/null
then
    PYTHON_VERSION=$(python3 --version)
    echo "  $PYTHON_VERSION 설치됨"
else
    echo "  ❌ Python이 설치되지 않았습니다!"
    echo "  https://www.python.org/downloads/ 에서 다운로드하세요"
    exit 1
fi

# pip 확인
echo ""
echo "✓ pip 확인..."
if command -v pip3 &> /dev/null
then
    echo "  pip 설치됨"
else
    echo "  ❌ pip이 설치되지 않았습니다!"
    exit 1
fi

# 필수 패키지 확인
echo ""
echo "✓ 필수 패키지 확인 중..."

PACKAGES=("streamlit" "openai")
ALL_INSTALLED=true

for package in "${PACKAGES[@]}"
do
    if pip3 show "$package" &> /dev/null
    then
        echo "  ✅ $package 설치됨"
    else
        echo "  ⚠️  $package 설치 필요"
        ALL_INSTALLED=false
    fi
done

echo ""
if [ "$ALL_INSTALLED" = false ]
then
    echo "❌ 일부 패키지가 설치되지 않았습니다."
    echo ""
    echo "설치 방법:"
    echo "  pip3 install -r requirements.txt"
    echo "또는"
    echo "  pip3 install -r requirements_advanced.txt"
    exit 1
fi

echo "=================================="
echo "✅ 모든 준비가 완료되었습니다!"
echo "=================================="
echo ""
echo "실행 방법:"
echo "  기본 버전: streamlit run app.py"
echo "  고급 버전: streamlit run app_advanced.py"
echo ""
