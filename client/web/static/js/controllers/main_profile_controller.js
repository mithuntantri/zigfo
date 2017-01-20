angular.module("zigfo").controller('mainProfileController',
              ['$scope','$state', '$rootScope', '$http', '$auth', '$facebook', 'ProfileService',
              function($scope, $rootScope, $state, $http, $auth, $facebook, ProfileService){

      console.log('App Home COntroller');

      $scope.mobileno = localStorage.mobileno
      $scope.email_id = ''
      $scope.male = true
      $scope.female = false
      $scope.first_name = ''
      $scope.last_name = ''
      $scope.address = ''
      $scope.street = ''
      $scope.pin_code = ''
      $scope.changeGender = (male, female)=>{
        $scope.male = male
        $scope.female = female
      }
      $scope.address = ''
      $scope.street = ''
      $scope.pin_code = ''
      $scope.city = 'Bangalore'

      $scope.setProfile = ()=>{
        if ($scope.male){
          $scope.gender = 'M'
        }else{
          $scope.gender = 'F'
        }
        ProfileService.set_user_profile(
          $scope.mobileno,
          $scope.email_id,
          $scope.gender,
          $scope.first_name,
          $scope.last_name,
          $scope.address,
          $scope.street,
          $scope.pin_code
        )
      }
}])
