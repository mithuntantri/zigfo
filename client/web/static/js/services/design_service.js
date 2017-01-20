class DesignService {
  constructor($http) {
    this.$http = $http
    this.allOptions = []
    this.totalPrice = "0"
    this.favorites = false
  }
  initOptions(){
    this.$http({
      url: '/api/product/init',
      method: 'GET'
    }).then((response)=>{
      if(response.data.status === 'success'){
        this.allOptions = response.data.data.all_options
        this.totalPrice = (response.data.data.total_price)
        this.favorites = response.data.data.favorites
        localStorage.designHash = response.data.data.hash
        this.allOptions.gender = response.data.data.gender
        angular.forEach(this.allOptions, (val, key)=>{
          val.active = false
        })
        this.allOptions[0].active = true
      }
    },(error)=>{

    })
  }
  getOptions(hash){
    this.$http({
      url:`/api/product/options?hash=${hash}`,
      method: 'GET'
    }).then((response)=>{
      this.allOptions = response.data.data.all_options
      this.totalPrice = (response.data.data.total_price)
      this.favorites = response.data.data.favorites
      this.allOptions.gender = response.data.data.gender
      localStorage.designHash = response.data.data.hash
      angular.forEach(this.allOptions, (val, key)=>{
        val.active = false
      })
      this.allOptions[0].active = true
    },(error)=>{

    })
  }
  setValue(hash, choice, option){
    this.$http({
      url: '/api/product/options',
      method:'POST',
      data:{
        'hash' : hash,
        'choice' : choice + 1,
        'option' : option + 1
      }
    }).then((response)=>{
      if(response.data.status === 'success'){
        angular.forEach(this.allOptions[choice].options, (val, key)=>{
          val.selected = false
        })
        this.allOptions[choice].options[option].selected = true
        this.totalPrice = (response.data.data.total_price)
      }
    },(error)=>{

    })
  }
  addtoFavorites(hash){
    this.$http({
      url: '/api/favorites',
      method: 'PUT',
      data :{
        hash : hash
      }
    }).then((response)=>{
      if(response.data.status === 'success'){
        this.favorites = true
      }else{

      }
    },(error)=>{

    })
  }
  removeFromFavorites(hash){
    this.$http({
      url: `/api/favorites?hash=${hash}`,
      method: 'DELETE'
    }).then((response)=>{
      if(response.data.status === 'success'){
        this.favorites = false
      }else{

      }
    },(error)=>{

    })
  }
}
DesignService.$inject = ['$http']
angular.module("zigfo").service('DesignService', DesignService)
