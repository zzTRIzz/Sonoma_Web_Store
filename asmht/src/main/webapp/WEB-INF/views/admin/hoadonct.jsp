<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Nhân Viên</title>
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <link href="../../../css/styles.css" rel="stylesheet" />
    <script src="../../../js/bootstrap.bundle.js"></script>
    <script src="../../../js/bootstrap.min.js"></script>
    <script src="../../../js/bootstrap.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.8/css/dataTables.bootstrap5.css">
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script src="https://cdn.datatables.net/2.0.8/js/dataTables.bootstrap5.js"></script>
</head>


<body>
<div class="d-flex" id="wrapper">
    <%@include file="../theme/navbar.jsp"%>
    <div id="page-content-wrapper">
        <%@include file="../theme/account.jsp"%>




        <form action="/asm/admin/hoadon" method="get" class="mb-3 mt-3 container">
            <input type="text" class="form-control" placeholder="Tìm kiếm" aria-describedby="basic-addon1" name="search">
            <button type="submit" class="btn btn-primary mb-3 mt-3">Tìm kiếm</button>
            <a href="/asm/admin/hoadonct/add" class="btn btn-primary">Thêm hóa đơn chi tiet</a>
        </form>

        <div class="mt-4 mb-5 mx-4" id="tent">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Id spct</th>
                    <th scope="col">Id hoa don</th>
                    <th scope="col">Số lượng </th>
                    <th scope="col">Giá </th>
                    <th scope="col">Trạng thái</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                <c:if test="${empty danhSachHoaDonCt}">
                    <tr>
                        <td colspan="7" class="text-center">Không có dữ liệu nào được tìm thấy.</td>
                    </tr>
                </c:if>
                <c:forEach items="${danhSachHoaDonCt}" var="nv">
                    <tr>
                        <td>${nv.id}</td>
                        <td>${nv.sanPhamCtByIdSpct.id}</td>
                        <td>${nv.hoaDonByIdHoaDon.id}</td>
                        <td>${nv.soLuong}</td>
                        <td>${nv.gia}</td>
                        <td>
                            <span class="${nv.trangThai ? 'badge bg-primary' : 'badge bg-secondary'}">
                                    ${nv.trangThai ? 'Kích hoạt' : 'Chưa kích hoạt'}
                            </span>
                        </td>
                        <td>
                            <a href="/asm/admin/hoadonct/update/${nv.id}" class="btn btn-outline-success" style="padding: 0.2rem 0.5rem; font-size: 0.75rem; font-weight: bold;">Cập nhật</a>
                            <a href="/asm/admin/hoadonct/delete?id=${nv.id}" class="btn btn-danger" style="padding: 0.2rem 0.5rem; font-size: 0.75rem; font-weight: bold;">Xóa</a>
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
                    <a class="page-link" href="/asm/admin/hoadonct?page=${currentPage - 1}&search=${param.search}" aria-label="Previous" <c:if test='${currentPage == 0}'>tabindex="-1" aria-disabled="true"</c:if>">
                    &laquo; Previous
                    </a>
                </li>

                <!-- Các trang -->
                <c:forEach begin="0" end="${totalPages - 1}" var="i">
                    <li class="page-item <c:if test='${i == currentPage}'>active</c:if>">
                        <a class="page-link" href="/asm/admin/hoadonct?page=${i}&search=${param.search}">
                                ${i + 1}
                        </a>
                    </li>
                </c:forEach>

                <!-- Nút Next -->
                <li class="page-item <c:if test='${currentPage == totalPages - 1}'>disabled</c:if>">
                    <a class="page-link" href="/asm/admin/hoadonct?page=${currentPage + 1}&search=${param.search}" aria-label="Next" <c:if test='${currentPage == totalPages - 1}'>tabindex="-1" aria-disabled="true"</c:if>">
                    Next &raquo;
                    </a>
                </li>
            </ul>
        </nav>
    </c:if>


            </div>
        </div>

    </div>





</body>
</html>
