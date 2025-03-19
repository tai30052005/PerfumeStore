<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%
    // Khởi tạo danh sách để lưu dữ liệu người dùng
    List<Map<String, String>> users = new ArrayList<>();

    // Kết nối cơ sở dữ liệu và lấy dữ liệu
    try {
        // Load driver MySQL (hoặc SQL Server nếu bạn dùng SQL Server)
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Kết nối đến cơ sở dữ liệu
        String connectionUrl = "jdbc:mysql://localhost:3306/PRJ301?user=sa&password=123";
        Connection conn = DriverManager.getConnection(connectionUrl);

        // Truy vấn để lấy dữ liệu từ bảng Account
        String query = "SELECT id, username, password, roleId FROM Account";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(query);

        // Lưu dữ liệu vào danh sách
        while (rs.next()) {
            Map<String, String> user = new HashMap<>();
            user.put("id", rs.getString("id"));
            user.put("username", rs.getString("username"));
            user.put("password", rs.getString("password"));
            user.put("roleId", rs.getString("roleId"));
            users.add(user);
        }

        // Đóng kết nối
        rs.close();
        stmt.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Quản Lý Người Dùng</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            padding: 20px;
        }
        .action-buttons {
            display: flex;
            gap: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center">Quản Lý Người Dùng</h1>
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Username</th>
                    <th>Password</th>
                    <th>Role ID</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (Map<String, String> user : users) {
                        String id = user.get("id");
                        String username = user.get("username");
                        String password = user.get("password");
                        String roleId = user.get("roleId");
                %>
                <tr>
                    <td><%= id %></td>
                    <td><%= username %></td>
                    <td><%= password %></td>
                    <td><%= roleId %></td>
                    <td class="action-buttons">
                        <!-- Nút Delete -->
                        <a href="deleteUser.jsp?id=<%= id %>" class="btn btn-danger" onclick="return confirm('Bạn có chắc chắn muốn xóa người dùng này?');">Delete</a>
                    </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>

    <!-- Bootstrap JS (Optional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>