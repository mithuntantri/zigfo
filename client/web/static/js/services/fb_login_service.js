class FBLoginService {
  constructor($facebook, $rootScope, LoginService, ModalService, SignupService, $state, $http) {
    this.$facebook = $facebook
    this.$rootScope = $rootScope
    this.LoginService = LoginService
    this.ModalService = ModalService
    this.SignupService = SignupService
    this.$state = $state
    this.$http = $http
    this.set_expiry = false
  }
  fblogin (set_expiry) {
    this.set_expiry = set_expiry
    let this_temp = this
    this.$facebook.login().then(function() {
      // var auth_token = authResponse.accessToken
      // console.log(auth_token);
      this_temp.fb_refresh();
    });
  }
  fblogout () {
    let this_temp = this
    this.$facebook.logout().then(function() {
      this_temp.fb_refresh();
    })
  }
  fb_refresh() {
    let this_temp = this
    let modal_service = this.ModalService
    let login_service = this.LoginService
    this.$facebook.api("/me?fields=id,name,email").then(
      function(resp) {
        console.log("Facebook login response",resp);
        this_temp.$http({
          url : `/api/facebook?facebook_id=${resp.id}`,
          method: 'GET'
        }).then((response)=>{
          if(response.data.status === 'success' && response.data.exists){
            this_temp.LoginService.login_w_fb(resp.id,"5",true)
          }else{
            this_temp.SignupService.FacebookSignup = true
            if(resp.email){
              this_temp.SignupService.GoogleEmail = resp.email
            }else{
              this_temp.SignupService.GoogleEmail = ''
            }
            this_temp.SignupService.FacebookID = resp.id
            this_temp.$state.go('main.signup')
          }
        },(error)=>{

        })
        // modal_service.CloseLoginModal()
        // login_service.userlogin(response.id, this_temp.set_expiry, "", false, "", true)
      },
      function(err) {
      });
  }
}
FBLoginService.$inject = ['$facebook', '$rootScope', 'LoginService', 'ModalService', 'SignupService', '$state', '$http']
angular.module('zigfo').service('FBLoginService', FBLoginService)
