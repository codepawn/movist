@MovieData = new Mongo.Collection 'moviedata'
MovieData.attachSchema new SimpleSchema
  title:
    type: String
  year:
    type: Number
  poster:
    type: String
  running_time:
    type: Number
  nation:
    type: String
  main_genre:
    type: String
  createdAt:
    type: Date
    autoValue: ->
      new Date
    denyUpdate: true
    autoform:
      omit: true


if Meteor.isServer
  MovieData.allow
    insert: (userId, doc) ->
      true
    update: (userId, doc, fieldNames, modifier) ->
      true
    remove: (userId, doc) ->
      true
