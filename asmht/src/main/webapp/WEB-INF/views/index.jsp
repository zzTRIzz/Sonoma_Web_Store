<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .custom-bg-success-subtle {
            background-color: var(--bs-success-bg-subtle);
            color: var(--bs-success-text-emphasis);
        }

        fa fa-star{
            size: 5px;
        }
        .checked{
            color: rgb(245, 158, 11);
        }

    </style>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <link rel="stylesheet" href="../../resource/custom/css/font.css">
    <link rel="stylesheet" href="../../resource/custom/css/icon.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
            href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@400..800&family=Figtree:ital,wght@0,300..900;1,300..900&family=Inter:wght@100..900&family=Plus+Jakarta+Sans:ital,wght@0,200..800;1,200..800&family=Source+Sans+3:ital,wght@0,200..900;1,200..900&family=Varela+Round&display=swap"
            rel="stylesheet">
</head>

<body style="background-color: rgb(245, 245, 247);"
      class="only-plus-jakarta-sans"> <!-- rgb(233, 236, 239) -->
<nav
        class="navbar navbar-expand-md navbar-light w-100 baloo-2 sticky-top"
        style="background-color: rgb(245, 245, 247);">
    <div class="container-fluid">
        <a class="navbar-brand " href="#">
        </a>
        <a class="navbar-brand" href="./index.html">
            <img src="../../resource/logo/logofill.png" alt="Logo"
                 width="34" height="34"
                 class="d-inline-block align-text-top me-2">
            <span
                    style="display: inline-block; vertical-align:middle; color: rgb(236, 132, 41);"
                    class="fw-bold fs-5">Sonoma</span>
        </a>
        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse"
             id="navbarSupportedContent">

            <ul class="navbar-nav me-auto mx-3 align-items-center">
                <li class="nav-item">
                    <button class="btn shadow-lg rounded-5 mx-1 danhmuc"
                            type="button" data-bs-toggle="offcanvas"
                            data-bs-target="#offcanvasWithBothOptions"
                            aria-controls="offcanvasWithBothOptions">
                        <img src="../../resource/icon/bars24.svg" class alt
                             style="margin-bottom: 2px;">
                        Danh mục
                    </button>
                </li>
            </ul>
            <div class="col m-1">
                <div
                        class="input-group position-relative d-flex justify-content-center">
                    <!-- Thêm class d-flex và justify-content-center -->
                    <input
                            class="form-control rounded-pill search form-outline pl-5 shadow-lg rounded-5"
                            type="search"
                            placeholder="     Bạn cần tìm gì ?"
                            aria-label="Search">
                    <i
                            class="fa-light fa fa-magnifying-glass position-absolute top-50 start-0 translate-middle-y ms-2"></i>
                </div>
            </div>

            <ul class="navbar-nav me-auto mx-1 align-items-center">
                <li class="nav-item">
                    <a class="nav-link" href="./about.html">
                        <img src="../../resource/icon/store25.svg" alt
                             class="mb-1">
                        Về cửa hàng</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./contact.html">
                        <img src="../../resource/icon/phone25fill.svg" alt
                             class="mb-1">
                        Liên hệ
                    </a>
                </li>
                <li class="nav-item shadow-lg rounded-5 me-3 mx-2 ">
                    <a class="nav-link" href="./cart.html">
                        <img src="../../resource/icon/cart25fill.svg" alt
                             class="mb-1">Giỏ hàng
                    </a>
                </li>
            </ul>

            <!-- Đăng nhập -->
            <form class="d-flex justify-content-center" role="search">
                <button type="button"
                        class="btn custom-bg-success-subtle"
                        data-bs-toggle="modal"
                        data-bs-target="#exampleModal"
                        data-bs-whatever="@mdo">
                    <img src="../../resource/icon/account.svg"
                         class="mb-1">
                    Đăng nhập
                </button>
            </form>

        </div>
    </div>
</nav>

