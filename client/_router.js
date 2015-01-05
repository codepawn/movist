Router.configure({
  layoutTemplate: 'Nav'
});

Router.route('/', function () {
  this.render('Main');
});
