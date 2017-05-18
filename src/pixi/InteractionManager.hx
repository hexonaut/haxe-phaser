package pixi;

@:native("PIXI.InteractionManager")
extern class InteractionManager {

	var currentCursorStyle:String;
	
	var last:Float;
	
	var mouse:InteractionData;
	
	var mouseOut:Bool;
	
	var mouseoverEnabled:Bool;
	
	var onMouseMove:Dynamic;
	
	var onMouseDown:Dynamic;
	
	var onMouseOut:Dynamic;
	
	var onMouseUp:Dynamic;
	
	var onTouchStart:Dynamic;
	
	var onTouchEnd:Dynamic;
	
	var onTouchMove:Dynamic;
	
	var pool:Array<InteractionData>;
	
	var resolution:Float;
	
	var stage:DisplayObjectContainer;
	
	var touches:Dynamic;
	
	function new(stage:DisplayObjectContainer);
	
}

