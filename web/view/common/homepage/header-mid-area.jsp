<%-- 
    Document   : header-mid-area
    Created on : Feb 18, 2025, 11:50:20 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="header-mid-area ptb-40">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-5 col-12">
                <div class="header-search">
                    <form action="home" method="GET">
                        <input type="hidden" name="search" value="searchByName" />
                        <input type="text" placeholder="Search entire store here..." name="keyword"/>
                        <a href="#" onclick="return this.closest('form').submit()"><i class="fa fa-search"></i></a>
                    </form>
                </div>
            </div>
            <div class="col-lg-6 col-md-4 col-12">
                <div class="logo-area text-center logo-xs-mrg">
                    <a href="${pageContext.request.contextPath}/home"><img src="${pageContext.request.contextPath}/img/logo/logoo2.png" alt="logo" /></a>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-12">
                <div class="my-cart">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/payment"><i class="fa fa-shopping-cart"></i>My Cart</a>
                            
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
