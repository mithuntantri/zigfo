class CartService{
  constructor($q,$http){
    this.$q = $q
    this.$http = $http
    this.item_count = 0
  }
  getCart(){
    let deferred = this.$q.defer()
    if(!localStorage.cartHash){
      this.$http({
        url: `/api/cart`,
        method:'GET'
      }).then((response)=>{
        if(response.data.status === 'success'){
          localStorage.cartHash  = response.data.data.hash
          return deferred.resolve()
        }
      },(error)=>{
        return deferred.reject()
      })
    }else if(localStorage.mobileno){
      this.$http({
        url: `/api/cart?${localStorage.mobileno}`,
        method:'GET'
      }).then((response)=>{
        if(response.data.status === 'success'){
          localStorage.cartHash  = response.data.data.hash
          return deferred.resolve()
        }
      },(error)=>{
        return deferred.reject()
      })
    }
    return deferred.promise
  }
}
CartService.$inject = ['$q','$http']
angular.module('zigfo').service('CartService', CartService)
