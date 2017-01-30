angular.module("zigfo").controller('mainDesignController',
  ['$scope', '$rootScope', 'DesignService', '$timeout', 'FabricsService',
  function ($scope, $rootScope, DesignService, $timeout, FabricsService) {
      $scope.FabricsService = FabricsService
      $scope.DesignService = DesignService
      if(!localStorage.designHash){
        DesignService.initOptions()
      }else{
        DesignService.getOptions(localStorage.designHash)
      }
      console.log(DesignService.allOptions);

      $scope.styles_active = true
      $scope.fabrics_active = false
      $scope.measurements_active = false
      $scope.checkout_active = false
      $scope.faviconhover = DesignService.favorites

      $scope.changeDesignTabs = (styles, fabrics, measurements, checkout)=>{
        $scope.styles_active = styles
        $scope.fabrics_active = fabrics
        $scope.measurements_active = measurements
        $scope.checkout_active = checkout
        if(fabrics){
          $scope.disableGender = true
          $scope.disableCategory = true
          angular.forEach(FabricsService.filters.gender, (gender, key)=>{
            if(gender.name === "M"){
              gender.applied = true
            }
          })
          angular.forEach(FabricsService.filters.category, (category, key)=>{
            if(category.name==='Shirts'){
              category.applied  = true
            }
          })
          FabricsService.applyFilter('gender', 'M')
          FabricsService.applyFilter('category', 'Shirts')
        }
      }
      $scope.current_active_option = 0
      $scope.changeStylesTab = (index)=>{
        $scope.current_active_option = index
        angular.forEach(DesignService.allOptions, (val, key)=>{
          val.active = false
        })
        DesignService.allOptions[index].active = true
      }
      $scope.changeAdditionalOption = ()=>{
        let choice = $scope.current_active_option
        let index
        switch(choice){
          case 1: index = 1
                  choice = 11
                  if (DesignService.allOptions[11].options[1].selected){
                    index = 0
                  }
                  break
          case 4: index = 1
                  choice = 5
                  if (DesignService.allOptions[5].options[1].selected){
                    index = 0
                  }
                  break
          case 6: index = 1
                  choice = 7
                  if (DesignService.allOptions[7].options[1].selected){
                    index = 0
                  }
                  break
          case 8: index = 1
                  choice = 9
                  if (DesignService.allOptions[9].options[1].selected){
                    index = 0
                  }
                  break
        }
        console.log(choice, index);
        DesignService.setValue(localStorage.designHash, choice, index)
      }
      $scope.changeSubCategory = (index)=>{
        DesignService.setValue(localStorage.designHash, $scope.current_active_option, index)
      }
      $scope.addremoveFavorites = ()=>{
        if(DesignService.favorites){
          DesignService.removeFromFavorites(localStorage.designHash)
        }else{
          DesignService.addtoFavorites(localStorage.designHash)
        }
      }
      $timeout(function() {
        $scope.ready = true;
      }, 1000);
      $('.carousel-content-design').slick({
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
       $('.carousel-content-design').slick('slickPrev')
     }
     $scope.carouselNext = ()=>{
       $('.carousel-content-design').slick('slickNext')
     }
}])
