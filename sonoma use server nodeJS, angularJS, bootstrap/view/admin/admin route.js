var admin_app = angular.module('myAdmin', ['ngRoute']);

admin_app.config(function ($routeProvider) {
    $routeProvider
        .when("/list", {
            templateUrl: "quanlySanPham.html",
            controller: "createCtrl"
        })
        .when("/list/add", {
            templateUrl: "themSanPham.html",
            controller: "createCtrl"
        })
        .when("/list/edit/:id", {
            templateUrl: "suaSanPham.html",
            controller: "updateCtrl"
        })
        .when("/test", {
            templateUrl: "test.html",
            controller: "createCtrl"
        })
        .otherwise({
            redirectTo: "/list",
        });

});


var apiURL_danhmuc = "http://localhost:3000/danhmuc/"
var apiURL_phone = "http://localhost:3000/phone/"
var apiURL_laptop = "http://localhost:3000/laptop/"
var jsonURL = "database/db.json"
admin_app.controller("createCtrl", function ($scope, $sce, $http, $timeout) {
    $scope.phoneAdmin = [];

    $http.get(apiURL_phone)
        .then(function (res) {
            $scope.phoneAdmin = res.data
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
                    "searching": true,
                    "info": true,
                    "lengthMenu": [5, 10, 25, 50, 75, 100],
                    "order": [[0, 'asc']],
                    "language": {
                        "lengthMenu": "Hiển thị _MENU_ dòng mỗi trang",
                        "search": "Tìm kiếm:",
                        "paginate": {
                            "first": '<i class="fa-solid fa-backward"></i>',
                            "last": '<i class="fa-solid fa-forward"></i>',
                            "next": '<i class="fa-solid fa-arrow-right"></i>',
                            "previous": '<i class="fa-solid fa-arrow-left"></i>'
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

    $scope.themDungLuongButton = () => {

    }



    $scope.renderHtml = function (html_code) {
        return $sce.trustAsHtml(html_code);
    };

    $scope.selectedDungluongGB = [];

    $scope.toggleCheckbox = function (value) {
        var index = $scope.selectedDungluongGB.indexOf(value);
        if (index === -1) {
            $scope.selectedDungluongGB.push(value);
        } else {
            $scope.selectedDungluongGB.splice(index, 1);
        }
    };


    $scope.colors = [''];
    $scope.addColor = function () {
        $scope.colors.push('');
    };
    $scope.removeColor = function (index) {
        $scope.colors.splice(index, 1);
    };

    $scope.imgList = ['']
    $scope.addImg = function () {
        $scope.imgList.push('')
    }
    $scope.removeImg = function (index) {
        $scope.imgList.splice(index, 1)
    }


    var endpoint = "";
    $scope.onChangeLoaiSP = () => {
        console.log("Loại " + $scope.loaiSP);
        if ($scope.loaiSP === "Điện thoại 1") {
            console.log("Chào");
            endpoint = apiURL_phone;
        } else if ($scope.loaiSP === "Laptop 3") {
            endpoint = apiURL_laptop;
        }else{
            console.log("Chưa được chọn");
        }
        console.log("Endpoint: " + endpoint);
    }


    $scope.onChangeGiamGia = () =>{
        $scope.ketquaGIAM = parseInt(100 - $scope.price/$scope.old * 100)
        console.log($scope.ketquaGIAM + "%");
    }


    $scope.create = () => {
        var formObj = {
            name: $scope.name,
            loaiSP: $scope.loaiSP,
            price: parseInt($scope.price),
            old: parseInt($scope.old),
            dungluongGB: $scope.selectedDungluongGB,
            color: $scope.colors,
            img: $scope.imgList,
            content: $scope.content,
        };

        $http.post(endpoint, formObj).then((res) => {
            alert("Thao tác thành công!");
            $scope.name = "";
            $scope.loaiSP = "";
            $scope.price = "";
            $scope.old = "";
            $scope.selectedDungluongGB = [];
            $scope.color = [];
            $scope.img = [];
            $scope.content = "";
            endpoint = "";
        }).catch((err) => {
            console.error("Lỗi khi gửi request: ", err);
            alert("Đã có lỗi xảy ra. Vui lòng thử lại sau!");
        });
    };
    




    // Xóa
    $scope.delete = (id) => {
        if (confirm("Có chắc xóa không?")) {
            $http.delete(apiURL_phone + id).then((res) => {
                alert("Thao tác thành công!");
            });
        }
    };





    //Laptop
    $scope.laptopAdmin = [];

    $http.get(apiURL_laptop)
        .then(function (res) {
            $scope.laptopAdmin = res.data
            console.log("Tất cả: ");
            console.log($scope.laptopAdmin);

            // Xử lý dữ liệu sau khi đã được tải
            $scope.laptopAdmin.forEach(function (p) {
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
                $('#myTableLaptop').DataTable({
                    "paging": true,
                    "searching": true,
                    "info": true,
                    "lengthMenu": [5, 10, 25, 50, 75, 100],
                    "order": [[0, 'asc']],
                    "language": {
                        "lengthMenu": "Hiển thị _MENU_ dòng mỗi trang",
                        "search": "Tìm kiếm:",
                        "paginate": {
                            "first": '<i class="fa-solid fa-backward"></i>',
                            "last": '<i class="fa-solid fa-forward"></i>',
                            "next": '<i class="fa-solid fa-arrow-right"></i>',
                            "previous": '<i class="fa-solid fa-arrow-left"></i>'
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

    // Xóa
    $scope.deleteLaptop = (id) => {
        if (confirm("Có chắc xóa không?")) {
            $http.delete(apiURL_laptop + id).then((res) => {
                alert("Thao tác thành công!");
            });
        }
    };

    
    
});

admin_app.controller("updateCtrl", function ($scope, $http, $routeParams) {
    // Lấy ID sản phẩm từ tham số đường dẫn
    $scope.id = $routeParams.id;

    // Khởi tạo đối tượng sản phẩm
    $scope.product = {};

    // Gửi yêu cầu GET để lấy dữ liệu sản phẩm cần sửa
    $http.get(apiURL_phone + "/" + $scope.id)
        .then(function (response) {
            // Lấy dữ liệu sản phẩm
            $scope.product = response.data;
        })
        .catch(function (error) {
            // Xử lý lỗi khi không lấy được dữ liệu
            console.error("Lỗi khi lấy dữ liệu sản phẩm:", error);
            alert("Lỗi khi lấy dữ liệu sản phẩm. Vui lòng thử lại sau!");
        });

    // Hàm cập nhật sản phẩm
    $scope.updateProduct = function () {
        // Gửi yêu cầu PUT để cập nhật sản phẩm
        $http.put(apiURL_phone + "/" + $scope.id, $scope.product)
            .then(function (response) {
                // Xử lý khi cập nhật thành công
                alert("Sửa sản phẩm thành công!");
                // Chuyển hướng người dùng đến trang danh sách sản phẩm
                window.location.href = "#!/list";
            })
            .catch(function (error) {
                // Xử lý khi cập nhật thất bại
                console.error("Lỗi khi cập nhật sản phẩm:", error);
                alert("Có lỗi xảy ra khi cập nhật sản phẩm. Vui lòng thử lại sau!");
            });
    };
});

