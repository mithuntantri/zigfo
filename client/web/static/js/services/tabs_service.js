class TabsService {
  constructor(MeasurementsService) {
    this.MeasurementsService = MeasurementsService
    this.myaccount_tabs = {
      overview : false,
      myorders : false,
      credits : false,
      coupons : false,
      cashback : false,
      info : true,
      cards : false,
      addresses : false,
      measurements : false,
      editprofile : false,
      editAddress : false
    }
    this.myorders = {
      all_orders : true,
      return_orders : false
    }
  }
  changeOrdersTab(tab1, tab2){
    this.myorders = {
      all_orders : tab1,
      return_orders : tab2
    }
  }
  myaccountTabs(t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11){
    if (t9){
      this.MeasurementsService.getMeasurements()
    }
    this.myaccount_tabs = {
      overview : t1,
      myorders : t2,
      credits : t3,
      coupons : t4,
      cashback : t5,
      info : t6,
      cards : t7,
      addresses : t8,
      measurements : t9,
      editprofile : t10,
      editAddress : t11
    }
  }
}
TabsService.$inject = ['MeasurementsService']
angular.module("zigfo").service('TabsService', TabsService)
