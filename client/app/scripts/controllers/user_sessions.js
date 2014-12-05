'use strict';

/**
 * @ngdoc function
 * @name fakeLunchHubApp.controller:UserSessionsCtrl
 * @description
 * # UserSessionsCtrl
 * Controller of the clientApp
*/

angular.module('clientApp')
.controller('UserSessionsCtrl', ['$scope', function ($scope) {
  $scope.$on('auth:login-error', function(ev, reason) {
    $scope.error = reason.errors[0];
  });
}]);
