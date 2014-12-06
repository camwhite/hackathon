'use strict';
/**
 * @ngdoc function
* @name clientApp.controller:UserRegistrationsCtrl
* @description * # UserRegistrationsCtrl
* Controller of the fakeLunchHubApp
*/
angular.module('clientApp')
.controller('UserRegistrationsCtrl', ['$scope', '$location', '$auth', 'Language', function ($scope, $location, $auth, Language) {
  console.log('UserRegistrationsCtrl');
  $scope.$on('auth:registration-email-error', function(ev, reason) {
    $scope.error = reason.errors[0];
  });
  $scope.handleRegBtnClick = function() {
    $auth.submitRegistration($scope.registrationForm)
    .then(function() {
      $auth.submitLogin({
        email: $scope.registrationForm.email,
        password: $scope.registrationForm.password
      });
    });
  };

  $scope.translator = false;
  // $scope.languages = [
  //   {name: 'Russian'},
  //   {name: 'English'}
  // ];
  $scope.languages = Language.query()

  $scope.userLang = '';
  $scope.userLangs  = [];
  $scope.addUserLang = function() {
    $scope.userLangs.push($scope.userLang);
  };

}]);