<%--<div class="container-fluid mt-4">--%>
<%--    <div class="container-xl">--%>
<%--        <div class="row justify-content-around">--%>
<%--            <div class="col-xl-4 mb-3">--%>
<%--                <p class="fw-bold fs-3">iPhone</p>--%>
<%--                <video autoplay loop muted class="rounded-5 w-100">--%>
<%--                    <source src="../../resource/banner/mp4iphone.mp4"--%>
<%--                            type="video/mp4">--%>
<%--                </video>--%>
<%--            </div>--%>
<%--            <div class="col-xl-4 mb-3">--%>
<%--                <p class="fw-bold fs-3">Macbook</p>--%>
<%--                <video autoplay loop muted class="rounded-5 w-100">--%>
<%--                    <source src="../../resource/banner/mp4mac.mp4"--%>
<%--                            type="video/mp4">--%>
<%--                </video>--%>
<%--            </div>--%>
<%--            <div--%>
<%--                    class="col-xl-4 mb-3 d-flex flex-column align-items-center">--%>
<%--                <p class="fw-bold fs-3">Deal hời mua ngay</p>--%>
<%--                <img class="rounded-5 w-90 mb-2" style="height: 132px;"--%>
<%--                     src="../../resource/banner/minibannneripad.webp" alt>--%>
<%--                <img class="rounded-5 w-90 mb-2" style="height: 132px;"--%>
<%--                     src="../../resource/banner/minibannerlaptop.webp" alt>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>

<%--    <div class="container">--%>
<%--        <!-- Danh mục nổi bật -->--%>
<%--        <div class="d-flex bd-highlight mb-3">--%>
<%--            <div class="me-auto p-2 bd-highlight">--%>
<%--                <h2 class>Điện thọai nổi bật</h2>--%>
<%--            </div>--%>
<%--            <div class="p-2 bd-highlight align-content-center">--%>
<%--                <a--%>
<%--                        class="link-offset-2 link-underline link-underline-opacity-0 justify-content-end a-brandLink"--%>
<%--                "--%>
<%--                href>iPhone</a>--%>
<%--                <a--%>
<%--                        class="link-offset-2 link-underline link-underline-opacity-0 justify-content-end a-brandLink"--%>
<%--                "--%>
<%--                href>Samsung</a>--%>
<%--                <a--%>
<%--                        class="link-offset-2 link-underline link-underline-opacity-0 justify-content-end a-brandLink"--%>
<%--                "--%>
<%--                href>Xiaomi</a>--%>
<%--                <a--%>
<%--                        class="link-offset-2 link-underline link-underline-opacity-0 justify-content-end a-brandLink"--%>
<%--                "--%>
<%--                href>Oppo</a>--%>
<%--                <a--%>
<%--                        class="link-offset-2 link-underline link-underline-opacity-0 justify-content-end m-2"--%>
<%--                        href>Xem tất cả</a>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <!-- card -->--%>
<%--    <div ng-controller="cardCtrl" class="container">--%>
<%--        <div--%>
<%--                class="row d-flex justify-content-between row-cols-lg-5">--%>
<%--            <div ng-repeat="p in phone" class="col mb-3">--%>
<%--                <a href="./product.html" style="text-decoration: none;">--%>
<%--                    <div class="card css-card max-w-sm border-0 h-100">--%>
<%--                        <h6--%>
<%--                                class="css-giamgia d-flex justify-content-center p-1">Giảm--%>
<%--                            đến {{p.reduce.toLocaleString()}}%</h6>--%>
<%--                        <div class="card-body">--%>
<%--                            <div class="w-100"--%>
<%--                                 style="width: 204.79px; height: 177px;">--%>
<%--                                <img ng-src="{{p.img}}" alt="{{p.name}}"--%>
<%--                                     class="w-100 img-css p-2">--%>
<%--                            </div>--%>
<%--                            <p class="card-title"--%>
<%--                               style="height: 60px; font-size: 15px; font-weight: bold;">{{p.name}}</p>--%>
<%--                            <p--%>
<%--                                    class="css-moneys align-content-center">--%>
<%--                                {{p.price.toLocaleString()}}đ--%>
<%--                                <span>{{p.old | number:0}}đ</span></p>--%>
<%--                            <div--%>
<%--                                    ng-bind-html="renderHtml(p.rate_star)">--%>
<%--                            </div>--%>
<%--                            <button href="./pay.html" class="btn w-100 btnGioHangHTML mt-4">--%>
<%--                                Thêm vào giỏ hàng--%>
<%--                            </button>--%>
<%--                            <!-- <span class="fa fa-star checked"></span>--%>
<%--                            <span class="fa fa-star checked"></span>--%>
<%--                            <span class="fa fa-star checked"></span>--%>
<%--                            <span class="fa fa-star"></span>--%>
<%--                            <span class="fa fa-star"></span> -->--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </a>--%>
<%--            </div>--%>

