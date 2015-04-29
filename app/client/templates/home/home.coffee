incrementLimit = (inc = 10) ->
  newLimit = Session.get('limit') + inc
  Session.set 'limit', newLimit

Template.Home.events
  'click div[name=remove]': ->
    MovieData.remove _id: this._id

Template.Home.helpers
  posts: ->
    MovieData.find {}, {
      limit: Session.get 'limit'
    }

Template.Home.created = ->
  Session.setDefault 'limit', 15

Template.Home.rendered = ->
  timer = undefined
  $(window).scroll ->
    if $(window).scrollTop() + $(window).height() > $(document).height() - 200
      if timer
        window.clearTimeout timer
      timer = window.setTimeout((->
        console.log 'Fire!!'
        incrementLimit()
      ), 200)

Template.Home.destroyed = ->
