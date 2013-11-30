Meteor.Router.add
	'/': 'intro'
	'/home': 'home'
	'/essay/:_id':
		to: 'essayPage'
		and: (id) ->
			Session.set 'currentEssay', id
	'/compose/:_id':
		to: 'composePage'
		and: (id) ->
			Session.set 'currentComposition', id
