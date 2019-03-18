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
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/all.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bulma.css">
</head>
<body>
<section class="hero is-light is-bold is-small">
    <div class="hero-body">
        <div class="container">
            <h1 class="title">
                CRM - Customer Relationship Manager
            </h1>
        </div>
    </div>
</section>

<section class="section">
    <div class="container">
        <div class="columns">
            <div class="column is-6 is-offset-3">
                <div class="panel">
                    <h2 class="panel-heading">Edit Customer</h2>
                    <div class="panel-block">
                        <form:form method="post" modelAttribute="customer" action="${customer.id}" >
                            <div class="field">
                                <form:label path="firstName" class="label">First name</form:label>
                                <div class="control">
                                    <form:input path="firstName" class="input" size="45"></form:input>
                                </div>
                            </div>
                            <div class="field">
                                <form:label path="lastName" class="label">Last name</form:label>
                                <div class="control">
                                    <form:input path="lastName" class="input" size="45"></form:input>
                                </div>
                            </div>
                            <div class="field">
                                <form:label type="email"    path="email" class="label">Email</form:label>
                                <div class="control has-icons-left">
                                    <form:input path="email" class="input" size="45"/>
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
                    </div>
                    <div class="panel-tabs">
                        <a href="${pageContext.request.contextPath}/customers">customer list</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
