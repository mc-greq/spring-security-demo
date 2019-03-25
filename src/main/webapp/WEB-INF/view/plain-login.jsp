<%--
  Created by IntelliJ IDEA.
  User: Greg
  Date: 25.03.2019
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Custom Login Page</title>

    <style>
        .failed{
            color:red;
        }
    </style>
</head>
<body>
<h3>My Custom Login Page</h3>
    <form:form action="${pageContext.request.contextPath}/authenticateTheUser"
        method="post">
        <c:if test="${param.error != null}">
            <i class="failed">Sorry! Invalid credentials!</i>
        </c:if>

        <p>
            User name: <input type="text" name="username"/>
        </p>

        <p>
            Password: <input type="password" name="password"/>
        </p>

        <input type="submit" value="Login"/>
    </form:form>
</body>

</html>
