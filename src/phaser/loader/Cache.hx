package phaser.loader;

@:native("Phaser.Cache")
extern class Cache {
	
	/**
	 * A game only has one instance of a Cache and it is used to store all externally loaded assets such as images, sounds
	 * and data files as a result of Loader calls. Cached items use string based keys for look-up.
	 */
	function new (game:phaser.core.Game);
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * Automatically resolve resource URLs to absolute paths for use with the Cache.getURL method.
	 */
	var autoResolveURL:Bool;
	
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
	 * JSOIN key-value container.
	 */
	var _json:Dynamic;
	
	/**
	 * XML key-value container.
	 */
	var _xml:Dynamic;
	
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
	 * Maps URLs to resources.
	 */
	var _urlMap:Dynamic;
	
	/**
	 * Used to resolve URLs to the absolute path.
	 */
	var _urlResolver:Dynamic;
	
	/**
	 * Temporary variable to hold a resolved url.
	 */
	var _urlTemp:String;
	
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
	 * @constant
	 */
	static var XML:Float;
	
	/**
	 * Add a new canvas object in to the cache.
	 */
	function addCanvas (key:String, canvas:Dynamic, context:Dynamic):Void;
	
	/**
	 * Add a binary object in to the cache.
	 */
	function addBinary (key:String, binaryData:Dynamic):Void;
	
	/**
	 * Add a BitmapData object to the cache.
	 */
	@:overload(function (key:String, bitmapData:phaser.gameobjects.BitmapData, frameData:phaser.animation.FrameData):phaser.gameobjects.BitmapData {})
	function addBitmapData (key:String, bitmapData:phaser.gameobjects.BitmapData, frameData:Dynamic):phaser.gameobjects.BitmapData;
	
	/**
	 * Add a new Phaser.RenderTexture in to the cache.
	 */
	function addRenderTexture (key:String, texture:phaser.gameobjects.RenderTexture):Void;
	
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
	 * Add a new physics data object to the Cache.
	 */
	function addPhysicsData (key:String, url:String, JSONData:Dynamic, format:Float):Void;
	
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
	 * Add a new xml object into the cache.
	 */
	function addXML (key:String, url:String, data:Dynamic):Void;
	
	/**
	 * Adds an Image file into the Cache. The file must have already been loaded, typically via Phaser.Loader, but can also have been loaded into the DOM.
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
	 * Checks if the given key exists in the XML Cache.
	 */
	function checkXMLKey (key:String):Bool;
	
	/**
	 * Checks if the given URL has been loaded into the Cache.
	 * This method will only work if Cache.autoResolveURL was set to true before any preloading took place.
	 * The method will make a DOM src call to the URL given, so please be aware of this for certain file types, such as Sound files on Firefox
	 * which may cause double-load instances.
	 */
	function checkURL (url:String):Bool;
	
	/**
	 * Gets an image by its key. Note that this returns a DOM Image object, not a Phaser object.
	 */
	function getImage (key:String):Dynamic;
	
	/**
	 * Get tilemap data by key.
	 */
	function getTilemapData (key:String):Dynamic;
	
	/**
	 * Get frame data by key.
	 */
	function getFrameData (key:String, ?map:String):phaser.animation.FrameData;
	
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
	function getRenderTexture (key:String):phaser.gameobjects.RenderTexture;
	
	/**
	 * DEPRECATED: Please use Cache.getRenderTexture instead. This method will be removed in Phaser 2.2.0.
	 * 
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
	function getFrameCount (key:String):Float;
	
	/**
	 * Get text data by key.
	 */
	function getText (key:String):Dynamic;
	
	/**
	 * Get a JSON object by key from the cache.
	 */
	function getJSON (key:String):Dynamic;
	
	/**
	 * Get a XML object by key from the cache.
	 */
	function getXML (key:String):Dynamic;
	
	/**
	 * Get binary data by key.
	 */
	function getBinary (key:String):Dynamic;
	
	/**
	 * Get a cached object by the URL.
	 * This only returns a value if you set Cache.autoResolveURL to true <em>before</em> starting the preload of any assets.
	 * Be aware that every call to this function makes a DOM src query, so use carefully and double-check for implications in your target browsers/devices.
	 */
	function getURL (url:String):Dynamic;
	
	/**
	 * DEPRECATED: Please use Cache.getURL instead.
	 * Get a cached object by the URL.
	 * This only returns a value if you set Cache.autoResolveURL to true <em>before</em> starting the preload of any assets.
	 * Be aware that every call to this function makes a DOM src query, so use carefully and double-check for implications in your target browsers/devices.
	 */
	function getUrl (url:String):Dynamic;
	
	/**
	 * Gets all keys used by the Cache for the given data type.
	 */
	function getKeys (?type:Float):Array<Dynamic>;
	
	/**
	 * Removes a canvas from the cache.
	 */
	function removeCanvas (key:String):Void;
	
	/**
	 * Removes an image from the cache and optionally from the Pixi.BaseTextureCache as well.
	 */
	function removeImage (key:String, ?removeFromPixi:Bool = true):Void;
	
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
	 * Removes a xml object from the cache.
	 */
	function removeXML (key:String):Void;
	
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
	 * Resolves a URL to its absolute form and stores it in Cache._urlMap as long as Cache.autoResolveURL is set to true.
	 * This is then looked-up by the Cache.getURL and Cache.checkURL calls.
	 */
	function _resolveURL (url:String, ?data:Dynamic):String;
	
	/**
	 * Clears the cache. Removes every local cache object reference.
	 */
	function destroy ():Void;
	
}
