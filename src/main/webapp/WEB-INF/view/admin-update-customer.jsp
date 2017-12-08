<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../resources/js/scripts.js"/>
        <jsp:include page="../resources/img/admin-panel.png"/>
        <jsp:include page="../resources/img/add-user.png"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <script type="text/javascript" src="/js/scripts.js"></script>
        <title>Save Customer</title>
        <style>
            .panel {
                height: 70px;
                line-height: 50px;
                vertical-align: middle;
                background: #ffc107;
            }

            .fp-logo {
                color: #1e1e1e;
                background: #ffc107;
                border: 2px solid #1e1e1e;
                font-weight: bold;
            }

            .fp-logo:hover {
                color: #1e1e1e;
                text-decoration: none;
            }

            .panel-button img {
                height: 25px;
            }

            .main-container {
                margin-top: 50px;
            }

            .customer-table {
                word-break: break-all;
            }

            .error {
                color: red;
            }

        </style>
    </head>
    <body>


    <!-- ADMIN TOP-LINE -->
    <div class="panel panel-default">
        <div class="container">
            <div class="d-flex justify-content-end">
                <div class="mr-auto p-2"><a class="btn fp-logo" href="/admin/panel">FP</a></div>
                <div class="p-2"><c:if test="${pageContext.request.userPrincipal.name != null}">${pageContext.request.userPrincipal.name}</c:if></div>
                <div class="p-2"><a class="btn panel-button" href="/register"><img class="img-fluid" src="/img/add-user.png" alt="add user" /></a></div>
                <div class="p-2"><a class="btn panel-button" href="/customers/find/all"><img class="img-fluid" src="/img/admin-panel.png" alt="admin panel"/></a></div>
                <div class="p-2"><a class="btn panel-button" href="<c:url value="/logout" />"><img class="img-fluid" src="/img/logout.png" alt="logout"/></a></div>
            </div>
        </div>
    </div>

        <div class="container main-container">
            <h3>Save Customer</h3>
            <form:form action="/admin/customer" modelAttribute="customer" method="PUT">
                <form:hidden path="id"/>
                <table class="table customer-table">
                    <tbody>
                        <tr>
                            <td><label>First name:</label></td>
                            <td><form:input path="firstName"/></td>
                        </tr>
                        <tr>
                            <td><label>Last name:</label></td>
                            <td><form:input path="lastName"/></td>
                        </tr>
                        <tr>
                            <td><label>Pesel:</label></td>
                            <td><form:input path="pesel"/>
                                <form:errors path="pesel" cssClass="error"/>
                            </td>
                        </tr>
                        <tr>
                            <td><label>Email:</label></td>
                            <td><form:input path="email"/></td>
                            <form:errors path="email" cssClass="error"/>
                        </tr>
                        <tr>
                            <td><label>Password:</label></td>
                            <td><form:input path="password"/></td>
                        </tr>
                        <tr>
                            <td><label></label></td>
                            <td><input type="submit" value="Save" class="btn btn-warning"></td>
                        </tr>
                    </tbody>
                </table>
            </form:form>
        </div>
    </body>
</html>
