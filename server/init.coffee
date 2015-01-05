Meteor.startup ->
  if MovieData.find().count() is 0
    console.log "g"
