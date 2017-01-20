angular.module("zigfo").controller('appController',
              ['$scope','$state', '$rootScope', '$http', '$auth', '$facebook','ProfileService', 'LogOutService', 'MeasurementsService', 'TabsService', 'CategoriesService', 'AddressService', 'FabricsService',
              function($scope, $state, $rootScope, $http, $auth, $facebook, ProfileService, LogOutService, MeasurementsService, TabsService, CategoriesService, AddressService, FabricsService){
  console.log('App Controller');
  $scope.credits = 0
  $scope.ProfileService = ProfileService
  $scope.MeasurementsService = MeasurementsService
  $scope.FabricsService = FabricsService
  
  $scope.logOut = ()=>{
    LogOutService.logOut()
  }
  $scope.gotoOrders = ()=>{
    $state.go("app.profile")
    TabsService.myaccountTabs(false, true, false, false, false, false, false, false, false, false, false)
  }
  $scope.gotoCredits=()=>{
    $state.go("app.profile")
    TabsService.myaccountTabs(false, false, true, false, false, false, false, false, false, false, false)
  }
  $scope.gotoProfile=()=>{
    $state.go("app.profile")
    TabsService.myaccountTabs(false, false, false, false, false, true, false, false, false, false, false)
  }
  $scope.gotoSavedCards = ()=>{
    $state.go("app.profile")
    TabsService.myaccountTabs(false, false, false, false, false, false, true, false, false, false, false)
  }
  $scope.gotoSavedAddress = ()=>{
    $state.go("app.profile")
    TabsService.myaccountTabs(false, false, false, false, false, false, false, true, false, false, false)
    AddressService.getAddresses()
  }
  $scope.gotoMeasurements = ()=>{
    $state.go("app.profile")
    TabsService.myaccountTabs(false, false, false, false, false, false, false, false, true, false, false)
  }
  $scope.gotoEditProfile = ()=>{
    $state.go("app.profile")
    TabsService.myaccountTabs(false, false, false, false, false, false, false, false, false, true, false)
  }
  $('#mainpageslider').slick({
     slidesToShow: 4,
     slidesToScroll: 1,
     infinite: true,
     mobileFirst: true,
     responsive: [{
         breakpoint: 500,
         settings: {
             slidesToShow: 2
         }
     }]
  });
  $scope.carouselPrev = ()=>{
    console.log('going next');
    $('#mainpageslider').slick('slickPrev')
  }
  $scope.carouselNext = ()=>{
    $('#mainpageslider').slick('slickNext')
  }
  $scope.CategoriesService = CategoriesService
  CategoriesService.getCategories()
}])
