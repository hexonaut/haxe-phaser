package phaser.filter;

@:native("Phaser.Filter.Fire")
extern class Fire extends phaser.Filter {

	function new(width:Float, height:Float, ?alpha:Float, ?shift:Float);
	
	var alpha:Float;
	
	var shift:Float;
	
	var speed:Float;
	
	@:native("init")
	function Fire_init(width:Float, height:Float, ?alpha:Float, ?shift:Float):Void;
	
}

