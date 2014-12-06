'use strict';

/**
 * @ngdoc function
 * @name clientApp.controller:TranslationCtrl
 * @description
 * # TranslationCtrl
 * Controller of the clientApp
 */
angular.module('clientApp')
  .controller('TranslationCtrl', function ($scope) {
    $scope.languages = [
      {name: 'Russian'},
      {name: 'English'}
    ];

    $scope.text = '';

    var recognition = new webkitSpeechRecognition();

    recognition.continuous = true;
    recognition.interimResults = true;

    recognition.onresult = function(event) {
      for(var i = event.resultIndex; i < event.results.length; ++i) {
        $scope.$apply(function() {
          $scope.text = event.results[i][0].transcript;
        });
        if(event.results[i].isFinal) {
          $scope.$apply(function() {
            $scope.text = event.results[i][0].transcript;
          });
        }
      }
    };

    $scope.on = false;

    $scope.startStop = function() {
      $scope.on = !$scope.on;
      if($scope.on) {
        recognition.start();
      }
      if(!$scope.on) {
        recognition.stop();
      }
    };
  });
