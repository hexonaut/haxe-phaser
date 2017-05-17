package phaser;

import haxe.extern.Rest;

/**
* The GameObjectCreator is a quick way to create common game objects _without_ adding them to the game world.
* The object creator can be accessed with {@linkcode Phaser.Game#make `game.make`}.
*/
@:native("Phaser.GameObjectCreator")
extern class GameObjectCreator {

	/**
	* The GameObjectCreator is a quick way to create common game objects _without_ adding them to the game world.
	* The object creator can be accessed with {@linkcode Phaser.Game#make `game.make`}.
	* 
	* @param game A reference to the currently running game.
	*/
	function new(game:phaser.Game);
	
	/**
	* A reference to the currently running Game.
	*/
	var game:phaser.Game;
	
	/**
	* A reference to the game world.
	*/
	var world:phaser.World;
	
	/**
	* Creates a new Sound object.
	* 
	* @param key The Game.cache key of the sound that this object will use.
	* @param volume The volume at which the sound will be played. - Default: 1
	* @param loop Whether or not the sound will loop.
	* @param connect Controls if the created Sound object will connect to the master gainNode of the SoundManager when running under WebAudio. - Default: true
	* @return The newly created text object.
	*/
	function audio(key:String, ?volume:Float, ?loop:Bool, ?connect:Bool):phaser.Sound;
	
	/**
	* Creates a new AudioSprite object.
	* 
	* @param key The Game.cache key of the sound that this object will use.
	* @return The newly created AudioSprite object.
	*/
	function audioSprite(key:String):phaser.AudioSprite;
	
	/**
	* Create a BitmpaData object.
	* 
	* A BitmapData object can be manipulated and drawn to like a traditional Canvas object and used to texture Sprites.
	* 
	* @param width The width of the BitmapData in pixels. - Default: 256
	* @param height The height of the BitmapData in pixels. - Default: 256
	* @param key Asset key for the BitmapData when stored in the Cache (see addToCache parameter). - Default: ''
	* @param addToCache Should this BitmapData be added to the Game.Cache? If so you can retrieve it with Cache.getBitmapData(key)
	* @return The newly created BitmapData object.
	*/
	function bitmapData(?width:Float, ?height:Float, ?key:String, ?addToCache:Bool):phaser.BitmapData;
	
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
	* BMFont (Windows, free): http://www.angelcode.com/products/bmfont/
	* Glyph Designer (OS X, commercial): http://www.71squared.com/en/glyphdesigner
	* Littera (Web-based, free): http://kvazars.com/littera/
	* 
	* @param x X coordinate to display the BitmapText object at.
	* @param y Y coordinate to display the BitmapText object at.
	* @param font The key of the BitmapText as stored in Phaser.Cache.
	* @param text The text that will be rendered. This can also be set later via BitmapText.text. - Default: ''
	* @param size The size the font will be rendered at in pixels. - Default: 32
	* @param align The alignment of multi-line text. Has no effect if there is only one line of text. - Default: 'left'
	* @return The newly created bitmapText object.
	*/
	function bitmapText(x:Float, y:Float, font:String, ?text:String, ?size:Float, ?align:String):phaser.BitmapText;
	
	/**
	* Creates a new Button object.
	* 
	* @param x X position of the new button object.
	* @param y Y position of the new button object.
	* @param key The image key as defined in the Game.Cache to use as the texture for this button.
	* @param callback The function to call when this button is pressed
	* @param callbackContext The context in which the callback will be called (usually 'this')
	* @param overFrame This is the frame or frameName that will be set when this button is in an over state. Give either a number to use a frame ID or a string for a frame name.
	* @param outFrame This is the frame or frameName that will be set when this button is in an out state. Give either a number to use a frame ID or a string for a frame name.
	* @param downFrame This is the frame or frameName that will be set when this button is in a down state. Give either a number to use a frame ID or a string for a frame name.
	* @param upFrame This is the frame or frameName that will be set when this button is in an up state. Give either a number to use a frame ID or a string for a frame name.
	* @return The newly created button object.
	*/
	function button(?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Dynamic, ?outFrame:Dynamic, ?downFrame:Dynamic, ?upFrame:Dynamic):phaser.Button;
	
	/**
	* Creat a new Emitter.
	* 
	* An Emitter is a lightweight particle emitter. It can be used for one-time explosions or for
	* continuous effects like rain and fire. All it really does is launch Particle objects out
	* at set intervals, and fixes their positions and velocities accorindgly.
	* 
	* @param x The x coordinate within the Emitter that the particles are emitted from.
	* @param y The y coordinate within the Emitter that the particles are emitted from.
	* @param maxParticles The total number of particles in this emitter. - Default: 50
	* @return The newly created emitter object.
	*/
	function emitter(?x:Float, ?y:Float, ?maxParticles:Float):phaser.particles.arcade.Emitter;
	
	/**
	* A WebGL shader/filter that can be applied to Sprites.
	* 
	* @param filter The name of the filter you wish to create, for example HueRotate or SineWave.
	* @param undefined Whatever parameters are needed to be passed to the filter init function.
	* @return The newly created Phaser.Filter object.
	*/
	function filter(filter:Dynamic, args:Rest<Dynamic>):phaser.Filter;
	
	/**
	* Creates a new Graphics object.
	* 
	* @param x X position of the new graphics object.
	* @param y Y position of the new graphics object.
	* @return The newly created graphics object.
	*/
	function graphics(?x:Float, ?y:Float):phaser.Graphics;
	
	/**
	* A Group is a container for display objects that allows for fast pooling, recycling and collision checks.
	* 
	* @param parent The parent Group or DisplayObjectContainer that will hold this group, if any.
	* @param name A name for this Group. Not used internally but useful for debugging. - Default: 'group'
	* @param addToStage If set to true this Group will be added directly to the Game.Stage instead of Game.World.
	* @param enableBody If true all Sprites created with `Group.create` or `Group.createMulitple` will have a physics body created on them. Change the body type with physicsBodyType.
	* @param physicsBodyType If enableBody is true this is the type of physics body that is created on new Sprites. Phaser.Physics.ARCADE, Phaser.Physics.P2, Phaser.Physics.NINJA, etc.
	* @return The newly created Group.
	*/
	function group(?parent:Dynamic, ?name:String, ?addToStage:Bool, ?enableBody:Bool, ?physicsBodyType:Float):phaser.Group;
	
	/**
	* Create a new Image object.
	* 
	* An Image is a light-weight object you can use to display anything that doesn't need physics or animation.
	* It can still rotate, scale, crop and receive input events. This makes it perfect for logos, backgrounds, simple buttons and other non-Sprite graphics.
	* 
	* @param x X position of the image.
	* @param y Y position of the image.
	* @param key This is the image or texture used by the Sprite during rendering. It can be a string which is a reference to the Cache entry, or an instance of a RenderTexture or PIXI.Texture.
	* @param frame If the sprite uses an image from a texture atlas or sprite sheet you can pass the frame here. Either a number for a frame ID or a string for a frame name.
	* @return the newly created sprite object.
	*/
	function image(x:Float, y:Float, ?key:Dynamic, ?frame:Dynamic):phaser.Image;
	
	/**
	* A dynamic initially blank canvas to which images can be drawn.
	* 
	* @param width the width of the RenderTexture. - Default: 100
	* @param height the height of the RenderTexture. - Default: 100
	* @param key Asset key for the RenderTexture when stored in the Cache (see addToCache parameter). - Default: ''
	* @param addToCache Should this RenderTexture be added to the Game.Cache? If so you can retrieve it with Cache.getTexture(key)
	* @return The newly created RenderTexture object.
	*/
	function renderTexture(?width:Float, ?height:Float, ?key:Dynamic, ?addToCache:Bool):phaser.RenderTexture;
	
	/**
	* Create a new RetroFont object.
	* 
	* A RetroFont can be used as a texture for an Image or Sprite and optionally add it to the Cache.
	* A RetroFont uses a bitmap which contains fixed with characters for the font set. You use character spacing to define the set.
	* If you need variable width character support then use a BitmapText object instead. The main difference between a RetroFont and a BitmapText
	* is that a RetroFont creates a single texture that you can apply to a game object, where-as a BitmapText creates one Sprite object per letter of text.
	* The texture can be asssigned or one or multiple images/sprites, but note that the text the RetroFont uses will be shared across them all,
	* i.e. if you need each Image to have different text in it, then you need to create multiple RetroFont objects.
	* 
	* @param font The key of the image in the Game.Cache that the RetroFont will use.
	* @param characterWidth The width of each character in the font set.
	* @param characterHeight The height of each character in the font set.
	* @param chars The characters used in the font set, in display order. You can use the TEXT_SET consts for common font set arrangements.
	* @param charsPerRow The number of characters per row in the font set.
	* @param xSpacing If the characters in the font set have horizontal spacing between them set the required amount here.
	* @param ySpacing If the characters in the font set have vertical spacing between them set the required amount here.
	* @param xOffset If the font set doesn't start at the top left of the given image, specify the X coordinate offset here.
	* @param yOffset If the font set doesn't start at the top left of the given image, specify the Y coordinate offset here.
	* @return The newly created RetroFont texture which can be applied to an Image or Sprite.
	*/
	function retroFont(font:String, characterWidth:Float, characterHeight:Float, chars:String, charsPerRow:Float, ?xSpacing:Float, ?ySpacing:Float, ?xOffset:Float, ?yOffset:Float):phaser.RetroFont;
	
	/**
	* Creates a new Rope object.
	* 
	* @param x The x coordinate (in world space) to position the Rope at.
	* @param y The y coordinate (in world space) to position the Rope at.
	* @param width The width of the Rope.
	* @param height The height of the Rope.
	* @param key This is the image or texture used by the TileSprite during rendering. It can be a string which is a reference to the Cache entry, or an instance of a RenderTexture or PIXI.Texture.
	* @param frame If this Rope is using part of a sprite sheet or texture atlas you can specify the exact frame to use by giving a string or numeric index.
	* @return The newly created rope object.
	*/
	function rope(x:Float, y:Float, key:Dynamic, ?frame:Dynamic, ?points:Array<phaser.Point>):phaser.Rope;
	
	/**
	* Creates a new Sound object.
	* 
	* @param key The Game.cache key of the sound that this object will use.
	* @param volume The volume at which the sound will be played. - Default: 1
	* @param loop Whether or not the sound will loop.
	* @param connect Controls if the created Sound object will connect to the master gainNode of the SoundManager when running under WebAudio. - Default: true
	* @return The newly created text object.
	*/
	function sound(key:String, ?volume:Float, ?loop:Bool, ?connect:Bool):phaser.Sound;
	
	/**
	* Create a new Sprite with specific position and sprite sheet key.
	* 
	* @param x X position of the new sprite.
	* @param y Y position of the new sprite.
	* @param key This is the image or texture used by the Sprite during rendering. It can be a string which is a reference to the Cache entry, or an instance of a RenderTexture or PIXI.Texture.
	* @param frame If the sprite uses an image from a texture atlas or sprite sheet you can pass the frame here. Either a number for a frame ID or a string for a frame name.
	* @return the newly created sprite object.
	*/
	function sprite(x:Float, y:Float, ?key:Dynamic, ?frame:Dynamic):phaser.Sprite;
	
	/**
	* Create a new SpriteBatch.
	* 
	* @param parent The parent Group or DisplayObjectContainer that will hold this group, if any.
	* @param name A name for this Group. Not used internally but useful for debugging. - Default: 'group'
	* @param addToStage If set to true this Group will be added directly to the Game.Stage instead of Game.World.
	* @return The newly created group.
	*/
	function spriteBatch(parent:Dynamic, ?name:String, ?addToStage:Bool):phaser.SpriteBatch;
	
	/**
	* Creates a new Text object.
	* 
	* @param x X position of the new text object.
	* @param y Y position of the new text object.
	* @param text The actual text that will be written.
	* @param style The style object containing style attributes like font, font size , etc.
	* @return The newly created text object.
	*/
	function text(x:Float, y:Float, ?text:String, ?style:PhaserTextStyle):phaser.Text;
	
	/**
	* Creates a new Phaser.Tilemap object.
	* 
	* The map can either be populated with data from a Tiled JSON file or from a CSV file.
	* To do this pass the Cache key as the first parameter. When using Tiled data you need only provide the key.
	* When using CSV data you must provide the key and the tileWidth and tileHeight parameters.
	* If creating a blank tilemap to be populated later, you can either specify no parameters at all and then use `Tilemap.create` or pass the map and tile dimensions here.
	* Note that all Tilemaps use a base tile size to calculate dimensions from, but that a TilemapLayer may have its own unique tile size that overrides it.
	* 
	* @param key The key of the tilemap data as stored in the Cache. If you're creating a blank map either leave this parameter out or pass `null`.
	* @param tileWidth The pixel width of a single map tile. If using CSV data you must specify this. Not required if using Tiled map data. - Default: 32
	* @param tileHeight The pixel height of a single map tile. If using CSV data you must specify this. Not required if using Tiled map data. - Default: 32
	* @param width The width of the map in tiles. If this map is created from Tiled or CSV data you don't need to specify this. - Default: 10
	* @param height The height of the map in tiles. If this map is created from Tiled or CSV data you don't need to specify this. - Default: 10
	*/
	function tilemap(key:String, ?tileWidth:Float, ?tileHeight:Float, ?width:Float, ?height:Float):phaser.Tilemap;
	
	/**
	* Creates a new TileSprite object.
	* 
	* @param x The x coordinate (in world space) to position the TileSprite at.
	* @param y The y coordinate (in world space) to position the TileSprite at.
	* @param width The width of the TileSprite.
	* @param height The height of the TileSprite.
	* @param key This is the image or texture used by the TileSprite during rendering. It can be a string which is a reference to the Phaser Image Cache entry, or an instance of a PIXI.Texture or BitmapData.
	* @param frame If this TileSprite is using part of a sprite sheet or texture atlas you can specify the exact frame to use by giving a string or numeric index.
	* @return The newly created tileSprite object.
	*/
	function tileSprite(x:Float, y:Float, width:Float, height:Float, key:Dynamic, frame:Dynamic):phaser.TileSprite;
	
	/**
	* Create a tween object for a specific object.
	* 
	* The object can be any JavaScript object or Phaser object such as Sprite.
	* 
	* @param obj Object the tween will be run on.
	* @return The Tween object.
	*/
	function tween(obj:Dynamic):phaser.Tween;
	
}

