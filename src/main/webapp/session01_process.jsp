<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%
  String userid = request.getParameter("userId");
  String userpw = request.getParameter("userPw");

  if (userid.equals("admin") && userpw.equals("1234")) {
    session.setAttribute("userId", userid);
    session.setAttribute("userPw", userpw);
    out.println("세션 설정이 성공했습니다.");
    out.println(userid + "님 환영합니다.");
  }
  else {
    out.println("세션 설정이 실패했습니다.");
  }
%>
</body>
</html>
