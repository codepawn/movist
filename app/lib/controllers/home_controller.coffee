@HomeController = RouteController.extend
  layoutTemplate: 'MasterLayout'
  subscriptions: ->
  waitOn: ->
#    Meteor.subscribe 'movies'
  action: ->
    @render 'Home'
    Deps.autorun ->
      Meteor.subscribe('movies', Session.get('limit'))
