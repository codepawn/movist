Template.Main.helpers
  posts: moviedata

Template.Main.events
  'click div[name=remove]': ->
    MovieData.remove _id:this._id
