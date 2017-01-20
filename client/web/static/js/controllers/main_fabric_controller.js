angular.module("zigfo")
.controller('mainFabricsController', ['$scope','$http','$state', 'FabricsService',
  function ($scope, $http, $state, FabricsService) {
    $scope.FabricsService = FabricsService
    FabricsService.getAllFabrics()

    $scope.showfabrics = true
    $scope.showdetails = false
    $scope.showBag = false
    $scope.showPayment = false

    $scope.gotoFabrics = ()=>{
      if($scope.showBag || $scope.showdetails){
        $scope.showdetails = false
        $scope.showBag = false
        $scope.showfabrics = true
      }
    }
    $scope.gotoDetails = ()=>{
      if($scope.showBag){
        $scope.showfabrics = false
        $scope.showdetails = true
        $scope.showbag = false
      }
    }
    $scope.gotoBag = () =>{
      $scope.showfabrics = false
      $scope.showdetails = false
      $scope.showBag = true
    }

    $scope.showFabricDetails = (index)=>{
      $scope.showfabrics = false
      $scope.showdetails = true
      $scope.selectedfabric = index
    }

    $scope.hideFabricDetails = ()=>{
      $scope.showdetails = false
      $scope.showfabrics = true
    }
  }])
