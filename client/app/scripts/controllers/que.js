'use strict';

/**
 * @ngdoc function
 * @name clientApp.controller:QueCtrl
 * @description
 * # QueCtrl
 * Controller of the clientApp
 */
angular.module('clientApp')
  .controller('QueCtrl', function ($scope) {
    $scope.things = [
      {
        name: 'Request One',
        description: 'A requested translation'
      },
      {
        name: 'Request Two',
        description: 'A requested translation'
      },
      {
        name: 'Request Three',
        description: 'A requested translation'
      }
    ];


  });
