<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="bbs.BbsDB2" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", inital-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>게임의 모든것! Playwiki</title>
</head>
<body>
   <%
      String userID = null;
      if (session.getAttribute("userID") != null ){
         userID = (String) session.getAttribute("userID"); //세션의 값을 갖고옴 로그인한 사람이라면 userID변수에
         //해당 아이디가 담기고 아닌사람은 null값
      }
      if (userID == null) {
         PrintWriter script = response.getWriter();
         script.println("<script>");
         script.println("alert('로그인을 하세요.')");
         script.println("location.href = 'login.jsp'"); 
         script.println("</script>");
      }
      int bbsID = 0;
      if (request.getParameter("bbsID") != null ) {
         bbsID = Integer.parseInt(request.getParameter("bbsID"));
      }
      if (bbsID == 0) {
         PrintWriter script = response.getWriter();
         script.println("<script>");
         script.println("alert('유효하지 않은 글입니다..')");
         script.println("location.href = 'notice.jsp'"); 
         script.println("</script>");
      }
      Bbs bbs = new BbsDB2().getBbs(bbsID);
      if (!userID.equals(bbs.getUserID())) {
         PrintWriter script = response.getWriter();
         script.println("<script>");
         script.println("alert('권한이 없습니다.')");
         script.println("location.href = 'notice.jsp'"); 
         script.println("</script>");
      } else {
         if (request.getParameter("bbsTitle") == null || request.getParameter("bbsContent") == null
               || request.getParameter("bbsTitle").equals("") || request.getParameter("bbsContent").equals("")) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('입력이 안 된 사항이 있습니다.')");
            script.println("history.back()");
            script.println("</script>");
         } else {
            BbsDB2 bbsDAO = new BbsDB2();
            int result = bbsDAO.update(bbsID, request.getParameter("bbsTitle"), request.getParameter("bbsContent"));
            if (result == -1) {
               PrintWriter script = response.getWriter();
               script.println("<script>");
               script.println("alert('글 수정에 실패했습니다.')");
               script.println("history.back()");
               script.println("</script>");
            }
            else {
               PrintWriter script = response.getWriter();
               script.println("<script>");
               script.println("location.href = 'notice.jsp'");
               script.println("</script>");
            }
         }
      }
   %>
   
</body>
</html>