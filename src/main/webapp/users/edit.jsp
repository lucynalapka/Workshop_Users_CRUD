<%--
  Created by IntelliJ IDEA.
  User: cyluna
  Date: 01.10.2022
  Time: 18:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/header.jsp" %>
<div>
    <h2>Edycja użytkownika</h2>
</div>
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
    <a href="<c:url value="/user/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
        <i class="fas fa-download fa-sm text-white-50"></i> Lista użytkowników</a>
</div>
<div>
    <form method="post">
        <input type="hidden" name="id" value="${user.id}"/>
        <div class="form-group">
            <label for="name">Nazwa</label>
            <input value="${user.name}" name="name" type="text" class="form-control" id="name"
                   placeholder="Nazwa użytkownika">
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input value="${user.email}" name="email" type="email" class="form-control" id="email"
                   placeholder="Email użytkownika">
        </div>
        <div class="form-group">
            <label for="password">Hasło</label>
            <input value="${user.password}" name="password" type="password" class="form-control" id="password"
                   placeholder="Hasło użytkownika">
        </div>
        <button type="submit" class="btn btn-primary">Edytuj</button>

    </form>

</div>

<%@ include file="/footer.jsp" %>