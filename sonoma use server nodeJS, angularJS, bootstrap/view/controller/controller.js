var apiURL_danhmuc = "http://localhost:3000/danhmuc"
var apiURL_phone = "http://localhost:3000/phone"
var apiURL_laptop = "http://localhost:3000/laptop"
var jsonURL = "database/db.json"


app.controller("homeCtrl", function ($scope, $sce, $http) {
    $scope.phone = [];

    $http.get(apiURL_phone)
        .then(function (res) {
            // Nếu không có [0], điều đó ngụ ý rằng dữ liệu trả về từ máy chủ không phải là một mảng JSON chứa các đối tượng, mà thay vào đó, nó chỉ là một đối tượng JSON duy nhất.
            $scope.phone = res.data
            console.log("Điện thoại: ");
            console.log(res.data.phone);
            console.log("Tất cả: ");
            console.log($scope.phone);
            console.log

            // Xử lý dữ liệu sau khi đã được tải
            $scope.phone.forEach(function (p) {
                p.reduce = parseInt(100 - p.price / p.old * 100);
                // Xác định rate_star
                if (p.rate <= 5 && p.rate > 0) {
                    p.rate_star = '';
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
        })
        .catch(function (error) {
            console.error("Lỗi khi lấy dữ liệu:", error);
        });

    $scope.renderHtml = function (html_code) {
        return $sce.trustAsHtml(html_code);
    };



});
app.controller("contactCtrl", function ($scope, $sce, $http) {
    //Thông báo gửi Contact
    const toastTrigger = document.getElementById('liveToastBtn')
    const toastLiveExample = document.getElementById('liveToast')
    if (toastTrigger) {
        toastTrigger.addEventListener('click', () => {
            const toast = new bootstrap.Toast(toastLiveExample)
            toast.show()
        })
    }
});
app.controller("productCtrl", function ($scope, $sce, $http, $routeParams) {
    $scope.id = $routeParams.id
    $scope.obj = {}
    $http.get(apiURL_phone + "/" + $scope.id).then(function (res) {
        $scope.obj = res.data
        console.log($scope.obj)
    }, function () {
        // alert("Lỗi không lấy được dữ liệu")
    })



    $scope.cart = {
        fullname: '',
        dungluongGB: '',
        color: '',
        price: ''
    };

    $scope.carts = [];

    $scope.optionChangedGB = function (item) {
        console.log("Selected option: " + item);
        $scope.cart.dungluongGB = item;
    };

    $scope.optionChangedCOLOR = function (color) {
        console.log("Selected color: " + color);
        $scope.cart.color = color;
    };


    $scope.insertGH = function () {
        $scope.cart.fullname = $scope.obj.name;
        $scope.cart.price = $scope.obj.price;
        $scope.carts.push(angular.copy($scope.cart));
        console.log("Sản phẩm đã thêm vào giỏ hàng:", $scope.carts);

        $http.post("http://localhost:3000/giohang", $scope.cart).then((res) => {
            alert("Thao tác thành công!");
        }).catch((err) => {
            console.error("Lỗi khi gửi request: ", err);
            alert("Đã có lỗi xảy ra. Vui lòng thử lại sau!");
        });
    };





    $scope.cartJSON = []
    $http.get("http://localhost:3000/giohang")
        .then(function (res) {
            $scope.cartJSON = res.data
        })
        .catch(function (error) {
            console.error("Lỗi khi lấy dữ liệu:", error);
        });

    $scope.deleteCart = (id) => {
        $http.delete("http://localhost:3000/giohang" + id).then((res) => {
        });
    };
});

