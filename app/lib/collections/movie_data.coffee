@MovieData = new Mongo.Collection 'moviedata'


if Meteor.isServer
  MovieData.allow
    insert: (userId, doc) ->
      true
    update: (userId, doc, fieldNames, modifier) ->
      true
    remove: (userId, doc) ->
      true
