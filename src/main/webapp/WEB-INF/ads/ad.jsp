<%--
  Created by IntelliJ IDEA.
  User: rodriquesperry
  Date: 12/10/21
  Time: 10:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Single Ad" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
    <h1>${ad.title}</h1>
    <p>${ad.description}</p>
    <p>$${ad.price}</p>
    <jsp:include page="/WEB-INF/partials/footer.jsp" />
</body>
</html>