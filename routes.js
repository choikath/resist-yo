FlowRouter.route('/', {
    subscriptions: function(params, queryParams) {

    },
    name: 'index',
    action: function() {
        BlazeLayout.render('layout', {content: 'index'});
    }
});

FlowRouter.route('/about', {
    subscriptions: function(params, queryParams) {

    },
    name: 'about',
    action: function() {
        BlazeLayout.render('layout', {content: 'about'});
    }
});
