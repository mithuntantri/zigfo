angular.module("zigfo").controller('mainController',
              ['$scope','$state', '$rootScope', 'LoginService', 'SignupService', 'CartService',
              'FBLoginService', 'ModalService', 'CategoriesService', 'TabsService', 'FabricsService', 'SearchService',
              function($scope, $state, $rootScope, LoginService, SignupService, CartService,
                FBLoginService, ModalService, CategoriesService, TabsService, FabricsService, SearchService){
    $scope.CartService = CartService
    $scope.SearchService = SearchService
      console.log('Main Controller');
      $('#mainpageslider').slick({
         slidesToShow: 4,
         slidesToScroll: 1,
         infinite: true,
         mobileFirst: true,
         responsive: [{
             breakpoint: 500,
             settings: {
                 slidesToShow: 2
             }
         }]
      });
      $scope.carouselPrev = ()=>{
        console.log('going next');
        $('#mainpageslider').slick('slickPrev')
      }
      $scope.carouselNext = ()=>{
        $('#mainpageslider').slick('slickNext')
      }
      $scope.CategoriesService = CategoriesService
      CategoriesService.getCategories()

      $scope.FabricsService = FabricsService
      FabricsService.getTopFabrics()
      FabricsService.getFabricFilters()

      $scope.loggedIn = $rootScope.loggedIn
      $scope.zigfo_wallet = 0
      $scope.loggedIn = false
      $scope.set_expiry = false
      $scope.has_referral_code = false
      $scope.SignupService = SignupService

      $scope.mobileno = ''
      $scope.referral_code = ''
      $scope.otp = ''
      $scope.new_password = ''
      $scope.retype_password = ''
      $scope.password = ''

      $scope.loginWithOtp = false
      $scope.loginWithPassword = true
      $scope.loginWithFB = false

      $scope.changeLoginForm = (type1, type2)=>{
        $scope.loginWithOtp = type1
        $scope.loginWithPassword = type2
        if (type1){
          LoginService.userlogin($scope.mobileno, $scope.set_expiry, $scope.password, type1, $scope.otp, $scope.loginWithFB)
        }
      }
      $scope.changeReferralId = ()=>{
          $scope.has_referral_code = !$scope.has_referral_code
      }
      $scope.changeOtp = ()=>{
        if($scope.otp.length === 6){
          $scope.verifySignUp()
        }
      }
      $scope.confirmPassword = ()=>{

      }
      $('.modal.loginmodal').modal({
          closable: false,
          allowMultiple: false,
          duration: 100,
          detachable: false,
          observeChanges: true,
          context: 'none',
          selector: {
              close: '.fa.fa-times'
          }
      });
      $('.modal.passwordmodal').modal({
          closable: false,
          allowMultiple: false,
          duration: 100,
          detachable: false,
          observeChanges: true,
          context: 'none',
          selector: {
              close: '.fa.fa-times'
          }
      });

      $('.modal.appointments').modal({
          closable: false,
          allowMultiple: false,
          duration: 100,
          detachable: false,
          observeChanges: true,
          context: 'none',
          selector: {
              close: '.fa.fa-times'
          }
      });

      $scope.OpenLoginModal = () =>{
        ModalService.OpenLoginModal()
      }

      $scope.CloseLoginModal = () =>{
        ModalService.CloseLoginModal()
      }

      $scope.OpenPasswordModal = () =>{
        ModalService.OpenPasswordModal()
      }

      $scope.ClosePasswordModal = () =>{
        ModalService.ClosePasswordModal()
      }

      $scope.login_active = true
      $scope.signup_active = false
      $scope.modalTab = (tab)=>{
        if(tab === 'login'){
          $scope.login_active = true
          $scope.signup_active = false
        }
        else {
          $scope.login_active = false
          $scope.signup_active = true
        }
      }

      $scope.secureLogin = ()=>{
        LoginService.userlogin($scope.mobileno, $scope.set_expiry, $scope.password, false, $scope.otp, $scope.loginWithFB)
      }

      $scope.secureSignUp = ()=>{
        SignupService.usersignup($scope.mobileno, $scope.referral_code, $scope.has_referral_code)
      }

      $scope.verifySignUp = ()=>{
        SignupService.verify_signup($scope.mobileno, $scope.otp)
        let set_password = SignupService.set_password
        let set_profile = SignupService.set_profile
        let verified = SignupService.signup_verified
        console.log(set_password, verified);
        if (verified && set_password){
          $scope.CloseLoginModal()
          $scope.OpenPasswordModal()
        }else if (verified && set_profile){
          $scope.CloseLoginModal()
          $scope.ClosePasswordModal()
          $state.go("app.profile")
          TabsService.myaccountTabs(false, false, false, false, false, false, false, false, false, true, false)
        }
      }

      $scope.fbLogin = ()=>{
        FBLoginService.fblogin()
      }

      $scope.createPassword = ()=>{
        SignupService.create_user_password($scope.mobileno, $scope.new_password)
      }

}])
