angular.module("zigfo").controller('mainBlousesController',
              ['$scope','$state', '$rootScope', '$http', '$auth', '$facebook', 'BlousesService', '$timeout',
              function($scope, $rootScope, $state, $http, $auth, $facebook, BlousesService, $timeout){
        $scope.BlousesService = BlousesService
        if(!localStorage.blouseHash){
          BlousesService.getCategories()
        }else{
          BlousesService.getOptions()
        }

        $scope.styles_active = true
        $scope.fabrics_active = false
        $scope.measurements_active = false
        $scope.checkout_active = false
        $scope.current_active_option = 0
        $scope.changeStylesTab = (index)=>{
          $scope.current_active_option = index
        }
        $scope.options1 = ["Front", "Back", "Sleeves", "Cut", "Blouse Length"]
        $scope.options2 = ["front", "back", "sleeves", "cut", "blouse_length"]
        $scope.changeSubCategory = (index)=>{
          let category = $scope.options2[$scope.current_active_option]
          let name = BlousesService.BlouseOptions[category][index].name
          let type = BlousesService.NeckType
          category = $scope.options1[$scope.current_active_option]
          console.log(category, name, type)
          BlousesService.setValue(localStorage.blouseHash, name, category, type)
        }
        $timeout(function() {
          $scope.ready = true;
        }, 1000);
        $('.carousel-content-design1').slick({
           slidesToShow: 6,
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
         $('.carousel-content-design1').slick('slickPrev')
       }
       $scope.carouselNext = ()=>{
         $('.carousel-content-design1').slick('slickNext')
       }

}])