<%--        </div>--%>
<%--    </div>--%>

<%--    <!-- Laptop -->--%>
<%--    <div class="container">--%>
<%--        <!-- Danh mục nổi bật -->--%>
<%--        <div class="d-flex bd-highlight mb-3">--%>
<%--            <div class="me-auto p-2 bd-highlight">--%>
<%--                <h2 class>Laptop xu hướng</h2>--%>
<%--            </div>--%>
<%--            <div class="p-2 bd-highlight align-content-center">--%>
<%--                <a--%>
<%--                        class="link-offset-2 link-underline link-underline-opacity-0 justify-content-end a-brandLink"--%>
<%--                "--%>
<%--                href>Dell</a>--%>
<%--                <a--%>
<%--                        class="link-offset-2 link-underline link-underline-opacity-0 justify-content-end a-brandLink"--%>
<%--                "--%>
<%--                href>Macbook</a>--%>
<%--                <a--%>
<%--                        class="link-offset-2 link-underline link-underline-opacity-0 justify-content-end a-brandLink"--%>
<%--                "--%>
<%--                href>Lenovo</a>--%>
<%--                <a--%>
<%--                        class="link-offset-2 link-underline link-underline-opacity-0 justify-content-end a-brandLink"--%>
<%--                "--%>
<%--                href>HP</a>--%>
<%--                <a--%>
<%--                        class="link-offset-2 link-underline link-underline-opacity-0 justify-content-end m-2"--%>
<%--                        href>Xem tất cả</a>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <!-- card -->--%>
<%--    <div ng-controller="cardCtrl" class="container">--%>
<%--        <div--%>
<%--                class="row d-flex justify-content-between row-cols-lg-5">--%>
<%--            <div ng-repeat="p in phone" class="col mb-3">--%>
<%--                <div class="card css-card max-w-sm border-0 h-100">--%>
<%--                    <h6--%>
<%--                            class="css-giamgia d-flex justify-content-center p-1">Giảm--%>
<%--                        đến {{p.reduce.toLocaleString()}}%</h6>--%>
<%--                    <div class="card-body">--%>
<%--                        <div class="w-100"--%>
<%--                             style="width: 204.79px; height: 177px;">--%>
<%--                            <img ng-src="{{p.img}}" alt="{{p.name}}"--%>
<%--                                 class="w-100 img-css p-2">--%>
<%--                        </div>--%>
<%--                        <p class="card-title"--%>
<%--                           style="height: 60px; font-size: 15px; font-weight: bold;">{{p.name}}</p>--%>
<%--                        <p--%>
<%--                                class="css-moneys align-content-center">--%>
<%--                            {{p.price.toLocaleString()}}đ--%>
<%--                            <span>{{p.old | number:0}}đ</span></p>--%>
<%--                        <div--%>
<%--                                ng-bind-html="renderHtml(p.rate_star)">--%>
<%--                        </div>--%>
<%--                        <!-- <span class="fa fa-star checked"></span>--%>
<%--                        <span class="fa fa-star checked"></span>--%>
<%--                        <span class="fa fa-star checked"></span>--%>
<%--                        <span class="fa fa-star"></span>--%>
<%--                        <span class="fa fa-star"></span> -->--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--        </div>--%>
<%--    </div>--%>
<%--    <!-- Máy tính bảng -->--%>
<%--    <div class="container">--%>
<%--        <!-- Danh mục nổi bật -->--%>
<%--        <div class="d-flex bd-highlight mb-3">--%>
<%--            <div class="me-auto p-2 bd-highlight">--%>
<%--                <h2 class>Máy tính bảng</h2>--%>
<%--            </div>--%>
<%--            <div class="p-2 bd-highlight align-content-center">--%>
<%--                <a--%>
<%--                        class="link-offset-2 link-underline link-underline-opacity-0 justify-content-end a-brandLink"--%>
<%--                "--%>
<%--                href>iPad</a>--%>
<%--                <a--%>
<%--                        class="link-offset-2 link-underline link-underline-opacity-0 justify-content-end a-brandLink"--%>
<%--                "--%>
<%--                href>Samsung</a>--%>
<%--                <a--%>
<%--                        class="link-offset-2 link-underline link-underline-opacity-0 justify-content-end a-brandLink"--%>
<%--                "--%>
<%--                href>Xiaomi</a>--%>
<%--                <a--%>
<%--                        class="link-offset-2 link-underline link-underline-opacity-0 justify-content-end a-brandLink"--%>
<%--                "--%>
<%--                href>Huawei</a>--%>
<%--                <a--%>
<%--                        class="link-offset-2 link-underline link-underline-opacity-0 justify-content-end m-2"--%>
<%--                        href>Xem tất cả</a>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <!-- card -->--%>
<%--    <div ng-controller="cardCtrl" class="container">--%>
<%--        <div--%>
<%--                class="row d-flex justify-content-between row-cols-lg-5">--%>
<%--            <div ng-repeat="p in phone" class="col mb-3">--%>
<%--                <div class="card css-card max-w-sm border-0 h-100">--%>
<%--                    <h6--%>
<%--                            class="css-giamgia d-flex justify-content-center p-1">Giảm--%>
<%--                        đến {{p.reduce.toLocaleString()}}%</h6>--%>
<%--                    <div class="card-body">--%>
<%--                        <div class="w-100"--%>
<%--                             style="width: 204.79px; height: 177px;">--%>
<%--                            <img ng-src="{{p.img}}" alt="{{p.name}}"--%>
<%--                                 class="w-100 img-css p-2">--%>
<%--                        </div>--%>
<%--                        <p class="card-title"--%>
<%--                           style="height: 60px; font-size: 15px; font-weight: bold;">{{p.name}}</p>--%>
<%--                        <p--%>
<%--                                class="css-moneys align-content-center">--%>
<%--                            {{p.price.toLocaleString()}}đ--%>
<%--                            <span>{{p.old | number:0}}đ</span></p>--%>
<%--                        <div--%>
<%--                                ng-bind-html="renderHtml(p.rate_star)">--%>
<%--                        </div>--%>
<%--                        <!-- <span class="fa fa-star checked"></span>--%>
<%--                        <span class="fa fa-star checked"></span>--%>
<%--                        <span class="fa fa-star checked"></span>--%>
<%--                        <span class="fa fa-star"></span>--%>
<%--                        <span class="fa fa-star"></span> -->--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<footer class="footer">--%>

