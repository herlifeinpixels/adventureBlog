'use strict';

angular.module('angularApp')
  .controller('MainCtrl', function ($scope, fetch) {

    $scope.init = function () {
      $scope.data = null;
      $scope.day = 0;
      $scope.displayEntry($scope.day);
    }

    $scope.days = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];

    $scope.displayEntry = function(entryValue) {
      fetch.fetch("entry/day" + entryValue + "/entry.json").then(function(data) {
          $scope.data = data;
          console.log(data);
      });
    }

    $scope.init()
  });
