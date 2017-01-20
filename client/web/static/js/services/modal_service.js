class ModalService{
  constructor(){

  }
  OpenMeasurementsModal(){
    console.log('open modal');
    $('.modal.measurements').modal('show')
  }
  CloseMeasurementsModal(){
    $('.modal.measurements').modal('hide')
  }
  OpenLoginModal(){
    $('.modal.loginmodal').modal('show')
  }

  CloseLoginModal(){
    $('.modal.loginmodal').modal('hide')
  }

  OpenPasswordModal(){
    $('.modal.passwordmodal').modal('show')
  }

  ClosePasswordModal(){
    $('.modal.passwordmodal').modal('hide')
  }
  OpenAppointmentsModal(){
    $('.modal.appointments').modal('show')
  }
  CloseAppointmentsModal(){
    $('.modal.appointments').modal('hide')
  }
}
ModalService.$inject = []
angular.module('zigfo').service('ModalService',ModalService)
