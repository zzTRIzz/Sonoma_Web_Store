var app = angular.module('myApp', ['ngRoute']);

app.config(function ($routeProvider) {
    $routeProvider
        .when("/home", {
            templateUrl: "home.html",
            controller: "homeCtrl"
        })
        .when("/cart", {
            templateUrl: "cart.html",
            controller: "productCtrl"
        })
        .when("/product/:id", {
            templateUrl: "product.html",
             controller: "productCtrl"
        })
        .when("/contact", {
            templateUrl: "contact.html",
            controller: "contactCtrl"
        })
        .when("/about", {
            templateUrl: "about.html",
        })
        .when("/account/register", {
            templateUrl: "register.html",
        })
        .when("/card", {
            templateUrl: "component/card.html",
            //  controller: "cardCtrl"
        })
        
        .otherwise({
            redirectTo: "/home",
            // template: "<h1>Không hiển thị</h1>"
        });
});












