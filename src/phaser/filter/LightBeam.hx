package phaser.filter;

@:native("Phaser.Filter.LightBeam")
extern class LightBeam extends phaser.Filter {

	function new(game:phaser.Game, width:Float, height:Float);
	
	var alpha:Float;
	
	var blue:Float;
	
	var green:Float;
	
	var red:Float;
	
	var thickness:Float;
	
	var speed:Float;
	
	@:native("init")
	function LightBeam_init(width:Float, height:Float):Void;
	
}

