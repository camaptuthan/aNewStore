<%-- 
    Document   : headerComponent
    Created on : Jun 13, 2021, 9:53:33 AM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="home">PVA's Store</a>
        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav m-auto">
                <c:choose>
                    <c:when test="${sessionScope.user != null}">
                        <li class="nav-item">
                            <a class="nav-link">${sessionScope.user.username}</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item">
                            <a class="nav-link" href="login">Login</a>
                        </li>
                    </c:otherwise>
                </c:choose>

                <c:if test="${sessionScope.user.id == 1}">
                    <li class="nav-item">
                        <a class="nav-link" href="manager">Manage Product</a>
                    </li>
                </c:if>

                <li class="nav-item">
                    <a class="nav-link" href="logout">Logout</a>
                </li>
            </ul>

            <form action="search" method="GET" class="form-inline my-2 my-lg-0">
                <div class="input-group input-group-sm">
                    <input name="keyword" type="text" class="form-control" aria-label="Small" placeholder="Search..." value="${keyword}">
                    <div class="input-group-append">
                        <button type="submit" class="btn btn-secondary btn-number">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>
                <a class="btn btn-success btn-sm ml-3" href="cart">
                    <i class="fa fa-shopping-cart"></i> Cart
                    <span class="badge badge-light">${sessionScope.listCart.size()}</span>
                </a>
            </form>
        </div>
    </div>
</nav>
