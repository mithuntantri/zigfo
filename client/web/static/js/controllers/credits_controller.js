angular.module("zigfo")
.controller('creditsController', ['$scope','$http','$state',
  function ($scope, $http, $state) {
  console.log('Dashboard Loaded');
  $scope.gotoProfile = ()=>{
    $http({
      url:'/api/login/verify',
      method: 'POST',
      data: {
        'username': $cookies.get('name')
      }
    }).then((response)=>{
      console.log(response);
      if(!response.data.data.authorized){
        $cookies.remove('token')
        $cookies.remove('name')
        $cookies.remove('loggedIn')
        $state.go("login")
      }else{
        $state.go("profile")
      }
    })
  }
}])
