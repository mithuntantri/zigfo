angular.module("zigfo", ['ui.router', 'satellizer', 'ngMaterial', 'ngFacebook', 'slick', 'gm', 'uiGmapgoogle-maps', 'directive.g+signin', 'socialLogin'])
.run(['$rootScope', '$state', '$stateParams', '$timeout', "TabsService", '$window',
    function($rootScope, $state, $stateParams, $timeout, TabsService, $window) {
    (function(){
       if (document.getElementById('facebook-jssdk')) {return;}
       var firstScriptElement = document.getElementsByTagName('script')[0];
       var facebookJS = document.createElement('script');
       facebookJS.id = 'facebook-jssdk';
       facebookJS.src = '//connect.facebook.net/en_US/all.js';
       firstScriptElement.parentNode.insertBefore(facebookJS, firstScriptElement);
     }());

    let google_api_key = 'AIzaSyBgAgGl-HIKxAttDgILKPskKDhrAzkJlIk'
    let loggedIn = localStorage.loggedIn
    let token = localStorage.token
    let name = localStorage.username
    console.log(loggedIn, token, name);
    if(loggedIn === "true"){
        $rootScope.loggedIn = true
    }

    $rootScope.$on('$stateChangeError', function(event, toState, toParams, fromState, fromParams, error){
      console.log('Unauthorized', error);
      if (error === "Not Authorised") {
        $state.go("main.home")
      } else if(error === "Already Logged In"){
        console.log('Already Logged');
        $state.go("app.home")
      } else if (error === "Token Invalid") {
        $state.go("main.home")
      } else if (error === "No Profile"){
        $state.go("app.profile")
        TabsService.myaccountTabs(false, false, false, false, false, false, false, false, false, true, false)
      }
    })

    $rootScope.$on('tokenexpired', function () {
      localStorage.removeItem('token')
      localStorage.loggedIn = false
      $rootScope.loggedIn = false
      $state.go("main.home")
    })
}])
// A $http interceptor for injecting token and checking for token expiry
.factory('tokenInterceptor', ['$q', '$rootScope',function($q, $rootScope){
    var Interceptor = {
        'request': function(config) {
            if (localStorage.token) {
                config.headers['X-Authorization-Token'] = localStorage.token
                config.headers['Device'] = ''
            }
            return config;
        },
        'responseError': function (rejection) {
            if (rejection.status === 401) {
                $rootScope.$broadcast('tokenexpired')
                return rejection
            }
            return $q.reject(rejection)
        }
    }
    return Interceptor;
}])

  .config(function ($stateProvider, $urlRouterProvider, $locationProvider,
                    $httpProvider, $authProvider, $facebookProvider, socialProvider){

    socialProvider.setGoogleKey(`991813144898-rm87e8mfhsq294b76kj5hgbk02qlbrgj.apps.googleusercontent.com`);
    socialProvider.setFbKey({appId: `1791808574372416`, apiVersion: "v2.7"});
    $locationProvider.html5Mode(true);
    $httpProvider.interceptors.push('tokenInterceptor');
    $urlRouterProvider.otherwise("/");
    $urlRouterProvider.when('/app', '/app/home');
    $facebookProvider.setAppId('1791808574372416');
    // $facebookProvider.setPermissions(["email,user_likes,public_profile"]);
    // State definitions
    $stateProvider
        .state("main", {
          url: "/",
          templateUrl: "partials/main.html",
          controller: "mainController",
          abstract: true,
          resolve:{
            gotoLogin: ['$state', '$q', function ($state, $q) {
                  $state.go('main.home')
                  return $q.resolve()
              }],
              alreadyLoggedIn: ['$q', function($q) {
                  if(localStorage.token){
                      return $q.reject("Already Logged In")
                  }
              }]
          }
        })
        .state("main.verifyemail",{
            url: "confirm-email?token",
            templateUrl: "partials/main.verifyemail.html",
            controller: "verifyEmailController"
        })
        .state("main.home", {
          url: "",
          templateUrl: "partials/main.home.html",
          controller: "mainHomeController"
        })

        .state("main.login", {
          url: "login",
          templateUrl: "partials/main.login.html",
          controller: "mainLoginController"
        })

        .state("main.cart", {
          url: "cart",
          templateUrl: "partials/main.cart.html",
          controller: "mainLoginController"
        })

        .state("main.signup", {
          url: "signup",
          templateUrl: "partials/main.signup.html",
          controller: "mainSignupController"
        })

        .state("main.design", {
          url: "customshirts",
          templateUrl: "partials/main.design.html",
          controller: "mainDesignController"
        })
        .state("main.profile", {
          url: "profile",
          templateUrl: "partials/main.profile.html",
          controller: "mainProfileController"
        })
        .state("main.pickup", {
          url : "pickup",
          templateUrl: "partials/main.pickup.html",
          controller: "pickupController"
        })
        .state("main.fabrics", {
          url : "fabrics",
          templateUrl: "partials/main.fabrics.html",
          controller: "mainFabricsController"
        })
        .state("main.blouses", {
          url : "blouses",
          templateUrl: "partials/main.blouses.html",
          controller: "mainBlousesController"
        })
        .state("app", {
          url: "/app",
          templateUrl: "partials/app.html",
          controller: "appController",
          resolve:{
              loginRequired: ['$q', function($q){
                if(!localStorage.token) {
                  return $q.reject("Not Authorised");
                }
              }],
              getProfile: ['$q', '$http', '$rootScope', 'ProfileService', function ($q, $http, $rootScope, ProfileService) {
                ProfileService.get_user_profile()
              }]
          }
        })

        .state("app.home", {
            url: "/home",
            templateUrl: "partials/app.home.html",
            controller: "homeController"
        })
        .state("app.profile", {
            url: "/profile",
            templateUrl: "partials/app.profile.html",
            controller: "profileController"
        })
        .state("app.measurements", {
            url: "/measurements",
            templateUrl: "partials/app.measurements.html",
            controller: "measurementsController"
        })
        .state("app.credits", {
          url: "/credits",
          templateUrl: "partials/app.credits.html",
          controller: "creditsController"
        })
        .state("app.design", {
          url: "/design",
          templateUrl: "partials/app.design.html",
          controller: "appDesignController"
        })
        .state("app.cart", {
          url: "/cart",
          templateUrl: "partials/app.cart.html",
          controller: "appCartController"
        })
})
.filter('getTotalCredits', ()=>{
  return(c)=>{
    if(!c){
      return 0
    }
    return c.referral_credits + c.profile_credits + c.promo_credits
  }
})
.filter('getGender', ()=>{
  return(gender)=>{
    if (gender === 'M'){
      return "Men"
    }else{
      return "Women"
    }
  }
})