<%--    <!-- Widgets - Bootstrap Brain Component -->--%>
<%--    <section--%>
<%--            class="bg-light py-4 py-md-5 py-xl-8 border-top border-light">--%>
<%--        <div class="container overflow-hidden">--%>
<%--            <div class="row gy-4 gy-lg-0 justify-content-xl-between">--%>
<%--                <div class="col-12 col-md-4 col-lg-3 col-xl-2">--%>
<%--                    <div class="widget">--%>
<%--                        <a href="#!">--%>
<%--                            <img--%>
<%--                                    src="../../resource/logo/logofillfinal.png"--%>
<%--                                    alt="BootstrapBrain Logo" class="w-100">--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-12 col-md-4 col-lg-3 col-xl-2">--%>
<%--                    <div class="widget">--%>
<%--                        <h4 class="widget-title mb-4">Sonoma</h4>--%>
<%--                        <address class="mb-4">Ng. 124 Phố Hoè Thị, Xuân Phương, Nam Từ Liêm, Hà Nội, Việt Nam</address>--%>
<%--                        <p class="mb-1">--%>
<%--                            <a--%>
<%--                                    class="link-secondary text-decoration-none"--%>
<%--                                    href="tel:+15057922430">(084)--%>
<%--                                0358168699</a>--%>
<%--                        </p>--%>
<%--                        <p class="mb-0">--%>
<%--                            <a--%>
<%--                                    class="link-secondary text-decoration-none"--%>
<%--                                    href="mailto:demo@yourdomain.com">trinqph45719@gmail.com</a>--%>
<%--                        </p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-12 col-md-4 col-lg-3 col-xl-2">--%>
<%--                    <div class="widget">--%>
<%--                        <h4 class="widget-title mb-4">Learn More</h4>--%>
<%--                        <ul class="list-unstyled">--%>
<%--                            <li class="mb-2">--%>
<%--                                <a href="#!"--%>
<%--                                   class="link-secondary text-decoration-none">About</a>--%>
<%--                            </li>--%>
<%--                            <li class="mb-2">--%>
<%--                                <a href="#!"--%>
<%--                                   class="link-secondary text-decoration-none">Contact</a>--%>
<%--                            </li>--%>
<%--                            <li class="mb-2">--%>
<%--                                <a href="#!"--%>
<%--                                   class="link-secondary text-decoration-none">Advertise</a>--%>
<%--                            </li>--%>
<%--                            <li class="mb-2">--%>
<%--                                <a href="#!"--%>
<%--                                   class="link-secondary text-decoration-none">Terms--%>
<%--                                    of Service</a>--%>
<%--                            </li>--%>
<%--                            <li class="mb-0">--%>
<%--                                <a href="#!"--%>
<%--                                   class="link-secondary text-decoration-none">Privacy--%>
<%--                                    Policy</a>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-12 col-lg-3 col-xl-4">--%>
<%--                    <div class="widget">--%>
<%--                        <h4 class="widget-title mb-4">Đăng ký nhận tin</h4>--%>
<%--                        <p class="mb-4">Đừng bỏ lỡ cơ hội nhận những thông tin và ưu đãi hấp dẫn. Hãy đăng ký bản tin của chúng tôi ngay hôm nay.</p>--%>
<%--                        <form action="#!">--%>
<%--                            <div class="row gy-4">--%>
<%--                                <div class="col-12">--%>
<%--                                    <div class="input-group">--%>
<%--                                                <span class="input-group-text"--%>
<%--                                                      id="email-newsletter-addon">--%>
<%--                                                    <svg--%>
<%--                                                            xmlns="http://www.w3.org/2000/svg"--%>
<%--                                                            width="16" height="16"--%>
<%--                                                            fill="currentColor"--%>
<%--                                                            class="bi bi-envelope"--%>
<%--                                                            viewBox="0 0 16 16">--%>
<%--                                                        <path--%>
<%--                                                                d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2Zm13 2.383-4.708 2.825L15 11.105V5.383Zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741ZM1 11.105l4.708-2.897L1 5.383v5.722Z" />--%>
<%--                                                    </svg>--%>
<%--                                                </span>--%>
<%--                                        <input type="email"--%>
<%--                                               class="form-control"--%>
<%--                                               id="email-newsletter" value--%>
<%--                                               placeholder="Email Address"--%>
<%--                                               aria-label="email-newsletter"--%>
<%--                                               aria-describedby="email-newsletter-addon"--%>
<%--                                               required>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="col-12">--%>
<%--                                    <div class="d-grid">--%>
<%--                                        <button class="btn btn-primary"--%>
<%--                                                type="submit">Subscribe</button>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </form>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </section>--%>

