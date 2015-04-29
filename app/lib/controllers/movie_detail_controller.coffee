@MovieDetailController = RouteController.extend
  subscriptions: ->
  waitOn: ->
    Meteor.subscribe 'movie', new Meteor.Collection.ObjectID(this.params._id)
  data: ->
    MovieData.findOne _id: new Meteor.Collection.ObjectID(this.params._id)

  action: ->
    @render 'MovieDetail', {}