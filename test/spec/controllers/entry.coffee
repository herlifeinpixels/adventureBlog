'use strict'

describe 'Controller: EntryCtrl', () ->

  # load the controller's module
  beforeEach module 'angularApp'

  EntryCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    EntryCtrl = $controller 'EntryCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
