Template.MovieDetail.events {}

Template.MovieDetail.helpers
  '_id._str': ->
    if @_id._str then @_id else @_id

# MovieDetail: Lifecycle Hooks 
Template.MovieDetail.created = ->

Template.MovieDetail.rendered = ->

Template.MovieDetail.destroyed = ->
