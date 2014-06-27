'use strict'

angular.module('angularApp')
.factory('fetch', function($q, $timeout, $http) {
  var getJson = {
    fetch: function() {

      var deferred = $q.defer();

      $timeout(function() {
          $http.get('entries/day0/entry.json').success(function(data) {
              deferred.resolve(data);
          });
      }, 30);

      return deferred.promise;
    }
  }
  return getJson;
});
