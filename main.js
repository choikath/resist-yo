Router.route('/', function () {
    this.layout("layout");
    this.render('home');
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
 }

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
}
