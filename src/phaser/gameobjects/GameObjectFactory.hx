package phaser.gameobjects;

@:native("Phaser.GameObjectFactory")
extern class GameObjectFactory {
	
	/**
	 * The GameObjectFactory is a quick way to create many common game objects
	 * using {@linkcode Phaser.Game#add game.add}.
	 * 
	 * Created objects are <em>automatically added</em> to the appropriate Manager, World, or manually specified parent Group.
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
	 * Adds an existing display object to the game world.
	 */
	function existing (object:Dynamic):Dynamic;
	
	/**
	 * Create a new Image object.
	 * 
	 * An Image is a light-weight object you can use to display anything that doesn't need physics or animation.
	 * 
	 * It can still rotate, scale, crop and receive input events. 
	 * This makes it perfect for logos, backgrounds, simple buttons and other non-Sprite graphics.
	 */
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:String, ?frame:String, ?group:phaser.core.Group):phaser.gameobjects.Image {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:phaser.gameobjects.RenderTexture, ?frame:String, ?group:phaser.core.Group):phaser.gameobjects.Image {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:phaser.gameobjects.BitmapData, ?frame:String, ?group:phaser.core.Group):phaser.gameobjects.Image {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:phaser.gameobjects.Video, ?frame:String, ?group:phaser.core.Group):phaser.gameobjects.Image {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:phaser.pixi.textures.Texture, ?frame:String, ?group:phaser.core.Group):phaser.gameobjects.Image {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:String, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.Image {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:phaser.gameobjects.RenderTexture, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.Image {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:phaser.gameobjects.BitmapData, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.Image {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:phaser.gameobjects.Video, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.Image {})
	function image (?x:Float = 0, ?y:Float = 0, ?key:phaser.pixi.textures.Texture, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.Image;
	
	/**
	 * Create a new Sprite with specific position and sprite sheet key.
	 * 
	 * At its most basic a Sprite consists of a set of coordinates and a texture that is used when rendered.
	 * They also contain additional properties allowing for physics motion (via Sprite.body), input handling (via Sprite.input),
	 * events (via Sprite.events), animation (via Sprite.animations), camera culling and more. Please see the Examples for use cases.
	 */
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:String, ?frame:String, ?group:phaser.core.Group):phaser.gameobjects.Sprite {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:phaser.gameobjects.RenderTexture, ?frame:String, ?group:phaser.core.Group):phaser.gameobjects.Sprite {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:phaser.gameobjects.BitmapData, ?frame:String, ?group:phaser.core.Group):phaser.gameobjects.Sprite {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:phaser.gameobjects.Video, ?frame:String, ?group:phaser.core.Group):phaser.gameobjects.Sprite {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:phaser.pixi.textures.Texture, ?frame:String, ?group:phaser.core.Group):phaser.gameobjects.Sprite {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:String, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.Sprite {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:phaser.gameobjects.RenderTexture, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.Sprite {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:phaser.gameobjects.BitmapData, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.Sprite {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:phaser.gameobjects.Video, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.Sprite {})
	function sprite (?x:Float = 0, ?y:Float = 0, ?key:phaser.pixi.textures.Texture, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.Sprite;
	
	/**
	 * Create a new Creature Animation object.
	 * 
	 * Creature is a custom Game Object used in conjunction with the Creature Runtime libraries by Kestrel Moon Studios.
	 * 
	 * It allows you to display animated Game Objects that were created with the <a href="http://www.kestrelmoon.com/creature/">Creature Automated Animation Tool</a>.
	 * 
	 * Note 1: You can only use Phaser.Creature objects in WebGL enabled games. They do not work in Canvas mode games.
	 * 
	 * Note 2: You must use a build of Phaser that includes the CreatureMeshBone.js runtime and gl-matrix.js, or have them
	 * loaded before your Phaser game boots.
	 * 
	 * See the Phaser custom build process for more details.
	 */
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:String, ?group:phaser.core.Group):phaser.gameobjects.Creature {})
	function creature (?x:Float = 0, ?y:Float = 0, ?key:phaser.pixi.textures.Texture, ?group:phaser.core.Group):phaser.gameobjects.Creature;
	
	/**
	 * Create a tween on a specific object.
	 * 
	 * The object can be any JavaScript object or Phaser object such as Sprite.
	 */
	function tween (object:Dynamic):phaser.tween.Tween;
	
	/**
	 * A Group is a container for display objects that allows for fast pooling, recycling and collision checks.
	 */
	function group (?parent:Dynamic, ?name:String = 'group', ?addToStage:Bool = false, ?enableBody:Bool = false, ?physicsBodyType:Float = 0):phaser.core.Group;
	
	/**
	 * A Group is a container for display objects that allows for fast pooling, recycling and collision checks.
	 * 
	 * A Physics Group is the same as an ordinary Group except that is has enableBody turned on by default, so any Sprites it creates
	 * are automatically given a physics body.
	 */
	function physicsGroup (?physicsBodyType:Float, ?parent:Dynamic, ?name:String = 'group', ?addToStage:Bool = false):phaser.core.Group;
	
	/**
	 * A SpriteBatch is a really fast version of a Phaser Group built solely for speed.
	 * Use when you need a lot of sprites or particles all sharing the same texture.
	 * The speed gains are specifically for WebGL. In Canvas mode you won't see any real difference.
	 */
	@:overload(function (parent:phaser.core.Group, ?name:String = 'group', ?addToStage:Bool = false):phaser.gameobjects.SpriteBatch {})
	function spriteBatch (parent:Dynamic, ?name:String = 'group', ?addToStage:Bool = false):phaser.gameobjects.SpriteBatch;
	
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
	@:overload(function (x:Float, y:Float, width:Float, height:Float, key:phaser.gameobjects.Video, ?frame:String, ?group:phaser.core.Group):phaser.gameobjects.TileSprite {})
	@:overload(function (x:Float, y:Float, width:Float, height:Float, key:phaser.pixi.textures.Texture, ?frame:String, ?group:phaser.core.Group):phaser.gameobjects.TileSprite {})
	@:overload(function (x:Float, y:Float, width:Float, height:Float, key:String, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.TileSprite {})
	@:overload(function (x:Float, y:Float, width:Float, height:Float, key:phaser.gameobjects.RenderTexture, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.TileSprite {})
	@:overload(function (x:Float, y:Float, width:Float, height:Float, key:phaser.gameobjects.BitmapData, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.TileSprite {})
	@:overload(function (x:Float, y:Float, width:Float, height:Float, key:phaser.gameobjects.Video, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.TileSprite {})
	function tileSprite (x:Float, y:Float, width:Float, height:Float, key:phaser.pixi.textures.Texture, ?frame:Float, ?group:phaser.core.Group):phaser.gameobjects.TileSprite;
	
	/**
	 * Creates a new Rope object.
	 * 
	 * Example usage: <a href='https://github.com/codevinsky/phaser-rope-demo/blob/master/dist/demo.js'>https://github.com/codevinsky/phaser-rope-demo/blob/master/dist/demo.js</a>
	 */
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:String, ?frame:String, ?points:Array<Dynamic>, ?group:phaser.core.Group):phaser.gameobjects.Rope {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:phaser.gameobjects.RenderTexture, ?frame:String, ?points:Array<Dynamic>, ?group:phaser.core.Group):phaser.gameobjects.Rope {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:phaser.gameobjects.BitmapData, ?frame:String, ?points:Array<Dynamic>, ?group:phaser.core.Group):phaser.gameobjects.Rope {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:phaser.gameobjects.Video, ?frame:String, ?points:Array<Dynamic>, ?group:phaser.core.Group):phaser.gameobjects.Rope {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:phaser.pixi.textures.Texture, ?frame:String, ?points:Array<Dynamic>, ?group:phaser.core.Group):phaser.gameobjects.Rope {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:String, ?frame:Float, ?points:Array<Dynamic>, ?group:phaser.core.Group):phaser.gameobjects.Rope {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:phaser.gameobjects.RenderTexture, ?frame:Float, ?points:Array<Dynamic>, ?group:phaser.core.Group):phaser.gameobjects.Rope {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:phaser.gameobjects.BitmapData, ?frame:Float, ?points:Array<Dynamic>, ?group:phaser.core.Group):phaser.gameobjects.Rope {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:phaser.gameobjects.Video, ?frame:Float, ?points:Array<Dynamic>, ?group:phaser.core.Group):phaser.gameobjects.Rope {})
	function rope (?x:Float = 0, ?y:Float = 0, ?key:phaser.pixi.textures.Texture, ?frame:Float, ?points:Array<Dynamic>, ?group:phaser.core.Group):phaser.gameobjects.Rope;
	
	/**
	 * Creates a new Text object.
	 */
	function text (?x:Float = 0, ?y:Float = 0, ?text:String = '', ?style:Dynamic, ?group:phaser.core.Group):phaser.gameobjects.Text;
	
	/**
	 * Creates a new Button object.
	 */
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:String, ?outFrame:String, ?downFrame:String, ?upFrame:String, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Float, ?outFrame:String, ?downFrame:String, ?upFrame:String, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:String, ?outFrame:Float, ?downFrame:String, ?upFrame:String, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Float, ?outFrame:Float, ?downFrame:String, ?upFrame:String, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:String, ?outFrame:String, ?downFrame:Float, ?upFrame:String, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Float, ?outFrame:String, ?downFrame:Float, ?upFrame:String, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:String, ?outFrame:Float, ?downFrame:Float, ?upFrame:String, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Float, ?outFrame:Float, ?downFrame:Float, ?upFrame:String, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:String, ?outFrame:String, ?downFrame:String, ?upFrame:Float, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Float, ?outFrame:String, ?downFrame:String, ?upFrame:Float, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:String, ?outFrame:Float, ?downFrame:String, ?upFrame:Float, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Float, ?outFrame:Float, ?downFrame:String, ?upFrame:Float, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:String, ?outFrame:String, ?downFrame:Float, ?upFrame:Float, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Float, ?outFrame:String, ?downFrame:Float, ?upFrame:Float, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	@:overload(function (?x:Float = 0, ?y:Float = 0, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:String, ?outFrame:Float, ?downFrame:Float, ?upFrame:Float, ?group:phaser.core.Group):phaser.gameobjects.Button {})
	function button (?x:Float = 0, ?y:Float = 0, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Float, ?outFrame:Float, ?downFrame:Float, ?upFrame:Float, ?group:phaser.core.Group):phaser.gameobjects.Button;
	
	/**
	 * Creates a new Graphics object.
	 */
	function graphics (?x:Float = 0, ?y:Float = 0, ?group:phaser.core.Group):phaser.gameobjects.Graphics;
	
	/**
	 * Create a new Emitter.
	 * 
	 * A particle emitter can be used for one-time explosions or for
	 * continuous effects like rain and fire. All it really does is launch Particle objects out
	 * at set intervals, and fixes their positions and velocities accordingly.
	 */
	function emitter (?x:Float = 0, ?y:Float = 0, ?maxParticles:Float = 50):phaser.particles.arcade.Emitter;
	
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
	 * 
	 * BitmapText objects work by taking a texture file and an XML file that describes the font structure.
	 * It then generates a new Sprite object for each letter of the text, proportionally spaced out and aligned to 
	 * match the font structure.
	 * 
	 * BitmapText objects are less flexible than Text objects, in that they have less features such as shadows, fills and the ability 
	 * to use Web Fonts. However you trade this flexibility for pure rendering speed. You can also create visually compelling BitmapTexts by 
	 * processing the font texture in an image editor first, applying fills and any other effects required.
	 * 
	 * To create multi-line text insert \r, \n or \r\n escape codes into the text string.
	 * 
	 * To create a BitmapText data files you can use:
	 * 
	 * BMFont (Windows, free): <a href='http://www.angelcode.com/products/bmfont/'>http://www.angelcode.com/products/bmfont/</a>
	 * Glyph Designer (OS X, commercial): <a href='http://www.71squared.com/en/glyphdesigner'>http://www.71squared.com/en/glyphdesigner</a>
	 * Littera (Web-based, free): <a href='http://kvazars.com/littera/'>http://kvazars.com/littera/</a>
	 */
	function bitmapText (x:Float, y:Float, font:String, ?text:String = '', ?size:Float = 32, ?group:phaser.core.Group):phaser.gameobjects.BitmapText;
	
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
	 * Create a Video object.
	 * 
	 * This will return a Phaser.Video object which you can pass to a Sprite to be used as a texture.
	 */
	@:overload(function (?key:String, ?url:String):phaser.gameobjects.Video {})
	@:overload(function (?key:Dynamic, ?url:String):phaser.gameobjects.Video {})
	@:overload(function (?key:String, ?url:Dynamic):phaser.gameobjects.Video {})
	function video (?key:Dynamic, ?url:Dynamic):phaser.gameobjects.Video;
	
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
