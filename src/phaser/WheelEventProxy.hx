package phaser;

import js.html.Event;

@:native("Phaser.WheelEventProxy")
extern interface WheelEventProxy {

	function bindEvent(event:Dynamic):WheelEventProxy;
	
	var type:String;
	
	var deltaMode:Float;
	
	var deltaX:Float;
	
	var deltaY:Float;
	
	var deltaZ:Float;
	
}

