
class SignupService {
  constructor($http, $rootScope, $state, ModalService) {
    this.$http = $http
    this.$rootScope = $rootScope
    this.otp_generated = false
    this.$state = $state
    this.ModalService = ModalService
    this.GoogleSignup = false
    this.GoogleEmail = ''
    this.set_password = false
    this.set_profile = false
    this.signup_verified = false
    this.ErrorField = null
    this.FacebookSignup = false
    this.FacebookID = ''
  }
  usersignup(email, password, mobileno, referral_id, referral_id_exits, firstname, lastname, gender){
    if (referral_id_exits){
      this.signup_w_referral(email, password, mobileno.toString(), "5", referral_id, firstname, lastname, gender)
    }else{
      this.signup_wo_referral(email, password, mobileno.toString(), "5", firstname, lastname, gender)
    }
  }
  signup_w_referral(email, password, mobileno, client_id, referral_id, firstname, lastname, gender){
    this.$http({
      url : '/api/signup',
      method: 'POST',
      data:{
        'email_id' : email,
        'password' : password,
        'mobileno' : mobileno,
        'client_id' : client_id,
        'referral_id' : referral_id,
        'firstname' : firstname,
        'lastname' : lastname,
        'gender' : gender,
        'fb_id' : this.FacebookID
      }
    }).then((response)=>{
      if (!response.data.data.is_valid_refcode){
        this.ErrorField2 = true
      }else if(!response.data.data.is_new_user){
        this.ErrorField1 = true
      }else if(response.data.data.is_new_user && response.data.data.is_valid_refcode){
        if(response.data.data.otp_generated){
          this.otp_generated = true
        }else{
          this.ErrorField3 = true
        }
      }
    },(error)=>{
      console.log('Sign up failed:',error);
    })
  }
  signup_wo_referral(email, password, mobileno, client_id, firstname, lastname, gender){
    this.$http({
      url : '/api/signup',
      method: 'POST',
      data:{
        'email_id' : email,
        'password' : password,
        'mobileno' : mobileno,
        'client_id' : client_id,
        'firstname' : firstname,
        'lastname' : lastname,
        'gender' : gender,
        'fb_id' : this.FacebookID
      }
    }).then((response)=>{
      if(response.data.status === 'success'){
        if(!response.data.data.is_new_mobile){
          this.ErrorField = 'Mobile Number already registered'
        }else if(!response.data.data.is_new_email){
          this.ErrorField = 'Email ID already taken'
        }else if(response.data.data.is_valid_refcode){
          if(response.data.data.otp_generated){
            this.otp_generated = true
            console.log(this.otp_generated);
          }else{
            this.ErrorField3 = 'Failed to Register. Please try again!'
          }
        }else{
          this.ErrorField = 'Invalid Referral Code'
        }
      }else{
        this.ErrorField = response.data.message
      }
    },(error)=>{
      console.log('Sign up failed:',error);
    })
  }
  verify_signup(mobileno, otp){
    this.$http({
      url : '/api/signup/verify',
      method: 'POST',
      data: {
        'mobileno': mobileno,
        'otp': otp
      }
    }).then((response)=>{
      if(response.data.status === 'success'){
        console.log('coming here');
        this.$rootScope.loggedIn = true
        localStorage.token = response.data.data.secret
        localStorage.loggedIn = true
        localStorage.mobileno = mobileno
        localStorage.client_id = "5"
        this.signup_verified = true
        this.$state.go('app.home')
      }else{
        this.signup_verified = false
        this.ErrorField = response.data.message
      }
    }, (error)=>{

    })
  }
  create_user_password(mobileno, password){
    this.$http({
      url: '/api/setpassword',
      method: 'POST',
      data:{
        'mobileno' : mobileno,
        'client_id' : "5",
        'password': password
      }
    }).then((response)=>{
      this.$rootScope.loggedIn = true
      localStorage.token = response.data.data.secret
      localStorage.loggedIn = true
      localStorage.mobileno = mobileno
      localStorage.client_id = "5"
      if(response.data.data.first_time_login){
        if(!response.data.data.password_set){
          this.ModalService.CloseLoginModal()
          this.ModalService.OpenPasswordModal()
        }else if(!response.data.data.profile_set){
          this.ModalService.CloseLoginModal()
          this.ModalService.ClosePasswordModal()
          this.$state.go("app.profile")
        }
      }
    }, (error)=>{

    })
  }
  create_user_profile(){

  }
}
SignupService.$inject = ['$http', '$rootScope', '$state', 'ModalService']
angular.module("zigfo").service('SignupService', SignupService)
