class SearchService{
  constructor(FabricsService){
    this.FabricsService = FabricsService
    this.searchtext = ''
    this.results = []
    this.searchmap = {}
  }
  makeSearchMap(){
    this.brands = _.map(this.FabricsService.filters.brand,(brand)=>{
      return brand.name
    })
    this.tabs = ['Profile', 'Edit Profile', 'Measurements', 'Orders', 'Favorites', 'Cart', 'Coupons', 'Credits']
    this.searchmap = {
      'Brands' : this.brands,
      'Places' : this.tabs
    }
    console.log(this.searchmap);
  }
  search(){
    this.makeSearchMap()
    if(this.searchtext.length >= 2){

    }
  }
}
SearchService.$inject = ['FabricsService']
angular.module('zigfo').service('SearchService', SearchService)
