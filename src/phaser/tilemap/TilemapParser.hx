package phaser.tilemap;

@:native("Phaser.TilemapParser")
extern class TilemapParser {
	function parse (game:phaser.core.Game, key:String, ?tileWidth:Float = 32, ?tileHeight:Float = 32, ?width:Float = 10, ?height:Float = 10):Dynamic;
	function parseCSV (data:String, ?tileWidth:Float = 32, ?tileHeight:Float = 32):Dynamic;
	function getEmptyData ():Dynamic;
	function parseJSON (json:Dynamic):Dynamic;
}
