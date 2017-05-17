package pixi;

import js.html.Event;

@:native("PIXI.InteractionData")
extern class InteractionData {

	var global:Point;
	
	var target:Sprite;
	
	var originalEvent:Event;
	
	function getLocalPosition(displayObject:DisplayObject, ?point:Point, ?globalPos:Point):Point;
	
}

