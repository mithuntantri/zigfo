class Notifications{
  constructor($state, $rootScope, $mdToast){
    this.$state = $state
    this.$rootScope = $rootScope
    this.$mdToast = $mdToast
  }
  showErrorToast (msg){
    this.$mdToast.show(
    this.$mdToast.simple()
      .textContent(msg)
      .position('top right')
      .hideDelay(3000)
      .theme("error-toast")
    );
  }
  showSuccessToast (msg) {
    this.$mdToast.show(
    this.$mdToast.simple()
      .textContent(msg)
      .position('top right')
      .hideDelay(3000)
      .theme("success-toast")
    );
  }
}
Notifications.$inject = ['$state', '$rootScope', '$mdToast']
angular.module('zigfo').service('Notifications',Notifications)
