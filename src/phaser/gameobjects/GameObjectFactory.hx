package phaser.gameobjects;

@:native("Phaser.GameObjectFactory")
extern class GameObjectFactory {
	function new (game:phaser.core.Game);
	var game:phaser.core.Game;
	var world:phaser.core.World;
	function existing (object:Dynamic):Dynamic;
	function image (x:Float, y:Float, key:String, ?frame:String, ?group:phaser.core.Group):phaser.gameobjects.Sprite;
	function sprite (x:Float, y:Float, key:String, ?frame:String, ?group:phaser.core.Group):phaser.gameobjects.Sprite;
	function tween (obj:Dynamic):phaser.tween.Tween;
	function group (?parent:Dynamic, ?name:String = 'group', ?addToStage:Bool = false, ?enableBody:Bool = false, ?physicsBodyType:Float = 0):phaser.core.Group;
	function spriteBatch (parent:Dynamic, ?name:String = 'group', ?addToStage:Bool = false):phaser.core.Group;
	function audio (key:String, ?volume:Float = 1, ?loop:Bool = false, ?connect:Bool = true):phaser.sound.Sound;
	function sound (key:String, ?volume:Float = 1, ?loop:Bool = false, ?connect:Bool = true):phaser.sound.Sound;
	function tileSprite (x:Float, y:Float, width:Float, height:Float, key:String, frame:String, ?group:phaser.core.Group):phaser.gameobjects.TileSprite;
	function text (x:Float, y:Float, text:String, style:Dynamic, ?group:phaser.core.Group):phaser.gameobjects.Text;
	function button (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:String, ?outFrame:String, ?downFrame:String, ?upFrame:String, ?group:phaser.core.Group):phaser.gameobjects.Button;
	function graphics (x:Float, y:Float, ?group:phaser.core.Group):phaser.gameobjects.Graphics;
	function emitter (?x:Float = 0, ?y:Float = 0, ?maxParticles:Float = 50):Dynamic;
	function retroFont (font:String, characterWidth:Float, characterHeight:Float, chars:String, charsPerRow:Float, ?xSpacing:Float = 0, ?ySpacing:Float = 0, ?xOffset:Float = 0, ?yOffset:Float = 0):phaser.gameobjects.RetroFont;
	function bitmapText (x:Float, y:Float, font:String, ?text:String, ?size:Float, ?group:phaser.core.Group):phaser.gameobjects.BitmapText;
	function tilemap (?key:String, ?tileWidth:Float = 32, ?tileHeight:Float = 32, ?width:Float = 10, ?height:Float = 10):phaser.tilemap.Tilemap;
	function renderTexture (?width:Float = 100, ?height:Float = 100, ?key:String = '', ?addToCache:Bool = false):phaser.gameobjects.RenderTexture;
	function bitmapData (?width:Float = 100, ?height:Float = 100, ?key:String = '', ?addToCache:Bool = false):phaser.gameobjects.BitmapData;
	function filter (filter:String, a1:Dynamic):phaser.core.Filter;
}
