<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
   <h1><%= "Hello World!" %></h1>
   <br/>
   <a href="hello-servlet">Hello Servlet</a>
   <form method="post" action="hello-user">
      <label for="username">Name:</label>
      <input id="username" type="text" name="username">
      <label for="userage">Age:</label>
      <input id="userage" type="number" name="userage">
      <input type="submit" value="Ok">
   </form>
</body>
</html>