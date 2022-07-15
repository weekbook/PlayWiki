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
  <h1 style="font-size: 40px; font-weight:bold">&emsp;게임DB</h1>
 
 <div class="container-fluid">
 <div class="bs-example" data-example-id="simple-thumbnails">
    <div class="row">
      <div class="col-xs-6 col-md-3">
        <a href="https://kr.leagueoflegends.com/ko-kr/" class="thumbnail">
          <img data-src="holder.js/100%x180" alt="리그오브레전드" style="height: 180px; width: 100%; display: block;" src="images/18.png" data-holder-rendered="true">
        </a>
      </div>
      <div class="col-xs-6 col-md-3">
        <a href="https://playvalorant.com/ko-kr/" class="thumbnail">
          <img data-src="holder.js/100%x180" alt="발로란트" style="height: 180px; width: 100%; display: block;" src="images/19.jpg" data-holder-rendered="true">
        </a>
      </div>
      <div class="col-xs-6 col-md-3">
        <a href="https://pubg.game.daum.net/pubg/index.daum" class="thumbnail">
          <img data-src="holder.js/100%x180" alt="배틀그라운드" style="height: 180px; width: 100%; display: block;" src="images/20.jpg" data-holder-rendered="true">
        </a>
      </div>
      <div class="col-xs-6 col-md-3">
        <a href="https://playoverwatch.com/ko-kr/" class="thumbnail">
          <img data-src="holder.js/100%x180" alt="오버워치" style="height: 180px; width: 100%; display: block;" src="images/21.jpg" data-holder-rendered="true">
        </a>
      </div>
      <div class="col-xs-6 col-md-3">
        <a href="http://fifaonline4.nexon.com/main/index" class="thumbnail">
          <img data-src="holder.js/100%x180" alt="피파온라인4" style="height: 180px; width: 100%; display: block;" src="images/22.jpg" data-holder-rendered="true">
        </a>
      </div>
      <div class="col-xs-6 col-md-3">
        <a href="https://maplestory.nexon.com/Promotion/Event/2020/20201210/intro" class="thumbnail">
          <img data-src="holder.js/100%x180" alt="메이플스토리" style="height: 180px; width: 100%; display: block;" src="images/23.jpg" data-holder-rendered="true">
        </a>
      </div>
      <div class="col-xs-6 col-md-3">
        <a href="http://df.nexon.com/df/home" class="thumbnail">
          <img data-src="holder.js/100%x180" alt="던전앤파이터" style="height: 180px; width: 100%; display: block;" src="images/24.jpg" data-holder-rendered="true">
        </a>
      </div>
      <div class="col-xs-6 col-md-3">
        <a href="https://event.playblackdesert.com/Global_Event/Update_Nova" class="thumbnail">
          <img data-src="holder.js/100%x180" alt="검은사막" style="height: 180px; width: 100%; display: block;" src="images/25.jpg" data-holder-rendered="true">
        </a>
      </div>
      <div class="col-xs-6 col-md-3">
        <a href="https://www.minecraft.net/ko-kr" class="thumbnail">
          <img data-src="holder.js/100%x180" alt="마인크래프트" style="height: 180px; width: 100%; display: block;" src="images/26.jpg" data-holder-rendered="true">
        </a>
      </div>
      <div class="col-xs-6 col-md-3">
        <a href="https://playhearthstone.com/ko-kr" class="thumbnail">
          <img data-src="holder.js/100%x180" alt="하스스톤" style="height: 180px; width: 100%; display: block;" src="images/27.jpg" data-holder-rendered="true">
        </a>
      </div>
      <div class="col-xs-6 col-md-3">
        <a href="http://heroes.nexon.com/" class="thumbnail">
          <img data-src="holder.js/100%x180" alt="마비노기영웅전" style="height: 180px; width: 100%; display: block;" src="images/28.jpg" data-holder-rendered="true">
        </a>
      </div>
      <div class="col-xs-6 col-md-3">
        <a href="https://www.cyberpunk.net/us/ko/" class="thumbnail">
          <img data-src="holder.js/100%x180" alt="사이퍼펑크2077" style="height: 180px; width: 100%; display: block;" src="images/29.jpg" data-holder-rendered="true">
        </a>
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
 
<!--  <h1 style="font-size: 40px; font-weight:bold">&emsp;게임DB</h1>
 <div class="container">
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="item active">
				<img src="images/1.jpg">
			</div>
			<div class="item">
				<img src="images/2.jpg">
			</div>
			<div class="item">
				<img src="images/3.jpg">
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span>
		</a>
		<a class="right carousel-control" href="#myCarousel" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right"></span>
		</a>
	</div>
</div> -->
 
 <!-- 애니매이션 담당 JQUERY -->
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 

 <!-- 부트스트랩 JS  -->

 <script src="js/bootstrap.js"></script>

</body>

</html>