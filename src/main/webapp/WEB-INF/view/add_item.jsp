<%--
  Created by IntelliJ IDEA.
  User: alber
  Date: 03/04/2023
  Time: 23:37
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="dev.albertnafria.util.AttributeNames" %>
<html>
<head>
    <title>Add Items</title>
</head>
<body>
<div text-align="center">
    <form:form method="POST" modelAttribute="${AttributeNames.TODO_ITEM}">
        <table>
            <tr>
                <td><label>ID</label></td>
                <td>
                    <form:input path="id" disabled="true"/>
                </td>
            </tr>
            <tr>
                <td><label>Title</label></td>
                <td><form:input path="title"/></td>
            </tr>
            <tr>
                <td><label>Deadline</label></td>
                <td><form:input path="deadline"/></td>
            </tr>
            <tr>
                <td><label>Details</label></td>
                <td><form:input path="details"/></td>
            </tr>
            <tr>
                <td><input type="submit" value="Submit"/></td>
            </tr>
        </table>

    </form:form>
</div>

</body>
</html>
