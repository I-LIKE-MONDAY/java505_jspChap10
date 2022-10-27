<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>세션 사용하기</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%
  request.setCharacterEncoding("UTF-8");
  String userName = request.getParameter("userName");
  String userEmail = request.getParameter("userEmail");
  String userPhone = request.getParameter("userPhone");

  session.setAttribute("userName", userName);
  session.setAttribute("userEmail", userEmail);
  session.setAttribute("userPhone", userPhone);

  session.setMaxInactiveInterval(5); // 5초

  response.sendRedirect("session07_result.jsp"); // 해당 페이지로 강제로 이동시킴
%>
</body>
</html>
