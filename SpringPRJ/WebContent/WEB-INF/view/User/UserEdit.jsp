<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="session.jsp" %>
<!DOCTYPE html>
<html lang="en" data-textdirection="ltr" class="loading">
<head>

<meta charset="UTF-8">
<title>페이지 타이틀</title>
<%@ include file="../header.jsp" %>
</head>
<body  data-open="click" data-menu="vertical-menu" data-col="2-columns" class="vertical-layout vertical-menu 2-columns  fixed-navbar">
	<%@ include file="../menu.jsp" %>
	<div class="app-content content container-fluid">
      <div class="content-wrapper">
        <div class="content-header row">
          <div class="content-header-left col-md-6 col-xs-12 mb-1">
            <h2 class="content-header-title">회원정보 수정</h2>
          </div>
        </div>
        <div class="content-body"><!-- Basic form layout section start -->
<section id="basic-form-layouts">

	<div class="row">
		<div class="col-md-6 offset-md-3">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title" id="basic-layout-card-center">회원정보 수정</h4>
				</div>
				<div class="card-body collapse in">
					<div class="card-block">
						<div class="card-text">
							<p></p>
						</div>
						<form class="form">
							<div class="form-body">
								<!-- 이메일 -->
								<div class="form-group">
									<label for="email">이메일</label>
									<input type="email" id="email" class="form-control" placeholder="이메일 입력" name="email">
									
									<button disabled="disabled" id="emailCheck" class="btn btn-secondary btn-lg btn-block">이메일 중복확인</button>
								</div>
								<!-- 암호 -->
								<div class="form-group">
									<label for="pw">암호</label>
									<input type="password" id="pw" class="form-control" name="passwd" placeholder="암호 입력">
								</div>
								
								<div class="form-group">
									<label for="pwConfirm">암호 확인</label>
									<input type="password" id="pwConfirm" class="form-control" placeholder="암호 재입력">
								</div>
								<div class="form-group">
									<select name="interest" id="basicSelect" class="form-control">
                                        <option value="" label="관심분야">관심분야</option>
                                        <optgroup label="경영·사무">
                                            <option label="기획·전략·경영" value="101">기획·전략·경영</option>
                                            <option label="마케팅·광고·분석" value="119">마케팅·광고·분석</option>
                                            <option label="홍보·PR·사보" value="104">홍보·PR·사보</option>
                                            <option label="경리·출납·결산" value="103">경리·출납·결산</option>
                                            <option label="회계·재무·세무·IR" value="114">회계·재무·세무·IR</option>
                                            <option label="총무·법무·사무" value="102">총무·법무·사무</option>
                                            <option label="비서·안내·수행원" value="107">비서·안내·수행원</option>
                                            <option label="인사·교육·노무" value="113">인사·교육·노무</option>
                                            <option label="사무보조·문서작성" value="108">사무보조·문서작성</option>
                                            <option label="전시·컨벤션·세미나" value="120">전시·컨벤션·세미나</option>
                                        </optgroup><optgroup label="영업·고객상담">
                                            <option label="일반영업" value="202">일반영업</option>
                                            <option label="영업기획·관리·지원" value="209">영업기획·관리·지원</option>
                                            <option label="기술영업" value="208">기술영업</option>
                                            <option label="IT·솔루션영업" value="205">IT·솔루션영업</option>
                                            <option label="광고영업" value="207">광고영업</option>
                                            <option label="금융·보험영업" value="206">금융·보험영업</option>
                                            <option label="판매·매장관리" value="203">판매·매장관리</option>
                                            <option label="TM·아웃바운드" value="210">TM·아웃바운드</option>
                                            <option label="TM·인바운드" value="211">TM·인바운드</option>
                                            <option label="고객센터·CS" value="212">고객센터·CS</option>
                                            <option label="QA·CS강사·수퍼바이저" value="213">QA·CS강사·수퍼바이저</option>
                                        </optgroup><optgroup label="생산·제조">
                                            <option label="생산·제조·포장·조립" value="315">생산·제조·포장·조립</option>
                                            <option label="생산관리·품질관리" value="309">생산관리·품질관리</option>
                                            <option label="기계·기계설비" value="302">기계·기계설비</option>
                                            <option label="금속·금형" value="301">금속·금형</option>
                                            <option label="비금속·요업·신소재" value="316">비금속·요업·신소재</option>
                                            <option label="전기·전자·제어" value="308">전기·전자·제어</option>
                                            <option label="반도체·디스플레이·LCD" value="314">반도체·디스플레이·LCD</option>
                                            <option label="화학·에너지" value="303">화학·에너지</option>
                                            <option label="섬유·의류·패션" value="304">섬유·의류·패션</option>
                                            <option label="바이오·제약·식품" value="317">바이오·제약·식품</option>
                                            <option label="설계·CAD·CAM" value="318">설계·CAD·CAM</option>
                                            <option label="안경·렌즈·광학" value="319">안경·렌즈·광학</option>
                                        </optgroup><optgroup label="IT·인터넷">
                                            <option label="웹마스터·QA·테스터" value="401">웹마스터·QA·테스터</option>
                                            <option label="웹기획·PM" value="403">웹기획·PM</option>
                                            <option label="웹디자인" value="412">웹디자인</option>
                                            <option label="웹개발" value="404">웹개발</option>
                                            <option label="응용프로그램개발" value="407">응용프로그램개발</option>
                                            <option label="시스템개발" value="408">시스템개발</option>
                                            <option label="ERP·시스템분석·설계" value="409">ERP·시스템분석·설계</option>
                                            <option label="하드웨어·소프트웨어" value="411">하드웨어·소프트웨어</option>
                                            <option label="서버·네트워크·보안" value="402">서버·네트워크·보안</option>
                                            <option label="통신·모바일" value="410">통신·모바일</option>
                                            <option label="컨텐츠·사이트운영" value="406">컨텐츠·사이트운영</option>
                                            <option label="게임·Game" value="405">게임·Game</option>
                                            <option label="퍼블리싱·UI개발" value="413">퍼블리싱·UI개발</option>
                                            <option label="동영상·편집·코덱" value="414">동영상·편집·코덱</option>
                                            <option label="IT·디자인·컴퓨터교육" value="415">IT·디자인·컴퓨터교육</option>
                                            <option label="데이터베이스·DBA" value="416">데이터베이스·DBA</option>
                                            <option label="인공지능(AI)·빅데이터" value="417">인공지능(AI)·빅데이터</option>
                                        </optgroup><optgroup label="전문직">
                                            <option label="임원·CEO" value="524">임원·CEO</option>
                                            <option label="경영분석·컨설턴트" value="501">경영분석·컨설턴트</option>
                                            <option label="증권·투자·펀드·외환" value="502">증권·투자·펀드·외환</option>
                                            <option label="설문·통계·리서치" value="505">설문·통계·리서치</option>
                                            <option label="헤드헌팅·노무·직업상담" value="504">헤드헌팅·노무·직업상담</option>
                                            <option label="외국어·번역·통역" value="509">외국어·번역·통역</option>
                                            <option label="법률·특허·상표" value="510">법률·특허·상표</option>
                                            <option label="세무·회계·CPA" value="511">세무·회계·CPA</option>
                                            <option label="채권·보험·보상·심사" value="512">채권·보험·보상·심사</option>
                                            <option label="도서관사서" value="513">도서관사서</option>
                                            <option label="연구소·R&amp;D" value="518">연구소·R&amp;D</option>
                                            <option label="문화·예술·종교" value="522">문화·예술·종교</option>
                                            <option label="특수직" value="523">특수직</option>
                                        </optgroup><optgroup label="교육">
                                            <option label="유치원·보육" value="604">유치원·보육</option>
                                            <option label="초중고·특수학교" value="602">초중고·특수학교</option>
                                            <option label="입시·보습·속셈학원" value="606">입시·보습·속셈학원</option>
                                            <option label="학습지·과외·방문" value="603">학습지·과외·방문</option>
                                            <option label="전문직업·IT강사" value="605">전문직업·IT강사</option>
                                            <option label="대학교수·행정직" value="610">대학교수·행정직</option>
                                            <option label="교육기획·교재" value="601">교육기획·교재</option>
                                            <option label="학원관리·운영·상담" value="609">학원관리·운영·상담</option>
                                            <option label="외국어·어학원" value="611">외국어·어학원</option>
                                        </optgroup><optgroup label="미디어">
                                            <option label="방송연출·PD·감독" value="711">방송연출·PD·감독</option>
                                            <option label="카메라·조명·미술" value="703">카메라·조명·미술</option>
                                            <option label="진행·아나운서" value="712">진행·아나운서</option>
                                            <option label="작가·시나리오" value="705">작가·시나리오</option>
                                            <option label="기자" value="710">기자</option>
                                            <option label="연예·엔터테인먼트" value="702">연예·엔터테인먼트</option>
                                            <option label="공연·무대·스텝" value="704">공연·무대·스텝</option>
                                            <option label="영화제작·배급" value="708">영화제작·배급</option>
                                            <option label="광고·카피·CF" value="709">광고·카피·CF</option>
                                            <option label="인쇄·출판·편집" value="714">인쇄·출판·편집</option>
                                            <option label="사진·포토그라퍼" value="715">사진·포토그라퍼</option>
                                            <option label="음악·음향·사운드" value="713">음악·음향·사운드</option>
                                        </optgroup><optgroup label="특수계층·공공">
                                            <option label="공무원" value="810">공무원</option>
                                            <option label="장교·군인·부사관" value="813">장교·군인·부사관</option>
                                            <option label="병역특례" value="809">병역특례</option>
                                            <option label="중장년·고령인·실버" value="807">중장년·고령인·실버</option>
                                            <option label="장애인·국가유공자" value="808">장애인·국가유공자</option>
                                            <option label="사회복지·요양·봉사" value="812">사회복지·요양·봉사</option>
                                        </optgroup><optgroup label="건설">
                                            <option label="토목·조경·도시·측량" value="901">토목·조경·도시·측량</option>
                                            <option label="건축·인테리어·설계" value="902">건축·인테리어·설계</option>
                                            <option label="전기·소방·통신·설비" value="903">전기·소방·통신·설비</option>
                                            <option label="환경·플랜트" value="904">환경·플랜트</option>
                                            <option label="현장·시공·감리·공무" value="905">현장·시공·감리·공무</option>
                                            <option label="안전·품질·검사·관리" value="906">안전·품질·검사·관리</option>
                                            <option label="부동산·개발·경매·분양" value="908">부동산·개발·경매·분양</option>
                                            <option label="본사·관리·전산" value="909">본사·관리·전산</option>
                                        </optgroup><optgroup label="유통·무역">
                                            <option label="물류·유통·운송" value="1001">물류·유통·운송</option>
                                            <option label="해외영업·무역영업" value="1002">해외영업·무역영업</option>
                                            <option label="구매·자재·재고" value="1003">구매·자재·재고</option>
                                            <option label="납품·배송·택배" value="1004">납품·배송·택배</option>
                                            <option label="상품기획·MD" value="1005">상품기획·MD</option>
                                            <option label="무역사무·수출입" value="1006">무역사무·수출입</option>
                                            <option label="운전·기사" value="1007">운전·기사</option>
                                            <option label="중장비·화물" value="1008">중장비·화물</option>
                                        </optgroup><optgroup label="서비스">
                                            <option label="웨딩·행사·이벤트" value="1101">웨딩·행사·이벤트</option>
                                            <option label="안내·도우미·나레이터" value="1102">안내·도우미·나레이터</option>
                                            <option label="보안·경호·안전" value="1103">보안·경호·안전</option>
                                            <option label="주차·세차·주유" value="1104">주차·세차·주유</option>
                                            <option label="AS·서비스·수리" value="1105">AS·서비스·수리</option>
                                            <option label="외식·식음료" value="1107">외식·식음료</option>
                                            <option label="호텔·카지노·콘도" value="1108">호텔·카지노·콘도</option>
                                            <option label="여행·관광·항공" value="1109">여행·관광·항공</option>
                                            <option label="레저·스포츠" value="1110">레저·스포츠</option>
                                            <option label="미용·피부관리·애견" value="1111">미용·피부관리·애견</option>
                                            <option label="요리·제빵사·영양사" value="1112">요리·제빵사·영양사</option>
                                            <option label="가사·청소·육아" value="1113">가사·청소·육아</option>
                                        </optgroup><optgroup label="디자인">
                                            <option label="그래픽디자인·CG" value="1201">그래픽디자인·CG</option>
                                            <option label="출판·편집디자인" value="1202">출판·편집디자인</option>
                                            <option label="제품·산업디자인" value="1203">제품·산업디자인</option>
                                            <option label="캐릭터·만화·애니" value="1204">캐릭터·만화·애니</option>
                                            <option label="의류·패션·잡화디자인" value="1205">의류·패션·잡화디자인</option>
                                            <option label="디자인기타" value="1207">디자인기타</option>
                                            <option label="전시·공간디자인" value="1208">전시·공간디자인</option>
                                            <option label="광고·시각디자인" value="1209">광고·시각디자인</option>
                                        </optgroup><optgroup label="의료">
                                            <option label="의사·치과·한의사" value="1301">의사·치과·한의사</option>
                                            <option label="수의사" value="1302">수의사</option>
                                            <option label="약사" value="1303">약사</option>
                                            <option label="간호사" value="1304">간호사</option>
                                            <option label="간호조무사" value="1305">간호조무사</option>
                                            <option label="의료기사" value="1306">의료기사</option>
                                            <option label="사무·원무·코디" value="1307">사무·원무·코디</option>
                                            <option label="보험심사과" value="1308">보험심사과</option>
                                            <option label="의료기타직" value="1309">의료기타직</option>
                                        </optgroup>
                                    </select>
								</div>
							</div>

							<div class="form-actions center">
								<button type="submit" class="btn btn-primary" id="submitBtn">
									<i class="icon-check2"></i> 저장
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- // Basic form layout section end -->
        </div>
      </div>
    </div>
	
	
	
	
	
	
	<%@include file="../footer.jsp" %>
</body>
</html>