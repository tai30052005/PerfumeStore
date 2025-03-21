<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib   prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Quản lý Người Dùng</title>
        <style>
            table {
                border-collapse: collapse;
                width: 100%;
            }
            th, td {
                border: 1px solid black;
                padding: 8px;
                text-align: left;
            }
            th {
                background-color: #f2f2f2;
            }
        </style>
    </head>
    <body>
        <h2>Quản lý Tài Khoản Người Dùng</h2>
        <table>
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>Password</th>
                <th>Role ID</th>
                <th>Action</th>
            </tr>
            <c:forEach var="user" items="${listAccount}">
                <tr>
                    <td name="id">${user.id}</td>
                    <td name="username">${user.username}</td>
                    <td name="password">${user.password}</td>
                    <td name="roleId">${user.roleId}</td>
                    <td>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
