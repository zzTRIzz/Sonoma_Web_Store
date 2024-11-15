<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Admin</title>
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <link href="../../css/styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.8/css/dataTables.bootstrap5.css">

    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script src="https://cdn.datatables.net/2.0.8/js/dataTables.bootstrap5.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
<div class="d-flex" id="wrapper">
    <%@ include file="theme/navbar.jsp"%>

    <div id="page-content-wrapper">
        <%@ include file="theme/account.jsp"%>

        <div class="mt-4 mb-5 mx-4" id="content">
            <!-- Content sẽ được load ở đây -->
        </div>
    </div>
</div>
</body>
</html>






<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html lang="en">--%>

<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <title>Route Params</title>--%>
<%--    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />--%>
<%--    <!-- Core theme CSS (includes Bootstrap)-->--%>
<%--    <link href="../../css/styles.css" rel="stylesheet" />--%>
<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">--%>
<%--    <!-- thự viện datatable -->--%>
<%--    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.8/css/dataTables.bootstrap5.css">--%>


<%--    <!-- Bootstrap core JS-->--%>
<%--    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>--%>
<%--    <script src="https://code.angularjs.org/1.8.2/angular-route.min.js"></script>--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"--%>
<%--            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"--%>
<%--            crossorigin="anonymous"></script>--%>

<%--    <!-- thự viện datatable -->--%>
<%--    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>--%>
<%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>--%>
<%--    <script src="https://cdn.datatables.net/2.0.8/js/dataTables.js"></script>--%>
<%--    <script src="https://cdn.datatables.net/2.0.8/js/dataTables.bootstrap5.js"></script>--%>
<%--    <!-- Core theme JS-->--%>
<%--</head>--%>

<%--<body>--%>

<%--<div class="d-flex" id="wrapper">--%>
<%--    <!-- Sidebar-->--%>
<%--    <div class="border-end bg-white" id="sidebar-wrapper">--%>
<%--        <div class="sidebar-heading border-bottom bg-light">Quản lý của Admin</div>--%>
<%--        <div class="list-group list-group-flush">--%>
<%--            <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/asm/admin/sanpham">Sản--%>
<%--                phẩm</a>--%>
<%--            <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/asm/admin/khachhang">Khách hàng</a>--%>
<%--            <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/asm/admin/hoadon">Hóa đơn</a>--%>
<%--            <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/asm/admin/nhanvien">Nhân viên</a>--%>
<%--            <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/asm/index">Quay về trang chủ</a>--%>

<%--        </div>--%>
<%--    </div>--%>

<%--    <div id="page-content-wrapper">--%>
<%--        <!-- Top navigation-->--%>
<%--        <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">--%>
<%--            <div class="container-fluid">--%>
<%--                <button class="btn btn-light" id="sidebarToggle"><i class="fa-solid fa-bars"></i></button>--%>
<%--                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"--%>
<%--                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"--%>
<%--                        aria-expanded="false" aria-label="Toggle navigation"><span--%>
<%--                        class="navbar-toggler-icon"></span></button>--%>
<%--                <div class="collapse navbar-collapse" id="navbarSupportedContent">--%>
<%--                    <ul class="navbar-nav ms-auto mt-2 mt-lg-0">--%>
<%--                        <li class="nav-item"><a class="nav-link" href="#!">Quay về trang chủ</a></li>--%>
<%--                        <li class="nav-item dropdown">--%>
<%--                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button"--%>
<%--                               data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">${tenNguoiDung} (Admin)</a>--%>
<%--                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">--%>
<%--                                <a class="dropdown-item" href="#!">Action</a>--%>
<%--                                <a class="dropdown-item" href="#!">Another action</a>--%>
<%--                                <div class="dropdown-divider"></div>--%>
<%--                                <a class="dropdown-item" href="#!">Đăng xuất</a>--%>
<%--                            </div>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </nav>--%>

<%--        <!-- Page content-->--%>
<%--        <div class="mt-4 mb-5 mx-4" id="content">--%>

<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>


