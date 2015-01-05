Router.configure
  layoutTemplate: 'Nav'
  notFoundTemplate: ''
Router.route '/', ->
  this.render 'Main'

