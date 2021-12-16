<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container d-flex flex-column align-items-center">
<div>
    <!--put category drop down here where user can choose from list of categories and see items in that category-->
</div>
    <form action="/ads" method="post" class="form-inline mt-5">
        <input class="form-control mr-sm-2" name="search" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>

    <h1 class="m-2">Our current tasty offerings!</h1>

<div class="row row-cols-1 row-cols-md-3 m-5">

    <c:forEach var="ad" items="${ads}">
        <div class="card p-2">
            <img src="https://loremflickr.com/640/360" class="card-img-top" alt="Placeholder image">
            <div class="card-body">
                <h2 class="card-title">${ad.title}</h2>
                <p class="card-text">${ad.description}</p>
                <form action="/ad" method="get" class="d-md-flex justify-content-md-end align-items-end">
                    <button class="btn btn-outline-dark">Click for Details</button>
                    <input type="hidden" name="ad" value="${ad.id}">
                </form>
            </div>
        </div>
    </c:forEach>
</div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp" />
</body>
</html>