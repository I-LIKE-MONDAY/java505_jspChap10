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
<h3>----- 세션을 삭제하기 전 -----</h3>
<%
    String userId = (String) session.getAttribute("userId");
    String userPw = (String) session.getAttribute("userPw");
    out.println("설정된 세션 이름 userId " + userId + "<br>");
    out.println("설정된 세션 값 userPw " + userPw+ "<br>");

    session.removeAttribute("userId");
%>
<br>
<h3>----- 세션을 삭제한 후 -----</h3>
<%
    userId = (String) session.getAttribute("userId");
    userPw = (String) session.getAttribute("userPw");
    out.println("설정된 세션 이름 userId : " + userId + "<br>");
    out.println("설정된 세션 값 userPw : " + userPw + "<br>");

%>
</body>
</html>
