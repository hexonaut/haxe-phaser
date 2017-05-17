package phaser.filter;

@:native("Phaser.Filter.SampleFilter")
extern class SampleFilter extends phaser.Filter {

	function new(game:phaser.Game, width:Float, height:Float, ?divisor:Float);
	
	@:native("init")
	function SampleFilter_init(width:Float, height:Float, ?divisor:Float):Void;
	
}

