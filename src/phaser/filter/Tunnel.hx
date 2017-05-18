package phaser.filter;

@:native("Phaser.Filter.Tunnel")
extern class Tunnel extends phaser.Filter {

	function new(game:phaser.Game, width:Float, height:Float, texture:Dynamic);
	
	var alpha:Float;
	
	var origin:Float;
	
	@:native("init")
	function Tunnel_init(width:Float, height:Float, texture:Dynamic):Void;
	
}

