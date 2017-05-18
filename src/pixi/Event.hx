package pixi;

@:native("PIXI.Event")
extern class Event {

	function new(target:Dynamic, name:String, data:Dynamic);
	
	var target:Dynamic;
	
	var type:String;
	
	var data:Dynamic;
	
	var timeStamp:Float;
	
	function stopPropagation():Void;
	
	function preventDefault():Void;
	
	function stopImmediatePropagation():Void;
	
}

