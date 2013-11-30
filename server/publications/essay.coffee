'''
Meteor.publish 'essays', ->
	Essays.find {author:'Pri Mary'}, {fields:
		{author: false}
	}
'''

Meteor.publish 'essays', ->
	Essays.find {}

publish_author = (author) ->
	Meteor.publish "essays_by_#{author}", ->
		Essays.find {author:author}

