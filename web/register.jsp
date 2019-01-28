<%--
  Created by IntelliJ IDEA.
  User: ander
  Date: 1/27/2019
  Time: 6:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="" method="post">
    Enter Name: <input type="text" name="fname"><br>
    Enter Age: <input type="number" name="age"><br>
    Enter Email: <input type="text" name="email"><br>
    Enter Password: <input type="password" name="password"><br>
    Gender: <input type="radio" name="gender" value="female">Female
    &nbsp;&nbsp;&nbsp;&nbsp;
    <input type="radio" name="gender" value="male">Male<br>
    Hobbies: <input type="checkbox" name="hobby" value="reading">Reading
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="checkbox" name="hobby" value="browsing">Browsing
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="checkbox" name="hobby" value="gaming">Gaming
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="checkbox" name="hobby" value="cooking">Cooking<br>
    Country: <select name="country">
    <option value="select">Select Country</option>
    <option value="INDIA">INDIA</option>
    <option value="USA">USA</option>
    <option value="Others">Others</option>
</select><br><br>
    <input type="submit" name="register" value="Register Details">
</form>

<%
    if (request.getParameter("register") != null) {%>
        <jsp:useBean id="user" class="com.to.User" scope="request"></jsp:useBean>
        <jsp:setProperty name="user" property="*"/>
        <jsp:forward page="RegisterServlet"/>
<%
    }
%>
</body>
</html>
