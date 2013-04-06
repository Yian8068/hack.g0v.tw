# Declare app level module which depends on filters, and services

angular.module('scroll', []).value('$anchorScroll', angular.noop)

angular.module \app <[ui ngCookies ngResource partials app.controllers ui.state]>
.config <[$stateProvider $urlRouterProvider]> ++ ($stateProvider, $urlRouterProvider) ->
  $stateProvider
    .state 'about' do
      url: '/about'
      templateUrl: '/partials/about.html'
    .state 'hack' do
      url: '/{hackId}'
      templateUrl: '/partials/hack.html'
      controller: \HackFolderCtrl
    .state 'hack.doc' do
      url: '/{docId}'

  $urlRouterProvider
    .otherwise('/hackfoldr')

.run <[$rootScope $state $stateParams]> ++ ($rootScope, $state, $stateParams) ->
  $rootScope.$state = $state
  $rootScope.$stateParam = $stateParams
