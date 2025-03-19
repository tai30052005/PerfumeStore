<%-- 
    Document   : home
    Created on : Feb 18, 2025, 10:57:13 PM
    Author     : PC
--%>
<%@taglib   prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Minh Tai's Studio Admin</title>

        <!-- Custom fonts for this template-->
        <link href="${pageContext.request.contextPath}/js/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Page level plugin CSS-->
        <link href="${pageContext.request.contextPath}/js/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="${pageContext.request.contextPath}/css/sb-admin.css" rel="stylesheet">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/colReorder-bootstrap4.css">

        <style>
            .error{
                color:red;
            }
        </style>

    </head>

    <body id="page-top">

        <jsp:include page="../../common/user/navbar.jsp"></jsp:include>

            <div id="wrapper">

                <!-- Sidebar -->
            <jsp:include page="../../common/user/slidebar.jsp"></jsp:include>

                <div id="content-wrapper">

                    <div class="container-fluid">

                        <!-- Breadcrumbs-->
                    <jsp:include page="../../common/user/breadcrumbs.jsp"></jsp:include>

                        <!-- Icon Cards-->
                    <%--<jsp:include page="../common/admin/iconcard.jsp"></jsp:include>--%>

                    <!--                         Area Chart Example
                                            <div class="card mb-3">
                                                <div class="card-header">
                                                    <i class="fas fa-chart-area"></i>
                                                    Area Chart Example
                                                </div>
                                                <div class="card-body">
                                                    <canvas id="myAreaChart" width="100%" height="30"></canvas>
                                                </div>
                                                <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                                            </div>-->

                    <!-- DataTables Example -->
                        <div class="card mb-3">
                            <div class="card-header">
                                <i class="fas fa-table"></i>
                                Data Table Example
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>Name</th>
                                                <th>Position</th>
                                                <th>Office</th>
                                                <th>Age</th>
                                                <th>Start date</th>
                                                <th>Salary</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Tiger Nixon</td>
                                                <td>System Architect</td>
                                                <td>Edinburgh</td>
                                                <td>61</td>
                                                <td>2011/04/25</td>
                                                <td>$320,800</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                        </div>

                    </div>
                <!-- /.container-fluid -->

                <!-- Sticky Footer -->
                <jsp:include page="../../common/user/footer.jsp"></jsp:include>

                </div>
                <!-- /.content-wrapper -->

            </div>
            <!-- /#wrapper -->

            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top">
                <i class="fas fa-angle-up"></i>
            </a>

            <!-- Logout Modal-->
        <jsp:include page="../../common/user/logoutModal.jsp"></jsp:include>


            <!-- Bootstrap core JavaScript-->
            <script src="${pageContext.request.contextPath}/js/vendor/jquery/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="${pageContext.request.contextPath}/js/vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Page level plugin JavaScript-->
        <script src="${pageContext.request.contextPath}/js/vendor/chart.js/Chart.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/vendor/datatables/jquery.dataTables.js"></script>
        <script src="${pageContext.request.contextPath}/js/vendor/datatables/dataTables.bootstrap4.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="${pageContext.request.contextPath}/js/sb-admin.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/colReorder-bootstrap4-min.js"></script>
        <script src="${pageContext.request.contextPath}/js/colReorder-dataTables-min.js"></script>

        <!-- Demo scripts for this page-->
        <script src="${pageContext.request.contextPath}/js/demo/datatables-demo.js"></script>
        <script src="${pageContext.request.contextPath}/js/demo/chart-area-demo.js"></script>
        <script src="${pageContext.request.contextPath}/js/colReorder-dataTables-min.js"></script>
        <script src="${pageContext.request.contextPath}/js/colReorder-bootstrap4-min.js"></script>


    </body>

</html>