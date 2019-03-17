<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>List Customers</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/all.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bulma.css">
</head>
<body>
    <section class="hero is-light is-bold">
        <div class="hero-body">
            <div class="container">
                <div class="title">
                    CRM - Customer Relationship Manager
                </div>
            </div>
        </div>
    </section>
    <section class="section ">
        <div id="container">
            <h2 class="title is-4">Customers</h2>
            <a href="add" class="button is-link">Add customer</a>

            <table class="table is-striped">
                <thead>
                <tr>
                    <th>First Name</td>
                    <th>Last Name</th>
                    <th>Email</th>
                </tr>
                </thead>
                <c:forEach items="${customers}" var="customer">
                    <tr>
                        <td>${customer.firstName}</td>
                        <td>${customer.lastName}</td>
                        <td>${customer.email}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </section>
</body>
</html>