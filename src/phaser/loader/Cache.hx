package phaser.loader;

@:native("Phaser.Cache")
extern class Cache {
	
	/**
	 * Phaser has one single cache in which it stores all assets.
	 * 
	 * The cache is split up into sections, such as images, sounds, video, json, etc. All assets are stored using
	 * a unique string-based key as their identifier. Assets stored in different areas of the cache can have the
	 * same key, for example 'playerWalking' could be used as the key for both a sprite sheet and an audio file,
	 * because they are unique data types.
	 * 
	 * The cache is automatically populated by the Phaser.Loader. When you use the loader to pull in external assets
	 * such as images they are automatically placed into their respective cache. Most common Game Objects, such as
	 * Sprites and Videos automatically query the cache to extract the assets they need on instantiation.
	 * 
	 * You can access the cache from within a State via this.cache. From here you can call any public method it has,
	 * including adding new entries to it, deleting them or querying them.
	 * 
	 * Understand that almost without exception when you get an item from the cache it will return a reference to the
	 * item stored in the cache, not a copy of it. Therefore if you retrieve an item and then modify it, the original
	 * object in the cache will also be updated, even if you don't put it back into the cache again.
	 * 
	 * By default when you change State the cache is <em>not</em> cleared, although there is an option to clear it should
	 * your game require it. In a typical game set-up the cache is populated once after the main game has loaded and
	 * then used as an asset store.
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
	 * The main cache object into which all resources are placed.
	 */
	var cache:Dynamic;
	
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
	 * @constant
	 */
	static var VIDEO:Float;
	
	/**
	 * @constant
	 */
	static var SHADER:Float;
	
	/**
	 * @constant
	 */
	static var RENDER_TEXTURE:Float;
	
	/**
	 * Add a new canvas object in to the cache.
	 */
	function addCanvas (key:String, canvas:Dynamic, ?context:Dynamic):Void;
	
	/**
	 * Adds an Image file into the Cache. The file must have already been loaded, typically via Phaser.Loader, but can also have been loaded into the DOM.
	 * If an image already exists in the cache with the same key then it is removed and destroyed, and the new image inserted in its place.
	 */
	function addImage (key:String, url:String, data:Dynamic):Dynamic;
	
	/**
	 * Adds a default image to be used in special cases such as WebGL Filters.
	 * It uses the special reserved key of __default.
	 * This method is called automatically when the Cache is created.
	 * This image is skipped when Cache.destroy is called due to its internal requirements.
	 */
	function addDefaultImage ():Void;
	
	/**
	 * Adds an image to be used when a key is wrong / missing.
	 * It uses the special reserved key of __missing.
	 * This method is called automatically when the Cache is created.
	 * This image is skipped when Cache.destroy is called due to its internal requirements.
	 */
	function addMissingImage ():Void;
	
	/**
	 * Adds a Sound file into the Cache. The file must have already been loaded, typically via Phaser.Loader.
	 */
	function addSound (key:String, url:String, data:Dynamic, webAudio:Bool, audioTag:Bool):Void;
	
	/**
	 * Add a new text data.
	 */
	function addText (key:String, url:String, data:Dynamic):Void;
	
	/**
	 * Add a new physics data object to the Cache.
	 */
	function addPhysicsData (key:String, url:String, JSONData:Dynamic, format:Float):Void;
	
	/**
	 * Add a new tilemap to the Cache.
	 */
	function addTilemap (key:String, url:String, mapData:Dynamic, format:Float):Void;
	
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
	 * Add a new Bitmap Font to the Cache.
	 */
	function addBitmapFont (key:String, url:String, data:Dynamic, atlasData:Dynamic, ?atlasType:String = 'xml', ?xSpacing:Float = 0, ?ySpacing:Float = 0):Void;
	
	/**
	 * Add a new json object into the cache.
	 */
	function addJSON (key:String, url:String, data:Dynamic):Void;
	
	/**
	 * Add a new xml object into the cache.
	 */
	function addXML (key:String, url:String, data:Dynamic):Void;
	
	/**
	 * Adds a Video file into the Cache. The file must have already been loaded, typically via Phaser.Loader.
	 */
	function addVideo (key:String, url:String, data:Dynamic, isBlob:Bool):Void;
	
	/**
	 * Adds a Fragment Shader in to the Cache. The file must have already been loaded, typically via Phaser.Loader.
	 */
	function addShader (key:String, url:String, data:Dynamic):Void;
	
	/**
	 * Add a new Phaser.RenderTexture in to the cache.
	 */
	function addRenderTexture (key:String, texture:phaser.gameobjects.RenderTexture):Void;
	
	/**
	 * Add a new sprite sheet in to the cache.
	 */
	function addSpriteSheet (key:String, url:String, data:Dynamic, frameWidth:Float, frameHeight:Float, ?frameMax:Float, ?margin:Float = 0, ?spacing:Float = 0):Void;
	
	/**
	 * Add a new texture atlas to the Cache.
	 */
	function addTextureAtlas (key:String, url:String, data:Dynamic, atlasData:Dynamic, format:Float):Void;
	
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
	 * Check if the given sound has finished decoding.
	 */
	function isSoundDecoded (key:String):Bool;
	
	/**
	 * Check if the given sound is ready for playback.
	 * A sound is considered ready when it has finished decoding and the device is no longer touch locked.
	 */
	function isSoundReady (key:String):Bool;
	
	/**
	 * Checks if a key for the given cache object type exists.
	 */
	function checkKey (cache:Int, key:String):Bool;
	
	/**
	 * Checks if the given URL has been loaded into the Cache.
	 * This method will only work if Cache.autoResolveURL was set to true before any preloading took place.
	 * The method will make a DOM src call to the URL given, so please be aware of this for certain file types, such as Sound files on Firefox
	 * which may cause double-load instances.
	 */
	function checkURL (url:String):Bool;
	
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
	 * Checks if the given key exists in the Video Cache.
	 */
	function checkVideoKey (key:String):Bool;
	
	/**
	 * Checks if the given key exists in the Fragment Shader Cache.
	 */
	function checkShaderKey (key:String):Bool;
	
	/**
	 * Checks if the given key exists in the Render Texture Cache.
	 */
	function checkRenderTextureKey (key:String):Bool;
	
	/**
	 * Get an item from a cache based on the given key and property.
	 * 
	 * This method is mostly used internally by other Cache methods such as getImage but is exposed
	 * publicly for your own use as well.
	 */
	function getItem (key:String, cache:Int, ?method:String, ?property:String):Dynamic;
	
	/**
	 * Gets a Canvas object from the cache.
	 * 
	 * The object is looked-up based on the key given.
	 * 
	 * Note: If the object cannot be found a console.warn message is displayed.
	 */
	function getCanvas (key:String):Dynamic;
	
	/**
	 * Gets a Image object from the cache. This returns a DOM Image object, not a Phaser.Image object.
	 * 
	 * The object is looked-up based on the key given.
	 * 
	 * Note: If the object cannot be found a console.warn message is displayed.
	 * 
	 * Only the Image cache is searched, which covers images loaded via Loader.image, Sprite Sheets and Texture Atlases.
	 * 
	 * If you need the image used by a bitmap font or similar then please use those respective 'get' methods.
	 */
	function getImage (?key:String, ?full:Bool = false):Dynamic;
	
	/**
	 * Get a single texture frame by key.
	 * 
	 * You'd only do this to get the default Frame created for a non-atlas / spritesheet image.
	 */
	function getTextureFrame (key:String):phaser.animation.Frame;
	
	/**
	 * Gets a Phaser.Sound object from the cache.
	 * 
	 * The object is looked-up based on the key given.
	 * 
	 * Note: If the object cannot be found a console.warn message is displayed.
	 */
	function getSound (key:String):phaser.sound.Sound;
	
	/**
	 * Gets a raw Sound data object from the cache.
	 * 
	 * The object is looked-up based on the key given.
	 * 
	 * Note: If the object cannot be found a console.warn message is displayed.
	 */
	function getSoundData (key:String):Dynamic;
	
	/**
	 * Gets a Text object from the cache.
	 * 
	 * The object is looked-up based on the key given.
	 * 
	 * Note: If the object cannot be found a console.warn message is displayed.
	 */
	function getText (key:String):Dynamic;
	
	/**
	 * Gets a Physics Data object from the cache.
	 * 
	 * The object is looked-up based on the key given.
	 * 
	 * Note: If the object cannot be found a console.warn message is displayed.
	 * 
	 * You can get either the entire data set, a single object or a single fixture of an object from it.
	 */
	function getPhysicsData (key:String, ?object:String, ?fixtureKey:String):Dynamic;
	
	/**
	 * Gets a raw Tilemap data object from the cache. This will be in either CSV or JSON format.
	 * 
	 * The object is looked-up based on the key given.
	 * 
	 * Note: If the object cannot be found a console.warn message is displayed.
	 */
	function getTilemapData (key:String):Dynamic;
	
	/**
	 * Gets a binary object from the cache.
	 * 
	 * The object is looked-up based on the key given.
	 * 
	 * Note: If the object cannot be found a console.warn message is displayed.
	 */
	function getBinary (key:String):Dynamic;
	
	/**
	 * Gets a BitmapData object from the cache.
	 * 
	 * The object is looked-up based on the key given.
	 * 
	 * Note: If the object cannot be found a console.warn message is displayed.
	 */
	function getBitmapData (key:String):phaser.gameobjects.BitmapData;
	
	/**
	 * Gets a Bitmap Font object from the cache.
	 * 
	 * The object is looked-up based on the key given.
	 * 
	 * Note: If the object cannot be found a console.warn message is displayed.
	 */
	function getBitmapFont (key:String):Dynamic;
	
	/**
	 * Gets a JSON object from the cache.
	 * 
	 * The object is looked-up based on the key given.
	 * 
	 * Note: If the object cannot be found a console.warn message is displayed.
	 * 
	 * You can either return the object by reference (the default), or return a clone
	 * of it by setting the clone argument to true.
	 */
	function getJSON (key:String, ?clone:Bool = false):Dynamic;
	
	/**
	 * Gets an XML object from the cache.
	 * 
	 * The object is looked-up based on the key given.
	 * 
	 * Note: If the object cannot be found a console.warn message is displayed.
	 */
	function getXML (key:String):Dynamic;
	
	/**
	 * Gets a Phaser.Video object from the cache.
	 * 
	 * The object is looked-up based on the key given.
	 * 
	 * Note: If the object cannot be found a console.warn message is displayed.
	 */
	function getVideo (key:String):phaser.gameobjects.Video;
	
	/**
	 * Gets a fragment shader object from the cache.
	 * 
	 * The object is looked-up based on the key given.
	 * 
	 * Note: If the object cannot be found a console.warn message is displayed.
	 */
	function getShader (key:String):String;
	
	/**
	 * Gets a RenderTexture object from the cache.
	 * 
	 * The object is looked-up based on the key given.
	 * 
	 * Note: If the object cannot be found a console.warn message is displayed.
	 */
	function getRenderTexture (key:String):Dynamic;
	
	/**
	 * Gets a PIXI.BaseTexture by key from the given Cache.
	 */
	function getBaseTexture (key:String, ?cache:Int):phaser.pixi.textures.BaseTexture;
	
	/**
	 * Get a single frame by key. You'd only do this to get the default Frame created for a non-atlas/spritesheet image.
	 */
	function getFrame (key:String, ?cache:Int):phaser.animation.Frame;
	
	/**
	 * Get the total number of frames contained in the FrameData object specified by the given key.
	 */
	function getFrameCount (key:String, ?cache:Int):Float;
	
	/**
	 * Gets a Phaser.FrameData object from the Image Cache.
	 * 
	 * The object is looked-up based on the key given.
	 * 
	 * Note: If the object cannot be found a console.warn message is displayed.
	 */
	function getFrameData (key:String, ?cache:Int):phaser.animation.FrameData;
	
	/**
	 * Check if the FrameData for the given key exists in the Image Cache.
	 */
	function hasFrameData (key:String, ?cache:Int):Bool;
	
	/**
	 * Replaces a set of frameData with a new Phaser.FrameData object.
	 */
	function updateFrameData (key:String, frameData:Float, ?cache:Int):Void;
	
	/**
	 * Get a single frame out of a frameData set by key.
	 */
	function getFrameByIndex (key:String, index:Float, ?cache:Int):phaser.animation.Frame;
	
	/**
	 * Get a single frame out of a frameData set by key.
	 */
	function getFrameByName (key:String, name:String, ?cache:Int):phaser.animation.Frame;
	
	/**
	 * Gets a PIXI.Texture by key from the PIXI.TextureCache.
	 * 
	 * If the texture isn't found in the cache, then it searches the Phaser Image Cache and
	 * creates a new PIXI.Texture object which is then returned.
	 */
	function getPixiTexture (key:String):phaser.pixi.textures.Texture;
	
	/**
	 * Gets a PIXI.BaseTexture by key from the PIXI.BaseTextureCache.
	 * 
	 * If the texture isn't found in the cache, then it searches the Phaser Image Cache.
	 */
	function getPixiBaseTexture (key:String):phaser.pixi.textures.BaseTexture;
	
	/**
	 * Get a cached object by the URL.
	 * This only returns a value if you set Cache.autoResolveURL to true <em>before</em> starting the preload of any assets.
	 * Be aware that every call to this function makes a DOM src query, so use carefully and double-check for implications in your target browsers/devices.
	 */
	function getURL (url:String):Dynamic;
	
	/**
	 * Gets all keys used in the requested Cache.
	 */
	function getKeys (?cache:Int):Array<Dynamic>;
	
	/**
	 * Removes a canvas from the cache.
	 * 
	 * Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	 * then it will persist in memory.
	 */
	function removeCanvas (key:String):Void;
	
	/**
	 * Removes an image from the cache.
	 * 
	 * You can optionally elect to destroy it as well. This calls BaseTexture.destroy on it.
	 * 
	 * Note that this only removes it from the Phaser and PIXI Caches. If you still have references to the data elsewhere
	 * then it will persist in memory.
	 */
	function removeImage (key:String, ?removeFromPixi:Bool = true):Void;
	
	/**
	 * Removes a sound from the cache.
	 * 
	 * If any Phaser.Sound objects use the audio file in the cache that you remove with this method, they will
	 * <em>automatically</em> destroy themselves. If you wish to have full control over when Sounds are destroyed then
	 * you must finish your house-keeping and destroy them all yourself first, before calling this method.
	 * 
	 * Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	 * then it will persist in memory.
	 */
	function removeSound (key:String):Void;
	
	/**
	 * Removes a text file from the cache.
	 * 
	 * Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	 * then it will persist in memory.
	 */
	function removeText (key:String):Void;
	
	/**
	 * Removes a physics data file from the cache.
	 * 
	 * Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	 * then it will persist in memory.
	 */
	function removePhysics (key:String):Void;
	
	/**
	 * Removes a tilemap from the cache.
	 * 
	 * Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	 * then it will persist in memory.
	 */
	function removeTilemap (key:String):Void;
	
	/**
	 * Removes a binary file from the cache.
	 * 
	 * Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	 * then it will persist in memory.
	 */
	function removeBinary (key:String):Void;
	
	/**
	 * Removes a bitmap data from the cache.
	 * 
	 * Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	 * then it will persist in memory.
	 */
	function removeBitmapData (key:String):Void;
	
	/**
	 * Removes a bitmap font from the cache.
	 * 
	 * Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	 * then it will persist in memory.
	 */
	function removeBitmapFont (key:String):Void;
	
	/**
	 * Removes a json object from the cache.
	 * 
	 * Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	 * then it will persist in memory.
	 */
	function removeJSON (key:String):Void;
	
	/**
	 * Removes a xml object from the cache.
	 * 
	 * Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	 * then it will persist in memory.
	 */
	function removeXML (key:String):Void;
	
	/**
	 * Removes a video from the cache.
	 * 
	 * Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	 * then it will persist in memory.
	 */
	function removeVideo (key:String):Void;
	
	/**
	 * Removes a shader from the cache.
	 * 
	 * Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	 * then it will persist in memory.
	 */
	function removeShader (key:String):Void;
	
	/**
	 * Removes a Render Texture from the cache.
	 * 
	 * Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	 * then it will persist in memory.
	 */
	function removeRenderTexture (key:String):Void;
	
	/**
	 * Removes a Sprite Sheet from the cache.
	 * 
	 * Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	 * then it will persist in memory.
	 */
	function removeSpriteSheet (key:String):Void;
	
	/**
	 * Removes a Texture Atlas from the cache.
	 * 
	 * Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	 * then it will persist in memory.
	 */
	function removeTextureAtlas (key:String):Void;
	
	/**
	 * Empties out all of the GL Textures from Images stored in the cache.
	 * This is called automatically when the WebGL context is lost and then restored.
	 */
	function clearGLTextures ():Void;
	
	/**
	 * Resolves a URL to its absolute form and stores it in Cache._urlMap as long as Cache.autoResolveURL is set to true.
	 * This is then looked-up by the Cache.getURL and Cache.checkURL calls.
	 */
	function _resolveURL (url:String, ?data:Dynamic):String;
	
	/**
	 * Clears the cache. Removes every local cache object reference.
	 * If an object in the cache has a destroy method it will also be called.
	 */
	function destroy ():Void;
	
}
