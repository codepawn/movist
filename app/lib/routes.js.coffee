Router.configure
  layoutTemplate: 'MasterLayout'
  loadingTemplate: 'Loading'
  notFoundTemplate: 'NotFound'

Router.route '/',
  name: 'home'
  controller: 'HomeController'
  action: 'action'
  where: 'client'

Router.route 'movie_detail',
  name: 'movieDetail'
  controller: 'MovieDetailController'
  action: 'action'
  where: 'client'