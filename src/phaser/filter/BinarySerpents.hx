package phaser.filter;

@:native("Phaser.Filter.BinarySerpents")
extern class BinarySerpents extends phaser.Filter {

	function new(game:phaser.Game, width:Float, height:Float, ?march:Float, ?maxDistance:Float);
	
	var fog:Float;
	
}

