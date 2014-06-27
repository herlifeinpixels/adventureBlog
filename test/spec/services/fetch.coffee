'use strict'

describe 'Service: fetch', () ->

  # load the service's module
  beforeEach module 'angularApp'

  # instantiate service
  fetch = {}
  beforeEach inject (_fetch_) ->
    fetch = _fetch_

  it 'should do something', () ->
    expect(!!fetch).toBe true
