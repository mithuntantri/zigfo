class MapsService {
  constructor($http) {
    this.$http = $http
    this.latitude = 12.91
    this.longitude = 77.54
    this.center = {
        latitude: this.latitude,
        longitude: this.longitude
    };
    this.zoom = 8;
    this.control = {}
  }
}
MapsService.$inject = ['$http']
angular.module('zigfo').service('MapsService', MapsService)
