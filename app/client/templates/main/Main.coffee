Template.Main.helpers
  posts: ->
    Meteor.Collection.ObjectID().find()

Template.Main.events
  'click div[name=remove]': ->
    MovieData.remove _id:this._id
