package pixi;

@:native("PIXI.Spine")
extern class Spine extends DisplayObjectContainer {

	function new(url:String);
	
	var autoUpdate:Bool;
	
	var spineData:Dynamic;
	
	var skeleton:Skeleton;
	
	var stateData:AnimationStateData;
	
	var state:AnimationState;
	
	var slotContainers:Array<DisplayObjectContainer>;
	
	function createSprite(slot:Slot, descriptor:{name:String}):Array<Sprite>;
	
	function update(dt:Float):Void;
	
}

