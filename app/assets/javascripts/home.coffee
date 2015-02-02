# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


app = angular.module('app',['ui.bootstrap', 'templates'])

app.controller('homeCtrl', ['$scope', ($scope)->
  $scope.alerts = [
    type: 'danger'
    msg: 'This is an error message.'
    info: null
  ,
    type: 'success'
    msg: 'This is a success message'
    info: null
  ]

  $scope.addAlert = ->
    $scope.alerts.push(msg: 'New alert.')

  $scope.closeAlert = (index) ->
    $scope.alerts.splice(index, 1)

  $scope.updateAlerts = ->
    _.forEach($scope.alerts, (alert) ->
      alert.info = Date.now()
    )
])


