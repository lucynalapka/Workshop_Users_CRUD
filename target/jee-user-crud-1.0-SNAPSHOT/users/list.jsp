<%--
  Created by IntelliJ IDEA.
  User: cyluna
  Date: 30.09.2022
  Time: 14:08
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>


<%--<%@ include file="/header.jsp" %>--%>
<%--<div>--%>
<%--    <h1 class="h3 mb-0 text-gray-800">Lista użytkowników</h1>--%>
<%--</div>--%>
<%--<div class="row">--%>

<%--                    <table class="table">--%>
<%--                        <tr>--%>
<%--                            <th>Id</th>--%>
<%--                            <th>Nazwa użytkownika</th>--%>
<%--                            <th>Email</th>--%>
<%--                            <th>Akcja</th>--%>
<%--                        </tr>--%>
<%--                        <c:forEach items="${users}" var="user">--%>
<%--                            <tr>--%>
<%--                                <td>${user.id}</td>--%>
<%--                                <td>${user.username}</td>--%>
<%--                                <td>${user.email}</td>--%>
<%--                                <td>--%>
<%--                                    <div class="row m-2">--%>
<%--                                        <a href='<c:url value="/user/list?id=${user.id}"/>' class="d-none d-inline-block btn btn-sm btn-info btn-block shadow-sm"><i class="fas fa-user fa-sm text-white-50"></i> Pokaż</a>--%>
<%--                                    </div>--%>
<%--                                    <div class="row m-2">--%>
<%--                                        <a href='<c:url value="/user/edit?id=${user.id}"/>' class="d-none d-inline-block btn btn-block btn-sm btn-secondary shadow-sm"><i class="fas fa-user-check fa-sm text-white-50"></i> Edytuj</a>--%>
<%--                                    </div>--%>
<%--                                    <div class="row m-2">--%>
<%--                                        <form class="col m-0 p-0" method="post" action="<c:url value="/user/delete"/>">--%>
<%--                                            <input type="hidden" name="id" value="${user.id}">--%>
<%--                                            <button class="d-none d-inline-block btn btn-sm btn-block btn-danger shadow-sm"><i class="fas fa-trash fa-sm text-white-50"></i> Usuń</button>--%>
<%--                                        </form>--%>
<%--                                    </div>--%>
<%--                                </td>--%>
<%--                            </tr>--%>
<%--                        </c:forEach>--%>
<%--                    </table>--%>


<%--</div>--%>


<%--<%@ include file="/footer.jsp" %>--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
        <a href="<c:url value="/user/add"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-50"></i> Dodaj użytkownika</a>
    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Lista użytkowników</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table">
                    <tr>
                        <th>Id</th>
                        <th>Nazwa użytkownika</th>
                        <th>Email</th>
                        <th>Akcja</th>
                    </tr>
                    <c:forEach items="${users}" var="user">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.name}</td>
                            <td>${user.email}</td>
                            <td>
                                <a href='<c:url value="/user/delete?id=${user.id}"/>'>Usuń</a>
                                <a href='<c:url value="/user/edit?id=${user.id}"/>'>Edit</a>
                                <a href='<c:url value="/user/show?id=${user.id}"/>'>Pokaż</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- /.container-fluid -->
<%@ include file="/footer.jsp" %>



