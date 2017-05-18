package phaser.filter;

@:native("Phaser.Filter.CausticLight")
extern class CausticLight extends phaser.Filter {

	function new(game:phaser.Game, width:Float, height:Float, ?divisor:Float);
	
	@:native("init")
	function CausticLight_init(width:Float, height:Float, ?divisor:Float):Void;
	
}

