package phaser.filter;

@:native("Phaser.Filter.CheckerWave")
extern class CheckerWave extends phaser.Filter {

	function new(game:phaser.Game, width:Float, height:Float);
	
	var alpha:Float;
	
	var cameraX:Float;
	
	var cameraY:Float;
	
	var cameraZ:Float;
	
	@:native("init")
	function CheckerWave_init(width:Float, height:Float):Void;
	
	function setColor1(red:Float, green:Float, blue:Float):Void;
	
	function setColor2(red:Float, green:Float, blue:Float):Void;
	
}

