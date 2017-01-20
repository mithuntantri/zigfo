class ProfileService {
  constructor($http, $state, $rootScope, $q, TabsService, AddressService) {
    this.$http = $http
    this.$state = $state
    this.$rootScope = $rootScope
    this.$q = $q
    this.TabsService = TabsService
    this.AddressService = AddressService
    this.username = 'User'
    this.profile_set = false
    this.profile = {
      mobileno: '',
      password: '',
      first_name: 'User',
      last_name: '',
      male: true,
      female: false,
      email_id: '',
      referral_id: ''
    }
    this.credits = {
      profile_credits : 0,
      promo_credits: 0,
      referral_credits : 0
    }
    this.gender = "M"
  }
  submitProfile(){
    if(this.profile_set){
      this.set_user_profile()
    }else{
      this.TabsService.myaccountTabs(false, false, false, false, false, false, false, false, false, false, true)
    }
  }
  changeGender (male, female){
    this.profile.male = male
    this.profile.female = female
    this.gender = "F"
    if (male){
      this.gender = "M"
    }
  }
  update_profile(){
    this.$http({
      url : '/api/profile',
      method: 'PUT',
      data: {
        'mobileno' : this.profile.mobileno,
        'client_id' : "5",
        'email_id':  this.profile.email_id,
        'gender': this.gender,
        'first_name': this.profile.first_name,
        'last_name': this.profile.last_name,
      }
    }).then((response) =>{
      if(response.data.status === 'success'){
        this.get_user_profile()
        this.profile_set = true
        this.$state.go("app.profile")
        this.AddressService.getAddresses()
        this.TabsService.myaccountTabs(false, false, false, false, false, true, false, false, false, false, false)
      }
    }, (error)=>{

    })
  }
  set_user_profile(){
    this.$http({
      url : '/api/profile',
      method: 'POST',
      data: {
        'mobileno' : this.profile.mobileno,
        'client_id' : "5",
        'email_id':  this.profile.email_id,
        'gender': this.gender,
        'first_name': this.profile.first_name,
        'last_name': this.profile.last_name,
      }
    }).then((response) =>{
      if(response.data.status === 'success'){
        this.get_user_profile()
        this.profile_set = true
        this.$state.go("app.profile")
        this.AddressService.getAddresses()
        this.TabsService.myaccountTabs(false, false, false, false, false, true, false, false, false, false, false)
      }
    }, (error)=>{

    })
  }
  get_user_profile(){
    let mobileno = localStorage.mobileno
    this.profile.mobileno = mobileno
    this.profile.password = '********'
    let client_id = localStorage.client_id
    this.$http({
      url: `/api/profile?mobileno=${mobileno}&client_id=${client_id}`,
      method: 'GET'
    }).then((response)=>{
      if(response.data.status === 'success'){
        this.profile_set = true
        let info = response.data.data.personal_info
        let saved_address = response.data.data.saved_address
        let credits = response.data.data.credits
        this.profile = {
          email_id : info.email_id,
          mobileno : info.mobileno,
          first_name : info.first_name,
          last_name : info.last_name,
          male : true,
          female : false,
          referral_id : response.data.data.referral_id
        }
        localStorage.mobileno = info.mobileno
        this.credits = {
          profile_credits : credits.profile_credits,
          promo_credits : credits.promo_credits,
          referral_credits : credits.referral_credits
        }
        this.gender = info.gender
        if (this.gender === "F"){
          this.profile.male = false
          this.profile.female = true
        }
        this.username = this.profile.first_name
        this.AddressService.getAddresses()
      }else if(response.data.status === 'failed'){
        this.profile_set = false
        this.$state.go("app.profile")
        this.TabsService.myaccountTabs(false, false, false, false, false, false, false, false, false, true, false)
      }
    }, (error)=>{
    })
  }
}
ProfileService.$inject = ['$http', '$state', '$rootScope', '$q', 'TabsService', 'AddressService']
angular.module('zigfo').service('ProfileService', ProfileService)
