'use strict';

describe('Controller: QueCtrl', function () {

  // load the controller's module
  beforeEach(module('clientApp'));

  var QueCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    QueCtrl = $controller('QueCtrl', {
      $scope: scope
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(scope.awesomeThings.length).toBe(3);
  });
});