<%--    <!-- Copyright - Bootstrap Brain Component -->--%>
<%--    <div--%>
<%--            class="bg-light py-4 py-md-5 py-xl-8 border-top border-light-subtle">--%>
<%--        <div class="container overflow-hidden">--%>
<%--            <div class="row gy-4 gy-md-0 align-items-md-center">--%>
<%--                <div class="col-xs-12 col-md-7 order-1 order-md-0">--%>
<%--                    <div class="copyright text-center text-md-start">--%>
<%--                        &copy; 2024. All Rights Reserved.--%>
<%--                    </div>--%>
<%--                    <div--%>
<%--                            class="credits text-secondary text-center text-md-start mt-2 fs-8">--%>
<%--                        Built by <a href="https://bootstrapbrain.com/"--%>
<%--                                    class="link-secondary text-decoration-none">Mixigaming</a>--%>
<%--                        with <span class="text-primary">&#9829;</span>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <div class="col-xs-12 col-md-5 order-0 order-md-1">--%>
<%--                    <div class="social-media-wrapper">--%>
<%--                        <ul--%>
<%--                                class="list-unstyled m-0 p-0 d-flex justify-content-center justify-content-md-end">--%>
<%--                            <li class="me-3">--%>
<%--                                <a href="#!"--%>
<%--                                   class="link-dark link-opacity-75-hover">--%>
<%--                                    <svg--%>
<%--                                            xmlns="http://www.w3.org/2000/svg"--%>
<%--                                            width="24" height="24"--%>
<%--                                            fill="currentColor"--%>
<%--                                            class="bi bi-facebook"--%>
<%--                                            viewBox="0 0 16 16">--%>
<%--                                        <path--%>
<%--                                                d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />--%>
<%--                                    </svg>--%>
<%--                                </a>--%>
<%--                            </li>--%>
<%--                            <li class="me-3">--%>
<%--                                <a href="#!"--%>
<%--                                   class="link-dark link-opacity-75-hover">--%>
<%--                                    <svg--%>
<%--                                            xmlns="http://www.w3.org/2000/svg"--%>
<%--                                            width="24" height="24"--%>
<%--                                            fill="currentColor"--%>
<%--                                            class="bi bi-youtube"--%>
<%--                                            viewBox="0 0 16 16">--%>
<%--                                        <path--%>
<%--                                                d="M8.051 1.999h.089c.822.003 4.987.033 6.11.335a2.01 2.01 0 0 1 1.415 1.42c.101.38.172.883.22 1.402l.01.104.022.26.008.104c.065.914.073 1.77.074 1.957v.075c-.001.194-.01 1.108-.082 2.06l-.008.105-.009.104c-.05.572-.124 1.14-.235 1.558a2.007 2.007 0 0 1-1.415 1.42c-1.16.312-5.569.334-6.18.335h-.142c-.309 0-1.587-.006-2.927-.052l-.17-.006-.087-.004-.171-.007-.171-.007c-1.11-.049-2.167-.128-2.654-.26a2.007 2.007 0 0 1-1.415-1.419c-.111-.417-.185-.986-.235-1.558L.09 9.82l-.008-.104A31.4 31.4 0 0 1 0 7.68v-.123c.002-.215.01-.958.064-1.778l.007-.103.003-.052.008-.104.022-.26.01-.104c.048-.519.119-1.023.22-1.402a2.007 2.007 0 0 1 1.415-1.42c.487-.13 1.544-.21 2.654-.26l.17-.007.172-.006.086-.003.171-.007A99.788 99.788 0 0 1 7.858 2h.193zM6.4 5.209v4.818l4.157-2.408L6.4 5.209z" />--%>
<%--                                    </svg>--%>
<%--                                </a>--%>
<%--                            </li>--%>
<%--                            <li class="me-3">--%>
<%--                                <a href="#!"--%>
<%--                                   class="link-dark link-opacity-75-hover">--%>
<%--                                    <svg--%>
<%--                                            xmlns="http://www.w3.org/2000/svg"--%>
<%--                                            width="24" height="24"--%>
<%--                                            fill="currentColor"--%>
<%--                                            class="bi bi-twitter"--%>
<%--                                            viewBox="0 0 16 16">--%>
<%--                                        <path--%>
<%--                                                d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z" />--%>
<%--                                    </svg>--%>
<%--                                </a>--%>
<%--                            </li>--%>
<%--                            <li class>--%>
<%--                                <a href="#!"--%>
<%--                                   class="link-dark link-opacity-75-hover">--%>
<%--                                    <svg--%>
<%--                                            xmlns="http://www.w3.org/2000/svg"--%>
<%--                                            width="24" height="24"--%>
<%--                                            fill="currentColor"--%>
<%--                                            class="bi bi-instagram"--%>
<%--                                            viewBox="0 0 16 16">--%>
<%--                                        <path--%>
<%--                                                d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />--%>
<%--                                    </svg>--%>
<%--                                </a>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>

