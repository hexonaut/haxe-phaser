package phaser;

@:native("Phaser.IGameConfig")
extern interface IGameConfig {

	@:optional
	var enableDebug:Bool;
	
	@:optional
	var width:Float;
	
	@:optional
	var height:Float;
	
	@:optional
	var renderer:Float;
	
	@:optional
	var parent:Dynamic;
	
	@:optional
	var transparent:Bool;
	
	@:optional
	var antialias:Bool;
	
	@:optional
	var resolution:Float;
	
	@:optional
	var preserveDrawingBuffer:Bool;
	
	@:optional
	var physicsConfig:Dynamic;
	
	@:optional
	var seed:String;
	
	@:optional
	var state:phaser.State;
	
	@:optional
	var forceSetTimeOut:Bool;
	
	@:optional
	var multiTextue:Bool;
	
}

