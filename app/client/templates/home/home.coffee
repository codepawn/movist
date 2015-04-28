incrementLimit = (inc = 10) ->
  newLimit = Session.get('limit') + inc
  Session.set 'limit', newLimit

Template.Home.events
  'click div[name=remove]': ->
    MovieData.remove _id: this._id

  'click [name=more]': ->
    incrementLimit()

Template.Home.helpers
  posts: ->
    MovieData.find {}, {
      limit: Session.get 'limit'
    }

Template.Home.created = ->
  Session.setDefault 'limit', 10

Template.Home.rendered = ->
  $(window).scroll ->
    if $(window).scrollTop() + $(window).height() > $(document).height() - 50
      incrementLimit()

Template.Home.destroyed = ->
