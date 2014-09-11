package phaser.loader;

@:native("Phaser.Cache")
extern class Cache {
	
	/**
	 * Phaser.Cache constructor.
	 */
	function new (game:phaser.core.Game);
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * Canvas key-value container.
	 */
	var _canvases:Dynamic;
	
	/**
	 * Image key-value container.
	 */
	var _images:Dynamic;
	
	/**
	 * RenderTexture key-value container.
	 */
	var _textures:Dynamic;
	
	/**
	 * Sound key-value container.
	 */
	var _sounds:Dynamic;
	
	/**
	 * Text key-value container.
	 */
	var _text:Dynamic;
	
	/**
	 * Text key-value container.
	 */
	var _json:Dynamic;
	
	/**
	 * Physics data key-value container.
	 */
	var _physics:Dynamic;
	
	/**
	 * Tilemap key-value container.
	 */
	var _tilemaps:Dynamic;
	
	/**
	 * Binary file key-value container.
	 */
	var _binary:Dynamic;
	
	/**
	 * BitmapData key-value container.
	 */
	var _bitmapDatas:Dynamic;
	
	/**
	 * BitmapFont key-value container.
	 */
	var _bitmapFont:Dynamic;
	
	/**
	 * This event is dispatched when the sound system is unlocked via a touch event on cellular devices.
	 */
	var onSoundUnlock:phaser.core.Signal;
	
	/**
	 * Const to cache object look-up array.
	 */
	var _cacheMap:Array<Dynamic>;
	
	/**
	 * @constant
	 */
	static var CANVAS:Float;
	
	/**
	 * @constant
	 */
	static var IMAGE:Float;
	
	/**
	 * @constant
	 */
	static var TEXTURE:Float;
	
	/**
	 * @constant
	 */
	static var SOUND:Float;
	
	/**
	 * @constant
	 */
	static var TEXT:Float;
	
	/**
	 * @constant
	 */
	static var PHYSICS:Float;
	
	/**
	 * @constant
	 */
	static var TILEMAP:Float;
	
	/**
	 * @constant
	 */
	static var BINARY:Float;
	
	/**
	 * @constant
	 */
	static var BITMAPDATA:Float;
	
	/**
	 * @constant
	 */
	static var BITMAPFONT:Float;
	
	/**
	 * @constant
	 */
	static var JSON:Float;
	
	/**
	 * Add a new canvas object in to the cache.
	 */
	function addCanvas (key:String, canvas:Dynamic, context:Dynamic):Void;
	
	/**
	 * Add a binary object in to the cache.
	 */
	function addBinary (key:String, binaryData:Dynamic):Void;
	
	/**
	 * Add a BitmapData object in to the cache.
	 */
	function addBitmapData (key:String, bitmapData:phaser.gameobjects.BitmapData):phaser.gameobjects.BitmapData;
	
	/**
	 * Add a new Phaser.RenderTexture in to the cache.
	 */
	function addRenderTexture (key:String, texture:Dynamic):Void;
	
	/**
	 * Add a new sprite sheet in to the cache.
	 */
	function addSpriteSheet (key:String, url:String, data:Dynamic, frameWidth:Float, frameHeight:Float, ?frameMax:Float, ?margin:Float = 0, ?spacing:Float = 0):Void;
	
	/**
	 * Add a new tilemap to the Cache.
	 */
	function addTilemap (key:String, url:String, mapData:Dynamic, format:Float):Void;
	
	/**
	 * Add a new texture atlas to the Cache.
	 */
	function addTextureAtlas (key:String, url:String, data:Dynamic, atlasData:Dynamic, format:Float):Void;
	
	/**
	 * Add a new Bitmap Font to the Cache.
	 */
	function addBitmapFont (key:String, url:String, data:Dynamic, xmlData:Dynamic, ?xSpacing:Float = 0, ?ySpacing:Float = 0):Void;
	
	/**
	 * Adds a default image to be used in special cases such as WebGL Filters. Is mapped to the key __default.
	 */
	function addDefaultImage ():Void;
	
	/**
	 * Adds an image to be used when a key is wrong / missing. Is mapped to the key __missing.
	 */
	function addMissingImage ():Void;
	
	/**
	 * Add a new text data.
	 */
	function addText (key:String, url:String, data:Dynamic):Void;
	
	/**
	 * Add a new json object into the cache.
	 */
	function addJSON (key:String, url:String, data:Dynamic):Void;
	
	/**
	 * Adds an Image file into the Cache. The file must have already been loaded, typically via Phaser.Loader.
	 */
	function addImage (key:String, url:String, data:Dynamic):Void;
	
	/**
	 * Adds a Sound file into the Cache. The file must have already been loaded, typically via Phaser.Loader.
	 */
	function addSound (key:String, url:String, data:Dynamic, webAudio:Bool, audioTag:Bool):Void;
	
	/**
	 * Reload a Sound file from the server.
	 */
	function reloadSound (key:String):Void;
	
	/**
	 * Fires the onSoundUnlock event when the sound has completed reloading.
	 */
	function reloadSoundComplete (key:String):Void;
	
	/**
	 * Updates the sound object in the cache.
	 */
	function updateSound (key:String):Void;
	
	/**
	 * Add a new decoded sound.
	 */
	function decodedSound (key:String, data:Dynamic):Void;
	
	/**
	 * Get a canvas object from the cache by its key.
	 */
	function getCanvas (key:String):Dynamic;
	
	/**
	 * Get a BitmapData object from the cache by its key.
	 */
	function getBitmapData (key:String):phaser.gameobjects.BitmapData;
	
	/**
	 * Get a BitmapFont object from the cache by its key.
	 */
	function getBitmapFont (key:String):Dynamic;
	
	/**
	 * Get a physics data object from the cache by its key. You can get either the entire data set, a single object or a single fixture of an object from it.
	 */
	function getPhysicsData (key:String, ?object:String, ?fixtureKey:String):Dynamic;
	
	/**
	 * Checks if a key for the given cache object type exists.
	 */
	function checkKey (type:Float, key:String):Bool;
	
	/**
	 * Checks if the given key exists in the Canvas Cache.
	 */
	function checkCanvasKey (key:String):Bool;
	
	/**
	 * Checks if the given key exists in the Image Cache. Note that this also includes Texture Atlases, Sprite Sheets and Retro Fonts.
	 */
	function checkImageKey (key:String):Bool;
	
	/**
	 * Checks if the given key exists in the Texture Cache.
	 */
	function checkTextureKey (key:String):Bool;
	
	/**
	 * Checks if the given key exists in the Sound Cache.
	 */
	function checkSoundKey (key:String):Bool;
	
	/**
	 * Checks if the given key exists in the Text Cache.
	 */
	function checkTextKey (key:String):Bool;
	
	/**
	 * Checks if the given key exists in the Physics Cache.
	 */
	function checkPhysicsKey (key:String):Bool;
	
	/**
	 * Checks if the given key exists in the Tilemap Cache.
	 */
	function checkTilemapKey (key:String):Bool;
	
	/**
	 * Checks if the given key exists in the Binary Cache.
	 */
	function checkBinaryKey (key:String):Bool;
	
	/**
	 * Checks if the given key exists in the BitmapData Cache.
	 */
	function checkBitmapDataKey (key:String):Bool;
	
	/**
	 * Checks if the given key exists in the BitmapFont Cache.
	 */
	function checkBitmapFontKey (key:String):Bool;
	
	/**
	 * Checks if the given key exists in the JSON Cache.
	 */
	function checkJSONKey (key:String):Bool;
	
	/**
	 * Get image data by key.
	 */
	function getImage (key:String):Dynamic;
	
	/**
	 * Get tilemap data by key.
	 */
	function getTilemapData (key:String):Dynamic;
	
	/**
	 * Get frame data by key.
	 */
	function getFrameData (key:String):phaser.animation.FrameData;
	
	/**
	 * Replaces a set of frameData with a new Phaser.FrameData object.
	 */
	function updateFrameData (key:String, frameData:Float):Void;
	
	/**
	 * Get a single frame out of a frameData set by key.
	 */
	function getFrameByIndex (key:String):phaser.animation.Frame;
	
	/**
	 * Get a single frame out of a frameData set by key.
	 */
	function getFrameByName (key:String):phaser.animation.Frame;
	
	/**
	 * Get a single frame by key. You'd only do this to get the default Frame created for a non-atlas/spritesheet image.
	 */
	function getFrame (key:String):phaser.animation.Frame;
	
	/**
	 * Get a single texture frame by key. You'd only do this to get the default Frame created for a non-atlas/spritesheet image.
	 */
	function getTextureFrame (key:String):phaser.animation.Frame;
	
	/**
	 * Get a RenderTexture by key.
	 */
	function getTexture (key:String):phaser.gameobjects.RenderTexture;
	
	/**
	 * Get sound by key.
	 */
	function getSound (key:String):phaser.sound.Sound;
	
	/**
	 * Get sound data by key.
	 */
	function getSoundData (key:String):Dynamic;
	
	/**
	 * Check if the given sound has finished decoding.
	 */
	function isSoundDecoded (key:String):Bool;
	
	/**
	 * Check if the given sound is ready for playback. A sound is considered ready when it has finished decoding and the device is no longer touch locked.
	 */
	function isSoundReady (key:String):Bool;
	
	/**
	 * Get the number of frames in this image.
	 */
	function getFrameCount (key:String):Int;
	
	/**
	 * Get text data by key.
	 */
	function getText (key:String):Dynamic;
	
	/**
	 * Get a JSON object by key from the cache.
	 */
	function getJSON (key:String):Dynamic;
	
	/**
	 * Get binary data by key.
	 */
	function getBinary (key:String):Dynamic;
	
	/**
	 * Gets all keys used by the Cache for the given data type.
	 */
	function getKeys (?type:Float):Array<Dynamic>;
	
	/**
	 * Removes a canvas from the cache.
	 */
	function removeCanvas (key:String):Void;
	
	/**
	 * Removes an image from the cache.
	 */
	function removeImage (key:String):Void;
	
	/**
	 * Removes a sound from the cache.
	 */
	function removeSound (key:String):Void;
	
	/**
	 * Removes a text from the cache.
	 */
	function removeText (key:String):Void;
	
	/**
	 * Removes a json object from the cache.
	 */
	function removeJSON (key:String):Void;
	
	/**
	 * Removes a physics data file from the cache.
	 */
	function removePhysics (key:String):Void;
	
	/**
	 * Removes a tilemap from the cache.
	 */
	function removeTilemap (key:String):Void;
	
	/**
	 * Removes a binary file from the cache.
	 */
	function removeBinary (key:String):Void;
	
	/**
	 * Removes a bitmap data from the cache.
	 */
	function removeBitmapData (key:String):Void;
	
	/**
	 * Removes a bitmap font from the cache.
	 */
	function removeBitmapFont (key:String):Void;
	
	/**
	 * Clears the cache. Removes every local cache object reference.
	 */
	function destroy ():Void;
	
}
