package phaser.filter;

@:native("Phaser.Filter.Marble")
extern class Marble extends phaser.Filter {

	function new(game:phaser.Game, width:Float, height:Float, ?speed:Float, ?intensity:Float);
	
	var alpha:Float;
	
	var intensity:Float;
	
	var speed:Float;
	
	@:native("init")
	function Marble_init(width:Float, height:Float, ?speed:Float, ?intensity:Float):Void;
	
}