<%--</footer>--%>

<%--<!-- Danh mục -->--%>
<%--<div class="offcanvas offcanvas-start" style="width: 200px;" data-bs-scroll="true"--%>
<%--     tabindex="-1" id="offcanvasWithBothOptions"--%>
<%--     aria-labelledby="offcanvasWithBothOptionsLabel">--%>
<%--    <div class="flex-shrink-0 p-3 bg-white">--%>
<%--        <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">--%>
<%--            <!-- <img src="../resource/logo/logofillfinal.png" alt=""> -->--%>
<%--            <span class="fs-5 fw-semibold">Sonoma</span>--%>
<%--        </a>--%>
<%--        <ul class="list-unstyled ps-0">--%>
<%--            <li class="mb-1">--%>
<%--                <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"--%>
<%--                        data-bs-target="#home-collapse" aria-expanded="true">--%>
<%--                    Trang chủ--%>
<%--                </button>--%>
<%--                <div class="collapse show" id="home-collapse">--%>
<%--                    <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">--%>
<%--                        <li><a href="./index.html" class="link-dark rounded">Trang chính</a></li>--%>
<%--                        <li><a href="./about.html" class="link-dark rounded">Về chúng tôi</a></li>--%>
<%--                        <li><a href="./contact.html" class="link-dark rounded">Liên hệ</a></li>--%>

