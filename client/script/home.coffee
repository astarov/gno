Meteor.subscribe 'essays'

Template.composeEssay.helpers
	currentComposition: ->
		Essays.findOne Session.get 'currentComposition'

Template.composeEssay.events
	'submit form': (e) ->
		e.preventDefault()
		$('#home').slideUp()
		essay = 
			title: $(e.target).find('#essay-title').val()
			content: $(e.target).find('#essay-content').val()
		essay._id = Essays.insert(essay)
		alert(essay._id)
		Meteor.Router.to 'essayPage', essay

