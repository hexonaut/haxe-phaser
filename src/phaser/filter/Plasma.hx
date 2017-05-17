package phaser.filter;

@:native("Phaser.Filter.Plasma")
extern class Plasma extends phaser.Filter {

	function new(game:phaser.Game, width:Float, height:Float, ?alpha:Float, ?size:Float);
	
	var alpha:Float;
	
	var blueShift:Float;
	
	var greenShift:Float;
	
	var redShift:Float;
	
	var size:Float;
	
	@:native("init")
	function Plasma_init(width:Float, height:Float, ?alpha:Float, ?size:Float):Void;
	
}

