'use strict';

/**
 * @ngdoc overview
 * @name clientApp
 * @description
 * # clientApp
 *
 * Main module of the application.
 */
var app = angular.module('clientApp', [
    'ngAnimate',
    'ngAria',
    'ngCookies',
    'ngMessages',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'ng-token-auth'
]);

app.config(function ($routeProvider, $locationProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      })
      .when('/sign_in', {
        templateUrl: 'views/user_sessions/new.html',
        controller: 'UserSessionsCtrl'
      })
      .when('/sign_up', {
        templateUrl: 'views/user_registrations/new.html',
        controller: 'UserRegistrationsCtrl'
      })
      .when('/about', {
        templateUrl: 'views/about.html',
        controller: 'AboutCtrl'
      })
      .when('/users', {
        templateUrl: 'views/users.html',
        controller: 'UsersCtrl',
        resolve: {
          auth: ['$auth', function($auth) { return $auth.validateUser(); }]
        }
      })
      .when('/translation', {
        templateUrl: 'views/translation.html',
        controller: 'TranslationCtrl'
      })
      .when('/que', {
        templateUrl: 'views/que.html',
        controller: 'QueCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
      $locationProvider.html5Mode(true);
});

app.factory('User', ['$resource', function($resource) {
    return $resource('/api/users/:id.json', null, {
      'update': { method:'PUT' }
    });
}]);

app.run(['$rootScope', '$location', function($rootScope, $location) {
  $rootScope.$on('auth:login-success', function() { $location.path('/');
  });
}]);
