<%-- 
    Document   : header-top-area
    Created on : Feb 18, 2025, 11:49:11 PM
    Author     : PC
--%>
<%@taglib   prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="header-top-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-12">
            </div>
            <div class="col-lg-6 col-md-6 col-12">
                <div class="account-area text-end">
                    <ul>
                        <c:if test="${account != null}">
                            <!--Nguoi dung-->
                            <c:if test="${account.roleId == 2}">
                                <li>
                                    <a href="${pageContext.request.contextPath}/dashboard">My Account</a>
                                </li>
                            </c:if>
                            <!--Admin-->
                            <c:if test="${account.roleId == 1}">
                                <li>
                                    <a href="${pageContext.request.contextPath}/admin/dashboard">My Account</a>
                                </li>
                            </c:if>
                        </c:if>
                        <li><a href="checkout.html">Checkout</a></li>
                            <c:if test="${account == null}">
                            <li>
                                <a href="authen?action=login">Sign in</a>
                            </li>
                            <li>
                                <a href="authen?action=sign-up">Sign up</a>
                            </li>
                        </c:if>

                        <c:if test="${account != null}">
                            <li>
                                <a href="${pageContext.request.contextPath}/authen?action=log-out">Sign Out</a>
                            </li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
