class BlousesService {
  constructor($http) {
    this.$http = $http
    this.Categories = []
    this.FrontSide = true
    this.NeckType = ''
    this.showCategories = false
  }
  getCategories(){
    this.$http({
      url: `/api/blouse/categories`,
      method: 'GET'
    }).then((response)=>{
      if(response.data.status === 'success'){
          this.FrontCategories = response.data.data.slice(0,5)
          this.BackCategories = response.data.data.slice(5,10)
          this.showCategories = true
      }else{

      }
    },(error)=>{

    })
  }
  initOptions(neck_type){
    this.NeckType = neck_type
    this.$http({
      url : `/api/blouse/init?neck_type=${neck_type}`,
      method: 'GEt'
    }).then((response)=>{
      if(response.data.status === 'success'){
          this.BlouseOptions = response.data.data
          this.NeckType = this.BlouseOptions.neck_type
          this.showCategories = false
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
          this.NeckType = this.BlouseOptions.neck_type
          this.showCategories = false
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
        _.each(this.BlouseOptions[category.toLowerCase()], (item)=>{
          item.selected = false
          if(item.name === name){
            item.selected = true
          }
        })
      }
    },(error)=>{

    })
  }
}
BlousesService.$inject = ['$http']
angular.module('zigfo').service('BlousesService', BlousesService)
