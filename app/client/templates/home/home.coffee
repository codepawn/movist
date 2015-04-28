Template.Home.events
  'click div[name=remove]': ->
    MovieData.remove _id: this._id

Template.Home.helpers
  posts: ->
    MovieData.find()

# Home: Lifecycle Hooks 
Template.Home.created = ->

Template.Home.rendered = ->

Template.Home.destroyed = ->
