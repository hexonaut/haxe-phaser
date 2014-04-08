package phaser.tilemap;

@:native("Phaser.Tileset")
extern class Tileset {
	function new (name:String, firstgid:Float, ?width:Float = 32, ?height:Float = 32, ?margin:Float = 0, ?spacing:Float = 0, ?properties:Dynamic);
	var name:String;
	var firstgid:Float;
	var tileWidth:Float;
	var tileHeight:Float;
	var tileMargin:Float;
	var tileSpacing:Float;
	var properties:Dynamic;
	var image:Dynamic;
	var rows:Float;
	var columns:Float;
	var total:Float;
	var drawCoords:Dynamic;
	function draw (context:Dynamic, x:Float, y:Float, index:Float):Void;
	function setImage (image:Dynamic):Void;
	function setSpacing (?tileMargin:Float, ?tileSpacing:Float):Void;
}
