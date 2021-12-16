<%--
  Created by IntelliJ IDEA.
  User: kevinorta
  Date: 12/14/21
  Time: 9:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit your Ad</title>
    <jsp:include page="../partials/head.jsp"/>
</head>
<body>
<jsp:include page="../partials/navbar.jsp"/>
<div class="container">
  <form action="/edit" method="post">
      <div class="form-group">
          <label for="title"><h2>Title</h2></label>
          <textarea id="title" name="title" class="form-control" type="text">${ad.title}</textarea>
      </div>
      <div class="form-group">
          <label for="description"><h2>Description</h2></label>
          <textarea id="description" name="description" class="form-control" type="text">${ad.description}</textarea>
      </div>
      <%--      <div class="form-group">--%>
      <%--          <label for="category">Category</label>--%>
      <%--          <textarea id="category" name="category" class="form-control" type="text">${ad.category}</textarea>--%>
      <%--      </div>--%>
      <div class="form-group">
          <label for="price"><h2>Price</h2></label>
          <textarea id="price" name="price" class="form-control" type="number">${ad.price}</textarea>
      </div>
      <input type="hidden" value="${id}" name="id">
      <input type="submit" class="btn btn-block btn-primary">
  </form>
</div>

<jsp:include page="../partials/footer.jsp"/>
</body>
</html>