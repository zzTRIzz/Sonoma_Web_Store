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
    <h1 class="mb-4">Thông tin</h1>
    <form:form method="post" modelAttribute="hoaDonCt" action="/asm/admin/hoadonct/update">
        <div class="form-group">
            <label for="id">Id:</label>
            <form:input path="id" cssClass="form-control" value="${hoaDon.id}" readonly="true"/>
            <form:errors path="id" cssClass="error text-danger"/>
        </div>
        <div class="form-group">
            <label for="sanPhamCtByIdSpct">ID SPCT:</label>
            <form:select path="sanPhamCtByIdSpct">
                <option disabled hidden selected>Vui lòng chọn</option>
                <form:options items="${listSanPhamCt}" itemLabel="id" itemValue="id"/>
            </form:select>
        </div>
        <div class="form-group">
            <label for="hoaDonByIdHoaDon">ID HD:</label>
            <form:select path="hoaDonByIdHoaDon">
                <option disabled hidden selected>Vui lòng chọn</option>
                <form:options items="${listKhachHang}" itemLabel="id" itemValue="id"/>
            </form:select>
        </div>

        <div class="form-group">
            <label for="soLuong">So luong:</label>
            <form:input path="soLuong" cssClass="form-control" value="${hoaDonCt.soLuong}"/>
            <form:errors path="soLuong" cssClass="error text-danger"/>
        </div>
        <div class="form-group">
            <label for="gia">Gia :</label>
            <form:input path="gia" cssClass="form-control" value="${hoaDonCt.gia}"/>
            <form:errors path="gia" cssClass="error text-danger"/>
        </div>

        <div class="form-group">
            <label>Trạng Thái:</label>
            <div class="form-check">
                <input class="form-check-input" type="radio" id="vip" name="trangThai" value="true"
                       <c:if test="${hoaDonCt.trangThai}">checked</c:if> />
                <label class="form-check-label" for="vip">Kích hoạt</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" id="thuong" name="trangThai" value="false"
                       <c:if test="${!hoaDonCt.trangThai}">checked</c:if> />
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
