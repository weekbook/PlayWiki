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
padding:0 10px;  } 
nav ul li:first-child{border-left:none;}
.container-fluid {
  padding-right: 15px;
  padding-left: 30px;
  margin-right: auto;
  margin-left: auto;
}
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
 
 <h1 style="font-size: 40px; font-weight:bold">&emsp;뉴스</h1>
 
<div class="container-fluid">
<div style="width:200px; height:150px; float:left; margin-right:10px;"><img src="images/9.jpg" alt=""  width="200" height="150"></div>
 <div><h3><a href = "http://www.inven.co.kr/webzine/news/?news=248367">[with 스토브] '공격'만으로 풀어낸 로그라이트, 스커지브링어</a></h3>
 미래를 배경으로 한 감각적인 로그라이트 액션 뉴로보이더로 세간의 주목을 받았던 플라잉 오크 게임즈
 (Flying Oak Games)의 다음 선택은 메트로바니아 액션이었다. 인디 게임씬에서 가장 핫한 장르로 꼽히는 로그라이트.
  그 특징을 잘 따른 게임에 비평가들은 '데드셀과 셀레스테의 만남'이라는 극찬을 아끼지 않았다.</div><br><br><br>
  
 <div style="width:200px; height:150px; float:left; margin-right:10px;"><img src="images/10.png" alt=""  width="200" height="150"></div>
 <div><h3><a href = "http://www.inven.co.kr/webzine/news/?news=248697">스마일게이트 스토브 인디, 대학생 졸업작품 12종 유저 접점 확대</a></h3>
스마일게이트 스토브 (대표 한영운)는 청강문화산업대학교(총장 황봉성) 게임콘텐츠 스쿨과 함께 이번 학기 졸업생들의 
온라인 작품 전시회인 ‘청강크로니클 2020’을 성공적으로 마무리 했다고 14일(월) 밝혔다.
지난 11일에 개최된 청강크로니클 2020은 게임콘텐츠 스쿨의 연중 가장 큰 행사로, 재학 중인 3학년 학생이 스튜디오에서
 1년간 제작한 작품을 발표하고 평가를 받는 자리다. </div><br><br><br>
 
  <div style="width:200px; height:150px; float:left; margin-right:10px;"><img src="images/11.jpg" alt=""  width="200" height="150"></div>
 <div><h3><a href = "http://www.inven.co.kr/webzine/news/?news=248602">우주선 다음에는 비행기다! '어몽어스' 신규 맵 공개</a></h3>
 인디 개발사 이너슬로스는 TGA 2020에서 '어몽어스'의 신규 맵을 공개했다.
새롭게 공개된 맵은 우주가 아닌 하늘을 나는 '비행기'를 테마로 삼고 있다. 유저들은 비행기에 탑승한 승객으로 이전 맵과 똑같이 크루원과 임포스터 그룹으로 나뉘게 된다.
비행기 맵은 우주선에서 볼 수 없던 다양한 기능을 제공한다. 우선 빠르게 맵을 이동할 수 있는 사다리와 이동하는 발판 등의 숏컷이 생겼다. 
이를 적절히 사용한다면 먼 길을 빙빙 둘러가지 않고 직선으로 빠르게 돌파하는 것이 가능하다.</div><br><br><br>

  <div style="width:200px; height:150px; float:left; margin-right:10px;"><img src="images/12.jpg" alt=""  width="200" height="150"></div>
 <div><h3><a href = "http://www.inven.co.kr/webzine/news/?news=248579">발리언트 하츠 개발자의 신작 '로드 96', 더 게임 어워드에서 공개</a></h3>
 프랑스 몽펠리에의 인디게임 스튜디오 DigixArt는 오늘, 더 게임 어워드를 통해 신작 ‘Road 96’ 을 처음으로 공개하였다. DigixArt는 발리언트 하츠의 개발자인 요안 파니세가 설립한 인디게임 스튜디오다.
