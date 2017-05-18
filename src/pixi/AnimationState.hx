package pixi;

@:native("PIXI.AnimationState")
extern class AnimationState {

	function new(stateData:Dynamic);
	
	var animationSpeed:Float;
	
	var current:Dynamic;
	
	var previous:Dynamic;
	
	var currentTime:Float;
	
	var previousTime:Float;
	
	var currentLoop:Bool;
	
	var previousLoop:Bool;
	
	var mixTime:Float;
	
	var mixDuration:Float;
	
	var queue:Array<Animation>;
	
	function update(delta:Float):Void;
	
	function apply(skeleton:Dynamic):Void;
	
	function clearAnimation():Void;
	
	function setAnimation(animation:Dynamic, loop:Bool):Void;
	
	function setAnimationByName(animationName:String, loop:Bool):Void;
	
	function addAnimationByName(animationName:String, loop:Bool, delay:Float):Void;
	
	function addAnimation(animation:Dynamic, loop:Bool, delay:Float):Void;
	
	function isComplete():Float;
	
}

