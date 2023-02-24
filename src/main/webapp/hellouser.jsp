<%--
  Created by IntelliJ IDEA.
  User: eugen
  Date: 24.02.2023
  Time: 19:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello User</title>
</head>
<body>
  <jsp:useBean id="user" scope="request" type="com.example.demoweb24002.data.User"/>
  <h1>Hello, ${user.name}</h1>
  <h2>Your age = ${user.age}</h2>
</body>
</html>
