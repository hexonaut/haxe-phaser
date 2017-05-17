package phaser.filter;

@:native("Phaser.Filter.HueRotate")
extern class HueRotate extends phaser.Filter {

	function new(game:phaser.Game, width:Float, height:Float, texture:Dynamic);
	
	var alpha:Float;
	
	@:native("init")
	function HueRotate_init(width:Float, height:Float, texture:Dynamic):Void;
	
}

