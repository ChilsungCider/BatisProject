<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Board List</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        #list tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #list tr:hover {
            background-color: #ddd;
        }

        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
        h1 {
            text-align: center;
        }
        button {
            float: right;
            height: 30px;
        }
    </style>
    <script>
        function delete_ok(id) {
            var a = confirm("정말로 삭제하겠습니까?");
            if (a) location.href = 'deleteok/' + id;
        }
    </script>
</head>
<body>
<h1>자유게시판</h1>
<h3>${login.username}님 안녕하세요!</h3>

<table id="list" width="90%">
    <tr>
        <th>Seq</th>
        <th>Title</th>
        <th>Category</th>
        <th>Writer</th>
        <th>Content</th>
        <th>Regdate</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.seq}</td>
            <td>${u.getTitle()}</td>
            <td>${u.getCategory()}</td>
            <td>${u.getWriter()}</td>
            <td>${u.getContent()}</td>
            <td>${u.getRegdate()}</td>
            <td><a href="editform/${u.getSeq()}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.getSeq()}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/>
<button type = "button" id="button1" onclick="location.href='add'"><U>Add New Post</U></button>
<button type = "button" id="button2" onclick="location.href='../login/logout'"><U>Logout</U></button><br>
</body>
</html>