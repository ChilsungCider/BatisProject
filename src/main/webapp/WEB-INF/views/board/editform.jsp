<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Edit</title>
</head>
<body>
<h1>Edit Form</h1>

<form:form modelAttribute="u" method="post" action="../editok">
  <form:hidden path="seq"/>
<table>
  <tr><td>Title:</td><td><form:input path="title"/></td></tr>
  <tr><td>Category:</td><td><form:input path="category"/></td></tr>
  <tr><td>Writer:</td><td><form:input path="writer"/></td></tr>
  <tr><td>Content:</td><td><form:textarea cols="50" rows="5" path="content"/></td></tr><br>
  <tr><td colspan="2"><input type="submit" value="Edit Post"/></td></tr>
  <tr><td><input type="button" value="Cancel" onclick="history.back()"/>
</form:form>
</body>
</html>
