class LogOutService {
  constructor($http, $rootScope, $state) {
    this.$http = $http
    this.$rootScope = $rootScope
    this.$state = $state
  }
  logOut(){
    this.$http({
      url : '/api/logout',
      method:'DELETE'
    }).then((response)=>{
      if(response.data.status === 'success'){
        localStorage.removeItem('token')
        localStorage.loggedIn = false
        localStorage.removeItem('mobileno')
        localStorage.removeItem('username')
        this.$rootScope.loggedIn = false
        this.$state.go("main.home")
      }
    }, (error)=>{

    })
  }
}
LogOutService.$inject = ['$http', '$rootScope', '$state', 'ModalService']
angular.module("zigfo").service('LogOutService', LogOutService)
