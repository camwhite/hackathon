'use strict';

describe('Controller: TranslationCtrl', function () {

  // load the controller's module
  beforeEach(module('clientApp'));

  var TranslationCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    TranslationCtrl = $controller('TranslationCtrl', {
      $scope: scope
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(scope.awesomeThings.length).toBe(3);
  });
});
