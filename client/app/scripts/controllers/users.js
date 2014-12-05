'use strict';

/**
* @ngdoc function
* @name fakeLunchHubApp.controller:GroupsCtrl
* @description
* # GroupsCtrl
* Controller of the fakeLunchHubApp
*/
angular.module('clientApp')
.controller('UsersCtrl', ['$scope', 'User', function ($scope, User) {
  console.log('In UsersCtrl');
  $scope.users = User.query();
}]);
