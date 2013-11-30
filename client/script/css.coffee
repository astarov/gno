$(document).ready ()->	
	# for now, we use a button
	elem = document.getElementById 'background'
	trigger = document.getElementById 'style-trigger'
	$(trigger).on 'click', () ->
		# alert 'hi'
		$(elem).addClass 'new-bg'
		'''
		$(elem).animate {
			'background-color': '#fafafa'
		}, 500, 'linear', ()->
			alert 'hi'
		'''

	$('aside.margin-comment').on 'click', () ->
		if this.hasClass 'left'
			$('#left-margin').addClass 'expanded'
			$('#right-margin').addClass 'contracted'
		else
			$('#right-margin').addClass 'expanded'
			$('#left-margin').addClass 'contracted'
		$('div#content-wrapper').addClass 'contracted'

