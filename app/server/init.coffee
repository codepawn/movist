Meteor.startup ->
  if MovieData.find().count() is 0
    console.log "goo"
#    MovieData.insert(movie_data.json)
