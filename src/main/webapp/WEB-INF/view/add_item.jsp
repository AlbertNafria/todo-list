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
<div align="center">
    <form:form method="POST" modelAttribute="${AttributeNames.TODO_ITEM}">

    </form:form>
</div>

</body>
</html>
