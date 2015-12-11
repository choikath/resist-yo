Router.configure({
   layoutTemplate: 'layout'
 });
Router.route('/', function () {
    this.render('home');
});
Router.route('/about', function () {
    this.render('about');
});


if (Meteor.isClient) {
  Session.setDefault('counter', 0);

  Template.home.helpers({
    counter: function () {
      return Session.get('counter');
    }
  });

  Template.home.events({
    'click button': function () {
      Session.set('counter', Session.get('counter') + 1);
    }
  });


Template.nav.helpers({
    activeIfTemplateIs: function (template) {
      var currentRoute = Router.current();
      return currentRoute &&
        template === currentRoute.lookupTemplate() ? 'active' : '';
    }
  });


 } /* isClient */

if (Meteor.isServer) {
    Meteor.startup(function () {
	ServiceConfiguration.configurations.upsert(
            { service: "mhealth" },
            {
		$set: {
                    clientId: Meteor.settings.MHEALTH_ID,
                    loginStyle: "redirect",
                    secret: Meteor.settings.MHEALTH_SECRET
		}
            }
	);
    });
} /* isServer */
