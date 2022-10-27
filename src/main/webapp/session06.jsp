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
<h3>----- 세션 유효 시간 변경 전 -----</h3>
<%
  int time = session.getMaxInactiveInterval() / 60; // 기본설정이 `초`단위라서 분 단위로 바꿔주기위해 나누기 60
  out.println("세션 유효 시간 : " + time + "분<br>");
%>
<br>
<h3>----- 세션 유효 시간 변경 후 -----</h3>
<%
  session.setMaxInactiveInterval(24 * 60 * 60); // 1분이 60초니까 60 * 60은 1시간, 거기에 (* 24)는 하루가 됨
  time = session.getMaxInactiveInterval() / 60;
  out.println("세션 유효 시간 : " + time + "분<br>");
%>
</body>
</html>
