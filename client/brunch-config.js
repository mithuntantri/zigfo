exports.config={
  files:{
    javascripts : {
      joinTo : {
        'js/app.js' : /^(web\/static\/js)/,
        'js/vendor.js': [
            /^(web\/static\/vendor)/,
            'bower_components/jquery/dist/jquery.js',
            'bower_components/angular/angular.js',
            'bower_components/angular-ui-router/release/angular-ui-router.js',
            'bower_components/ng-facebook/ngFacebook.js',
            'bower_components/angular-cookies/angular-cookies.js',
            'bower_components/semantic/dist/semantic.js',
            'bower_components/materialize/bin/materialize.js',
            'bower_components/angular-aria/angular-aria.js',
            'bower_components/angular-animate/angular-animate.js',
            'bower_components/angular-messages/angular-messages.js',
            'bower_components/angular-material/angular-material.js',
            'bower_components/moment/moment.js',
            'bower_components/satellizer/dist/satellizer.js',
            'bower_components/underscore/underscore.js',
            'bower_components/slick-carousel/slick/slick.min.js',
            'bower_components/angular-slick/dist/slick.js',
            'bower_components/angularjs-google-maps/dist/angularjs-google-maps.js',
            'bower_components/angularjs-social-login/angularjs-social-login.js'
        ]
      },
      order : {
        before : [
          'bower_components/jquery/dist/jquery.js',
          'bower_components/angular/angular.js',
          'bower_components/angular-ui-router/release/angular-ui-router.js',
          'bower_components/ng-facebook/ngFacebook.js',
          'bower_components/angular-cookies/angular-cookies.js',
          'bower_components/semantic/dist/semantic.js',
          'bower_components/materialize/bin/materialize.js',
          'bower_components/angular-aria/angular-aria.js',
          'bower_components/angular-animate/angular-animate.js',
          'bower_components/angular-messages/angular-messages.js',
          'bower_components/angular-material/angular-material.js',
          'bower_components/moment/moment.js',
          'bower_components/satellizer/dist/satellizer.js',
          'bower_components/underscore/underscore.js',
          'bower_components/slick-carousel/slick/slick.min.js',
          'bower_components/angular-slick/dist/slick.js',
          'bower_components/angularjs-google-maps/dist/angularjs-google-maps.js',
          'bower_components/angularjs-social-login/angularjs-social-login.js'
        ]
      }
    },
    stylesheets : {
      joinTo : {
        'css/app.css' : [
          /^(web\/static\/css)/,
          /^(web\/static\/sass)/
        ],
        'css/vendor.css' : [
          'bower_components/materialize/bin/materialize.css',
          'bower_components/angular-material/angular-material.css',
          'bower_components/semantic/dist/semantic.css',
          'bower_components/slick-carousel/slick/slick.css',
          'bower_components/slick-carousel/slick/slick-theme.css',
        ]
      },
      order:{
        before : [
          'bower_components/materialize/bin/materialize.css',
          'bower_components/angular-material/angular-material.css',
          'bower_components/semantic/dist/semantic.css',
          'bower_components/slick-carousel/slick/slick.css',
          'bower_components/slick-carousel/slick/slick-theme.css',
        ]
      }
    }
  },
  conventions: {
		assets: /^(web\/assets)/
	},

	paths: {
		watched: ['web/static', 'web/assets'],
		public: "public"
	},

	plugins: {

	},

	modules: {
		autoRequire: {
			"js/app.js": ["web/static/js/app"]
		}
	},

	npm: {
		enabled: true
	}
};
