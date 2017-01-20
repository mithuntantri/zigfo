class CategoriesService {
  constructor($http) {
    this.$http = $http
    this.Categories = []
    this.offers = []
    this.sliders = []
  }
  getCategories(){
    this.$http({
      url : '/api/product/categories',
      method: 'GET'
    }).then((response)=>{
      if(response.data.status === 'success'){
        this.Categories = response.data.data
        angular.forEach(this.Categories.categories,(cat)=>{
          if(cat.category_name === 'Top Categories'){
            this.offers = cat.description
          }else{
            this.sliders = cat.description
          }
        })
      }
    },(error)=>{

    })
  }
}
CategoriesService.$inject = ['$http']
angular.module("zigfo").service('CategoriesService', CategoriesService)
