strip.view = view;
strip.canvas = new Layer();
if(strip.saved) strip.canvas.importSVG(strip.saved);

// tool.minDistance = 10;

var path;

function onMouseDown(event){
	path = new Path({
		strokeColor: strip.colors.fg,
		strokeWidth: strip.tools.size,
	});
}

function onMouseDrag(event){
	var point = path.add(event.point);
}

function onMouseUp(event){
	
	if(path.segments.length > 10)
		path.simplify();

	strip.history.push(path);
	strip.save();
}