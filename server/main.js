Meteor.startup(function () {
    ServiceConfiguration.configurations.upsert(
        { service: "mhealth" },
        {
	    $set: {
                clientId: Meteor.settings.MHEALTH_ID,
		/* loginStyle can be 'redirect' or 'popup'. The former is good if you don't want to
		   worry about refreshing your state after login/logout */
                loginStyle: "redirect",
                secret: Meteor.settings.MHEALTH_SECRET
	    }
        }
    );
});
