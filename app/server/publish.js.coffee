Meteor.publish 'movies', (limit) ->
  if limit > MovieData.find().count()
    limit = 0

  MovieData.find {}, {
    sort:
      createdAt: -1
      title: -1
    limit: limit
  }

Meteor.publish 'movie', (id)->
  MovieData.find _id: id