<%--                    </ul>--%>
<%--                </div>--%>
<%--            </li>--%>
<%--            <li class="mb-1">--%>
<%--                <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"--%>
<%--                        data-bs-target="#dashboard-collapse" aria-expanded="false">--%>
<%--                    Điện thoại--%>
<%--                </button>--%>
<%--                <div class="collapse" id="dashboard-collapse">--%>
<%--                    <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">--%>
<%--                        <li><a href="#" class="link-dark rounded">iPhone</a></li>--%>
<%--                        <li><a href="#" class="link-dark rounded">Xiaomi</a></li>--%>
<%--                        <li><a href="#" class="link-dark rounded">Oppo</a></li>--%>
<%--                        <li><a href="#" class="link-dark rounded">Samsung</a></li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--            </li>--%>
<%--            <li class="mb-1">--%>
<%--                <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"--%>
<%--                        data-bs-target="#orders-collapse" aria-expanded="false">--%>
<%--                    Máy tính bảng--%>
<%--                </button>--%>
<%--                <div class="collapse" id="orders-collapse">--%>
<%--                    <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">--%>
<%--                        <li><a href="#" class="link-dark rounded">iPad</a></li>--%>
<%--                        <li><a href="#" class="link-dark rounded">Samsung</a></li>--%>
<%--                        <li><a href="#" class="link-dark rounded">Xiaomi</a></li>--%>
<%--                        <li><a href="#" class="link-dark rounded">Huawei</a></li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--            </li>--%>
<%--            <li class="mb-1">--%>
<%--                <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"--%>
<%--                        data-bs-target="#laptop-collapse" aria-expanded="false">--%>
<%--                    Laptop--%>
<%--                </button>--%>
<%--                <div class="collapse" id="laptop-collapse">--%>
<%--                    <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">--%>
<%--                        <li><a href="#" class="link-dark rounded">MacBook</a></li>--%>
<%--                        <li><a href="#" class="link-dark rounded">Dell</a></li>--%>
<%--                        <li><a href="#" class="link-dark rounded">Lenovo</a></li>--%>
<%--                        <li><a href="#" class="link-dark rounded">HP</a></li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--            </li>--%>
<%--            <li class="border-top my-3"></li>--%>
<%--            <!-- <li class="mb-1">--%>
<%--              <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"--%>
<%--                data-bs-target="#account-collapse" aria-expanded="false">--%>
<%--                Account--%>
<%--              </button>--%>
<%--              <div class="collapse" id="account-collapse">--%>
<%--                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">--%>
<%--                  <li><a href="#" class="link-dark rounded">New...</a></li>--%>
<%--                  <li><a href="#" class="link-dark rounded">Profile</a></li>--%>
<%--                  <li><a href="#" class="link-dark rounded">Settings</a></li>--%>
<%--                  <li><a href="#" class="link-dark rounded">Sign out</a></li>--%>
<%--                </ul>--%>
<%--              </div>--%>
<%--            </li> -->--%>
<%--        </ul>--%>
<%--    </div>--%>
<%--</div>--%>
<!-- Đăng nhập -->
<form action="/asm/login" method="post">
    <div class="modal fade" id="exampleModal" tabindex="-1"
     aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div class="d-flex justify-content-center m-3 mb-4">
                    <h5 class="modal-title" id="exampleModalLabel">Đăng nhập vào <span style="color: rgb(235, 137, 81);" class="fw-semibold">Sonoma</span></h5>
                </div>                <div class="form-floating mb-3">
                    <input type="text" class="form-control"
                           id="floatingInput"
                           placeholder="Email hoặc Tên đăng nhập" name="tenDangNhap">
                    <label for="floatingInput">( Sử dụng email / Tên đăng nhập )</label>
                </div>
                <div class="form-floating">
                    <input type="password" class="form-control"
                           id="floatingPassword"
                           placeholder="Mật khẩu" name="matKhau">
                    <label
                            for="floatingPassword">Mật khẩu</label>
                </div>
                <div class="form-floating mt-4 ms-2">
                    <span style="color: rgb(161, 8, 8); font-weight: bold;">${error}</span>
                </div>
                <div class="form-check mt-md-3 mb-md-2">
                    <input type="checkbox"
                           class="form-check-input"
                           id="dropdownCheck" style="background-color: rgb(235, 137, 81);">
                    <label class="form-check-label"
                           for="dropdownCheck">
                        Ghi nhớ tài khoản
                    </label>
                </div>
                <div class="container d-flex justify-content-center">
                    <img src="https://cdn-icons-png.flaticon.com/128/281/281764.png" width="25px" height="25px" alt="" class="mx-2">
                    <img src="https://cdn-icons-png.flaticon.com/128/5968/5968764.png"  width="25px" height="25px" alt="" class="mx-2">
                </div>

                <a
                        class="dropdown-item mt-3 text-muted text-sm-center"
                        href="./register.html">Bạn chưa có tài khoản? <span style="color: rgb(215, 109, 47);">Đăng ký</span></a>
                <a
                        class="dropdown-item mt-3 text-muted text-sm-center"
                        href="#">Quên mật khẩu?</a>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary"
                        data-bs-dismiss="modal">Hủy</button>
                <button type="submit" class="btn btn-primary btnDangNhap" name="action" value="dangnhap">Đăng
                    nhập</button>
            </div>

        </div>
    </div>
</div>
</form>

<script
        src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js">
</script>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous">
</script>
<script src="../../resource/custom/js/controller.js"></script>

</body>

</html>