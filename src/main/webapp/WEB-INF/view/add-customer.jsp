<%--
  Created by IntelliJ IDEA.
  User: robert
  Date: 17/03/19
  Time: 06:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add Customer</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/all.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bulma.css">
</head>
<body>
<section class="hero is-light is-bold">
    <div class="hero-body">
        <div class="container">
            <h1 class="title">
                CRM - Customer Relationship Manager
            </h1>
        </div>
    </div>
</section>

<section class="section">
    <div class="content">
        <h2 class="title is-4">Add Customer</h2>
        <form:form method="post" modelAttribute="customer" action="add">
            <div class="field">
                <form:label path="firstName" class="label">First name</form:label>
                <div class="control">
                    <form:input path="firstName" class="input"></form:input>
                </div>
            </div>
            <div class="field">
                <form:label path="lastName" class="label">Last name</form:label>
                <div class="control">
                    <form:input path="lastName" class="input"></form:input>
                </div>
            </div>
            <div class="field">
                <form:label path="email" class="label">Email</form:label>
                <div class="control">
                    <form:input path="email" class="input has-icons-left"/>
                        <span class="icon is-small is-left">
                            <i class="fas fa-envelope"></i>
                        </span>

                </div>
            </div>
            <div class="field">
                <div class="control">
                    <form:button class="button is-primary">Submit</form:button>
                </div>
            </div>
        </form:form>

        <div>
            <p><a href="${pageContext.request.contextPath}/customer/list" class="button is-link">Back to list</a></p>
        </div>
    </div>
</section>
</body>
</html>
