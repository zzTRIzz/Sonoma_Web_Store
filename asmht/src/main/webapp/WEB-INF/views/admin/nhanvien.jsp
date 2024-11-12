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




        <form action="/asm/admin/nhanvien" method="get" class="mb-3 mt-3 container">
            <input type="text" class="form-control" placeholder="Tìm kiếm nhân viên" aria-describedby="basic-addon1" name="search">
            <button type="submit" class="btn btn-primary mb-3 mt-3">Tìm kiếm</button>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                Thêm nhân viên
            </button>
        </form>

        <div class="mt-4 mb-5 mx-4" id="content">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Tên</th>
                    <th scope="col">Mã Nhân Viên</th>
                    <th scope="col">Tên Đăng Nhập</th>
                    <th scope="col">Mật Khẩu</th>
                    <th scope="col">Trạng thái</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                <c:if test="${empty danhSachNhanVien}">
                    <tr>
                        <td colspan="7" class="text-center">Không có nhân viên nào được tìm thấy.</td>
                    </tr>
                </c:if>
                <c:forEach items="${danhSachNhanVien}" var="nv">
                    <tr>
                        <td>${nv.id}</td>
                        <td>${nv.ten}</td>
                        <td>${nv.maNv}</td>
                        <td>${nv.tenDangNhap}</td>
                        <td>${nv.matKhau}</td>
                        <td>
                            <span class="${nv.trangThai ? 'badge bg-primary' : 'badge bg-secondary'}">
                                    ${nv.trangThai ? 'Admin' : 'Nhân viên'}
                            </span>
                        </td>
                        <td>
                            <a href="/asm/admin/nhanvien/update/${nv.id}" class="btn btn-outline-success" style="padding: 0.2rem 0.5rem; font-size: 0.75rem; font-weight: bold;">Cập nhật</a>
                            <a href="/asm/admin/nhanvien/delete?id=${nv.id}" class="btn btn-danger" style="padding: 0.2rem 0.5rem; font-size: 0.75rem; font-weight: bold;">Xóa</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <div>
<%--                <c:if test="${totalPages > 1}">--%>
<%--                    <nav aria-label="Page navigation">--%>
<%--                        <ul class="pagination pagination-sm">--%>
<%--                            <c:forEach begin="0" end="${totalPages - 1}" var="i">--%>
<%--                                <li class="page-item <c:if test='${i == currentPage}'>active</c:if>">--%>
<%--                                    <a class="page-link" href="/asm/admin/nhanvien?page=${i}&search=${param.search}" aria-label="Page ${i + 1}">--%>
<%--                                            ${i + 1}--%>
<%--                                    </a>--%>
<%--                                </li>--%>
<%--                            </c:forEach>--%>
<%--                        </ul>--%>
<%--                    </nav>--%>
<%--                </c:if>--%>

    <c:if test="${totalPages > 1}">
        <nav aria-label="Page navigation">
            <ul class="pagination pagination-sm">
                <!-- Nút Previous -->
                <li class="page-item <c:if test='${currentPage == 0}'>disabled</c:if>">
                    <a class="page-link" href="/asm/admin/nhanvien?page=${currentPage - 1}&search=${param.search}" aria-label="Previous" <c:if test='${currentPage == 0}'>tabindex="-1" aria-disabled="true"</c:if>">
                    &laquo; Previous
                    </a>
                </li>

                <!-- Các trang -->
                <c:forEach begin="0" end="${totalPages - 1}" var="i">
                    <li class="page-item <c:if test='${i == currentPage}'>active</c:if>">
                        <a class="page-link" href="/asm/admin/nhanvien?page=${i}&search=${param.search}">
                                ${i + 1}
                        </a>
                    </li>
                </c:forEach>

                <!-- Nút Next -->
                <li class="page-item <c:if test='${currentPage == totalPages - 1}'>disabled</c:if>">
                    <a class="page-link" href="/asm/admin/nhanvien?page=${currentPage + 1}&search=${param.search}" aria-label="Next" <c:if test='${currentPage == totalPages - 1}'>tabindex="-1" aria-disabled="true"</c:if>">
                    Next &raquo;
                    </a>
                </li>
            </ul>
        </nav>
    </c:if>


            </div>
        </div>

    </div>




        <!-- Modal them nhan vien -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">Thêm Nhân Viên</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="container">
                            <form:form modelAttribute="nhanVien" action="/asm/admin/nhanvien/add" method="post">
                                <div class="form-group mb-3">
                                    <label for="maNv">Mã Nhân Viên</label>
                                    <form:input path="maNv" class="form-control" />
                                    <form:errors path="maNv" cssClass="text-danger"/>
                                </div>
                                <div class="form-group mb-3">
                                    <label for="ten">Tên</label>
                                    <form:input path="ten" class="form-control" />
                                    <form:errors path="ten" cssClass="text-danger"/>
                                </div>
                                <div class="form-group mb-3">
                                    <label for="tenDangNhap">Tên Đăng Nhập</label>
                                    <form:input path="tenDangNhap" class="form-control" />
                                    <form:errors path="tenDangNhap" cssClass="text-danger"/>
                                </div>
                                <div class="form-group mb-3">
                                    <label for="matKhau">Mật Khẩu</label>
                                    <form:input path="matKhau" type="password" class="form-control" />
                                    <form:errors path="matKhau" cssClass="text-danger"/>
                                </div>
                                <div class="form-group mb-3">
                                    <label for="trangThai">Trạng Thái</label>
                                    <form:select path="trangThai" class="form-control">
                                        <form:option value="true">Admin</form:option>
                                        <form:option value="false">Nhân viên</form:option>
                                    </form:select>
                                </div>
                                <div class="mb-3">
                                    <button type="submit" class="btn btn-primary">Thêm Nhân Viên</button>
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                </div>
                            </form:form>
                        </div>
                    </div>

                </div>
            </div>
        </div>
</body>
</html>
