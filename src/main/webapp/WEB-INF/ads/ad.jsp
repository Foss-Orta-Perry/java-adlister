<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <jsp:param name="title" value="Single Ad"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<a href="/ads" class="m-3 btn btn-info">View All Products</a>
<div class="container">
<div class="h-25 d-flex mx-auto justify-content-center align-items-center"><h1>Product Details</h1></div>
<div class="card m-3 mx-auto border-light">
    <div class="row g-0">
        <div class="col-md-4 product-img card"></div>
        <div class="col-md-8">
            <div class="card-body">
                <h1 class="card-title">${ad.title}</h1>
                <p class="card-text">${ad.description}</p>
                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. A asperiores at eius
                    ipsam, porro quae. Delectus iste nam obcaecati sunt.</p>
                <h4>$${ad.price}</h4>
                <div class="row justify-content-end">

                    <c:choose>
                        <c:when test="${user == null}"> <!--when ad.ven_id equals vendor.id-->
                            <p><em>Please <a href="/login">sign in</a> or <a href="/register">register</a> for an account</em></p>
                        </c:when>
                        <c:otherwise>
                            <form action="/addToCart" method="post">
                                <button type="submit" class="btn btn-info btn-sm m-2" data-toggle="tooltip"
                                        data-placement="bottom"
                                        title="Add to Cart"><i class="fas fa-cart-plus fa-2x"></i></button>
                                <input type="hidden" name="ad" value="${ad.id}">
                            </form>

                            <form action="/addToFavs" method="post">
                                <button type="submit" class="btn btn-info btn-sm m-2" data-toggle="tooltip"
                                        data-placement="bottom"
                                        title="Add to Favorites"><i class="far fa-star fa-2x"></i></button>
                                <input type="hidden" name="ad" value="${ad.id}">
                            </form>

                            <a href="/edit/${ad.id}" class="btn btn-secondary">
                                <button type="submit" class="btn btn-secondary m-2" data-toggle="tooltip"
                                        data-placement="bottom"
                                        title="Edit">Edit</button>
                                <input type="hidden" name="ad" value="${ad.id}">
                            </a>

                            <a href="/delete/${ad.id}" class="btn btn-danger">
                                <button type="submit" class="btn btn-danger m-2" data-toggle="tooltip"
                                        data-placement="bottom"
                                        title="Delete">Delete</button>
                                <input type="hidden" name="ad" value="${ad.id}">
                            </a>

<%--                            <a href="/delete/${ad.id}" class="btn btn-danger">Delete</a>--%>
<%--                            <a href="/edit/${ad.id}" class="btn btn-secondary">Edit</a>--%>
                        </c:otherwise>
                    </c:choose>

                </div>
                <p class="card-text"><small class="text-muted">Last updated 7 hours ago</small></p>
            </div>
        </div>
    </div>
</div>
<div class="h-25"><!--for aesthetics, delete later--></div>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
</body>
</html>