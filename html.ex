    * { box-sizing: border-box; margin: 0; padding: 0; }
    body {
        font-family: 'Apple SD Gothic Neo', 'Malgun Gothic', sans-serif;
        background-color: #e2e8f0;
        color: var(--text-main);
        padding: 20px;
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 30px;
    }

    .slide {
        width: 210mm;
        min-height: 297mm;
        padding: 25mm 20mm;
        background-color: var(--card-bg);
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        position: relative;
        page-break-after: always;
    }

    .slide-header {
        border-bottom: 2px solid var(--primary);
        padding-bottom: 10px;
        margin-bottom: 20px;
    }

    .slide-num {
        font-size: 10pt;
        font-weight: 700;
        color: var(--primary);
        letter-spacing: 1px;
        text-transform: uppercase;
    }

    h1 {
        font-size: 20pt;
        color: var(--primary-dark);
        margin-top: 5px;
        font-weight: 800;
    }

    h2 {
        font-size: 15pt;
        color: var(--primary-dark);
        margin-bottom: 10px;
        font-weight: 700;
    }

    p, li {
        font-size: 10.5pt;
        line-height: 1.6;
        color: var(--text-sub);
    }

    .hero {
        background: linear-gradient(135deg, var(--primary-dark) 0%, var(--primary) 100%);
        color: #ffffff;
        padding: 25px;
        border-radius: 8px;
        margin-bottom: 20px;
    }
    .hero h1 { color: #ffffff; font-size: 22pt; margin-bottom: 8px; }
    .hero p { color: #93c5fd; font-size: 11pt; }

    .grid-2 {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 15px;
        margin-bottom: 15px;
    }

    .card {
        border: 1px solid var(--border-color);
        border-radius: 6px;
        padding: 15px;
        background-color: var(--bg-color);
    }

    .card-title {
        font-size: 11pt;
        font-weight: 700;
        color: var(--text-main);
        margin-bottom: 8px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        font-size: 9.5pt;
        margin-top: 10px;
        margin-bottom: 10px;
    }

    th, td {
        border: 1px solid var(--border-color);
        padding: 10px;
        text-align: left;
    }

    th {
        background-color: var(--bg-color);
        color: var(--text-main);
        font-weight: 700;
    }

    .badge {
        display: inline-block;
        padding: 3px 8px;
        border-radius: 4px;
        font-size: 8.5pt;
        font-weight: bold;
        color: #fff;
    }
    .bg-green { background-color: #16a34a; }
    .bg-yellow { background-color: #ca8a04; color: #fff; }
    .bg-red { background-color: #dc2626; }

    .diagram {
        border: 1px dashed var(--border-color);
        padding: 15px;
        border-radius: 6px;
        background-color: var(--bg-color);
        text-align: center;
        margin: 10px 0;
    }

    .footer {
        display: flex;
        justify-content: space-between;
        font-size: 9pt;
        color: #94a3b8;
        border-top: 1px solid #e2e8f0;
        padding-top: 10px;
    }
</style>


<!-- Slide 1: 개요 -->
<section class="slide">
    <div>
        <div class="hero">
            <div style="font-size: 9pt; font-weight: bold; color: #93c5fd; margin-bottom: 5px;">ARDUINO SMART DEVICE PROPOSAL</div>
            <h1>스마트 복약 관리 및 자동 인출기</h1>
            <p>Smart Pill Station : LED 시각적 알림과 시간 연동형 오복용 방지 시스템</p>
        </div>

        <div class="slide-header">
            <span class="slide-num">Slide 01</span>
            <h2>1. 제품 개요 및 기획 배경</h2>
        </div>
        
        <p style="margin-bottom: 15px;">
            고령층 및 만성질환자들이 약 복용 시간을 잊거나 중복 복용하는 위험을 막기 위한 아두이노 기반 오픈소스 스마트 약통입니다. 복잡한 스마트폰 앱 연동 대신, 직관적인 LED 신호등과 버튼 조작으로 안전하게 약을 인출합니다.
        </p>

        <div class="grid-2">
            <div class="card">
                <div class="card-title">⚠️ 기존 약통의 불편함</div>
                <ul style="padding-left: 15px;">
                    <li>내가 약을 먹었는지 기억 혼동 발생</li>
                    <li>시간이 안 됐는데 마음대로 눌러 과다 복용</li>
                    <li>기존 스마트 약통은 가격이 비싸고 조작이 복잡함</li>
                </ul>
            </div>
            <div class="card">
                <div class="card-title">💡 스마트 인출기의 해결책</div>
                <ul style="padding-left: 15px;">
                    <li><b>시간 차단 서보모터:</b> 정해진 시간 전에는 버튼을 눌러도 약이 안 나옴</li>
                    <li><b>3색 LED 상태등:</b> 초록/노랑/빨강으로 직관적 안내</li>
                    <li><b>간편 다이얼:</b> 아날로그 가변저항으로 복용 간격 손쉽게 조절</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer">
        <span>Smart Pill Station Project</span>
        <span>1 / 4</span>
    </div>
</section>

<!-- Slide 2: 아두이노 도구 -->
<section class="slide">
    <div>
        <div class="slide-header">
            <span class="slide-num">Slide 02</span>
            <h2>2. 사용 아두이노 도구 및 기술 명세</h2>
        </div>
        <p>제공된 기초·응용 실습 회로의 핵심 부품을 결합하여 최소 비용으로 최대 효과를 냅니다.</p>

        <table>
            <tr>
                <th>부품명</th>
                <th>기반 실습</th>
                <th>핵심 역할</th>
            </tr>
            <tr>
                <td><b>아두이노 우노 (UNO)</b></td>
                <td>기본 마이컴</td>
                <td>전체 시스템 제어 및 타이머/조건문 연산</td>
            </tr>
            <tr>
                <td><b>서보모터 (SG90)</b></td>
                <td>LAB 06 (나만의 미니 차단기)</td>
                <td>약 투입구 개폐 제어 (정각에만 90도 회전)</td>
            </tr>
            <tr>
                <td><b>가변저항 (Potentiometer)</b></td>
                <td>LAB 03 / 04 (손잡이 제어)</td>
                <td>복용 시간 간격 설정 (아날로그 다이얼)</td>
            </tr>
            <tr>
                <td><b>푸시 버튼 (Button)</b></td>
                <td>LAB 02 (누르면 켜지는 빛)</td>
                <td>사용자의 약 배출 요청 입력 스위치</td>
            </tr>
            <tr>
                <td><b>네오픽셀 링 / LED</b></td>
                <td>LAB 01 / 05 (무지개 링)</td>
                <td>초록/노랑/빨강 상태 표시 시각 디스플레이</td>
            </tr>
            <tr>
                <td><b>I2C LCD & 부저</b></td>
                <td>확장 응용 모듈</td>
                <td>문자 안내 메시지 출력 및 청각적 알림음 발생</td>
            </tr>
        </table>

        <div class="card" style="background-color: #eff6ff; border-color: #bfdbfe; margin-top: 15px;">
            <div class="card-title" style="color: #1e40af;">🔧 오픈소스 실습 활용 포인트</div>
            <p style="color: #1e3a8a; font-size: 10pt;">
                LAB 06의 차단기 소스코드에 버튼 조건문과 가변저항 연산식을 추가하고, LED 상태 전환 로직만 결합하면 쉽게 구현할 수 있습니다.
            </p>
        </div>
    </div>
    <div class="footer">
        <span>Smart Pill Station Project</span>
        <span>2 / 4</span>
    </div>
</section>

<!-- Slide 3: 제품 디자인 -->
<section class="slide">
    <div>
        <div class="slide-header">
            <span class="slide-num">Slide 03</span>
            <h2>3. 제품 디자인 및 외관 구조</h2>
        </div>
        <p>고령자가 한눈에 알아볼 수 있도록 상단 디스플레이, 중앙 조작부, 하단 배출구의 3단 구조로 디자인합니다.</p>

        <div class="diagram">
            <strong>[ 디바이스 외관 개략도 ]</strong><br><br>
            <div style="display: inline-block; border: 2px solid #334155; padding: 15px; border-radius: 8px; background: #fff; width: 80%; text-align: left;">
                <div style="background: #0f172a; color: #22c55e; padding: 6px; text-align: center; font-family: monospace; font-size: 9pt; border-radius: 4px; margin-bottom: 10px;">
                    [ LCD 화면 &amp; 네오픽셀 LED 링 테두리 ]
                </div>
                <div style="display: flex; justify-content: space-around; align-items: center; margin-bottom: 10px;">
                    <div style="background: #e2e8f0; padding: 10px; border-radius: 50%; font-size: 8pt; text-align: center;">가변저항<br>(다이얼)</div>
                    <div style="background: #2563eb; color: #fff; padding: 10px 20px; border-radius: 6px; font-weight: bold; font-size: 9pt;">약 배출 버튼 (PUSH)</div>
                </div>
                <div style="border-top: 2px dashed #94a3b8; padding-top: 8px; text-align: center; color: #475569; font-size: 9pt;">
                    🔽 서보모터 연동 1회분 약 배출구 (하단)
                </div>
            </div>
        </div>

        <div class="grid-2">
            <div class="card">
                <div class="card-title">상단 (시각 인지부)</div>
                <p style="font-size: 9.5pt;">LCD 문구와 네오픽셀 LED 색상으로 현재 약을 먹어도 되는지 멀리서도 즉시 파악 가능</p>
            </div>
            <div class="card">
                <div class="card-title">중앙 (조작부)</div>
                <p style="font-size: 9.5pt;">돌리기 편한 다이얼과 누르기 쉬운 대형 버튼을 배치해 손이 불편한 어르신도 조작 용이</p>
            </div>
        </div>
    </div>
    <div class="footer">
        <span>Smart Pill Station Project</span>
        <span>3 / 4</span>
    </div>
</section>

<!-- Slide 4: 회로 및 동작 시나리오 -->
<section class="slide">
    <div>
        <div class="slide-header">
            <span class="slide-num">Slide 04</span>
            <h2>4. 아두이노 회로 및 동작 시나리오</h2>
        </div>
        <p>시간 조건과 버튼 입력에 따라 다르게 반응하는 스마트 오복용 방지 로직입니다.</p>

        <div style="display: flex; flex-direction: column; gap: 10px; margin-top: 10px;">
            <div class="card" style="border-left: 5px solid #ca8a04;">
                <div class="card-title"><span class="badge bg-yellow">🟡 대기 시간</span> (아직 시간이 안 된 경우)</div>
                <p style="font-size: 9.5pt;">버튼을 눌러도 약이 안 나옴. 노란불 깜빡임 + LCD에 <i>"Not Yet! Please wait"</i> 문구 표시로 과다 복용 원천 차단.</p>
            </div>
            
            <div class="card" style="border-left: 5px solid #16a34a;">
                <div class="card-title"><span class="badge bg-green">🟢 복용 시간 도래</span> (정상 타이밍)</div>
                <p style="font-size: 9.5pt;">초록불 켜짐 + 부저 알림음. 버튼을 누르면 서보모터가 90도 회전하여 정확히 1회분 약 배출 후 타이머 리셋.</p>
            </div>

            <div class="card" style="border-left: 5px solid #dc2626;">
                <div class="card-title"><span class="badge bg-red">🔴 복용 지연 경고</span> (시간을 한참 넘긴 경우)</div>
                <p style="font-size: 9.5pt;">빨간불 점등 및 주기적 부저 경고음으로 고령층의 복약 누락 방지.</p>
            </div>
        </div>
    </div>
    <div class="footer">
        <span>Smart Pill Station Project</span>
        <span>4 / 4</span>
    </div>
</section>
