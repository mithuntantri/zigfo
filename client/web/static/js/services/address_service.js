class AddressService {
  constructor($http, TabsService) {
    this.$http = $http
    this.addresses = []
    this.TabsService = TabsService
    this.newaddress = {
      address : '',
      street : '',
      pin_code : '',
      is_default : false
    }
    this.current_operation = 'add'
    this.current_address = ''
  }
  addAddress(){
    this.current_operation = 'add'
    this.TabsService.myaccountTabs(false, false, false, false, false, false, false, false, false, false, true)
  }
  modifyAddress(index){
    this.current_operation = 'update'
    this.current_address = index
    this.newaddress = this.addresses[index]
    this.TabsService.myaccountTabs(false, false, false, false, false, false, false, false, false, false, true)
  }
  removeAddress(index){
    this.current_operation = 'remove'
    this.current_address = index
    this.newaddress = this.addresses[index]
    this.TabsService.myaccountTabs(false, false, false, false, false, false, false, false, false, false, true)
  }
  getAddresses(){
    let mobileno = localStorage.mobileno
    this.$http({
      url: `/api/address?mobileno=${mobileno}`,
      method: 'GET'
    }).then((response)=>{
      if (response.data.status === 'success'){
        this.addresses = response.data.data.all_addresses
        console.log(this.addresses);
      }
    }, (error)=>{
      console.log(error);
    })
  }
  createAddress(){
    let mobileno = localStorage.mobileno
    this.$http({
      url: '/api/address',
      method: 'POST',
      data:{
        mobileno : mobileno,
        address : this.newaddress.address,
        street : this.newaddress.street,
        pin_code : this.newaddress.pin_code,
        is_default : this.newaddress.is_default
      }
    }).then((response)=>{
      this.newaddress = {
        address : '',
        street : '',
        pin_code : '',
        is_default : ''
      }
      this.getAddresses()
      this.TabsService.myaccountTabs(false, false, false, false, false, false, false, true, false, false, false)
    }, (error)=>{

    })
  }
  updateAddress(){
    let mobileno = localStorage.mobileno
    this.$http({
      url:'/api/address',
      method: 'PUT',
      data:{
        mobileno : mobileno,
        address_id : this.addresses[this.current_address].address_id,
        address : this.addresses[this.current_address].address,
        street : this.addresses[this.current_address].street,
        pin_code : this.addresses[this.current_address].pin_code,
        is_default : this.addresses[this.current_address].is_default
      }
    }).then((response)=>{
      if(response.data.status === 'success'){
        this.getAddresses()
        this.TabsService.myaccountTabs(false, false, false, false, false, false, false, true, false, false, false)
      }
    },(error)=>{

    })
  }
  deleteAddress(){
    let mobileno = localStorage.mobileno
    this.$http({
      url:`/api/address?address_id=${this.addresses[this.current_address].address_id}`,
      method: 'DELETE'
    }).then((response)=>{
      if(response.data.status === 'success'){
        this.getAddresses()
        this.TabsService.myaccountTabs(false, false, false, false, false, false, false, true, false, false, false)
      }
    },(error)=>{

    })
  }
}
AddressService.$inject = ['$http', 'TabsService']
angular.module('zigfo').service('AddressService', AddressService)
