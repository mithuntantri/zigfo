class MeasurementsService {
  constructor($http, $state, ModalService) {
    this.$http = $http
    this.$state = $state
    this.ModalService = ModalService
    this.measurements = []
    this.measurements_exists = false
    this.current_tip = ''
  }
  changeTips(current){
    switch(current){
      case 0  : this.current_tip = ''
                break
      case 1 : this.current_tip = 'Neck Measurements usaully range between 9 and 23 inch'
                break
      case 2 : this.current_tip = 'Chest Measurements usaully range between 28 and 75 inch'
                break
      case 3 : this.current_tip = 'Waist Measurements usaully range between 24 and 73 inch'
                break
      case 4 : this.current_tip = 'Hip Measurements usaully range between 24 and 73 inch'
                break
      case 5 : this.current_tip = 'Length Measurements usaully range between 19 and 42 inch'
                break
      case 6 : this.current_tip = 'Shoulder Measurements usaully range between 14 and 27 inch'
                break
      case 7 : this.current_tip = 'Sleeve Measurements usaully range between 18 and 30 inch'
                break
    }
  }
  changeUnits(cm,inch){
    this.measurements.cms = cm
    this.measurements.inches = inch
    this.measurements.units = "0"
    if (inch){
      this.measurements.units = "1"
    }
  }
  getMeasurements(){
    let mobileno = localStorage.mobileno
    let client_id = "5"
    this.$http({
      url :`/api/measurements?&mobileno=${mobileno}&client_id=${client_id}`,
      method: 'GET'
    }).then((response)=>{
      if(response.data.status === 'success'){
        this.measurements = response.data.data
        this.measurements.neck = parseFloat(this.measurements.neck)
        this.measurements.chest = parseFloat(this.measurements.chest)
        this.measurements.waist = parseFloat(this.measurements.waist)
        this.measurements.hip = parseFloat(this.measurements.hip)
        this.measurements.length = parseFloat(this.measurements.length)
        this.measurements.shoulder = parseFloat(this.measurements.shoulder)
        this.measurements.sleeve = parseFloat(this.measurements.sleeve)
        if (this.measurements.neck !== 0){
          this.measurements_exists = true
        }
        this.measurements.inches = true
        this.measurements.cms = false
        if (this.measurements.units === "0"){
          this.measurements.cms = true
          this.measurements.inches = false
        }
      }
    }, (error)=>{

    })
  }
  updateMeasurements(){
    let m = this.measurements
    let mobileno = localStorage.mobileno
    let client_id = "5"
    this.$http({
      url:'/api/measurements',
      method:'POST',
      data:{
        'measurement_id': m.measurement_id,
        'mobileno': mobileno,
        'client_id': client_id,
        'name': m.name,
        'units' : m.units,
        'neck': (m.neck).toString(),
        'chest': (m.chest).toString(),
        'waist': (m.waist).toString(),
        'hip': (m.hip).toString(),
        'length': (m.length).toString(),
        'shoulder': (m.shoulder).toString(),
        'sleeve': (m.sleeve).toString(),
        'is_default': true
      }
    }).then((response)=>{
      if(response.data.status === 'success'){
        this.measurements_exists = true
        this.ModalService.CloseMeasurementsModal()
        this.measurements = {
          'mobileno': mobileno,
          'client_id': client_id,
          'name': m.name,
          'units' : m.units,
          'neck' : m.neck,
          'chest': m.chest,
          'waist': m.waist,
          'hip': m.hip,
          'length': m.length,
          'shoulder': m.shoulder,
          'sleeve': m.sleeve,
          'is_default': true
        }
      }
    }, (error)=>{

    })
  }
}
MeasurementsService.$inject = ['$http', '$state', 'ModalService']
angular.module("zigfo").service('MeasurementsService',MeasurementsService)
