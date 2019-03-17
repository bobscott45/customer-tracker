<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>List Customers</title>
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
        <h2 class="title">Customers</h2>
        <a href="add" class="button is-light">Add customer</a>
        <div id="container">
            <table class="table is-striped">
                <thead>
                <tr>
                    <th>First Name</td>
                    <th>Last Name</th>
                    <th>email</th>
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