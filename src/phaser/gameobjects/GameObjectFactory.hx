package phaser.gameobjects;

@:native("Phaser.GameObjectFactory")
extern class GameObjectFactory {
	
	/**
	 * The GameObjectFactory is a quick way to create mamy common game objects
	 * using {@linkcode Phaser.Game#add game.add}.
	 * 
	 * Created objects are <em>automtically added</em> to the appropriate Manager, World, or manually specified parent Group.
	 */
	function new (game:phaser.core.Game);
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * A reference to the game world.
	 */
	var world:phaser.core.World;
	
	/**
	 * Adds an existing object to the game world.
	 */
	function existing (object:Dynamic):Dynamic;
	
	/**
	 * Create a new Image object. An Image is a light-weight object you can use to display anything that doesn't need physics or animation.
	 * It can still rotate, scale, crop and receive input events. This makes it perfect for logos, backgrounds, simple buttons and other non-Sprite graphics.
	 */
	@:overload(function (x:Float, y:Float, key:String, ?frame:String, ?group:phaser.core.Group):phaser.gameobjects.Sprite {})
	@:overload(function (x:Float, y:Float, key:phaser.gameobjects.BitmapData, ?frame:String, ?group:phaser.core.Group):phaser.gameobjects.Sprite {})
	@:overload(function (x:Float, y:Float, key:phaser.gameobjects.RenderTexture, ?frame:String, ?group:phaser.core.Group):phaser.gameobjects.Sprite {})
	@:overload(function (x:Float, y:Float, key:phaser.pixi.textures.Texture, ?frame:String, ?group:phaser.core.Group):phaser.gameobjects.Sprite {})
	@:overload(function (x:Float, y:Float, key:String, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.Sprite {})
	@:overload(function (x:Float, y:Float, key:phaser.gameobjects.BitmapData, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.Sprite {})
	@:overload(function (x:Float, y:Float, key:phaser.gameobjects.RenderTexture, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.Sprite {})
	function image (x:Float, y:Float, key:phaser.pixi.textures.Texture, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.Sprite;
	
	/**
	 * Create a new Sprite with specific position and sprite sheet key.
	 */
	@:overload(function (x:Float, y:Float, key:String, ?frame:String, ?group:phaser.core.Group):phaser.gameobjects.Sprite {})
	@:overload(function (x:Float, y:Float, key:phaser.gameobjects.BitmapData, ?frame:String, ?group:phaser.core.Group):phaser.gameobjects.Sprite {})
	@:overload(function (x:Float, y:Float, key:phaser.gameobjects.RenderTexture, ?frame:String, ?group:phaser.core.Group):phaser.gameobjects.Sprite {})
	@:overload(function (x:Float, y:Float, key:phaser.pixi.textures.Texture, ?frame:String, ?group:phaser.core.Group):phaser.gameobjects.Sprite {})
	@:overload(function (x:Float, y:Float, key:String, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.Sprite {})
	@:overload(function (x:Float, y:Float, key:phaser.gameobjects.BitmapData, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.Sprite {})
	@:overload(function (x:Float, y:Float, key:phaser.gameobjects.RenderTexture, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.Sprite {})
	function sprite (x:Float, y:Float, key:phaser.pixi.textures.Texture, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.Sprite;
	
	/**
	 * Create a tween on a specific object. The object can be any JavaScript object or Phaser object such as Sprite.
	 */
	function tween (obj:Dynamic):phaser.tween.Tween;
	
	/**
	 * A Group is a container for display objects that allows for fast pooling, recycling and collision checks.
	 */
	function group (?parent:Dynamic, ?name:String = 'group', ?addToStage:Bool = false, ?enableBody:Bool = false, ?physicsBodyType:Float = 0):phaser.core.Group;
	
	/**
	 * A Group is a container for display objects that allows for fast pooling, recycling and collision checks.
	 * A Physics Group is the same as an ordinary Group except that is has enableBody turned on by default, so any Sprites it creates
	 * are automatically given a physics body.
	 */
	function physicsGroup (?physicsBodyType:Float, ?parent:Dynamic, ?name:String = 'group', ?addToStage:Bool = false):phaser.core.Group;
	
	/**
	 * A SpriteBatch is a really fast version of a Phaser Group built solely for speed.
	 * Use when you need a lot of sprites or particles all sharing the same texture.
	 * The speed gains are specifically for WebGL. In Canvas mode you won't see any real difference.
	 */
	@:overload(function (parent:phaser.core.Group, ?name:String = 'group', ?addToStage:Bool = false):phaser.core.Group {})
	function spriteBatch (parent:Dynamic, ?name:String = 'group', ?addToStage:Bool = false):phaser.core.Group;
	
	/**
	 * Creates a new Sound object.
	 */
	function audio (key:String, ?volume:Float = 1, ?loop:Bool = false, ?connect:Bool = true):phaser.sound.Sound;
	
	/**
	 * Creates a new Sound object.
	 */
	function sound (key:String, ?volume:Float = 1, ?loop:Bool = false, ?connect:Bool = true):phaser.sound.Sound;
	
	/**
	 * Creates a new AudioSprite object.
	 */
	function audioSprite (key:String):phaser.sound.AudioSprite;
	
	/**
	 * Creates a new TileSprite object.
	 */
	@:overload(function (x:Float, y:Float, width:Float, height:Float, key:String, ?frame:String, ?group:phaser.core.Group):phaser.gameobjects.TileSprite {})
	@:overload(function (x:Float, y:Float, width:Float, height:Float, key:phaser.gameobjects.RenderTexture, ?frame:String, ?group:phaser.core.Group):phaser.gameobjects.TileSprite {})
	@:overload(function (x:Float, y:Float, width:Float, height:Float, key:phaser.gameobjects.BitmapData, ?frame:String, ?group:phaser.core.Group):phaser.gameobjects.TileSprite {})
	@:overload(function (x:Float, y:Float, width:Float, height:Float, key:phaser.pixi.textures.Texture, ?frame:String, ?group:phaser.core.Group):phaser.gameobjects.TileSprite {})
	@:overload(function (x:Float, y:Float, width:Float, height:Float, key:String, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.TileSprite {})
	@:overload(function (x:Float, y:Float, width:Float, height:Float, key:phaser.gameobjects.RenderTexture, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.TileSprite {})
	@:overload(function (x:Float, y:Float, width:Float, height:Float, key:phaser.gameobjects.BitmapData, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.TileSprite {})
	function tileSprite (x:Float, y:Float, width:Float, height:Float, key:phaser.pixi.textures.Texture, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.TileSprite;
	
	/**
	 * Creates a new Rope object.
	 */
	@:overload(function (x:Float, y:Float, key:String, frame:String, points:Array<Dynamic>, ?group:phaser.core.Group):phaser.gameobjects.TileSprite {})
	@:overload(function (x:Float, y:Float, key:phaser.gameobjects.RenderTexture, frame:String, points:Array<Dynamic>, ?group:phaser.core.Group):phaser.gameobjects.TileSprite {})
	@:overload(function (x:Float, y:Float, key:phaser.gameobjects.BitmapData, frame:String, points:Array<Dynamic>, ?group:phaser.core.Group):phaser.gameobjects.TileSprite {})
	@:overload(function (x:Float, y:Float, key:phaser.pixi.textures.Texture, frame:String, points:Array<Dynamic>, ?group:phaser.core.Group):phaser.gameobjects.TileSprite {})
	@:overload(function (x:Float, y:Float, key:String, frame:Float, points:Array<Dynamic>, ?group:phaser.core.Group):phaser.gameobjects.TileSprite {})
	@:overload(function (x:Float, y:Float, key:phaser.gameobjects.RenderTexture, frame:Float, points:Array<Dynamic>, ?group:phaser.core.Group):phaser.gameobjects.TileSprite {})
	@:overload(function (x:Float, y:Float, key:phaser.gameobjects.BitmapData, frame:Float, points:Array<Dynamic>, ?group:phaser.core.Group):phaser.gameobjects.TileSprite {})
	function rope (x:Float, y:Float, key:phaser.pixi.textures.Texture, frame:Float, points:Array<Dynamic>, ?group:phaser.core.Group):phaser.gameobjects.TileSprite;
	
	/**
	 * Creates a new Text object.
	 */
	function text (x:Float, y:Float, ?text:String, ?style:Dynamic, ?group:phaser.core.Group):phaser.gameobjects.Text;
	
	/**
	 * Creates a new Button object.
	 */
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:String, ?outFrame:String, ?downFrame:String, ?upFrame:String, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Float, ?outFrame:String, ?downFrame:String, ?upFrame:String, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:String, ?outFrame:Float, ?downFrame:String, ?upFrame:String, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Float, ?outFrame:Float, ?downFrame:String, ?upFrame:String, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:String, ?outFrame:String, ?downFrame:Float, ?upFrame:String, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Float, ?outFrame:String, ?downFrame:Float, ?upFrame:String, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:String, ?outFrame:Float, ?downFrame:Float, ?upFrame:String, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Float, ?outFrame:Float, ?downFrame:Float, ?upFrame:String, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:String, ?outFrame:String, ?downFrame:String, ?upFrame:Float, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Float, ?outFrame:String, ?downFrame:String, ?upFrame:Float, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:String, ?outFrame:Float, ?downFrame:String, ?upFrame:Float, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Float, ?outFrame:Float, ?downFrame:String, ?upFrame:Float, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:String, ?outFrame:String, ?downFrame:Float, ?upFrame:Float, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Float, ?outFrame:String, ?downFrame:Float, ?upFrame:Float, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:String, ?outFrame:Float, ?downFrame:Float, ?upFrame:Float, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	function button (?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Float, ?outFrame:Float, ?downFrame:Float, ?upFrame:Float, ?group:phaser.core.Group):phaser.gameobjects.Button;
	
	/**
	 * Creates a new Graphics object.
	 */
	function graphics (x:Float, y:Float, ?group:phaser.core.Group):phaser.gameobjects.Graphics;
	
	/**
	 * Create a new Emitter.
	 * 
	 * A particle emitter can be used for one-time explosions or for
	 * continuous effects like rain and fire. All it really does is launch Particle objects out
	 * at set intervals, and fixes their positions and velocities accorindgly.
	 */
	function emitter (?x:Float = 0, ?y:Float = 0, ?maxParticles:Float = 50):Dynamic;
	
	/**
	 * Create a new RetroFont object.
	 * 
	 * A RetroFont can be used as a texture for an Image or Sprite and optionally add it to the Cache.
	 * A RetroFont uses a bitmap which contains fixed with characters for the font set. You use character spacing to define the set.
	 * If you need variable width character support then use a BitmapText object instead. The main difference between a RetroFont and a BitmapText
	 * is that a RetroFont creates a single texture that you can apply to a game object, where-as a BitmapText creates one Sprite object per letter of text.
	 * The texture can be asssigned or one or multiple images/sprites, but note that the text the RetroFont uses will be shared across them all,
	 * i.e. if you need each Image to have different text in it, then you need to create multiple RetroFont objects.
	 */
	function retroFont (font:String, characterWidth:Float, characterHeight:Float, chars:String, charsPerRow:Float, ?xSpacing:Float = 0, ?ySpacing:Float = 0, ?xOffset:Float = 0, ?yOffset:Float = 0):phaser.gameobjects.RetroFont;
	
	/**
	 * Create a new BitmapText object.
	 */
	function bitmapText (x:Float, y:Float, font:String, ?text:String, ?size:Float, ?group:phaser.core.Group):phaser.gameobjects.BitmapText;
	
	/**
	 * Creates a new Phaser.Tilemap object.
	 * 
	 * The map can either be populated with data from a Tiled JSON file or from a CSV file.
	 * To do this pass the Cache key as the first parameter. When using Tiled data you need only provide the key.
	 * When using CSV data you must provide the key and the tileWidth and tileHeight parameters.
	 * If creating a blank tilemap to be populated later, you can either specify no parameters at all and then use Tilemap.create or pass the map and tile dimensions here.
	 * Note that all Tilemaps use a base tile size to calculate dimensions from, but that a TilemapLayer may have its own unique tile size that overrides it.
	 */
	function tilemap (?key:String, ?tileWidth:Float = 32, ?tileHeight:Float = 32, ?width:Float = 10, ?height:Float = 10):phaser.tilemap.Tilemap;
	
	/**
	 * A dynamic initially blank canvas to which images can be drawn.
	 */
	function renderTexture (?width:Float = 100, ?height:Float = 100, ?key:String = '', ?addToCache:Bool = false):phaser.gameobjects.RenderTexture;
	
	/**
	 * Create a BitmapData object.
	 * 
	 * A BitmapData object can be manipulated and drawn to like a traditional Canvas object and used to texture Sprites.
	 */
	function bitmapData (?width:Float = 256, ?height:Float = 256, ?key:String = '', ?addToCache:Bool = false):phaser.gameobjects.BitmapData;
	
	/**
	 * A WebGL shader/filter that can be applied to Sprites.
	 */
	function filter (filter:String):phaser.core.Filter;
	
	/**
	 * Add a new Plugin into the PluginManager.
	 * 
	 * The Plugin must have 2 properties: game and parent. Plugin.game is set to the game reference the PluginManager uses, and parent is set to the PluginManager.
	 */
	@:overload(function (plugin:Dynamic):phaser.core.Plugin {})
	function plugin (plugin:phaser.core.Plugin):phaser.core.Plugin;
	
}
