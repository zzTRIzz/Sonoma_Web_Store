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
    <h1 class="mb-4">Thông tin Khách Hàng</h1>
    <form:form method="post" modelAttribute="khachHang" action="/asm/admin/khachhang/add">
        <div class="form-group">
            <label for="ten">Tên:</label>
            <form:input path="ten" cssClass="form-control" />
            <form:errors path="ten" cssClass="error text-danger" />
        </div>
        <div class="form-group">
            <label for="sdt">Số Điện Thoại:</label>
            <form:input path="sdt" cssClass="form-control" />
            <form:errors path="sdt" cssClass="error text-danger" />
        </div>
        <div class="form-group">
            <label for="maKh">Mã kh:</label>
            <form:input path="maKh" cssClass="form-control" />
            <form:errors path="maKh" cssClass="error text-danger" />
        </div>
        <div class="form-group">
            <label>Trạng Thái:</label>
            <div class="form-check">
                <input class="form-check-input" type="radio" id="vip" name="trangThai" value="true"
                       <c:if test="${khachHang.trangThai}">checked </c:if>
                <label class="form-check-label" for="vip">Vip</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" id="thuong" name="trangThai" value="false"
                       <c:if test="${!khachHang.trangThai}">checked </c:if>
                <label class="form-check-label" for="thuong">Thường</label>
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
