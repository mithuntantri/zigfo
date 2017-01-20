angular.module("zigfo").controller('mainSignupController',
              ['$scope','$state', '$rootScope', 'LoginService', 'SignupService',
              'FBLoginService', 'ModalService', 'CategoriesService', 'TabsService',
              function($scope, $state, $rootScope, LoginService, SignupService,
                FBLoginService, ModalService, CategoriesService, TabsService){
                    $scope.email = SignupService.GoogleEmail
                    $scope.emailFormat = /^[a-z]+[a-z0-9._]+@[a-z]+\.[a-z.]{2,5}$/;
                    $scope.password = ''
                    $scope.referral_code = ''
                    $scope.mobileno = ''
                    $scope.mobileno = ''
                    $scope.male = true
                    $scope.female = false
                    $scope.firstname = ''
                    $scope.lastname = ''
                    if ($scope.male){
                      $scope.gender = 'M'
                    }else{
                      $scope.gender = 'F'
                    }
                    $scope.otp = ''
                    $scope.setGender = ()=>{
                      if ($scope.male){
                        $scope.gender = 'M'
                      }else{
                        $scope.gender = 'F'
                      }
                    }
                    $scope.secureSignup = ()=>{
                      let has_referral_code = false
                      if ($scope.referral_code !== ""){
                        has_referral_code = true
                      }
                      SignupService.usersignup($scope.email, $scope.password, $scope.mobileno, $scope.referral_code, has_referral_code, $scope.firstname, $scope.lastname, $scope.gender)
                    }
                    $scope.verifyOtp = ()=>{
                      SignupService.verify_signup($scope.mobileno.toString(), $scope.otp.toString())
                    }
                    $scope.fbLogin = ()=>{
                       FBLoginService.fblogin()
                     }
                    $scope.$on('event:social-sign-in-success', function (event,authResult) {
                      console.log(event, authResult)
                      LoginService.loginwithGoogle(authResult.email,authResult.imageUrl,authResult.name,authResult.token,authResult.uid)
                    })
                }])
