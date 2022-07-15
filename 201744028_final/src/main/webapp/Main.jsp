 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 뷰포트 -->
<meta name="viewport" content="width=device-width" initial-scale="1">
<!-- 스타일시트 참조  -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/custom.css">
<style type="text/css">
/* 기본 설정*/ 
a{text-decoration:none; color:#000000;} 
a:hover{color:#ff0000;} 
/* nav tag */ 
nav ul{padding-top:10px;} 
nav ul li { display:inline; 
border-left:1px solid #999; 
font:bold 12px Dotum; 
padding:0 10px;} 
nav ul li:first-child{border-left:none;}
.container-fluid {
  padding-right: 15px;
  padding-left: 30px;
  margin-right: auto;
  margin-left: auto;
</style>
<title>게임의 모든것! Playwiki</title>
</head>
<body>
<%
	String userID = null;
	if(session.getAttribute("userID") != null){
		userID = (String) session.getAttribute("userID");
	}
%>
	
<div align="right">
	<button type="button" class="btn btn-secondary">
	<a href="termjoin.jsp" style="color:black;">회원가입</a>
	</button>
	<button type="button" class="btn btn-dark">
	<a href="Login.jsp" style="color:black;">로그인</a>
	</button>
</div>

<div class="row text-center" style="width: 100%">
	<div style="width: 30%; float:none; margin:0 auto" >
		<h1 style="font-size: 80px; font-weight:bold";>Playwiki</h1><br>
	</div>
</div>


 <!-- 네비게이션  -->
 <nav class="navbar navbar-default">
  <div class="navbar-header">
   <button type="button" class="navbar-toggle collapsed" 
    data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
    aria-expaned="false">
     <span class="icon-bar"></span>
     <span class="icon-bar"></span>
     <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="Main.jsp" style="font:italic bold 1.5em/1em Georgia, serif; color:black;
    font-size:30px;">Playwiki</a>
  </div>

  <div class="collapse navbar-collapse" id="#bs-example-navbar-collapse-1">
   <ul class="nav navbar-nav">
    <li><a href="news.jsp" style="color:black; font-size:20px">뉴스</a></li>
    <li><a href="gameDB.jsp" style="color:black; font-size:20px">게임DB</a></li>
    <li><a href="bbs.jsp" style="color:black; font-size:20px">게임토론장</a></li>
    <li><a href="bbs2.jsp" style="color:black; font-size:20px">자유게시판</a></li>
   </ul>
	<%
		if(userID == null){
	%>
	<ul class="nav navbar-nav navbar-right">
    	<li class="dropdown">
     		<a href="#" class="dropdown-toggle"
      			data-toggle="dropdown" role="button" aria-haspopup="true"
      			aria-expanded="false">접속하기<span class="caret"></span></a>
     		<ul class="dropdown-menu">
      			<li><a href="Login.jsp">로그인</a></li>
      			<li><a href="termjoin.jsp">회원가입</a></li>
     		</ul>
    	</li>
   </ul>
	<%
		} else{
	%>
	<ul class="nav navbar-nav navbar-right">
    	<li class="dropdown">
     		<a href="#" class="dropdown-toggle"
      			data-toggle="dropdown" role="button" aria-haspopup="true"
      			aria-expanded="false">회원관리<span class="caret"></span></a>
     		<ul class="dropdown-menu">
      			<li><a href="logoutAction.jsp">로그아웃</a></li>
     		</ul>
    	</li>
   </ul>
	 
	<%
		}
	%>
  </div> 
 </nav>
 
<div class="container-fluid">
 	<div class="jumbotron">
 		<div class="container">
 			<h1 style="font-size: 60px; font-weight:bold">Playwiki</h1>
 			<p>Playwiki는 사용자들이 채워나가는 게임 공략 / 소통 장소입니다.  </p>
 			<p><a class="btn btn-primary btn-pull" href="introduction.jsp" role="button">자세히 알아보기</a></p>
 		</div>
 	</div>
</div>
 
 <div class="container-fluid">
 <div class="bs-example" data-example-id="thumbnails-with-custom-content">
    <div class="row">
      <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
          <img data-src="holder.js/100%x200" alt="100%x200" src="images/4.jpg" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
          <div class="caption">
            <h3>국내 게임 음악을 오케스트라로 들어보자, 아이머게이머 콘서트</h3>
            <p>한국게임산업협회는 오늘(2일) 오후 8시부터 롯데콘서트홀에서 '아이머게이머(I'm a Gamer) 콘서트'를 개최했다.
            이번 콘서트는 게임의 선한 영향력을 나누는 '아이머게이머' 챌린지 캠페인의 일환으로 진행됐으며, 우리에게 친숙한 국내 게임 OST를 오케스트라로 편곡해 게임 안에 담긴 예술적인 요소를 알리고자 했다.</p>
            <p><a href="http://www.inven.co.kr/webzine/news/?news=248096" class="btn btn-primary" class="btn btn-primary" role="button">기사 보기</a> </p>
          </div>
        </div>
      </div>
      <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
          <img data-src="holder.js/100%x200" alt="100%x200" src="images/5.jpg" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
          <div class="caption">
            <h3>어드벤처 RPG '크로노스: 비포 디 애쉬' 한국어판 2일 출시</h3>
            <p>에이치투 인터렉티브는 건파이어 게임즈가 제작한 어드벤처 RPG ‘크로노스: 비포 디 애쉬(Chronos: Before the Ashes)’ 자막 및 음성 한국어판을 2일 PC, PS4, Xbox One, 닌텐도 스위치로 소비자가격 35,000원에 정식 출시하였다고 밝혔다.
            ‘크로노스: 비포 디 애쉬’는 전작 ‘램넌트: 프롬 디 애쉬’의 이전 이야기이며, 거대한 악으로부터 자신의 고향을 지켜 내기 위해 일생을 바친 영웅의 일대기를 연대순으로 기록한 롤 플레잉 게임이다. </p>
            <p><a href="http://www.inven.co.kr/webzine/news/?news=248087" class="btn btn-primary" class="btn btn-primary" role="button">기사 보기</a> </p>
          </div>
        </div>
      </div>
      <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
          <img data-src="holder.js/100%x200" alt="100%x200" src="images/7.jpg" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
          <div class="caption">
            <h3>[인터뷰] 아키에이지 "광기와 산탄총, 기존의 전투 양상 크게 바꿀 것</h3>
            <p>엑스엘게임즈의 대표작 아키에이지가 신규 능력인 ‘광기’를 예고했다. ‘증오’와 ‘암투’에 이어 13번째로 추가되는 신규 능력 ‘광기’는 독특한 매력을 선보일 신규 무기 '산탄총'과 시너지를 갖는 원거리 능력이라는 점이 특징이다.
아키에이지는 총 13가지 능력 중 3가지를 조합해 자신의 직업을 선택할 수 있는 게임으로, 게임 구조상 신규 능력의 등장은 여타 온라인 MMORPG 속 '신규 직업 추가'에 빗대어 설명할 수 있는 중요한 이슈라고 할 수 있다. </p>
            <p><a href="http://www.inven.co.kr/webzine/news/?news=248003" class="btn btn-primary" class="btn btn-primary" role="button">기사 보기</a> </p>
          </div>
        </div>
      </div>
      <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
          <img data-src="holder.js/100%x200" alt="100%x200" src="images/6.jpg" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
          <div class="caption">
            <h3>마리오 세계 현실로 옮겼네' 슈퍼 닌텐도 월드 2월 개장</h3>
            <p>닌텐도 게임 팬들의 기대 속에 건설 중인 테마파크, '슈퍼 닌텐도 월드'의 첫 모습이 공개됐다.
유니버설 스튜디오 재팬(Universal Studios Japan: USJ)은 29일 공식 온라인 채널을 통해 '슈퍼 닌텐도 월드'의 개장일과 공식 영상을 처음으로 공개했다. 테마 파크는 슈퍼 마리오 시리즈에 등장하는 다양한 지역과 적, 코인 등 게임의 상징적인 요소들로 꾸며진다.
테마파크의 핵심은 라이드 어트랙션 '마리오 카트 ~ 쿠파의 도전장 ~'이다. 약 5분 동안 진행되는 어트랙션은 급가속, 경사 구간 등이 존재하며 유니버설 스튜디오의 최첨단 기술을 적용해 다양한 게임 속 장면을 만날 수 있다.</p>
            <p><a href="http://www.inven.co.kr/webzine/news/?news=247967" class="btn btn-primary" class="btn btn-primary" role="button">기사 보기</a> </p>
          </div>
        </div>
      </div>
      <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
          <img data-src="holder.js/100%x200" alt="100%x200" src="images/16.jpg" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
          <div class="caption">
            <h3>바이오하자드 신작 스크린샷이 유출됐다</h3>
            <p>바이오하자드 시리즈의 최신작 '바이오하자드 빌리지'의 디버그 스크린샷이 해커 그룹에 의해 유출됐다.
이번 유출을 주도한 해커 그룹 Ragnar_Locker Team은 지난 11월 2일, 캡콤 서버 해킹을 주도한 조직이다. 이들은 당시 약 1테라 분량의 중요 데이터를 해킹 및 암호화했으며, 랜섬웨어를 푸는 조건으로 1,100만 달러(한화 약 120억 원) 상당의 비트코인을 요구한 것으로 알려졌다. 다만, 캡콤은 요구를 거부했고 이에 각종 정보들이 유출되고 있다.</p>
            <p><a href="http://www.inven.co.kr/webzine/news/?news=248795" class="btn btn-primary" class="btn btn-primary" role="button">기사 보기</a> </p>
          </div>
        </div>
      </div>
      <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
          <img data-src="holder.js/100%x200" alt="100%x200" src="images/17.jpg" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
          <div class="caption">
            <h3>EA, 1조 3천억 원에 '코드마스터즈' 인수</h3>
            <p>1986년 설립되어 다양한 레이싱 게임을 만들어온 영국의 게임 스튜디오 '코드마스터즈'가 EA에 인수된다. EA는 현지 기준 14일, 코드마스터즈와 합의를 거쳐 인수 계약을 체결했으며, 인수가는 총 12억 달러(한화 약 1조 3,100억 원)에 달한다고 밝혔다.

코드마스터즈는 이미 지난 11월, 한 차례 인수설이 불거진 바 있다. 당시 코드마스터즈를 인수하겠다 나선 기업은 '락스타', '파이락시스'등의 스튜디오를 거느린 '테이크투'였으며, 당시 테이크투가 제시한 금액은 약 9,400만 달러(한화 약 1조 276억 원)였다. 한 달간의 조정 과정에서 코드마스터즈는 기업 가치를 약 28% 높였고, 매수사는 테이크투에서 EA로 바뀐 것이다.</p>
            <p><a href="http://www.inven.co.kr/webzine/news/?news=248764" class="btn btn-primary" class="btn btn-primary" role="button">기사 보기</a> </p>
          </div>
        </div>
      </div>
    </div>
  </div>
 </div>

<hr>
	<nav class="navbar navbar-default">
  <div class="collapse navbar-collapse" id="#bs-example-navbar-collapse-1">
   <ul class="nav navbar-nav navbar-center">
    <li><a href="introduction.jsp" style="color:black; font-size:15px">사이트소개</a></li>
    <li><a href="terms.jsp" style="color:black; font-size:15px">이용약관</a></li>
    <li><a href="comemap.jsp" style="color:black; font-size:15px">찾아오시는 길</a></li>
    <li><a href="notice.jsp" style="color:black; font-size:15px">공지사항</a></li>
   </ul>
  </div> 
 </nav> 
 
	<table>
	<tr>
	<td>
		<div class="container-fluid">
				<img src="images/8.png" width="125" height="125">
		</div>
	</td>
	<td>
			명칭 : Playwiki | 등록번호 : 인천 가12345 | 등록연월일 : 2020.12.02<br>
			발행인 : 이기훈 | 주소 : 인천광역시 미추홀구 | 전화번호 : 010-3893-8579<br>
			Email : weekbook@naver.com | 카카오톡문의 : <a href="https://open.kakao.com/o/sUb9f3Lc"><img src="images/kakao.png" width="30" height="30"></a><br>
		
	</td>
	</tr>
	</table>



<!-- 애니매이션 담당 JQUERY -->
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 

 <!-- 부트스트랩 JS  -->
 <script src="js/bootstrap.js"></script>

</body>

</html>