<%@ page import="java.util.Enumeration" %>
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
  String name;
  String value;

//  Enumeration 타입으로 데이터를 받을 경우 원하는 데이터 타입을 설정할 수 있음 ex) <String>
  Enumeration<String> en = session.getAttributeNames();
//  타입 미설정 시 Object 타입
//  Enumeration en = session.getAttributeNames();
  int i = 0;

  while (en.hasMoreElements()) {
    i++;
    name = en.nextElement();
    value = (String)session.getAttribute(name);

    out.println("설정된 세션의 속성 이름 : [" + i + "] : " + name + "<br>");
    out.println("설정된 세션의 속성 값 : [" + i + "] : " + value + "<br>");
  }
%>
</body>
</html>
