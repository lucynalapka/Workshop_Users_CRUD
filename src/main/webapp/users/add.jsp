<%--
  Created by IntelliJ IDEA.
  User: cyluna
  Date: 30.09.2022
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ include file="/header.jsp" %>--%>
<%--<div>--%>
<%--<h1>Dodaj użytkownika</h1>--%>
<%--</div>--%>

<%--<div>--%>
<%--<form method="post">--%>
<%--    Nazwa--%>
<%--    <input value="${user.userName}" name="userName" type="text"/>--%>

<%--    Email--%>
<%--    <input value="${user.email}" name="email" type="text"/>--%>

<%--    Hasło--%>
<%--    <input value="${user.password}" name="password" type="text"/>--%>


<%--    <input type="submit" value="Zapisz">--%>

<%--</form>--%>

<%--</div>--%>


<%--<%@ include file="/footer.jsp" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
        <a href="<c:url value="/user/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-50"></i> Lista użytkowników</a>
    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Dodaj użytkownika</h6>
        </div>
        <div class="card-body">
            <form method="post">
                <div class="form-group">
                    <label for="name">Nazwa</label>
                    <input name="name" type="text" class="form-control" id="name" placeholder="Nazwa użytkownika">
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input name="email" type="email" class="form-control" id="email" placeholder="Email użytkownika">
                </div>
                <div class="form-group">
                    <label for="password">Hasło</label>
                    <input name="password" type="password" class="form-control" id="password" placeholder="Hasło użytkownika">
                </div>

                <button type="submit" class="btn btn-primary">Zapisz</button>
            </form>

        </div>
    </div>
</div>
<%@ include file="/footer.jsp" %>

