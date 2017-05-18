package phaser;

import haxe.extern.Rest;

/**
* The GameObjectFactory is a quick way to create many common game objects
* using {@linkcode Phaser.Game#add `game.add`}.
* 
* Created objects are _automatically added_ to the appropriate Manager, World, or manually specified parent Group.
*/
@:native("Phaser.GameObjectFactory")
extern class GameObjectFactory {

	/**
	* The GameObjectFactory is a quick way to create many common game objects
	* using {@linkcode Phaser.Game#add `game.add`}.
	* 
	* Created objects are _automatically added_ to the appropriate Manager, World, or manually specified parent Group.
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
	* @return The newly created sound object.
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
	* Create a BitmapData object.
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
	* @param group Optional Group to add the object to. If not specified it will be added to the World group.
	* @return The newly created bitmapText object.
	*/
	function bitmapText(x:Float, y:Float, font:String, ?text:String, ?size:Float, ?group:phaser.Group):phaser.BitmapText;
	
	/**
	* Creates a new Button object.
	* 
	* @param x The x coordinate of the Button. The coordinate is relative to any parent container this button may be in.
	* @param y The y coordinate of the Button. The coordinate is relative to any parent container this button may be in.
	* @param key The image key as defined in the Game.Cache to use as the texture for this button.
	* @param callback The function to call when this button is pressed
	* @param callbackContext The context in which the callback will be called (usually 'this')
	* @param overFrame This is the frame or frameName that will be set when this button is in an over state. Give either a number to use a frame ID or a string for a frame name.
	* @param outFrame This is the frame or frameName that will be set when this button is in an out state. Give either a number to use a frame ID or a string for a frame name.
	* @param downFrame This is the frame or frameName that will be set when this button is in a down state. Give either a number to use a frame ID or a string for a frame name.
	* @param upFrame This is the frame or frameName that will be set when this button is in an up state. Give either a number to use a frame ID or a string for a frame name.
	* @param group Optional Group to add the object to. If not specified it will be added to the World group.
	* @return The newly created Button object.
	*/
	function button(?x:Float, ?y:Float, ?key:String, ?callback:Dynamic, ?callbackContext:Dynamic, ?overFrame:Dynamic, ?outFrame:Dynamic, ?downFrame:Dynamic, ?upFrame:Dynamic, ?group:phaser.Group):phaser.Button;
	
	/**
	* Create a new Emitter.
	* 
	* A particle emitter can be used for one-time explosions or for
	* continuous effects like rain and fire. All it really does is launch Particle objects out
	* at set intervals, and fixes their positions and velocities accordingly.
	* 
	* @param x The x coordinate within the Emitter that the particles are emitted from.
	* @param y The y coordinate within the Emitter that the particles are emitted from.
	* @param maxParticles The total number of particles in this emitter. - Default: 50
	* @return The newly created emitter object.
	*/
	function emitter(?x:Float, ?y:Float, ?maxParticles:Float):phaser.particles.arcade.Emitter;
	
	/**
	* Adds an existing display object to the game world.
	* 
	* @param object An instance of Phaser.Sprite, Phaser.Button or any other display object.
	* @return The child that was added to the World.
	*/
	function existing(object:Dynamic):Dynamic;
	
	/**
	* A WebGL shader/filter that can be applied to Sprites.
	* 
	* @param filter The name of the filter you wish to create, for example HueRotate or SineWave.
	* @param undefined Whatever parameters are needed to be passed to the filter init function.
	* @return The newly created Phaser.Filter object.
	*/
	function filter(filter:String, args:Rest<Dynamic>):phaser.Filter;
	
	/**
	* Creates a new Graphics object.
	* 
	* @param x The x coordinate of the Graphic. The coordinate is relative to any parent container this object may be in.
	* @param y The y coordinate of the Graphic. The coordinate is relative to any parent container this object may be in.
	* @param group Optional Group to add the object to. If not specified it will be added to the World group.
	* @return The newly created graphics object.
	*/
	function graphics(?x:Float, ?y:Float, ?group:phaser.Group):phaser.Graphics;
	
	/**
	* A Group is a container for display objects that allows for fast pooling, recycling and collision checks.
	* 
	* @param parent The parent Group or DisplayObjectContainer that will hold this group, if any. If set to null the Group won't be added to the display list. If undefined it will be added to World by default.
	* @param name A name for this Group. Not used internally but useful for debugging. - Default: 'group'
	* @param addToStage If set to true this Group will be added directly to the Game.Stage instead of Game.World.
	* @param enableBody If true all Sprites created with `Group.create` or `Group.createMulitple` will have a physics body created on them. Change the body type with physicsBodyType.
	* @param physicsBodyType If enableBody is true this is the type of physics body that is created on new Sprites. Phaser.Physics.ARCADE, Phaser.Physics.P2, Phaser.Physics.NINJA, etc.
	* @return The newly created Group.
	*/
	function group(?parent:Dynamic, ?name:String, ?addToStage:Bool, ?enableBody:Bool, ?physicsBodyType:Float):phaser.Group;
	
	/**
	* Create a new `Image` object.
	* 
	* An Image is a light-weight object you can use to display anything that doesn't need physics or animation.
	* 
	* It can still rotate, scale, crop and receive input events.
	* This makes it perfect for logos, backgrounds, simple buttons and other non-Sprite graphics.
	* 
	* @param x The x coordinate of the Image. The coordinate is relative to any parent container this Image may be in.
	* @param y The y coordinate of the Image. The coordinate is relative to any parent container this Image may be in.
	* @param key The image used as a texture by this display object during rendering. If a string Phaser will get for an entry in the Image Cache. Or it can be an instance of a RenderTexture, BitmapData, Video or PIXI.Texture.
	* @param frame If a Texture Atlas or Sprite Sheet is used this allows you to specify the frame to be used. Use either an integer for a Frame ID or a string for a frame name.
	* @param group Optional Group to add the object to. If not specified it will be added to the World group.
	* @return The newly created Image object.
	*/
	function image(?x:Float, ?y:Float, ?key:Dynamic, ?frame:Dynamic, ?group:phaser.Group):phaser.Image;
	
	/**
	* A Group is a container for display objects that allows for fast pooling, recycling and collision checks.
	* 
	* A Physics Group is the same as an ordinary Group except that is has enableBody turned on by default, so any Sprites it creates
	* are automatically given a physics body.
	* 
	* @param physicsBodyType If enableBody is true this is the type of physics body that is created on new Sprites. Phaser.Physics.ARCADE, Phaser.Physics.P2JS, Phaser.Physics.NINJA, etc. - Default: Phaser.Physics.ARCADE
	* @param parent The parent Group or DisplayObjectContainer that will hold this group, if any. If set to null the Group won't be added to the display list. If undefined it will be added to World by default.
	* @param name A name for this Group. Not used internally but useful for debugging. - Default: 'group'
	* @param addToStage If set to true this Group will be added directly to the Game.Stage instead of Game.World.
	* @return The newly created Group.
	*/
	function physicsGroup(?physicsBodyType:Float, ?parent:Dynamic, ?name:String, ?addToStage:Bool):phaser.Group;
	
	/**
	* Add a new Plugin into the PluginManager.
	* 
	* The Plugin must have 2 properties: `game` and `parent`. Plugin.game is set to the game reference the PluginManager uses, and parent is set to the PluginManager.
	* 
	* @param plugin The Plugin to add into the PluginManager. This can be a function or an existing object.
	* @param args Additional parameters that will be passed to the Plugin.init method.
	* @return The Plugin that was added to the manager.
	*/
	function plugin(plugin:phaser.Plugin, parameter:Rest<Dynamic>):phaser.Plugin;
	
	/**
	* A dynamic initially blank canvas to which images can be drawn.
	* 
	* @param width the width of the RenderTexture. - Default: 100
	* @param height the height of the RenderTexture. - Default: 100
	* @param key Asset key for the RenderTexture when stored in the Cache (see addToCache parameter). - Default: ''
	* @param addToCache Should this RenderTexture be added to the Game.Cache? If so you can retrieve it with Cache.getTexture(key)
	* @return The newly created RenderTexture object.
	*/
	function renderTexture(?width:Float, ?height:Float, ?key:String, ?addToCache:Bool):phaser.RenderTexture;
	
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
	* Example usage: https://github.com/codevinsky/phaser-rope-demo/blob/master/dist/demo.js
	* 
	* @param x The x coordinate of the Rope. The coordinate is relative to any parent container this rope may be in.
	* @param y The y coordinate of the Rope. The coordinate is relative to any parent container this rope may be in.
	* @param key The image used as a texture by this display object during rendering. If a string Phaser will get for an entry in the Image Cache. Or it can be an instance of a RenderTexture, BitmapData, Video or PIXI.Texture.
	* @param frame If a Texture Atlas or Sprite Sheet is used this allows you to specify the frame to be used. Use either an integer for a Frame ID or a string for a frame name.
	* @param points An array of {Phaser.Point}.
	* @param group Optional Group to add the object to. If not specified it will be added to the World group.
	* @return The newly created Rope object.
	*/
	function rope(?x:Float, ?y:Float, ?key:Dynamic, ?frame:Dynamic, ?points:Array<phaser.Point>):phaser.Rope;
	
	/**
	* Creates a new Sound object.
	* 
	* @param key The Game.cache key of the sound that this object will use.
	* @param volume The volume at which the sound will be played. - Default: 1
	* @param loop Whether or not the sound will loop.
	* @param connect Controls if the created Sound object will connect to the master gainNode of the SoundManager when running under WebAudio. - Default: true
	* @return The newly created sound object.
	*/
	function sound(key:String, ?volume:Float, ?loop:Bool, ?connect:Bool):phaser.Sound;
	
	/**
	* Create a new Sprite with specific position and sprite sheet key.
	* 
	* At its most basic a Sprite consists of a set of coordinates and a texture that is used when rendered.
	* They also contain additional properties allowing for physics motion (via Sprite.body), input handling (via Sprite.input),
	* events (via Sprite.events), animation (via Sprite.animations), camera culling and more. Please see the Examples for use cases.
	* 
	* @param x The x coordinate of the sprite. The coordinate is relative to any parent container this sprite may be in.
	* @param y The y coordinate of the sprite. The coordinate is relative to any parent container this sprite may be in.
	* @param key The image used as a texture by this display object during rendering. If a string Phaser will get for an entry in the Image Cache. Or it can be an instance of a RenderTexture, BitmapData, Video or PIXI.Texture.
	* @param frame If a Texture Atlas or Sprite Sheet is used this allows you to specify the frame to be used. Use either an integer for a Frame ID or a string for a frame name.
	* @param group Optional Group to add the object to. If not specified it will be added to the World group.
	* @return The newly created Sprite object.
	*/
	function sprite(?x:Float, ?y:Float, ?key:Dynamic, ?frame:Dynamic, ?group:phaser.Group):phaser.Sprite;
	
	/**
	* A SpriteBatch is a really fast version of a Phaser Group built solely for speed.
	* Use when you need a lot of sprites or particles all sharing the same texture.
	* The speed gains are specifically for WebGL. In Canvas mode you won't see any real difference.
	* 
	* @param parent The parent Group that will hold this Sprite Batch. Set to `undefined` or `null` to add directly to game.world.
	* @param name A name for this Sprite Batch. Not used internally but useful for debugging. - Default: 'group'
	* @param addToStage If set to true this Sprite Batch will be added directly to the Game.Stage instead of the parent.
	* @return The newly created Sprite Batch.
	*/
	function spriteBatch(parent:Dynamic, ?name:String, ?addToStage:Bool):phaser.Group;
	
	/**
	* Creates a new Text object.
	* 
	* @param x The x coordinate of the Text. The coordinate is relative to any parent container this text may be in.
	* @param y The y coordinate of the Text. The coordinate is relative to any parent container this text may be in.
	* @param text The text string that will be displayed. - Default: ''
	* @param style The style object containing style attributes like font, font size , etc.
	* @param group Optional Group to add the object to. If not specified it will be added to the World group.
	* @return The newly created text object.
	*/
	function text(?x:Float, ?y:Float, ?text:String, ?style:PhaserTextStyle, ?group:phaser.Group):phaser.Text;
	
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
	* @return The newly created tilemap object.
	*/
	function tilemap(?key:String, ?tileWidth:Float, ?tileHeight:Float, ?width:Float, ?height:Float):phaser.Tilemap;
	
	/**
	* Creates a new TileSprite object.
	* 
	* @param x The x coordinate of the TileSprite. The coordinate is relative to any parent container this TileSprite may be in.
	* @param y The y coordinate of the TileSprite. The coordinate is relative to any parent container this TileSprite may be in.
	* @param width The width of the TileSprite.
	* @param height The height of the TileSprite.
	* @param key This is the image or texture used by the TileSprite during rendering. It can be a string which is a reference to the Phaser Image Cache entry, or an instance of a PIXI.Texture or BitmapData.
	* @param frame If a Texture Atlas or Sprite Sheet is used this allows you to specify the frame to be used. Use either an integer for a Frame ID or a string for a frame name.
	* @param group Optional Group to add the object to. If not specified it will be added to the World group.
	* @return The newly created TileSprite object.
	*/
	function tileSprite(x:Float, y:Float, width:Float, height:Float, ?key:Dynamic, ?frame:Dynamic, ?group:phaser.Group):phaser.TileSprite;
	
	/**
	* Create a tween on a specific object.
	* 
	* The object can be any JavaScript object or Phaser object such as Sprite.
	* 
	* @param object Object the tween will be run on.
	* @return The newly created Phaser.Tween object.
	*/
	function tween(obj:Dynamic):phaser.Tween;
	
	/**
	* Weapons provide the ability to easily create a bullet pool and manager.
	* 
	* Weapons fire Phaser.Bullet objects, which are essentially Sprites with a few extra properties.
	* The Bullets are enabled for Arcade Physics. They do not currently work with P2 Physics.
	* 
	* The Bullets are created inside of `Weapon.bullets`, which is a Phaser.Group instance. Anything you
	* can usually do with a Group, such as move it around the display list, iterate it, etc can be done
	* to the bullets Group too.
	* 
	* Bullets can have textures and even animations. You can control the speed at which they are fired,
	* the firing rate, the firing angle, and even set things like gravity for them.
	* 
	* @param quantity The quantity of bullets to seed the Weapon with. If -1 it will set the pool to automatically expand. - Default: 1
	* @param key The image used as a texture by the bullets during rendering. If a string Phaser will get for an entry in the Image Cache. Or it can be an instance of a RenderTexture, BitmapData, Video or PIXI.Texture.
	* @param frame If a Texture Atlas or Sprite Sheet is used this allows you to specify the frame to be used by the bullets. Use either an integer for a Frame ID or a string for a frame name.
	* @param group Optional Group to add the Weapon to. If not specified it will be added to the World group.
	* @param bulletClass The Class of the bullets that are launched by this Weapon. See {
	* @link Phaser.Weapon#bulletClass}
	* @return A Weapon instance.
	*/
	function weapon(?quantity:Float, ?key:Dynamic, ?frame:Dynamic, ?group:phaser.Group, ?bulletClass:phaser.Bullet):phaser.Weapon;
	
	/**
	* Create a Video object.
	* 
	* This will return a Phaser.Video object which you can pass to a Sprite to be used as a texture.
	* 
	* @param key The key of the video file in the Phaser.Cache that this Video object will play. Set to `null` or leave undefined if you wish to use a webcam as the source. See `startMediaStream` to start webcam capture.
	* @param url If the video hasn't been loaded then you can provide a full URL to the file here (make sure to set key to null)
	* @return The newly created Video object.
	*/
	function video(?key:String, ?url:String):phaser.Video;
	
}

