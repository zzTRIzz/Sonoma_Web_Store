<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Thông tin Khách Hàng</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1 class="mb-4">Thông tin sản phẩm chi tiet</h1>
    <form:form method="post" modelAttribute="sanPhamCt" action="/asm/admin/sanphamct/add">
        <div class="form-group">
            <label for="maSpct">Mã :</label>
            <form:input path="maSpct" cssClass="form-control" />
            <form:errors path="maSpct" cssClass="error text-danger" />
        </div>
        <div class="form-group">
            <label for="sanPhamByIdSanPham">Tên :</label>
            <form:select path="sanPhamByIdSanPham">
            <option disabled hidden selected>Vui long chon</option>
            <form:options items="${listSanPham}" itemLabel="tenSp" itemValue="id"/>
        </form:select>
        </div>
        <div class="form-group">
            <label for="mauSacByIdMauSac">Màu sắc :</label>
            <form:select path="mauSacByIdMauSac">
            <option disabled hidden selected>Vui long chon</option>
            <form:options items="${listMauSac}" itemLabel="ten" itemValue="id"/>
        </form:select>
        </div>
        <div class="form-group">
            <label for="kichThuocByIdKichThuoc">Kích thước :</label>
            <form:select path="kichThuocByIdKichThuoc">
            <option disabled hidden selected>Vui long chon</option>
            <form:options items="${listKichThuoc}" itemLabel="ten" itemValue="id"/>
        </form:select>
        </div>

        <div class="form-group">
            <label for="hinhAnh">Hình ảnh :</label>
            <form:input path="hinhAnh" cssClass="form-control" />
            <form:errors path="hinhAnh" cssClass="error text-danger" />
        </div>
        <div class="form-group">
            <label for="soLuong">Số lượng :</label>
            <form:input path="soLuong" cssClass="form-control" />
            <form:errors path="soLuong" cssClass="error text-danger" />
        </div>
        <div class="form-group">
            <label for="gia">Giá :</label>
            <form:input path="gia" cssClass="form-control" />
            <form:errors path="gia" cssClass="error text-danger" />
        </div>

        <div class="form-group">
            <label>Trạng Thái:</label>
            <div class="form-check">
                <input class="form-check-input" type="radio" id="vip" name="trangThai" value="true"
                       <c:if test="${sanPhamCt.trangThai}">checked </c:if>
                <label class="form-check-label" for="vip">Kích hoạt</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" id="thuong" name="trangThai" value="false"
                       <c:if test="${!sanPhamCt.trangThai}">checked </c:if>
                <label class="form-check-label" for="thuong">Chưa kích hoạt</label>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Gửi</button>
    </form:form>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
