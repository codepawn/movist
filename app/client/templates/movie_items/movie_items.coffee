Template.MovieItems.events


Template.MovieItems.helpers {}

# MovieItems: Lifecycle Hooks 
Template.MovieItems.created = ->
  
Template.MovieItems.rendered = ->
  $('.rateit').rateit()
  
Template.MovieItems.destroyed = ->
