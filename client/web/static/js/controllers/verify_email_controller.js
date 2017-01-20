angular.module("zigfo").controller('verifyEmailController',
              ['$scope','$state', '$rootScope', 'LoginService', 'SignupService',
              'FBLoginService', 'ModalService', 'CategoriesService', 'TabsService', '$stateParams', '$http',
              function($scope, $state, $rootScope, LoginService, SignupService,
                FBLoginService, ModalService, CategoriesService, TabsService, $stateParams, $http){
                  console.log($stateParams.token);
                  $http({
                    url : `/api/verifyemail?token=${$stateParams.token}`,
                    method: 'GET'
                  }).then((response)=>{
                    if(response.data.status === 'success'){
                      $scope.verifiedEmail = true
                      $scope.verificationMessage = response.data.message
                    }else{
                      $scope.verifiedEmail = false
                      $scope.verificationMessage = response.data.message
                    }
                  },(error)=>{

                  })
                  $scope.resendEmail =()=>{
                    $http({
                      url: `/api/resendemail?token=${$stateParams.token}`,
                      method: 'GET'
                    }).then((response)=>{
                      if(response.data.status === 'success'){
                        $scope.verificationMessage = 'New Verification Link has been sent! Please Check your Email ID'
                      }
                    },(error)=>{

                    })
                  }
                }])
