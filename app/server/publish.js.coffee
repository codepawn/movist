Meteor.publish 'movies', (limit) ->
  if limit > MovieData.find().count()
    limit = 0

  MovieData.find {}, {
    sort:
      title: -1
    limit: limit
  }