package phaser;

import js.html.CanvasElement as HTMLCanvasElement;
import js.html.CanvasRenderingContext2D;
import js.html.ImageElement as HTMLImageElement;

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
* You can access the cache from within a State via `this.cache`. From here you can call any public method it has,
* including adding new entries to it, deleting them or querying them.
* 
* Understand that almost without exception when you get an item from the cache it will return a reference to the
* item stored in the cache, not a copy of it. Therefore if you retrieve an item and then modify it, the original
* object in the cache will also be updated, even if you don't put it back into the cache again.
* 
* By default when you change State the cache is _not_ cleared, although there is an option to clear it should
* your game require it. In a typical game set-up the cache is populated once after the main game has loaded and
* then used as an asset store.
*/
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
	* You can access the cache from within a State via `this.cache`. From here you can call any public method it has,
	* including adding new entries to it, deleting them or querying them.
	* 
	* Understand that almost without exception when you get an item from the cache it will return a reference to the
	* item stored in the cache, not a copy of it. Therefore if you retrieve an item and then modify it, the original
	* object in the cache will also be updated, even if you don't put it back into the cache again.
	* 
	* By default when you change State the cache is _not_ cleared, although there is an option to clear it should
	* your game require it. In a typical game set-up the cache is populated once after the main game has loaded and
	* then used as an asset store.
	* 
	* @param game A reference to the currently running game.
	*/
	function new(game:phaser.Game);
	
	static var BINARY:Float;
	
	static var BITMAPDATA:Float;
	
	static var BITMAPFONT:Float;
	
	static var CANVAS:Float;
	
	static var IMAGE:Float;
	
	static var JSON:Float;
	
	static var PHYSICS:Float;
	
	static var RENDER_TEXTURE:Float;
	
	static var SHADER:Float;
	
	static var SOUND:Float;
	
	static var SPRITE_SHEET:Float;
	
	static var TEXT:Float;
	
	static var TEXTURE:Float;
	
	static var TEXTURE_ATLAS:Float;
	
	static var TILEMAP:Float;
	
	static var XML:Float;
	
	static var VIDEO:Float;
	
	/**
	* The default image used for a texture when no other is specified.
	*/
	static var DEFAULT:pixi.Texture;
	
	/**
	* The default image used for a texture when the source image is missing.
	*/
	static var MISSING:pixi.Texture;
	
	/**
	* Automatically resolve resource URLs to absolute paths for use with the Cache.getURL method.
	*/
	var autoResolveURL:Bool;
	
	/**
	* Local reference to game.
	*/
	var game:phaser.Game;
	
	/**
	* This event is dispatched when the sound system is unlocked via a touch event on cellular devices.
	*/
	var onSoundUnlock:phaser.Signal;
	
	/**
	* Add a binary object in to the cache.
	* 
	* @param key The key that this asset will be stored in the cache under. This should be unique within this cache.
	* @param binaryData The binary object to be added to the cache.
	*/
	function addBinary(key:String, binaryData:Dynamic):Void;
	
	/**
	* Add a BitmapData object to the cache.
	* 
	* @param key The key that this asset will be stored in the cache under. This should be unique within this cache.
	* @param bitmapData The BitmapData object to be addded to the cache.
	* @param frameData Optional FrameData set associated with the given BitmapData. If not specified (or `undefined`) a new FrameData object is created containing the Bitmap's Frame. If `null` is supplied then no FrameData will be created. - Default: (auto create)
	* @return The BitmapData object to be addded to the cache.
	*/
	function addBitmapData(key:String, bitmapData:phaser.BitmapData, ?frameData:phaser.FrameData):phaser.BitmapData;
	
	/**
	* Add a new Bitmap Font to the Cache.
	* 
	* @param key The key that this asset will be stored in the cache under. This should be unique within this cache.
	* @param url The URL the asset was loaded from. If the asset was not loaded externally set to `null`.
	* @param data Extra font data.
	* @param atlasData The Bitmap Font data.
	* @param atlasType The format of the Bitmap Font data file: `json` or `xml`. - Default: 'xml'
	* @param xSpacing If you'd like to add additional horizontal spacing between the characters then set the pixel value here.
	* @param ySpacing If you'd like to add additional vertical spacing between the lines then set the pixel value here.
	*/
	function addBitmapFont(key:String, url:String, data:Dynamic, atlasData:Dynamic, atlasType:String, ?xSpacing:Float, ?ySpacing:Float):Void;
	
	/**
	* Add a new Bitmap Font to the Cache, where the font texture is part of a Texture Atlas.
	* 
	* The atlas must already exist in the cache, and be available based on the given `atlasKey`.
	* 
	* The `atlasFrame` specifies the name of the frame within the atlas that the Bitmap Font is
	* stored in.
	* 
	* The `dataKey` is the key of the XML or JSON Bitmap Font Data, which must already be in
	* the Cache.
	* 
	* @param key The key that this asset will be stored in the cache under. This should be unique within this cache.
	* @param atlasKey The key of the Texture Atlas in the Cache.
	* @param atlasFrame The frame of the Texture Atlas that the Bitmap Font is in.
	* @param dataKey The key of the Bitmap Font data in the Cache
	* @param dataType The format of the Bitmap Font data: `json` or `xml`. - Default: 'xml'
	* @param xSpacing If you'd like to add additional horizontal spacing between the characters then set the pixel value here.
	* @param ySpacing If you'd like to add additional vertical spacing between the lines then set the pixel value here.
	*/
	function addBitmapFontFromAtlas(key:String, atlasKey:String, atlasFrame:String, dataKey:String, ?dataType:String, ?xSpacing:Float, ?ySpacing:Float):Void;
	
	/**
	* Add a new canvas object in to the cache.
	* 
	* @param key The key that this asset will be stored in the cache under. This should be unique within this cache.
	* @param canvas The Canvas DOM element.
	* @param context The context of the canvas element. If not specified it will default go `getContext('2d')`.
	*/
	function addCanvas(key:String, canvas:HTMLCanvasElement, ?context:CanvasRenderingContext2D):Void;
	
	/**
	* Adds a default image to be used in special cases such as WebGL Filters.
	* It uses the special reserved key of `__default`.
	* This method is called automatically when the Cache is created.
	* This image is skipped when `Cache.destroy` is called due to its internal requirements.
	*/
	function addDefaultImage():Void;
	
	/**
	* Adds an Image file into the Cache. The file must have already been loaded, typically via Phaser.Loader, but can also have been loaded into the DOM.
	* If an image already exists in the cache with the same key then it is removed and destroyed, and the new image inserted in its place.
	* 
	* If the image has not yet been fetched (successfully or not), a `console.warn` message will be displayed.
	* 
	* @param key The key that this asset will be stored in the cache under. This should be unique within this cache.
	* @param url The URL the asset was loaded from. If the asset was not loaded externally set to `null`.
	* @param data Extra image data.
	* @return The full image object that was added to the cache.
	*/
	function addImage(key:String, url:String, data:Dynamic):HTMLImageElement;
	
	/**
	* Add a new json object into the cache.
	* 
	* @param key The key that this asset will be stored in the cache under. This should be unique within this cache.
	* @param url The URL the asset was loaded from. If the asset was not loaded externally set to `null`.
	* @param data Extra json data.
	*/
	function addJSON(key:String, urL:String, data:Dynamic):Void;
	
	/**
	* Adds an image to be used when a key is wrong / missing.
	* It uses the special reserved key of `__missing`.
	* This method is called automatically when the Cache is created.
	* This image is skipped when `Cache.destroy` is called due to its internal requirements.
	*/
	function addMissingImage():Void;
	
	/**
	* Add a new physics data object to the Cache.
	* 
	* @param key The key that this asset will be stored in the cache under. This should be unique within this cache.
	* @param url The URL the asset was loaded from. If the asset was not loaded externally set to `null`.
	* @param JSONData The physics data object (a JSON file).
	* @param format The format of the physics data.
	*/
	function addPhysicsData(key:String, url:String, JSONData:Dynamic, format:Float):Void;
	
	/**
	* Add a new Phaser.RenderTexture in to the cache.
	* 
	* @param key The key that this asset will be stored in the cache under. This should be unique within this cache.
	* @param texture The texture to use as the base of the RenderTexture.
	*/
	function addRenderTexture(key:String, texture:RenderTexture):Void;
	
	/**
	* Adds a Fragment Shader in to the Cache. The file must have already been loaded, typically via Phaser.Loader.
	* 
	* @param key The key that this asset will be stored in the cache under. This should be unique within this cache.
	* @param url The URL the asset was loaded from. If the asset was not loaded externally set to `null`.
	* @param data Extra shader data.
	*/
	function addShader(key:String, url:String, data:Dynamic):Void;
	
	/**
	* Adds a Sound file into the Cache. The file must have already been loaded, typically via Phaser.Loader.
	* 
	* @param key The key that this asset will be stored in the cache under. This should be unique within this cache.
	* @param url The URL the asset was loaded from. If the asset was not loaded externally set to `null`.
	* @param data Extra sound data.
	* @param webAudio True if the file is using web audio.
	* @param audioTag True if the file is using legacy HTML audio.
	*/
	function addSound(key:String, url:String, data:Dynamic, webAudio:Bool, audioTag:Bool):Void;
	
	/**
	* Add a new sprite sheet in to the cache.
	* 
	* @param key The key that this asset will be stored in the cache under. This should be unique within this cache.
	* @param url The URL the asset was loaded from. If the asset was not loaded externally set to `null`.
	* @param data Extra sprite sheet data.
	* @param frameWidth Width of the sprite sheet.
	* @param frameHeight Height of the sprite sheet.
	* @param frameMax How many frames stored in the sprite sheet. If -1 then it divides the whole sheet evenly. - Default: -1
	* @param margin If the frames have been drawn with a margin, specify the amount here.
	* @param spacing If the frames have been drawn with spacing between them, specify the amount here.
	* @param skipFrames Skip a number of frames. Useful when there are multiple sprite sheets in one image.
	*/
	function addSpriteSheet(key:String, url:String, data:Dynamic, frameWidth:Float, frameHeight:Float, ?frameMax:Float, ?margin:Float, ?spacing:Float, ?skipFrames:Float):Void;
	
	/**
	* Add a new text data.
	* 
	* @param key The key that this asset will be stored in the cache under. This should be unique within this cache.
	* @param url The URL the asset was loaded from. If the asset was not loaded externally set to `null`.
	* @param data Extra text data.
	*/
	function addText(key:String, url:String, data:Dynamic):Void;
	
	/**
	* Add a new texture atlas to the Cache.
	* 
	* @param key The key that this asset will be stored in the cache under. This should be unique within this cache.
	* @param url The URL the asset was loaded from. If the asset was not loaded externally set to `null`.
	* @param data Extra texture atlas data.
	* @param atlasData Texture atlas frames data.
	* @param format The format of the texture atlas.
	*/
	function addTextureAtlas(key:String, url:String, data:Dynamic, atlasData:Dynamic, format:Float):Void;
	
	/**
	* Add a new tilemap to the Cache.
	* 
	* @param key The key that this asset will be stored in the cache under. This should be unique within this cache.
	* @param url The URL the asset was loaded from. If the asset was not loaded externally set to `null`.
	* @param mapData The tilemap data object (either a CSV or JSON file).
	* @param format The format of the tilemap data.
	*/
	function addTilemap(key:String, url:String, mapData:Dynamic, format:Float):Void;
	
	/**
	* Adds a Video file into the Cache. The file must have already been loaded, typically via Phaser.Loader.
	* 
	* @param key The key that this asset will be stored in the cache under. This should be unique within this cache.
	* @param url The URL the asset was loaded from. If the asset was not loaded externally set to `null`.
	* @param data Extra video data.
	* @param isBlob True if the file was preloaded via xhr and the data parameter is a Blob. false if a Video tag was created instead.
	*/
	function addVideo(key:String, url:String, data:Dynamic, ?isBlob:Bool):Void;
	
	/**
	* Add a new xml object into the cache.
	* 
	* @param key The key that this asset will be stored in the cache under. This should be unique within this cache.
	* @param url The URL the asset was loaded from. If the asset was not loaded externally set to `null`.
	* @param data Extra text data.
	*/
	function addXML(key:String, url:String, data:Dynamic):Void;
	
	/**
	* Checks if the given key exists in the Binary Cache.
	* 
	* @param key The key of the asset within the cache.
	* @return True if the key exists in the cache, otherwise false.
	*/
	function checkBinaryKey(key:String):Bool;
	
	/**
	* Checks if the given key exists in the BitmapData Cache.
	* 
	* @param key The key of the asset within the cache.
	* @return True if the key exists in the cache, otherwise false.
	*/
	function checkBitmapDataKey(key:String):Bool;
	
	/**
	* Checks if the given key exists in the BitmapFont Cache.
	* 
	* @param key The key of the asset within the cache.
	* @return True if the key exists in the cache, otherwise false.
	*/
	function checkBitmapFontKey(key:String):Bool;
	
	/**
	* Checks if the given key exists in the Canvas Cache.
	* 
	* @param key The key of the asset within the cache.
	* @return True if the key exists in the cache, otherwise false.
	*/
	function checkCanvasKey(key:String):Bool;
	
	/**
	* Checks if the given key exists in the Image Cache. Note that this also includes Texture Atlases, Sprite Sheets and Retro Fonts.
	* 
	* @param key The key of the asset within the cache.
	* @return True if the key exists in the cache, otherwise false.
	*/
	function checkImageKey(key:String):Bool;
	
	/**
	* Checks if the given key exists in the JSON Cache.
	* 
	* @param key The key of the asset within the cache.
	* @return True if the key exists in the cache, otherwise false.
	*/
	function checkJSONKey(key:String):Bool;
	
	/**
	* Checks if a key for the given cache object type exists.
	* 
	* @param cache The cache to search. One of the Cache consts such as `Phaser.Cache.IMAGE` or `Phaser.Cache.SOUND`.
	* @param key The key of the asset within the cache.
	* @return True if the key exists, otherwise false.
	*/
	function checkKey(cache:Float, key:String):Bool;
	
	/**
	* Checks if the given key exists in the Physics Cache.
	* 
	* @param key The key of the asset within the cache.
	* @return True if the key exists in the cache, otherwise false.
	*/
	function checkPhysicsKey(key:String):Bool;
	
	/**
	* Checks if the given key exists in the Render Texture Cache.
	* 
	* @param key The key of the asset within the cache.
	* @return True if the key exists in the cache, otherwise false.
	*/
	function checkRenderTextureKey(key:String):Bool;
	
	/**
	* Checks if the given key exists in the Fragment Shader Cache.
	* 
	* @param key The key of the asset within the cache.
	* @return True if the key exists in the cache, otherwise false.
	*/
	function checkShaderKey(key:String):Bool;
	
	/**
	* Checks if the given key exists in the Sound Cache.
	* 
	* @param key The key of the asset within the cache.
	* @return True if the key exists in the cache, otherwise false.
	*/
	function checkSoundKey(key:String):Bool;
	
	/**
	* Checks if the given key exists in the Text Cache.
	* 
	* @param key The key of the asset within the cache.
	* @return True if the key exists in the cache, otherwise false.
	*/
	function checkTextKey(key:String):Bool;
	
	/**
	* Checks if the given key exists in the Texture Cache.
	* 
	* @param key The key of the asset within the cache.
	* @return True if the key exists in the cache, otherwise false.
	*/
	function checkTextureKey(key:String):Bool;
	
	/**
	* Checks if the given key exists in the Tilemap Cache.
	* 
	* @param key The key of the asset within the cache.
	* @return True if the key exists in the cache, otherwise false.
	*/
	function checkTilemapKey(key:String):Bool;
	
	/**
	* Checks if the given URL has been loaded into the Cache.
	* This method will only work if Cache.autoResolveURL was set to `true` before any preloading took place.
	* The method will make a DOM src call to the URL given, so please be aware of this for certain file types, such as Sound files on Firefox
	* which may cause double-load instances.
	* 
	* @param url The url to check for in the cache.
	* @return True if the url exists, otherwise false.
	*/
	function checkURL(url:String):Dynamic;
	
	function checkUrl(url:String):Dynamic;
	
	/**
	* Checks if the given key exists in the XML Cache.
	* 
	* @param key The key of the asset within the cache.
	* @return True if the key exists in the cache, otherwise false.
	*/
	function checkXMLKey(key:String):Bool;
	
	/**
	* Checks if the given key exists in the Video Cache.
	* 
	* @param key The key of the asset within the cache.
	* @return True if the key exists in the cache, otherwise false.
	*/
	function checkVideoKey(key:String):Bool;
	
	/**
	* Empties out all of the GL Textures from Images stored in the cache.
	* This is called automatically when the WebGL context is lost and then restored.
	*/
	function clearGLTextures():Void;
	
	/**
	* Add a new decoded sound.
	* 
	* @param key The key of the asset within the cache.
	* @param data Extra sound data.
	*/
	function decodedSound(key:String, data:Dynamic):Void;
	
	/**
	* Clears the cache. Removes every local cache object reference.
	* If an object in the cache has a `destroy` method it will be called;
	* otherwise, `destroy` will be called on any of the object's `base`, `data`,
	* `frameData`, or `texture` properties.
	*/
	function destroy():Void;
	
	/**
	* Gets a PIXI.BaseTexture by key from the given Cache.
	* 
	* @param key Asset key of the image for which you want the BaseTexture for.
	* @param cache The cache to search for the item in. - Default: Phaser.Cache.IMAGE
	* @return The BaseTexture object.
	*/
	function getBaseTexture(key:String, ?cache:Float):pixi.BaseTexture;
	
	/**
	* Gets a binary object from the cache.
	* 
	* The object is looked-up based on the key given.
	* 
	* Note: If the object cannot be found a `console.warn` message is displayed.
	* 
	* @param key The key of the asset to retrieve from the cache.
	* @return The binary data object.
	*/
	function getBinary(key:String):Dynamic;
	
	/**
	* Gets a BitmapData object from the cache.
	* 
	* The object is looked-up based on the key given.
	* 
	* Note: If the object cannot be found a `console.warn` message is displayed.
	* 
	* @param key The key of the asset to retrieve from the cache.
	* @return The requested BitmapData object if found, or null if not.
	*/
	function getBitmapData(key:String):phaser.BitmapData;
	
	/**
	* Gets a Bitmap Font object from the cache.
	* 
	* The object is looked-up based on the key given.
	* 
	* Note: If the object cannot be found a `console.warn` message is displayed.
	* 
	* @param key The key of the asset to retrieve from the cache.
	* @return The requested BitmapFont object if found, or null if not.
	*/
	function getBitmapFont(key:String):phaser.BitmapFont;
	
	/**
	* Gets a Canvas object from the cache.
	* 
	* The object is looked-up based on the key given.
	* 
	* Note: If the object cannot be found a `console.warn` message is displayed.
	* 
	* @param key The key of the asset to retrieve from the cache.
	* @return The canvas object or `null` if no item could be found matching the given key.
	*/
	function getCanvas(key:String):HTMLCanvasElement;
	
	/**
	* Get a single frame by key. You'd only do this to get the default Frame created for a non-atlas/spritesheet image.
	* 
	* @param key Asset key of the frame data to retrieve from the Cache.
	* @param cache The cache to search for the item in. - Default: Phaser.Cache.IMAGE
	* @return The frame data.
	*/
	function getFrame(key:String, ?cache:Float):phaser.Frame;
	
	/**
	* Get a single frame out of a frameData set by key.
	* 
	* @param key Asset key of the frame data to retrieve from the Cache.
	* @param index The index of the frame you want to get.
	* @param cache The cache to search. One of the Cache consts such as `Phaser.Cache.IMAGE` or `Phaser.Cache.SOUND`. - Default: Phaser.Cache.IMAGE
	* @return The frame object.
	*/
	function getFrameByIndex(key:String, index:Float, ?cache:Float):phaser.Frame;
	
	/**
	* Get a single frame out of a frameData set by key.
	* 
	* @param key Asset key of the frame data to retrieve from the Cache.
	* @param name The name of the frame you want to get.
	* @param cache The cache to search. One of the Cache consts such as `Phaser.Cache.IMAGE` or `Phaser.Cache.SOUND`. - Default: Phaser.Cache.IMAGE
	* @return The frame object.
	*/
	function getFrameByName(key:String, name:String, ?cache:Float):phaser.Frame;
	
	/**
	* Get the total number of frames contained in the FrameData object specified by the given key.
	* 
	* @param key Asset key of the FrameData you want.
	* @param cache The cache to search for the item in. - Default: Phaser.Cache.IMAGE
	* @return Then number of frames. 0 if the image is not found.
	*/
	function getFrameCount(key:String, ?cache:Float):Float;
	
	/**
	* Gets a Phaser.FrameData object from the Image Cache.
	* 
	* The object is looked-up based on the key given.
	* 
	* Note: If the object cannot be found a `console.warn` message is displayed.
	* 
	* @param key Asset key of the frame data to retrieve from the Cache.
	* @param cache The cache to search for the item in. - Default: Phaser.Cache.IMAGE
	* @return The frame data.
	*/
	function getFrameData(key:String, ?cache:Float):phaser.FrameData;
	
	/**
	* Gets a Image object from the cache. This returns a DOM Image object, not a Phaser.Image object.
	* 
	* The object is looked-up based on the key given.
	* 
	* Note: If the object cannot be found a `console.warn` message is displayed.
	* 
	* Only the Image cache is searched, which covers images loaded via Loader.image, Sprite Sheets and Texture Atlases.
	* 
	* If you need the image used by a bitmap font or similar then please use those respective 'get' methods.
	* 
	* @param key The key of the asset to retrieve from the cache. If not given or null it will return a default image. If given but not found in the cache it will throw a warning and return the missing image.
	* @param full If true the full image object will be returned, if false just the HTML Image object is returned.
	* @return The Image object if found in the Cache, otherwise `null`. If `full` was true then a JavaScript object is returned.
	*/
	function getImage(key:String, ?full:Bool):HTMLImageElement;
	
	/**
	* Get an item from a cache based on the given key and property.
	* 
	* This method is mostly used internally by other Cache methods such as `getImage` but is exposed
	* publicly for your own use as well.
	* 
	* @param key The key of the asset within the cache.
	* @param cache The cache to search. One of the Cache consts such as `Phaser.Cache.IMAGE` or `Phaser.Cache.SOUND`.
	* @param method The string name of the method calling getItem. Can be empty, in which case no console warning is output.
	* @param property If you require a specific property from the cache item, specify it here.
	* @return The cached item if found, otherwise `null`. If the key is invalid and `method` is set then a console.warn is output.
	*/
	function getItem(key:String, cache:Float, ?method:String, ?property:String):Dynamic;
	
	/**
	* Gets a JSON object from the cache.
	* 
	* The object is looked-up based on the key given.
	* 
	* Note: If the object cannot be found a `console.warn` message is displayed.
	* 
	* You can either return the object by reference (the default), or return a clone
	* of it by setting the `clone` argument to `true`.
	* 
	* @param key The key of the asset to retrieve from the cache.
	* @param clone Return a clone of the original object (true) or a reference to it? (false)
	* @return The JSON object, or an Array if the key points to an Array property. If the property wasn't found, it returns null.
	*/
	function getJSON(key:String, ?clone:Bool):Dynamic;
	
	/**
	* Gets all keys used in the requested Cache.
	* 
	* @param cache The Cache you wish to get the keys from. Can be any of the Cache consts such as `Phaser.Cache.IMAGE`, `Phaser.Cache.SOUND` etc. - Default: Phaser.Cache.IMAGE
	* @return The array of keys in the requested cache.
	*/
	function getKeys(cache:Float):Array<String>;
	
	/**
	* Gets a Physics Data object from the cache.
	* 
	* The object is looked-up based on the key given.
	* 
	* Note: If the object cannot be found a `console.warn` message is displayed.
	* 
	* You can get either the entire data set, a single object or a single fixture of an object from it.
	* 
	* @param key The key of the asset to retrieve from the cache.
	* @param object If specified it will return just the physics object that is part of the given key, if null it will return them all.
	* @param fixtureKey Fixture key of fixture inside an object. This key can be set per fixture with the Phaser Exporter.
	* @return The requested physics object data if found.
	*/
	function getPhysicsData(key:String, ?object:String, ?fixtureKey:String):Array<Dynamic>;
	
	/**
	* Gets a RenderTexture object from the cache.
	* 
	* The object is looked-up based on the key given.
	* 
	* Note: If the object cannot be found a `console.warn` message is displayed.
	* 
	* @param key The key of the asset to retrieve from the cache.
	* @return The object with Phaser.RenderTexture and Phaser.Frame.
	*/
	function getRenderTexture(key:String):phaser.CachedRenderTexture;
	
	/**
	* Gets a fragment shader object from the cache.
	* 
	* The object is looked-up based on the key given.
	* 
	* Note: If the object cannot be found a `console.warn` message is displayed.
	* 
	* @param key The key of the asset to retrieve from the cache.
	* @return The shader object.
	*/
	function getShader(key:String):String;
	
	/**
	* Gets a Phaser.Sound object from the cache.
	* 
	* The object is looked-up based on the key given.
	* 
	* Note: If the object cannot be found a `console.warn` message is displayed.
	* 
	* @param key The key of the asset to retrieve from the cache.
	* @return The sound object.
	*/
	function getSound(key:String):phaser.Sound;
	
	/**
	* Gets a raw Sound data object from the cache.
	* 
	* The object is looked-up based on the key given.
	* 
	* Note: If the object cannot be found a `console.warn` message is displayed.
	* 
	* @param key The key of the asset to retrieve from the cache.
	* @return The sound data.
	*/
	function getSoundData(key:String):Dynamic;
	
	function getSpriteSheetKey(key:String):Bool;
	
	/**
	* Gets a Text object from the cache.
	* 
	* The object is looked-up based on the key given.
	* 
	* Note: If the object cannot be found a `console.warn` message is displayed.
	* 
	* @param key The key of the asset to retrieve from the cache.
	* @return The text data.
	*/
	function getText(key:String):String;
	
	function getTextKeys():Array<String>;
	
	function getTexture(key:String):phaser.RenderTexture;
	
	function getTextureAtlasKey(key:String):Bool;
	
	/**
	* Get a single texture frame by key.
	* 
	* You'd only do this to get the default Frame created for a non-atlas / spritesheet image.
	* 
	* @param key The key of the asset to retrieve from the cache.
	* @return The frame data.
	*/
	function getTextureFrame(key:String):phaser.Frame;
	
	function getTilemap(key:String):Dynamic;
	
	/**
	* Gets a raw Tilemap data object from the cache. This will be in either CSV or JSON format.
	* 
	* The object is looked-up based on the key given.
	* 
	* Note: If the object cannot be found a `console.warn` message is displayed.
	* 
	* @param key The key of the asset to retrieve from the cache.
	* @return The raw tilemap data in CSV or JSON format.
	*/
	function getTilemapData(key:String):Dynamic;
	
	/**
	* Get a cached object by the URL.
	* This only returns a value if you set Cache.autoResolveURL to `true` *before* starting the preload of any assets.
	* Be aware that every call to this function makes a DOM src query, so use carefully and double-check for implications in your target browsers/devices.
	* 
	* @param url The url for the object loaded to get from the cache.
	* @return The cached object.
	*/
	function getURL(url:String):Dynamic;
	
	/**
	* Gets an XML object from the cache.
	* 
	* The object is looked-up based on the key given.
	* 
	* Note: If the object cannot be found a `console.warn` message is displayed.
	* 
	* @param key The key of the asset to retrieve from the cache.
	* @return The XML object.
	*/
	function getXML(key:String):Dynamic;
	
	/**
	* Gets a Phaser.Video object from the cache.
	* 
	* The object is looked-up based on the key given.
	* 
	* Note: If the object cannot be found a `console.warn` message is displayed.
	* 
	* @param key The key of the asset to retrieve from the cache.
	* @return The video object.
	*/
	function getVideo(key:String):phaser.Video;
	
	/**
	* Check if the FrameData for the given key exists in the Image Cache.
	* 
	* @param key Asset key of the frame data to retrieve from the Cache.
	* @param cache The cache to search for the item in. - Default: Phaser.Cache.IMAGE
	* @return True if the given key has frameData in the cache, otherwise false.
	*/
	function hasFrameData(key:String, ?cache:Float):Bool;
	
	/**
	* Check if the given sound has finished decoding.
	* 
	* @param key The key of the asset within the cache.
	* @return The decoded state of the Sound object.
	*/
	function isSoundDecoded(key:String):Bool;
	
	/**
	* Check if the given sound is ready for playback.
	* A sound is considered ready when it has finished decoding and the device is no longer touch locked.
	* 
	* @param key The key of the asset within the cache.
	* @return True if the sound is decoded and the device is not touch locked.
	*/
	function isSoundReady(key:String):Bool;
	
	function isSpriteSheet(key:String):Bool;
	
	/**
	* Reload a Sound file from the server.
	* 
	* @param key The key of the asset within the cache.
	*/
	function reloadSound(key:String):Void;
	
	/**
	* Fires the onSoundUnlock event when the sound has completed reloading.
	* 
	* @param key The key of the asset within the cache.
	*/
	function reloadSoundComplete(key:String):Void;
	
	/**
	* Removes a binary file from the cache.
	* 
	* Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	* then it will persist in memory.
	* 
	* @param key Key of the asset you want to remove.
	*/
	function removeBinary(key:String):Void;
	
	/**
	* Removes a bitmap data from the cache.
	* 
	* Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	* then it will persist in memory.
	* 
	* @param key Key of the asset you want to remove.
	*/
	function removeBitmapData(key:String):Void;
	
	/**
	* Removes a bitmap font from the cache.
	* 
	* Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	* then it will persist in memory.
	* 
	* @param key Key of the asset you want to remove.
	*/
	function removeBitmapFont(key:String):Void;
	
	/**
	* Removes a canvas from the cache.
	* 
	* Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	* then it will persist in memory.
	* 
	* @param key Key of the asset you want to remove.
	*/
	function removeCanvas(key:String):Void;
	
	/**
	* Removes an image from the cache.
	* 
	* You can optionally elect to destroy it as well. This calls BaseTexture.destroy on it.
	* 
	* Note that this only removes it from the Phaser Cache. If you still have references to the data elsewhere
	* then it will persist in memory.
	* 
	* @param key Key of the asset you want to remove.
	* @param destroyBaseTexture Should the BaseTexture behind this image also be destroyed? - Default: true
	*/
	function removeImage(key:String, ?removeFromPixi:Bool):Void;
	
	/**
	* Removes a json object from the cache.
	* 
	* Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	* then it will persist in memory.
	* 
	* @param key Key of the asset you want to remove.
	*/
	function removeJSON(key:String):Void;
	
	/**
	* Removes a physics data file from the cache.
	* 
	* Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	* then it will persist in memory.
	* 
	* @param key Key of the asset you want to remove.
	*/
	function removePhysics(key:String):Void;
	
	/**
	* Removes a Render Texture from the cache.
	* 
	* Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	* then it will persist in memory.
	* 
	* @param key Key of the asset you want to remove.
	*/
	function removeRenderTexture(key:String):Void;
	
	/**
	* Removes a shader from the cache.
	* 
	* Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	* then it will persist in memory.
	* 
	* @param key Key of the asset you want to remove.
	*/
	function removeShader(key:String):Void;
	
	/**
	* Removes a sound from the cache.
	* 
	* If any `Phaser.Sound` objects use the audio file in the cache that you remove with this method, they will
	* _automatically_ destroy themselves. If you wish to have full control over when Sounds are destroyed then
	* you must finish your house-keeping and destroy them all yourself first, before calling this method.
	* 
	* Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	* then it will persist in memory.
	* 
	* @param key Key of the asset you want to remove.
	*/
	function removeSound(key:String):Void;
	
	/**
	* Removes a Sprite Sheet from the cache.
	* 
	* Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	* then it will persist in memory.
	* 
	* @param key Key of the asset you want to remove.
	*/
	function removeSpriteSheet(key:String):Void;
	
	/**
	* Removes a text file from the cache.
	* 
	* Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	* then it will persist in memory.
	* 
	* @param key Key of the asset you want to remove.
	*/
	function removeText(key:String):Void;
	
	/**
	* Removes a Texture Atlas from the cache.
	* 
	* Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	* then it will persist in memory.
	* 
	* @param key Key of the asset you want to remove.
	*/
	function removeTextureAtlas(key:String):Void;
	
	/**
	* Removes a tilemap from the cache.
	* 
	* Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	* then it will persist in memory.
	* 
	* @param key Key of the asset you want to remove.
	*/
	function removeTilemap(key:String):Void;
	
	/**
	* Removes a xml object from the cache.
	* 
	* Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	* then it will persist in memory.
	* 
	* @param key Key of the asset you want to remove.
	*/
	function removeXML(key:String):Void;
	
	/**
	* Removes a video from the cache.
	* 
	* Note that this only removes it from the Phaser.Cache. If you still have references to the data elsewhere
	* then it will persist in memory.
	* 
	* @param key Key of the asset you want to remove.
	*/
	function removeVideo(key:String):Void;
	
	/**
	* Replaces a set of frameData with a new Phaser.FrameData object.
	* 
	* @param key The unique key by which you will reference this object.
	* @param frameData The new FrameData.
	* @param cache The cache to search. One of the Cache consts such as `Phaser.Cache.IMAGE` or `Phaser.Cache.SOUND`. - Default: Phaser.Cache.IMAGE
	*/
	function updateFrameData(key:String, frameData:Dynamic, ?cache:Float):Void;
	
	/**
	* Updates the sound object in the cache.
	* 
	* @param key The key of the asset within the cache.
	*/
	function updateSound(key:String, property:String, value:phaser.Sound):Void;
	
}

