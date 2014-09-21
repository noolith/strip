# Menu toggling

menuActive = false

this.toggleMenu = ->
	if menuActive then $('#menu').removeClass 'active' else $('#menu').addClass 'active'
	menuActive = !menuActive

$('#menu-toggle').click toggleMenu


# Color pickers

randColor = () -> '#' + Math.floor(Math.random()*16777215).toString(16)

this.randomizePalette = ->
	$('#menu .color_picker:not(.active)').each ->
		$(this).css 'background', randColor()

$('.color_picker')
.click ->
	strip.colors.fg = $(this).css('background-color')
	$('.color_picker').removeClass 'active'
	$(this).addClass 'active'

randomizePalette()