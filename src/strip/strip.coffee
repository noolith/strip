@strip =
	
	id: ''

	colors:
		fg: 'black'
		bg: 'white'

	tools:
		size: 4

	history: []

	randColor: () -> '#' + Math.floor(Math.random()*16777215).toString(16)
	randFg: () -> @colors.fg = @randColor()
	randBg: () -> @colors.bg = @randColor()

	resetColors: () ->
		@colors.fb = 'black'
		@colors.bg = 'white'

	resetCanvas: () ->
		@canvas.removeChildren()
		@history = []
		@view.draw()

	sizeUp: () ->
		@tools.size += 1 if @tools.size < 60
	sizeDown: () ->
		@tools.size -= 1 if @tools.size > 1

	cancelLast: () ->
		last = @history.pop()
		last.remove() if last?
		@view.draw()

	save: () ->
		svg = paper.project.exportSVG asString: true
		$.post "/#{@id}", strip: svg

		
