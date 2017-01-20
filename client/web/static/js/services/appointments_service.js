class AppointmentsService {
  constructor($http) {
    this.$http = $http
    this.current_date_selection = 0
  }
  getSlots(){
    this.$http({
      url: '/api/slots',
      method:'GET'
    }).then((response)=>{
      if(response.data.status === 'success'){
        this.slots = response.data.data.available
        console.log(this.slots);
        _.each(this.slots, (slot)=>{
          slot.dayofweek = moment.unix(slot.day).format("ddd")
          slot.month = moment.unix(slot.day).format("mmm")
          slot.dateofmonth = moment.unix(slot.day).format("DD")
        })
      }
    }, (error)=>{

    })
  }
}
AppointmentsService.$inject = ['$http']
angular.module('zigfo').service('AppointmentsService', AppointmentsService)
