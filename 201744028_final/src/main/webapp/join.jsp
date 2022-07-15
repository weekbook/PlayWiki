<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
padding:0 10px; } 
nav ul li:first-child{border-left:none;}
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
 
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<!-- 점보트론 -->
			<div class="jumbotron" style="padding-top: 20px;">
				<!-- 로그인 정보를 숨기면서 전송post -->
				<form method="post" action="joinAction.jsp">
					<h3 style="text-align: center;">회원가입</h3>
					<div class="form-group">

						<input type="text" class="form-control" placeholder="아이디"

							name="userID" maxlength="20">
					</div>

					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호"
							name="userPassword" maxlength="20">
					</div>

					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름"
							name="userName" maxlength="20">
					</div>

					<div class="form-group">
						<input type="text" class="form-control" placeholder="이메일"
							name="userEmail" maxlength="50">
					</div>
					
					<input type="submit" class="btn btn-primary form-control"
						value="회원가입">
				</form>
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

</html>]
 
