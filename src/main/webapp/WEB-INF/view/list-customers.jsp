<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>List Customers</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/all.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/buefy.min.css">
</head>
<body>
<section class="hero is-light is-bold is-small">
    <div class="hero-body">
        <div class="container">
            <div class="title">
                CRM - Customer Relationship Manager
            </div>
        </div>
    </div>
</section>
<section id="app" class="section">
    <div class="container">
        <div class="columns">
            <div class="column is-6 is-offset-3">
                <div class="panel">
                    <h2 class="panel-heading">Customers</h2>
                    <div class="panel-tabs">
                        <a href="customers/new" style="margin-left:auto">add customer</a>
                    </div>
                    <c:forEach items="${customers}" var="customer">

                        <div class="panel-block" style="display:block">
                            <div class="level">
                                <div class="level-left">
                                    <div class="level-item">${customer.name}</div>
                                </div>
                                <div class="level-right">
                                    <div class="level-item"><a href="#"><i class="fas fa-trash-alt" v-on:click="confirm($event, ${customer.id}, '${customer.name}')"></i></a></div>
                                    <div class="level-item"><a href="customers/${customer.id}" ><i class="fas fa-edit"></i></a></div>
                                </div>
                            </div>

                        </div>
                    </c:forEach>

                </div>

            </div>

        </div>
    </div>
</section>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/buefy.min.js"></script>

<script>
    new Vue({
        el: '#app',
        methods: {
            confirm: function(e, id, name) {
                this.$dialog.confirm({
                    message:'Delete '  + name +' ?',
                    onConfirm: function() { window.location='customers/' + id + '/del' }
                })
            }
        }
    });

</script>

</body>
</html>