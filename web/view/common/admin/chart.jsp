<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%
    // Khởi tạo các biến để lưu dữ liệu
    List<String> categories = new ArrayList<>();
    List<Integer> productCounts = new ArrayList<>();

    // Kết nối cơ sở dữ liệu SQL Server và lấy dữ liệu
    try {
        // Load driver SQL Server
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

        // Kết nối đến cơ sở dữ liệu
        String connectionUrl = "jdbc:sqlserver://localhost:1433;databaseName=PRJ301;user=sa;password=123;";
        Connection conn = DriverManager.getConnection(connectionUrl);

        // Truy vấn để lấy số lượng sản phẩm theo từng category
        String query = "SELECT c.name, COUNT(p.id) AS product_count " +
                       "FROM Product p " +
                       "JOIN Category c ON p.categoryId = c.id " +
                       "GROUP BY c.name";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(query);

        // Lưu dữ liệu vào danh sách
        while (rs.next()) {
            categories.add(rs.getString("name"));
            productCounts.add(rs.getInt("product_count"));
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
    <title>Pie Chart - Product Count by Category</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #f8f9fa;
        }
        .card {
            margin-top: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .card-header {
            background-color: #007bff;
            color: white;
            font-weight: bold;
        }
        .chart-container {
            width: 60%;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card">
            <div class="card-header text-center">
                <h4>Product Distribution by Category</h4>
            </div>
            <div class="card-body">
                <div class="chart-container">
                    <canvas id="myPieChart"></canvas>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Chuyển dữ liệu từ JSP sang JavaScript
        var categories = [];
        var productCounts = [];

        <%
            for (int i = 0; i < categories.size(); i++) {
                out.println("categories.push('" + categories.get(i) + "');");
                out.println("productCounts.push(" + productCounts.get(i) + ");");
            }
        %>

        // Tạo biểu đồ tròn
        var ctx = document.getElementById('myPieChart').getContext('2d');
        var myPieChart = new Chart(ctx, {
            type: 'pie',
            data: {
                labels: categories,
                datasets: [{
                    label: 'Number of Products',
                    data: productCounts,
                    backgroundColor: [
                        'rgba(255, 99, 132, 0.6)',
                        'rgba(54, 162, 235, 0.6)',
                        'rgba(255, 206, 86, 0.6)',
                        'rgba(75, 192, 192, 0.6)',
                        'rgba(153, 102, 255, 0.6)',
                        'rgba(255, 159, 64, 0.6)'
                    ],
                    borderColor: [
                        'rgba(255, 99, 132, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)',
                        'rgba(75, 192, 192, 1)',
                        'rgba(153, 102, 255, 1)',
                        'rgba(255, 159, 64, 1)'
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    title: {
                        display: true,
                        text: 'Product Distribution by Category',
                        font: {
                            size: 18
                        }
                    },
                    tooltip: {
                        enabled: true,
                        callbacks: {
                            label: function(context) {
                                let label = context.label || '';
                                if (label) {
                                    label += ': ';
                                }
                                label += context.raw + ' products';
                                return label;
                            }
                        }
                    }
                }
            }
        });
    </script>

    <!-- Bootstrap JS (Optional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>