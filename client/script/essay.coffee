Template.essayList.helpers
	essays: ->
		return Essays.find()

Template.essayPage.helpers
	currentEssay: ->
		Essays.findOne Session.get 'currentEssay'


