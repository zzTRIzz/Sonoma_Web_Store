<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Route Params</title>
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <link href="../../css/styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.8/css/dataTables.bootstrap5.css">

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
    <script src="https://code.angularjs.org/1.8.2/angular-route.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.datatables.net/2.0.8/js/dataTables.js"></script>
    <script src="https://cdn.datatables.net/2.0.8/js/dataTables.bootstrap5.js"></script>
</head>

<body>

<div class="d-flex" id="wrapper">
    <%@include file="../theme/navbar.jsp"%>

    <div id="page-content-wrapper">
        <%@include file="../theme/account.jsp"%>

        <form action="/asm/admin/khachhang" method="get" class="mb-3 mt-3 container">
            <input type="text" class="form-control" placeholder="Tìm kiếm " aria-describedby="basic-addon1" name="search">
            <button type="submit" class="btn btn-primary mb-3 mt-3">Tìm kiếm</button>
            <a href="/asm/admin/khachhang/add" class="btn btn-primary">Thêm khách hàng</a>
        </form>

        <div class="mt-4 mb-kiếm5 mx-4" id="content">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Tên</th>
                    <th scope="col">Số điện thoại</th>
                    <th scope="col">Mã khách hàng</th>
                    <th scope="col">Trạng thái</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                <c:if test="${empty danhSachKhachHang}">
                    <tr>
                        <td colspan="6" class="text-center">Không có khách hàng nào được tìm thấy.</td>
                    </tr>
                </c:if>
                <c:forEach items="${danhSachKhachHang}" var="kh">
                    <tr>
                        <td>${kh.id}</td>
                        <td>${kh.ten}</td>
                        <td>${kh.sdt}</td>
                        <td>${kh.maKh}</td>
                        <td>
                            <span class="${kh.trangThai ? 'badge bg-primary' : 'badge bg-secondary'}">
                                    ${kh.trangThai ? "Vip" : "Thường"}
                            </span>
                        <td>
                            <a href="/asm/admin/khachhang/update/${kh.id}" class="btn btn-outline-success" style="padding: 0.2rem 0.5rem; font-size: 0.75rem; font-weight: bold;">Update</a>
                            <a href="/asm/admin/khachhang/delete?id=${kh.id}" class="btn btn-outline-danger" style="padding: 0.2rem 0.5rem; font-size: 0.75rem; font-weight: bold;">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <div>
                <c:if test="${totalPages > 1}">
                    <nav aria-label="Page navigation">
                        <ul class="pagination pagination-sm">
                            <!-- Nút Previous -->
                            <li class="page-item <c:if test='${currentPage == 0}'>disabled</c:if>">
                                <a class="page-link" href="/asm/admin/khachhang?page=${currentPage - 1}&search=${param.search}" aria-label="Previous" <c:if test='${currentPage == 0}'>tabindex="-1" aria-disabled="true"</c:if>">
                                &laquo; Previous
                                </a>
                            </li>

                            <!-- Các trang -->
                            <c:forEach begin="0" end="${totalPages - 1}" var="i">
                                <li class="page-item <c:if test='${i == currentPage}'>active</c:if>">
                                    <a class="page-link" href="/asm/admin/khachhang?page=${i}&search=${param.search}">
                                            ${i + 1}
                                    </a>
                                </li>
                            </c:forEach>

                            <!-- Nút Next -->
                            <li class="page-item <c:if test='${currentPage == totalPages - 1}'>disabled</c:if>">
                                <a class="page-link" href="/asm/admin/khachhang?page=${currentPage + 1}&search=${param.search}" aria-label="Next" <c:if test='${currentPage == totalPages - 1}'>tabindex="-1" aria-disabled="true"</c:if>">
                                Next &raquo;
                                </a>
                            </li>
                        </ul>
                    </nav>
                </c:if>



            </div>
        </div>
    </div>
</div>
</body>
</html>
