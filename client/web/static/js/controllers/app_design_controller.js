angular.module("zigfo").controller('appDesignController',
  ['$scope', '$rootScope', '$timeout', 'DesignService', 'ModalService', 'uiGmapIsReady', 'MapsService', 'AppointmentsService',
  function ($scope, $rootScope, $timeout, DesignService, ModalService, IsReady, MapsService, AppointmentsService) {
      $scope.ModalService = ModalService
      $scope.DesignService = DesignService
      $scope.AppointmentsService = AppointmentsService
      if(!localStorage.designHash){
        DesignService.initOptions()
      }else{
        DesignService.getOptions(localStorage.designHash)
      }
      console.log(DesignService.allOptions);
      $scope.faviconhover = false
      $scope.styles_active = true
      $scope.fabrics_active = false
      $scope.measurements_active = false
      $scope.checkout_active = false

      $scope.changeDesignTabs = (styles, fabrics, measurements, checkout)=>{
        $scope.styles_active = styles
        $scope.fabrics_active = fabrics
        $scope.measurements_active = measurements
        $scope.checkout_active = checkout
      }
      $scope.current_active_option = 0
      $scope.changeStylesTab = (index)=>{
        $scope.current_active_option = index
        angular.forEach(DesignService.allOptions, (val, key)=>{
          val.active = false
        })
        DesignService.allOptions[index].active = true
      }
      $scope.changeSubCategory = (index)=>{
        DesignService.setValue(localStorage.designHash, $scope.current_active_option, index)
      }
      $timeout(function() {
        $scope.ready = true;
      }, 1000);
      $('.carousel-content-app-design').slick({
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
       $('.carousel-content-app-design').slick('slickPrev')
     }
     $scope.carouselNext = ()=>{
       $('.carousel-content-app-design').slick('slickNext')
     }
     $scope.MapsService = MapsService

       // $timeout(function () {
       //   $scope.marker.coords = {
       //     latitude: 12.91,
       //     longitude: 77.51
       //   };
       //   $scope.dynamicMoveCtr++;
       //   $timeout(function () {
       //     $scope.marker.coords = {
       //       latitude: 12.91,
       //       longitude: 77.51
       //     };
       //     $scope.dynamicMoveCtr++;
       //   }, 1000);
       // }, 1000);
       $scope.autocompleteMaps = ()=>{
         $timeout(function () {
           navigator.geolocation.getCurrentPosition(function(pos) {
             $scope.position = new google.maps.LatLng(pos.coords.latitude, pos.coords.longitude);
             $scope.center.latitude = $scope.position.lat()
             $scope.center.longitude = $scope.position.lng()
             $scope.marker.coords.latitude = $scope.center.latitude
             $scope.marker.coords.longitude = $scope.center.longitude
             console.log($scope.center, $scope.marker);
             $scope.$apply()
           },
           function(error) {
             alert('Unable to get location: ' + error.message);
           }, $scope.options);
         }, 2000);
       }
       $scope.generatedMaps = false
       $scope.generateMaps = ()=>{
         $scope.center = {
                 latitude: 12.91,
                 longitude: 77.51
             };
             $scope.zoom = 17
             $scope.control = {};
             IsReady.promise().then(function (maps) {
                 var map1 = $scope.control.getGMap();
                 var map2 = maps[0].map;
             });
         $scope.$on('gmPlacesAutocomplete::placeChanged', function(){
             var location = $scope.autocomplete.getPlace().geometry.location;
             $scope.center.latitude = location.lat();
             $scope.center.longitude = location.lng();
             $scope.marker.coords.latitude = location.lat()
             $scope.marker.coords.longitude = location.lng()
             $scope.zoom = 17
             $scope.$apply();
         })
         $scope.options = {scrollwheel: false, enableHighAccuracy: true};
           $scope.coordsUpdates = 0;
           $scope.dynamicMoveCtr = 0;
           $scope.marker = {
             id: 0,
             coords: {
               latitude: 12.91,
               longitude: 77.51
             },
             options: { draggable: true },
             events: {
               dragend: function (marker, eventName, args) {
                 var lat = marker.getPosition().lat();
                 var lon = marker.getPosition().lng();

                 $scope.marker.options = {
                   draggable: true,
                   labelContent: "lat: " + $scope.marker.coords.latitude + ' ' + 'lon: ' + $scope.marker.coords.longitude,
                   labelAnchor: "100 0",
                   labelClass: "marker-labels"
                 };
               }
             }
           };
           $scope.$watchCollection("marker.coords", function (newVal, oldVal) {
             if (_.isEqual(newVal, oldVal))
               return;
             $scope.coordsUpdates++;
           });
           $scope.generatedMaps = true
       }
       $scope.appointments_page = false
       $scope.gotoAppointments = ()=>{
         $scope.appointments_page = true
         AppointmentsService.getSlots()
       }
       $scope.getDuration = () =>{

       }
}])
