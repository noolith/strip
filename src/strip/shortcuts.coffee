# Colors

Mousetrap.bind 'f r', ->
	strip.randFg()

Mousetrap.bind 'b r', ->
	strip.randBg()

Mousetrap.bind 'd', ->
	strip.resetColors()

Mousetrap.bind 'r', randomizePalette

# Canvas

Mousetrap.bind 'mod+z', ->
	strip.cancelLast()

Mousetrap.bind 'n n n', ->
	strip.resetCanvas()

# Tool

Mousetrap.bind 'up', ->
	strip.sizeUp()

Mousetrap.bind 'down', ->
	strip.sizeDown()

# Menu

Mousetrap.bind 'm', toggleMenu
Mousetrap.bind 'esc', toggleMenu