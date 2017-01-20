angular.module("zigfo").controller('mainLoginController',
              ['$scope','$state', '$rootScope', 'LoginService', 'SignupService',
              'FBLoginService', 'ModalService', 'CategoriesService', 'TabsService', '$auth',
              function($scope, $state, $rootScope, LoginService, SignupService,
                FBLoginService, ModalService, CategoriesService, TabsService, $auth){
                  $scope.google_client_id = '991813144898-rm87e8mfhsq294b76kj5hgbk02qlbrgj.apps.googleusercontent.com'
                  let google_secret = `tS3pUJLPknnaNiQ8nsQHncoX`
                $scope.LoginService = LoginService
                $scope.userid = ''
                $scope.password = ''
                $scope.loginwithotp = false
                $scope.otp = ''

                $scope.secureLogin = ()=>{
                  LoginService.userlogin($scope.userid, true,$scope.password, false, $scope.otp, false)
                }
                $scope.secureLoginwithOtp = ()=>{
                  LoginService.userlogin($scope.userid, true, $scope.password, true, $scope.otp, false)
                }
                $scope.verifyLoginwithOtp = ()=>{
                  LoginService.userlogin($scope.userid, true, $scope.password, true, $scope.otp.toString(), false)
                }
                //   $scope.signUp = function () {
                //   $auth.signup({email: $scope.email, password: $scope.password})
                //     .then(function (response) {
                //       $auth.setToken(response);
                //       $state.go('app.home');
                //     })
                //     .catch(function (response) {
                //       toastr.error(
                //         'Error!',
                //         {closeButton: true}
                //       );
                //     })
                // };
                // $scope.$on('event:google-plus-signin-success', function (event,authResult) {
                //   console.log(event, authResult)
                // });
                // $scope.$on('event:google-plus-signin-failure', function (event,authResult) {
                //   console.log(event, authResult);
                // });
                $scope.fbLogin = ()=>{
                   FBLoginService.fblogin()
                 }
                $scope.$on('event:social-sign-in-success', function (event,authResult) {
                  console.log(event, authResult)
                  LoginService.loginwithGoogle(authResult.email,authResult.imageUrl,authResult.name,authResult.token,authResult.uid)
                })
                // $scope.login = function () {
                //   $auth.login({email: $scope.email, password: $scope.password})
                //     .then(function (response) {
                //       $auth.setToken(response);
                //       $state.go('app.home');
                //     })
                //     .catch(function (response) {
                //       toastr.error(
                //         'Email or password not correct!',
                //         {closeButton: true}
                //       );
                //     })
                // };
                //
                // $scope.auth = function (provider) {
                //   $auth.authenticate(provider)
                //     .then(function (response) {
                //       let token = $auth.getToken()
                //       console.debug("success", response, token);
                //       $state.go('app.home');
                //     })
                //     .catch(function (response) {
                //       console.debug("catch", response);
                //     })
                // }




                  // $scope.fbLogin = ()=>{
                  //   FBLoginService.fblogin()
                  // }
                  // $scope.login = function() {
                  //   $auth.login($scope.user)
                  //     .then(function() {
                  //       console.log('Logged in succssfully');
                  //       $state.go("app.home")
                  //     })
                  //     .catch(function(error) {
                  //       toastr.error(error.data.message, error.status);
                  //     });
                  // };
                  // $scope.authenticate = function(provider) {
                  //   $auth.authenticate(provider).then(()=>{
                  //     console.log('Logged in succssfully');
                  //     $state.go("app.home")
                  //   })
                  //   .catch(function(error) {
                  //     if (error.message) {
                  //       console.log(error.message);
                  //     } else if (error.data) {
                  //       console.log(error.data.message, error.status);
                  //     } else {
                  //       console.log(error);
                  //     }
                  //   });
                  // };
                  // $scope.onSignIn = (googleUser)=> {
                  //   var profile = googleUser.getBasicProfile();
                  //   console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
                  //   console.log('Name: ' + profile.getName());
                  //   console.log('Image URL: ' + profile.getImageUrl());
                  //   console.log('Email: ' + profile.getEmail());
                  //   var id_token = googleUser.getAuthResponse().id_token;
                  //   console.log('Token:', + id_token);
                  // }
                }])
