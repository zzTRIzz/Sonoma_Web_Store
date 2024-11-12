<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Thêm Nhân Viên</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h2 class="mt-4">Update Nhân Viên</h2>
    <form action="/asm/admin/nhanvien/update" method="post">
        <div class="form-group">
            <label for="id">Id Nhân Viên</label>
            <input type="text" name="id" class="form-control" value="${nv.id}" readonly />
            <c:if test="${not empty errors.id}">
                <div class="text-danger">${errors.id}</div>
            </c:if>
        </div>
        <div class="form-group">
            <label for="maNv">Mã Nhân Viên</label>
            <input type="text" name="maNv" class="form-control" value="${nv.maNv}" />
            <c:if test="${not empty errors.maNv}">
                <div class="text-danger">${errors.maNv}</div>
            </c:if>
        </div>
        <div class="form-group">
            <label for="ten">Tên</label>
            <input type="text" name="ten" class="form-control" value="${nv.ten}" />
            <c:if test="${not empty errors.ten}">
                <div class="text-danger">${errors.ten}</div>
            </c:if>
        </div>
        <div class="form-group">
            <label for="tenDangNhap">Tên Đăng Nhập</label>
            <input type="text" name="tenDangNhap" class="form-control" value="${nv.tenDangNhap}" />
            <c:if test="${not empty errors.tenDangNhap}">
                <div class="text-danger">${errors.tenDangNhap}</div>
            </c:if>
        </div>
        <div class="form-group">
            <label for="matKhau">Mật Khẩu</label>
            <input type="password" name="matKhau" class="form-control" value="${nv.matKhau}" />
            <c:if test="${not empty errors.matKhau}">
                <div class="text-danger">${errors.matKhau}</div>
            </c:if>
        </div>
        <div class="form-group">
            <label for="trangThai">Trạng Thái</label>
            <select name="trangThai" class="form-control">
                <option value="true" ${nv.trangThai ? 'selected' : ''}>Admin</option>
                <option value="false" ${nv.trangThai ? '' : 'selected'}>Nhân viên</option>
            </select>
        </div>

        <button type="submit" class="btn btn-primary">Cập Nhật Nhân Viên</button>
    </form>

</div>
</body>
</html>
