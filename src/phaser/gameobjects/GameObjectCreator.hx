package phaser.gameobjects;

@:native("Phaser.GameObjectCreator")
extern class GameObjectCreator {
	function new (game:phaser.core.Game);
	var game:phaser.core.Game;
	var world:phaser.core.World;
	@:overload(function (x:Float, y:Float, key:String, ?frame:String):phaser.gameobjects.Sprite {})
	@:overload(function (x:Float, y:Float, key:phaser.gameobjects.RenderTexture, ?frame:String):phaser.gameobjects.Sprite {})
	@:overload(function (x:Float, y:Float, key:phaser.pixi.textures.Texture, ?frame:String):phaser.gameobjects.Sprite {})
	@:overload(function (x:Float, y:Float, key:String, ?frame:Float):phaser.gameobjects.Sprite {})
	@:overload(function (x:Float, y:Float, key:phaser.gameobjects.RenderTexture, ?frame:Float):phaser.gameobjects.Sprite {})
	function image (x:Float, y:Float, key:phaser.pixi.textures.Texture, ?frame:Float):phaser.gameobjects.Sprite;
	@:overload(function (x:Float, y:Float, key:String, ?frame:String):phaser.gameobjects.Sprite {})
	@:overload(function (x:Float, y:Float, key:phaser.gameobjects.RenderTexture, ?frame:String):phaser.gameobjects.Sprite {})
	@:overload(function (x:Float, y:Float, key:phaser.pixi.textures.Texture, ?frame:String):phaser.gameobjects.Sprite {})
	@:overload(function (x:Float, y:Float, key:String, ?frame:Float):phaser.gameobjects.Sprite {})
	@:overload(function (x:Float, y:Float, key:phaser.gameobjects.RenderTexture, ?frame:Float):phaser.gameobjects.Sprite {})
	function sprite (x:Float, y:Float, key:phaser.pixi.textures.Texture, ?frame:Float):phaser.gameobjects.Sprite;
	function tween (obj:Dynamic):phaser.tween.Tween;
	function group (?name:String = 'group', ?addToStage:Bool = false, ?enableBody:Bool = false, ?physicsBodyType:Float = 0):phaser.core.Group;
	function spriteBatch (parent:Dynamic, ?name:String = 'group', ?addToStage:Bool = false):phaser.core.Group;
	function audio (key:String, ?volume:Float = 1, ?loop:Bool = false, ?connect:Bool = true):phaser.sound.Sound;
	function sound (key:String, ?volume:Float = 1, ?loop:Bool = false, ?connect:Bool = true):phaser.sound.Sound;
	@:overload(function (x:Float, y:Float, width:Float, height:Float, key:String, frame:String):phaser.gameobjects.TileSprite {})
	@:overload(function (x:Float, y:Float, width:Float, height:Float, key:phaser.gameobjects.RenderTexture, frame:String):phaser.gameobjects.TileSprite {})
	@:overload(function (x:Float, y:Float, width:Float, height:Float, key:phaser.gameobjects.BitmapData, frame:String):phaser.gameobjects.TileSprite {})
	@:overload(function (x:Float, y:Float, width:Float, height:Float, key:phaser.pixi.textures.Texture, frame:String):phaser.gameobjects.TileSprite {})
	@:overload(function (x:Float, y:Float, width:Float, height:Float, key:String, frame:Float):phaser.gameobjects.TileSprite {})
	@:overload(function (x:Float, y:Float, width:Float, height:Float, key:phaser.gameobjects.RenderTexture, frame:Float):phaser.gameobjects.TileSprite {})
	@:overload(function (x:Float, y:Float, width:Float, height:Float, key:phaser.gameobjects.BitmapData, frame:Float):phaser.gameobjects.TileSprite {})
	function tileSprite (x:Float, y:Float, width:Float, height:Float, key:phaser.pixi.textures.Texture, frame:Float):phaser.gameobjects.TileSprite;
	function text (x:Float, y:Float, text:String, style:Dynamic):phaser.gameobjects.Text;
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:String, ?outFrame:String, ?downFrame:String, ?upFrame:String):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Float, ?outFrame:String, ?downFrame:String, ?upFrame:String):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:String, ?outFrame:Float, ?downFrame:String, ?upFrame:String):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Float, ?outFrame:Float, ?downFrame:String, ?upFrame:String):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:String, ?outFrame:String, ?downFrame:Float, ?upFrame:String):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Float, ?outFrame:String, ?downFrame:Float, ?upFrame:String):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:String, ?outFrame:Float, ?downFrame:Float, ?upFrame:String):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Float, ?outFrame:Float, ?downFrame:Float, ?upFrame:String):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:String, ?outFrame:String, ?downFrame:String, ?upFrame:Float):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Float, ?outFrame:String, ?downFrame:String, ?upFrame:Float):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:String, ?outFrame:Float, ?downFrame:String, ?upFrame:Float):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Float, ?outFrame:Float, ?downFrame:String, ?upFrame:Float):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:String, ?outFrame:String, ?downFrame:Float, ?upFrame:Float):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Float, ?outFrame:String, ?downFrame:Float, ?upFrame:Float):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:String, ?outFrame:Float, ?downFrame:Float, ?upFrame:Float):phaser.gameobjects.Button {})
	function button (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Float, ?outFrame:Float, ?downFrame:Float, ?upFrame:Float):phaser.gameobjects.Button;
	function graphics (x:Float, y:Float):phaser.gameobjects.Graphics;
	function emitter (?x:Float = 0, ?y:Float = 0, ?maxParticles:Float = 50):Dynamic;
	function retroFont (font:String, characterWidth:Float, characterHeight:Float, chars:String, charsPerRow:Float, ?xSpacing:Float = 0, ?ySpacing:Float = 0, ?xOffset:Float = 0, ?yOffset:Float = 0):phaser.gameobjects.RetroFont;
	function bitmapText (x:Float, y:Float, font:String, ?text:String, ?size:Float):phaser.gameobjects.BitmapText;
	function tilemap (?key:String, ?tileWidth:Float = 32, ?tileHeight:Float = 32, ?width:Float = 10, ?height:Float = 10):Void;
	function renderTexture (?width:Float = 100, ?height:Float = 100, ?key:String = '', ?addToCache:Bool = false):phaser.gameobjects.RenderTexture;
	function bitmapData (?width:Float = 100, ?height:Float = 100, ?key:String = '', ?addToCache:Bool = false):phaser.gameobjects.BitmapData;
	function filter (filter:String, a1:Dynamic):phaser.core.Filter;
}
