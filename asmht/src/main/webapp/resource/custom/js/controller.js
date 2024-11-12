var app = angular.module("myApp", []);

app.controller("cardCtrl", function ($scope,$sce) {
    
    $scope.phone = [
        {
            img: "https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-13_2_.png",
            name: "iPhone 13 128GB",
            price: 13590000,
            old: 18000000,
            reduce: 0,
            rate: 5,
            rate_star: ''
        },
        {
            img: "https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-15-pro-max_3.png",
            name: "iPhone 15 Pro 128GB",
            price: 19900000,
            old: 31000000,
            reduce: 0,
            rate: 3,
            rate_star: ''
        },
        {
            img: "https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-15-plus_1__1.png",
            name: "iPhone 15 128GB",
            price: 18990000,
            old: 20000000,
            reduce: 0,
            rate: 5,
            rate_star: ''
        },
        {
            img: "https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-s23-ulatra_2__1.png",
            name: "Samsung Galaxy S23 Ultra 256GB",
            price: 21000000,
            old: 31000000,
            reduce: 0,
            rate: 5,
            rate_star: ''
        },
        {
            img: "https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/s/ss-s24-ultra-xam-222.png",
            name: "Samsung Galaxy S24 Ultra 256GB",
            price: 31000000,
            old: 40000000,
            reduce: 0,
            rate: 3,
            rate_star: ''
        },
        {
            img: "https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-15-pro-max_3.png",
            name: "iPhone 12 màu Tím",
            price: 9000000,
            old: 11000000,
            reduce: 0,
            rate: 3,
            rate_star: ''
        },
        {
            img: "https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-15-plus_1__1.png",
            name: "iPhone 15 128GB",
            price: 18990000,
            old: 20000000,
            reduce: 0,
            rate: 5,
            rate_star: ''
        },
        {
            img: "https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-s23-ulatra_2__1.png",
            name: "Samsung Galaxy S23 Ultra 256GB",
            price: 21000000,
            old: 31000000,
            reduce: 0,
            rate: 5,
            rate_star: ''
        },
        {
            img: "https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/s/ss-s24-ultra-xam-222.png",
            name: "Samsung Galaxy S24 Ultra 256GB",
            price: 31000000,
            old: 40000000,
            reduce: 0,
            rate: 3,
            rate_star: ''
        },
        {
            img: "",
            name: "iPhone 12 màu Tím",
            price: 9000000,
            old: 11000000,
            reduce: 0,
            rate: 3,
            rate_star: ''
        },
        
    ];




    
    $scope.phone.forEach(function (p) {
        p.reduce = parseInt(100 - p.price / p.old * 100)
    });

    //sao
    $scope.phone.forEach(function (p) {
        if (p.rate <= 5 && p.rate > 0) {
            for (let index = 0; index < p.rate; index++) {
                p.rate_star += '<span class="fa fa-star checked"></span>';
            }
            for (let index = p.rate; index < 5; index++) {
                p.rate_star += '<span class="fa fa-star"></span>';
            }
        } else {
            p.rate_star = 'Chưa có đánh giá';
        }
    });
    $scope.renderHtml = function(html_code) {
        return $sce.trustAsHtml(html_code);
    };
    

    
})
app.controller("productCtrl", function ($scope,$sce) {

    $scope.phone = [
        {
            img: "https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-13_2_.png",
            name: "iPhone 13 128GB",
            price: 13590000,
            old: 18000000,
            reduce: 0,
            rate: 5,
            rate_star: ''
        },
        {
            img: "https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-15-pro-max_3.png",
            name: "iPhone 15 Pro 128GB",
            price: 19900000,
            old: 31000000,
            reduce: 0,
            rate: 3,
            rate_star: ''
        },
        {
            img: "https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-15-plus_1__1.png",
            name: "iPhone 15 128GB",
            price: 18990000,
            old: 20000000,
            reduce: 0,
            rate: 5,
            rate_star: ''
        },
        {
            img: "https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-s23-ulatra_2__1.png",
            name: "Samsung Galaxy S23 Ultra 256GB",
            price: 21000000,
            old: 31000000,
            reduce: 0,
            rate: 5,
            rate_star: ''
        },
        {
            img: "https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/s/ss-s24-ultra-xam-222.png",
            name: "Samsung Galaxy S24 Ultra 256GB",
            price: 31000000,
            old: 40000000,
            reduce: 0,
            rate: 3,
            rate_star: ''
        },
        {
            img: "https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-15-pro-max_3.png",
            name: "iPhone 12 màu Tím",
            price: 9000000,
            old: 11000000,
            reduce: 0,
            rate: 3,
            rate_star: ''
        },
        {
            img: "https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-15-plus_1__1.png",
            name: "iPhone 15 128GB",
            price: 18990000,
            old: 20000000,
            reduce: 0,
            rate: 5,
            rate_star: ''
        },
        {
            img: "https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-s23-ulatra_2__1.png",
            name: "Samsung Galaxy S23 Ultra 256GB",
            price: 21000000,
            old: 31000000,
            reduce: 0,
            rate: 5,
            rate_star: ''
        },
        {
            img: "https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/s/ss-s24-ultra-xam-222.png",
            name: "Samsung Galaxy S24 Ultra 256GB",
            price: 31000000,
            old: 40000000,
            reduce: 0,
            rate: 3,
            rate_star: ''
        },
        {
            img: "",
            name: "iPhone 12 màu Tím",
            price: 9000000,
            old: 11000000,
            reduce: 0,
            rate: 3,
            rate_star: ''
        },
        
    ];




    
    $scope.phone.forEach(function (p) {
        p.reduce = parseInt(100 - p.price / p.old * 100)
    });

    //sao
    $scope.phone.forEach(function (p) {
        if (p.rate <= 5 && p.rate > 0) {
            for (let index = 0; index < p.rate; index++) {
                p.rate_star += '<span class="fa fa-star checked"></span>';
            }
            for (let index = p.rate; index < 5; index++) {
                p.rate_star += '<span class="fa fa-star"></span>';
            }
        } else {
            p.rate_star = 'Chưa có đánh giá';
        }
    });
    $scope.renderHtml = function(html_code) {
        return $sce.trustAsHtml(html_code);
    };
    

    
})