‘Road 96’은 붕괴 직전의 국가를 탈출하여 산속에서 수천 마일이나 떨어진 국경까지 도달하는 절차적으로 생성되는 네리티브 어드벤처 게임이다. 
1996년의 무더운 여름 동안 시골의 뒷길을 여행하면서, 플레이어는 전국의 곤경에 처한 시민들을 만나게 된다. 
플레이어가 내리는 모든 결정은 국경으로 향하는 여행 전체에 영향을 미치며, 각각 색다른 이야기로 플레이어를 이끌게 된다.</div><br><br>
 
  <div style="width:200px; height:150px; float:left; margin-right:10px;"><img src="images/13.jpg" alt=""  width="200" height="150"></div>
 <div><h3><a href = "http://www.inven.co.kr/webzine/news/?news=248592">LoL 턴제 RPG '몰락한 왕' 실제 플레이 영상 최초 공개</a></h3>
 라이엇 게임즈는 더 게임 어워드에서 리그 오브 레전드 세계관을 배경으로 한 SRPG '몰락한 왕: 리그 오브 레전드 이야기(이하 몰락한 왕)'의 게임플레이 영상을 최초로 공개했다.
 '몰락한 왕'은 라이엇 게임즈의 퍼블리싱 레이블인 라이엇 포지가 퍼블리싱을 맡았으며, '배틀 체이서'의 개발사인 에어쉽 신디케이트가 개발하고 있는 작품이다. 
 2021년 스팀, 에픽스토어, PS4, Xbox One, 닌텐도 스위치 등을 통해 출시될 예정이며, 이후 Xbox 시리즈 X/S, PS5로도 출시 예정이며, PS4/Xbox One 유저의 경우 
 차세대 콘솔 버전 무료 업그레이드가 지원된다.</div><br><br>
  
  <div style="width:200px; height:150px; float:left; margin-right:10px;"><img src="images/14.jpg" alt=""  width="200" height="150"></div>
 <div><h3><a href = "http://www.inven.co.kr/webzine/news/?news=248768">빈 디젤, '아크2' 수석 프로듀서로 합류</a></h3>
 지난 11일, 더 게임 어워드를 통해 공개된 오픈월드 공룡 서바이벌 게임 '아크2'와 아크 애니메이션 시리즈에 영화배우 빈 디젤이 성우 및 수석 프로듀서로 합류한다는 게 알려져 화제다.
헐리우드 리포터 등 외신과 해외 매체에 따르면 빈 디젤은 아크 애니메이션과 '아크2' 트레일러에 등장한 산티아고의 성우를 맡는 동시에 수석 프로듀서로 
개발에 참여하는 것으로 밝혀졌다. 이와 관련해 빈 디젤은 "아크를 플레이하면서 많은 재미를 느끼고 있다"라며, "이번에 게임과 애니메이션 시리즈 스토리 
개발에 참여하게 돼 정말 기쁘다"고 소감을 밝혔다.</div><br><br>
  
  <div style="width:200px; height:150px; float:left; margin-right:10px;"><img src="images/15.jpg" alt=""  width="200" height="150"></div>
 <div><h3><a href = "http://www.inven.co.kr/webzine/news/?news=248755&page=2">네오위즈 신작 ‘스컬’ 1월 21일 출시</a></h3>
 네오위즈(대표 문지수)는 사우스포게임즈㈜(대표 박상우)가 개발 중인 2D 액션 게임 ‘스컬(Skul: The Hero Slayer)’이 오는 1월 21일 정식 출시한다고 15일 밝혔다.
스컬은 높은 완성도로 구현된 픽셀아트 그래픽과 빠르고 호쾌한 전투가 특징인 2D 플랫포머 액션 게임이다. 단 한 번의 기회를 전략적으로 풀어가는 재미를 느낄 수 있는 로그라이트 장르로, 
주인공 스컬의 머리를 교체해 새로운 캐릭터로 변신하는 독특한 시스템이 가장 큰 특징이다. 지난 2월 스팀 얼리 엑세스 출시 한달 만에 판매량 10만장을 돌파하며 흥행 기대작으로 주목 받고 있는 작품이다.</div><br><br>
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