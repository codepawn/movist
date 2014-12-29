Router.configure({
  layoutTemplate: 'nav'
});

Router.route('/', function () {
  this.render('main');
});
