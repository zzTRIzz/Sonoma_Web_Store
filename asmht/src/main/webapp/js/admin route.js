var admin_app = angular.module('myAdmin', ['ngRoute']);

admin_app.config(function ($routeProvider) {
    $routeProvider
        .when("/list", {
            templateUrl: "quanlySanPham.html",
            controller: "createCtrl"
        })
        .when("/addSanPham", {
            templateUrl: "themSanPham.html",
            controller: "createCtrl"
        })
        .when("/test", {
            templateUrl: "test.html",
            controller: "createCtrl"
        })
        .otherwise({
            redirectTo: "/test",
        });
    
});

var apiURL = "http://localhost:3000/prods"
admin_app.controller("createCtrl", function ($scope, $sce, $http, $timeout) {
    $scope.phoneAdmin = [];

    $http.get(apiURL)
        .then(function (res) {
            $scope.phoneAdmin = res.data[0].phone.concat(res.data[0].laptop);
            console.log("Tất cả: ");
            console.log($scope.phoneAdmin);

            // Xử lý dữ liệu sau khi đã được tải
            $scope.phoneAdmin.forEach(function (p) {
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

            // Sử dụng $timeout để đảm bảo rằng mã sẽ chạy sau khi DOM đã sẵn sàng và AngularJS đã kết thúc quá trình rendering
            $timeout(function () {
                // Khởi tạo DataTables
                $('#myTable').DataTable({
                    "paging": true,
                    "searching": false,
                    "info": true,
                    "lengthMenu": [5, 10, 25, 50, 75, 100],
                    "order": [[0, 'asc']],
                    "language": {
                        "lengthMenu": "Hiển thị _MENU_ dòng mỗi trang",
                        "search": "Tìm kiếm:",
                        "paginate": {
                            "first": "Đầu",
                            "last": "Cuối",
                            "next": "Sau",
                            "previous": "Trước"
                        },
                        "info": "Hiển thị từ _START_ đến _END_ của tổng số _TOTAL_ bản ghi",
                        "infoEmpty": "Hiển thị từ 0 đến 0 của tổng số 0 bản ghi",
                        "infoFiltered": "(đã lọc từ tổng số _MAX_ bản ghi)"
                    }
                });
            });
        })
        .catch(function (error) {
            console.error("Lỗi khi lấy dữ liệu:", error);
        });

    $scope.renderHtml = function (html_code) {
        return $sce.trustAsHtml(html_code);
    };




    $scope.create = () => {
        $http.post(apiURL + "/phone", $scope.form_user).then((res) => {
            alert("Thao tác thành công!");
            // $location.path('/');
        }
        );
    }
});

admin_app.controller("addCtrl", ($scope, $http) => {
    $http.post(apiURL, $scope.form_user).then((res) => {
        alert("Thao tác thành công!");
        $location.path('/');
    }
    );
})
