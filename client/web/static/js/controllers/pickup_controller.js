angular.module("zigfo").controller('pickupController',
              ['$scope','$state', '$rootScope', '$http', '$auth', '$facebook', 'MapsService', '$timeout', 'uiGmapIsReady',
              function($scope, $rootScope, $state, $http, $auth, $facebook, MapsService, $timeout, IsReady){
  $scope.MapsService = MapsService
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
}])
