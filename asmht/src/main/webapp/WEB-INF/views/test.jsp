<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

<table class="table">
    <thead>
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Tên</th>
        <th scope="col">Mã Nhân Viên</th>
        <th scope="col">Tên Đăng Nhập</th>Nhập
        <th scope="col">Mật Khẩu</th>Nhập
        <th scope="col">Trạng thái</th>
        <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
    <c:if test="${empty danhSachNhanVien}">
        <tr>
            <td colspan="6" class="text-center">Không có nhân viên nào được tìm thấy.</td>
        </tr>
    </c:if>
    <c:forEach items="${danhSachNhanVien}" var="nv">
        <tr>
            <td>${nv.id}</td>
            <td>${nv.ten}</td>
            <td>${nv.maNv}</td>
            <td>${nv.tenDangNhap}</td>
            <td>${nv.matKhau}</td>
            <td>${nv.trangThai ? "Admin" : "Nhân viên"}</td>
            <td>
                <a href="/asm/admin/nhanvien/update/${nv.id}">Cập nhật</a>
                <a href="/asm/admin/nhanvien/delete?id=${nv.id}">Xóa</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>