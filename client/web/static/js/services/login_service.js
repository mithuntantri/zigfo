class LoginService {
  constructor($http, $rootScope, $state, ModalService, SignupService) {
    this.$http = $http
    this.$rootScope = $rootScope
    this.$state = $state
    this.ModalService = ModalService
    this.SignupService = SignupService
    this.OtpGenerated = false
    this.ErrorField = null
  }
  userlogin(id, set_expiry, password, otp_login, otp, fb_login){
    console.log(id)
    if(otp_login && otp === ''){
      this.login_w_otp(id, "5", set_expiry)
    }else if(otp_login && otp !== ''){
      this.verify_login_otp(id, "5", set_expiry, otp)
    }else if(fb_login){
      this.login_w_fb(id, "5", set_expiry)
    }else{
      this.login_w_id(id, "5", set_expiry, password)
    }
  }
  login_w_id (id, client_id, set_expiry, password){
    console.log('User ID:',id, password);
    this.$http({
      url: '/api/login',
      method: 'POST',
      data:{
        'id': id,
        'client_id' : client_id,
        'set_expiry' : set_expiry,
        'password' : password
      }
    }).then((response)=>{
      if(response.data.status === 'success'){
        this.$rootScope.loggedIn = true
        localStorage.token = response.data.data.secret
        localStorage.loggedIn = true
        localStorage.mobileno = id
        localStorage.client_id = "5"
        this.$state.go("app.home")
      }else{
        this.ErrorField = response.data.message
      }
    },(error)=>{
      console.log('Login Failed:',error);
    })
  }
  login_w_otp (id, client_id, set_expiry){
    console.log('User ID:',id);
    this.$http({
      url: '/api/login',
      method: 'POST',
      data:{
        'id': id,
        'client_id' : client_id,
        'set_expiry' : set_expiry,
        'otp_login' : true,
        'otp' : '',
      }
    }).then((response)=>{
      if(response.data.status === 'success'){
        this.OtpGenerated = true
      }else{
        this.ErrorField = response.data.message
      }
    },(error)=>{
      console.log('Login Failed:',error);
    })
  }
  loginwithGoogle(email, imageUrl, name, token ,uid){
    this.$http({
      url : `/api/google?google_id=${email}`,
      method: 'GET'
    }).then((response)=>{
      if(response.data.status === 'success' && response.data.exists){
        this.$rootScope.loggedIn = true
        localStorage.token = token
        localStorage.loggedIn = true
        localStorage.client_id = "5"
        this.$state.go('app.home')
      }else{
        this.SignupService.GoogleSignup = true
        this.SignupService.GoogleEmail = email
        this.$state.go('main.signup')
      }
    })
  }
  verify_login_otp (mobileno, client_id, set_expiry, otp){
    console.log('User ID:',id);
    this.$http({
      url: '/api/login',
      method: 'POST',
      data:{
        'id': mobileno,
        'client_id' : client_id,
        'set_expiry' : set_expiry,
        'otp_login' : true,
        'otp' : otp
      }
    }).then((response)=>{
      if(response.data.status === 'success'){
        this.$rootScope.loggedIn = true
        localStorage.token = response.data.data.secret
        localStorage.loggedIn = true
        localStorage.mobileno = mobileno
        localStorage.client_id = "5"
        this.ModalService.CloseLoginModal()
        this.$state.go('app.home')
      }else{
        this.ErrorField = response.data.message
      }
    },(error)=>{
      console.log('Login Failed:',error);
    })
  }
  login_w_fb (id, client_id, set_expiry){
    console.log('User ID:',id);
    this.$http({
      url: '/api/login',
      method: 'POST',
      data:{
        'id': id,
        'client_id' : client_id,
        'set_expiry' : set_expiry,
        'fb_login' : true
      }
    }).then((response)=>{
      if(response.data.status === 'success'){
        this.$rootScope.loggedIn = true
        localStorage.token = response.data.data.secret
        localStorage.loggedIn = true
        localStorage.mobileno = mobileno
        localStorage.client_id = "5"
        this.ModalService.CloseLoginModal()
        this.$state.go("app.home")
      }
    },(error)=>{
      console.log('Login Failed:',error);
    })
  }
}
LoginService.$inject = ['$http', '$rootScope', '$state', 'ModalService', 'SignupService']
angular.module("zigfo").service('LoginService', LoginService)
