# 🚀 빠른 시작 가이드 (5분 완성!)

## 📦 1단계: 압축 해제
```bash
tar -xzf kindergarten_rag_chatbot_final.tar.gz
cd kindergarten_rag_chatbot
```

Windows 사용자는 7-Zip 또는 WinRAR로 압축 해제

---

## 🔧 2단계: 환경 체크

### Mac/Linux
```bash
chmod +x check_setup.sh
./check_setup.sh
```

### Windows
```bash
check_setup.bat
```

⚠️ 패키지가 설치되지 않았다면:
```bash
pip install -r requirements.txt
```

---

## 🔑 3단계: API 키 발급 (2분)

1. https://platform.openai.com/api-keys 접속
2. 로그인 (구글 계정으로 간편 가입 가능)
3. **"Create new secret key"** 클릭
4. 키 이름: "유치원평가" 입력
5. **생성된 키 복사** (sk-proj-로 시작하는 긴 문자열)

💡 **중요**: 이 키는 한 번만 표시되니 꼭 복사하세요!

---

## ▶️ 4단계: 앱 실행

### 기본 버전 (추천)
```bash
streamlit run app.py
```

### 고급 버전 (문서 업로드 기능)
```bash
streamlit run app_advanced.py
```

자동으로 브라우저가 열립니다! (http://localhost:8501)

---

## ✍️ 5단계: 평가문 작성

### 1️⃣ API 키 입력
- 왼쪽 사이드바 맨 위
- 복사한 키를 붙여넣기

### 2️⃣ 아이 정보 입력
```
이름: 김민준
나이: 만 4세
학기: 1학기

관찰 내용:
축구 활동을 통해 적극적으로 신체활동에 참여함.
친구들 앞에서 자신의 생각을 표현하는 것을 즐김.
그림책을 보며 이야기를 만들어 말함.
```

### 3️⃣ 생성 버튼 클릭
"✍️ 평가문 생성" 버튼을 누르면 30초 안에 완성!

### 4️⃣ 결과 확인 및 수정
- 마음에 들면: **📋 복사** 또는 **💾 저장**
- 수정이 필요하면: 하단에 "사회관계 부분을 더 자세히 써주세요" 입력

---

## 💡 첫 사용 팁

### ✅ 이렇게 하세요
- 관찰 내용을 3~5줄 정도 구체적으로 작성
- 5개 영역(신체, 의사소통, 사회관계, 예술, 자연탐구)을 골고루 포함
- "~를 즐김", "~에 관심을 보임" 같은 긍정적 표현 사용

### ❌ 피하세요
- 너무 짧은 관찰 (예: "활발함") → 구체적으로!
- 부정적 표현 (예: "산만함") → "다양한 활동에 관심" 같이 긍정적으로!

---

## 🆘 문제 해결

### "Invalid API key" 오류
→ API 키를 다시 확인하고 공백 없이 입력

### 앱이 안 열려요
→ 터미널에서 `Ctrl+C` 누른 후 다시 실행

### 한글이 깨져요 (Windows)
```bash
chcp 65001
streamlit run app.py
```

---

## 📞 도움이 필요하신가요?

### 더 자세한 가이드
`GUIDE.md` 파일을 열어보세요 (15페이지 분량의 상세 가이드)

### 프로젝트 구조
```
kindergarten_rag_chatbot/
├── app.py                  ← 기본 버전 (이것부터 시작!)
├── app_advanced.py         ← 고급 버전 (문서 업로드)
├── requirements.txt        ← 필수 패키지
├── README.md              ← 프로젝트 설명
├── GUIDE.md               ← 상세 사용 가이드
└── QUICKSTART.md          ← 이 파일!
```

---

**이제 준비 완료! 🎉**

평가문 작성이 5분이면 끝납니다!
