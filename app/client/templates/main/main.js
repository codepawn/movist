/*****************************************************************************/
/* Main: Event Handlers and Helpersss .js*/
/*****************************************************************************/
Template.Main.events({
  /*
   * Example:
   *  'click .selector': function (e, tmpl) {
   *
   *  }
   */
});

Template.Main.helpers({
  /*
   * Example:
   *  items: function () {
   *    return Items.find();
   *  }
   */
});

/*****************************************************************************/
/* Main: Lifecycle Hooks */
/*****************************************************************************/
Template.Main.created = function () {
};

Template.Main.rendered = function () {
  var $container = $('#container');

  $container.imagesLoaded(function () {
    $container.masonry({
      itemSelector: '.item'
    });
  });
};

Template.Main.destroyed = function () {
};