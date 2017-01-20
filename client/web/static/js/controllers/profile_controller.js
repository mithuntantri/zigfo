angular.module("zigfo")
.controller('profileController',
  ['$scope','$state','$http', 'TabsService', 'MeasurementsService', 'ModalService', 'AddressService',
    function ($scope, $state, $http, TabsService, MeasurementsService ,ModalService, AddressService) {
      $scope.AddressService = AddressService
      $scope.TabsService = TabsService
      $scope.MeasurementsService = MeasurementsService
      $scope.ModalService = ModalService
}])
