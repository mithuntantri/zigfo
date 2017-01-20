class BlousesService {
  constructor($http) {
    this.$http = $http
    this.Categories = []
    this.NeckType = ''
  }
  getCategories(){
    this.$http({
      url: `/api/blouse/categories`,
      method: 'GET'
    }).then((response)=>{
      if(response.data.status === 'success'){
          this.Categories = response.data.data
      }else{

      }
    },(error)=>{

    })
  }
  initOptions(){
    this.$http({
      url : `/api/blouse/init?neck_type=${this.NeckType}`,
      method: 'GEt'
    }).then((response)=>{
      if(response.data.status === 'success'){
          this.BlouseOptions = response.data.data
          localStorage.blouseHash = this.BlouseOptions.hash
      }else{

      }
    },(error)=>{

    })
  }
  getOptions(){
    this.$http({
      url : `/api/blouse/options?hash=${localStorage.blouseHash}`,
      method: 'GET'
    }).then((response)=>{
      if(response.data.status === 'success'){
          this.BlouseOptions = response.data.data
      }else{

      }
    },(error)=>{

    })
  }
  setValue(hash, name, category, type){
    this.$http({
      url : `/api/blouse/options`,
      method: 'POST',
      data : {
        hash : hash,
        name : name,
        category : category,
        type : type
      }
    }).then((response)=>{
      if(response.data.status === 'success'){

      }
    },(error)=>{
      
    })
  }
}
BlousesService.$inject = ['$http']
angular.module('zigfo').service('BlousesService', BlousesService)
