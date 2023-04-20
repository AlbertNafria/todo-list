<%--
  Created by IntelliJ IDEA.
  User: alber
  Date: 03/04/2023
  Time: 23:37
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Todo Items</title>
</head>
<body>
<div text-align="center">
    <table text-border="1" text-cellpadding="5">
        <caption><h2>Todo Items</h2></caption>
        <tr>
            <th>Title</th>
            <th>Deadline</th>
        </tr>
        <c:forEach var="item" items="${todoData.items}">
            <tr>
                <td><c:out value="${item.title}"/></td>
                <td><c:out value="${item.deadline}"/></td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>
