angular.module("zigfo").controller('measurementsController',
              ['$scope','$state', '$rootScope', '$http', '$auth', '$facebook', 'MeasurementsService',
              function($scope, $rootScope, $state, $http, $auth, $facebook, MeasurementsService){
      console.log('Measurements Controller');
      MeasurementsService.getMeasurements()
      $scope.measurementsService = MeasurementsService
      $scope.measurements = $scope.measurementsService.measurements
      $scope.updateMeasurements = ()=>{
        MeasurementsService.updateMeasurements($scope.measurements)
      }
}])
