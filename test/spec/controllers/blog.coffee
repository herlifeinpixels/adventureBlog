'use strict'

describe 'Controller: BlogCtrl', () ->

  # load the controller's module
  beforeEach module 'angularApp'

  BlogCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    BlogCtrl = $controller 'BlogCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
