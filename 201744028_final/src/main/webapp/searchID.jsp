<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="User.UserDB" %> 
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
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
nav ul{padding-top:10px;} /* 상단 여백 10px */ 
nav ul li { display:inline; /* 세로나열을 가로나열로 변경 */ 
border-left:1px solid #999; /* 각 메뉴의 왼쪽에 "|" 표시(분류 표시) */ 
font:bold 12px Dotum; /* 폰트 설정 - 12px의 돋움체 굵은 글씨로 표시 */ 
padding:0 10px; /* 각 메뉴 간격 */ } 
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
 <div class="jumbotron">
 <div class="container-fluid">
 <center>
 <h1 style="font-size: 50px; font-weight:bold";>아이디 찾기</h1><br>
 <p style="font-size: 20px; font-weight:bold";>아이디는 가입시 입력하신 이름과 이메일틀 통해 찾을 수 있습니다.</p>
<form class="form-horizontal" role="form" method="POST" action="findIdAction">
	<div class="row">
		<div class="col-md-10 inputbb">
			<div class="form-group has-danger">
				<div class="input-group mb-2 mr-sm-2mb-sm-0">
					<input type="text" name="name" class="form-control" id="name" placeholder="이름" required autofocus>
				</div>
			</div>
		</div>
	</div>
<div class="row">
	<div class="col-md-10 inputbb">
		<div class="form-group">
			<div class="input-group mb-2-mr-sm-2mb-sm-0">
				<input type="email" name="email" class="form-control" id="email" placeholder="이메일" required>
			</div>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-md-10 inputbb">
		<button type="submit" class="btn btn-primary btn-pull">찾기</button>
	</div>
</div>
</form>
</center>
</div>
</div>
</body>
</html>