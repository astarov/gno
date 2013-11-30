
Template.commentCollection.helpers
	# for now, get all commets for an esasy at once,
	# we may later want to do it on a per page basis
	comments = Comments.findOne
		essay: Session.get('currentEssay')._id
	leftComments: comments # for now
	rightComments: comments # for now
