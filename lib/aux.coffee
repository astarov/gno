nameToUrl = (str) ->
	str = str.replace '-', '--'
	str.replace ' ', '-'

urlToName = (url) ->
	url = url.replace '-', ' '
	url.replace '  ', '-'

