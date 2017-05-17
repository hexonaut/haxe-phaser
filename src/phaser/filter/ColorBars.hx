package phaser.filter;

@:native("Phaser.Filter.ColorBars")
extern class ColorBars extends phaser.Filter {

	function new(game:phaser.Game, width:Float, height:Float);
	
	var alpha:Float;
	
	@:native("init")
	function ColorBars_init(width:Float, height:Float):Void;
	
}

