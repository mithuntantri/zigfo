class FabricsService{
  constructor($http, Notifications, CartService){
    this.$http = $http
    this.Notifications = Notifications
    this.CartService = CartService
    this.topFabrics = []
    this.filters = []
    this.fabrics = []
    this.favorites = false
  }
  getNumber (num) {
      return new Array(num);
  }
  getTopFabrics(){
    let quality = 3
    this.$http({
      url : '/api/fabrics?quality=3',
      method: 'GET'
    }).then((response)=>{
      if(response.data.status === 'success'){
        this.topFabrics = response.data.data
      }else{

      }
    },(error)=>{

    })
  }
  getFabricFilters(){
    this.$http({
      url: '/api/fabrics/filter',
      method: 'GET'
    }).then((response)=>{
      if(response.data.status === 'success')  {
        this.filters = response.data.data
        angular.forEach(this.filters.quality, (quality)=>{
          quality.name = parseFloat(quality.name)
        })
        console.log(this.filters);
      }
    },(error)=>{

    })
  }
  getAllFabrics(){
    this.$http({
      url: '/api/fabrics',
      method: 'GET'
    }).then((response)=>{
      if(response.data.status === 'success'){
        this.fabrics = response.data.data
        angular.forEach(this.fabrics, (fabric)=>{
          fabric.stars = parseFloat(fabric.quality)
        })
      }
    },(error)=>{

    })
  }
  applyFilter(item, value){
    console.log(this.filters);
    let filter1, filter2, filter3, filter4, filter5
    let url1 = '', url2 = '', url3 = '', url4 = '', url5 = ''
    angular.forEach(this.filters.brand, (brand)=>{
      if(brand.applied && filter1 !== undefined){
        filter1 = filter1+`,`+brand.name
        url1 = `brand=${filter1}`
      }else if(brand.applied && filter1 === undefined){
        filter1 = brand.name
        url1 = `brand=${filter1}`
      }
    })
    angular.forEach(this.filters.category, (category)=>{
      if(category.applied && filter2 !== undefined){
        filter2 = filter2+`,`+category.name
        url2 = `category=${filter2}`
      }else if(category.applied && filter2 === undefined){
        filter2 = category.name
        url2 = `category=${filter2}`
      }
    })
    angular.forEach(this.filters.gender, (gender)=>{
      if(gender.applied && filter3 !== undefined){
        filter3 = filter3+`,`+gender.name
        url3 = `gender=${filter3}`
      }else if(gender.applied && filter3 === undefined){
        filter3 = gender.name
        url3 = `gender=${filter3}`
      }
    })
    angular.forEach(this.filters.quality, (quality)=>{
      if(quality.applied && filter4 !== undefined){
        filter4 = filter4+`,`+quality.name
        url4 = `quality=${filter4}`
      }else if(quality.applied && filter4 === undefined){
        filter4 = quality.name
        url4 = `quality=${filter4}`
      }
    })
    angular.forEach(this.filters.material, (material)=>{
      if(material.applied && filter5 !== undefined){
        filter5 = filter5+`,`+material.name
        url5= `material=${filter5}`
      }else if(material.applied && filter5 === undefined){
        filter5 = material.name
        url5 = `material=${filter5}`
      }
    })
    this.$http({
      url : `/api/fabrics?${url1}&${url2}&${url3}&${url4}&${url5}`,
      method: 'GET'
    }).then((response)=>{
      if(response.data.status === 'success'){
        this.fabrics = response.data.data
        angular.forEach(this.fabrics, (fabric)=>{
          fabric.stars = parseFloat(fabric.quality)
        })
      }
    },(error)=>{

    })
  }
  addtoCart(){
    if(!localStorage.cartHash){
      this.CartService.getCart().then((response)=>{
        this.addFabrictoCart()
      })
    }else{
      this.addFabrictoCart()
    }
  }
  addFabrictoCart(){
    this.$http({
      url: `/api/cart`,
      method:'POST',
      data: {
        'hash' : localStorage.cartHash,
        'fabric_id' : this.fabrics[0].fabric_id
      }
    }).then((response)=>{
      if(response.data.status === 'success'){
        this.CartService.item_count = response.data.item_count
        this.Notifications.showSuccessToast(`Product Added to Cart. You Have ${response.data.item_count} items in cart`)
      }
    },(error)=>{

    })
  }
}
FabricsService.$inject = ['$http', 'Notifications', 'CartService']
angular.module('zigfo').service('FabricsService', FabricsService)
