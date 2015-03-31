package phaser.loader;

@:native("Phaser.Loader")
extern class Loader {
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * If true all calls to Loader.reset will be ignored. Useful if you need to create a load queue before swapping to a preloader state.
	 */
	var resetLocked:Bool;
	
	/**
	 * True if the Loader is in the process of loading the queue.
	 */
	var isLoading:Bool;
	
	/**
	 * True if all assets in the queue have finished loading.
	 */
	var hasLoaded:Bool;
	
	/**
	 * You can optionally link a progress sprite with {@link Phaser.Loader#setPreloadSprite setPreloadSprite}.
	 * 
	 * This property is an object containing: sprite, rect, direction, width and height
	 */
	var preloadSprite:Dynamic;
	
	/**
	 * The crossOrigin value applied to loaded images. Very often this needs to be set to 'anonymous'.
	 */
	var crossOrigin:Dynamic;
	
	/**
	 * If you want to append a URL before the path of any asset you can set this here.
	 * Useful if allowing the asset base url to be configured outside of the game code.
	 * The string <em>must</em> end with a "/".
	 */
	var baseURL:String;
	
	/**
	 * This event is dispatched when the loading process starts: before the first file has been requested,
	 * but after all the initial packs have been loaded.
	 */
	var onLoadStart:phaser.core.Signal;
	
	/**
	 * This event is dispatched when the final file in the load queue has either loaded or failed.
	 */
	var onLoadComplete:phaser.core.Signal;
	
	/**
	 * This event is dispatched when an asset pack has either loaded or failed to load.
	 * 
	 * This is called when the asset pack manifest file has loaded and successfully added its contents to the loader queue.
	 * 
	 * Params: (pack key, success?, total packs loaded, total packs)
	 */
	var onPackComplete:phaser.core.Signal;
	
	/**
	 * This event is dispatched immediately before a file starts loading.
	 * It's possible the file may fail (eg. download error, invalid format) after this event is sent.
	 * 
	 * Params: (progress, file key, file url)
	 */
	var onFileStart:phaser.core.Signal;
	
	/**
	 * This event is dispatched when a file has either loaded or failed to load.
	 * 
	 * Params: (progress, file key, success?, total loaded files, total files)
	 */
	var onFileComplete:phaser.core.Signal;
	
	/**
	 * This event is dispatched when a file (or pack) errors as a result of the load request.
	 * 
	 * For files it will be triggered before onFileComplete. For packs it will be triggered before onPackComplete.
	 * 
	 * Params: (file key, file)
	 */
	var onFileError:phaser.core.Signal;
	
	/**
	 * If true and if the browser supports XDomainRequest, it will be used in preference for XHR.
	 * 
	 * This is only relevant for IE 9 and should <em>only</em> be enabled for IE 9 clients when required by the server/CDN.
	 */
	var useXDomainRequest:Bool;
	
	/**
	 * @private
	 */
	var warnedAboutXDomainRequest:Bool;
	
	/**
	 * If true (the default) then parallel downloading will be enabled.
	 * 
	 * To disable all parallel downloads this must be set to false prior to any resource being loaded.
	 */
	var enableParallel:Int;
	
	/**
	 * The number of concurrent / parallel resources to try and fetch at once.
	 * 
	 * Many current browsers limit 6 requests per domain; this is slightly conservative.
	 */
	var maxParallelDownloads:Int;
	
	/**
	 * A counter: if more than zero, files will be automatically added as a synchronization point.
	 */
	var withSyncPointDepth:Int;
	
	/**
	 * Contains all the information for asset files (including packs) to load.
	 * 
	 * File/assets are only removed from the list after all loading completes.
	 */
	var fileList:Dynamic;
	
	/**
	 * Inflight files (or packs) that are being fetched/processed.
	 * 
	 * This means that if there are any files in the flight queue there should still be processing
	 * going on; it should only be empty before or after loading.
	 * 
	 * The files in the queue may have additional properties added to them,
	 * including requestObject which is normally the associated XHR.
	 */
	var flightQueue:Dynamic;
	
	/**
	 * The offset into the fileList past all the complete (loaded or error) entries.
	 */
	var processingHead:Int;
	
	/**
	 * True when the first file (not pack) has loading started.
	 * This used to to control dispatching onLoadStart which happens after any initial packs are loaded.
	 */
	var initialPacksLoaded:Bool;
	
	/**
	 * Total packs seen - adjusted when a pack is added.
	 */
	var totalPackCount:Int;
	
	/**
	 * Total files seen - adjusted when a file is added.
	 */
	var totalFileCount:Int;
	
	/**
	 * Total packs loaded - adjusted just prior to onPackComplete.
	 */
	var loadedPackCount:Int;
	
	/**
	 * Total files loaded - adjusted just prior to onFileComplete.
	 */
	var loadedFileCount:Int;
	
	/**
	 * @constant
	 */
	static var TEXTURE_ATLAS_JSON_ARRAY:Float;
	
	/**
	 * @constant
	 */
	static var TEXTURE_ATLAS_JSON_HASH:Float;
	
	/**
	 * @constant
	 */
	static var TEXTURE_ATLAS_XML_STARLING:Float;
	
	/**
	 * @constant
	 */
	static var PHYSICS_LIME_CORONA_JSON:Float;
	
	/**
	 * @constant
	 */
	static var PHYSICS_PHASER_JSON:Float;
	
	/**
	 * Set a Sprite to be a "preload" sprite by passing it to this method.
	 * 
	 * A "preload" sprite will have its width or height crop adjusted based on the percentage of the loader in real-time.
	 * This allows you to easily make loading bars for games.
	 * 
	 * The sprite will automatically be made visible when calling this.
	 */
	@:overload(function (sprite:phaser.gameobjects.Sprite, ?direction:Float = 0):Void {})
	function setPreloadSprite (sprite:phaser.gameobjects.Image, ?direction:Float = 0):Void;
	
	/**
	 * Called automatically by ScaleManager when the game resizes in RESIZE scalemode.
	 * 
	 * This can be used to adjust the preloading sprite size, eg.
	 */
	function resize ():Void;
	
	/**
	 * Check whether a file/asset with a specific key is queued to be loaded.
	 * 
	 * To access a loaded asset use Phaser.Cache, eg. {@link Phaser.Cache#checkImageKey}
	 */
	function checkKeyExists (type:String, key:String):Bool;
	
	/**
	 * Get the queue-index of the file/asset with a specific key.
	 * 
	 * Only assets in the download file queue will be found.
	 */
	function getAssetIndex (type:String, key:String):Float;
	
	/**
	 * Find a file/asset with a specific key.
	 * 
	 * Only assets in the download file queue will be found.
	 */
	function getAsset (type:String, key:String):Dynamic;
	
	/**
	 * Reset the loader and clear any queued assets. If Loader.resetLocked is true this operation will abort.
	 * 
	 * This will abort any loading and clear any queued assets.
	 * 
	 * Optionally you can clear any associated events.
	 */
	function reset (?hard:Bool = false, ?clearEvents:Bool = false):Void;
	
	/**
	 * Internal function that adds a new entry to the file list. Do not call directly.
	 */
	function addToFileList (type:String, key:String, url:String, ?properties:Dynamic, ?overwrite:Bool = false):Void;
	
	/**
	 * Internal function that replaces an existing entry in the file list with a new one. Do not call directly.
	 */
	function replaceInFileList (type:String, key:String, url:String, properties:Dynamic):Void;
	
	/**
	 * Add a JSON resource pack ('packfile') to the Loader.
	 * 
	 * Packs are always put before the first non-pack file that is not loaded/loading.
	 * This means that all packs added before any loading has started are added to the front
	 * of the file/asset list, in order added.
	 */
	function pack (key:String, ?url:String, ?data:Dynamic, ?callbackContext:Dynamic):phaser.loader.Loader;
	
	/**
	 * Add an 'image' to the Loader.
	 */
	function image (key:String, url:String, ?overwrite:Bool = false):phaser.loader.Loader;
	
	/**
	 * Add a 'text' file to the Loader.
	 */
	function text (key:String, url:String, ?overwrite:Bool = false):phaser.loader.Loader;
	
	/**
	 * Add a 'json' file to the Loader.
	 */
	function json (key:String, url:String, ?overwrite:Bool = false):phaser.loader.Loader;
	
	/**
	 * Add an XML ('xml') file to the Loader.
	 */
	function xml (key:String, url:String, ?overwrite:Bool = false):phaser.loader.Loader;
	
	/**
	 * Add a JavaScript ('script') file to the Loader.
	 * 
	 * The loaded JavaScript is automatically turned into a script tag and executed, so be careful what you load!
	 * 
	 * A callback, which will be invoked as the script tag has been created, can also be specified.
	 * The callback must return relevant data.
	 */
	function script (key:String, url:String, ?callback:Dynamic, ?callbackContext:Dynamic):phaser.loader.Loader;
	
	/**
	 * Add a 'binary' file to the Loader.
	 * 
	 * It will be loaded via xhr with a responseType of "arraybuffer". You can specify an optional callback to process the file after load.
	 * When the callback is called it will be passed 2 parameters: the key of the file and the file data.
	 * 
	 * WARNING: If a callback is specified the data will be set to whatever it returns. Always return the data object, even if you didn't modify it.
	 */
	function binary (key:String, url:String, ?callback:Dynamic, ?callbackContext:Dynamic):phaser.loader.Loader;
	
	/**
	 * Add a new sprite sheet ('spritesheet') to the loader.
	 */
	function spritesheet (key:String, url:String, frameWidth:Float, frameHeight:Float, ?frameMax:Float, ?margin:Float = 0, ?spacing:Float = 0):phaser.loader.Loader;
	
	/**
	 * Add a new 'audio' file to the loader.
	 */
	@:overload(function (key:String, urls:String, ?autoDecode:Bool = true):phaser.loader.Loader {})
	@:overload(function (key:String, urls:Dynamic, ?autoDecode:Bool = true):phaser.loader.Loader {})
	function audio (key:String, urls:Dynamic, ?autoDecode:Bool = true):phaser.loader.Loader;
	
	/**
	 * Add a new audiosprite file to the loader.
	 * 
	 * Audio Sprites are a combination of audio files and a JSON configuration.
	 * The JSON follows the format of that created by <a href='https://github.com/tonistiigi/audiosprite'>https://github.com/tonistiigi/audiosprite</a>
	 */
	@:overload(function (key:String, urls:Array<Dynamic>, ?jsonURL:String, ?jsonData:String, ?autoDecode:Bool = true):phaser.loader.Loader {})
	@:overload(function (key:String, urls:String, ?jsonURL:String, ?jsonData:String, ?autoDecode:Bool = true):phaser.loader.Loader {})
	@:overload(function (key:String, urls:Array<Dynamic>, ?jsonURL:String, ?jsonData:Dynamic, ?autoDecode:Bool = true):phaser.loader.Loader {})
	function audiosprite (key:String, urls:String, ?jsonURL:String, ?jsonData:Dynamic, ?autoDecode:Bool = true):phaser.loader.Loader;
	
	/**
	 * Add a new 'tilemap' loading request. If data is supplied the object is loaded immediately.
	 */
	function tilemap (key:String, ?url:String, ?data:Dynamic, ?format:Float):phaser.loader.Loader;
	
	/**
	 * Add a new 'physics' data object loading request. If data is supplied the object is loaded immediately.
	 * 
	 * The data must be in Lime + Corona JSON format. Physics Editor by code'n'web exports in this format natively.
	 */
	function physics (key:String, ?url:String, ?data:Dynamic, ?format:String):phaser.loader.Loader;
	
	/**
	 * Add a new bitmap font ('bitmapfont') loading request.
	 */
	function bitmapFont (key:String, textureURL:String, ?xmlURL:String, ?xmlData:Dynamic, ?xSpacing:Float = 0, ?ySpacing:Float = 0):phaser.loader.Loader;
	
	/**
	 * Add a new texture atlas ('textureatlas') to the loader. This atlas uses the JSON Array data format.
	 * 
	 * Texture Atlases can be created with tools such as <a href="https://www.codeandweb.com/texturepacker/phaser">Texture Packer</a> and
	 * <a href="http://renderhjs.net/shoebox/">Shoebox</a>
	 */
	function atlasJSONArray (key:String, textureURL:String, ?atlasURL:String, ?atlasData:Dynamic):phaser.loader.Loader;
	
	/**
	 * Add a new texture atlas ('textureatlas') to the loader. This atlas uses the JSON Hash data format.
	 * 
	 * Texture Atlases can be created with tools such as <a href="https://www.codeandweb.com/texturepacker/phaser">Texture Packer</a> and
	 * <a href="http://renderhjs.net/shoebox/">Shoebox</a>
	 */
	function atlasJSONHash (key:String, textureURL:String, ?atlasURL:String, ?atlasData:Dynamic):phaser.loader.Loader;
	
	/**
	 * Add a new texture atlas ('textureatlas') to the loader. This atlas uses the Starling XML data format.
	 */
	function atlasXML (key:String, textureURL:String, ?atlasURL:String, ?atlasData:Dynamic):phaser.loader.Loader;
	
	/**
	 * Add a new texture atlas ('textureatlas') to the loader.
	 * 
	 * Texture Atlases can be created with tools such as <a href="https://www.codeandweb.com/texturepacker/phaser">Texture Packer</a> and
	 * <a href="http://renderhjs.net/shoebox/">Shoebox</a>
	 */
	function atlas (key:String, textureURL:String, ?atlasURL:String, ?atlasData:Dynamic, ?format:Float):phaser.loader.Loader;
	
	/**
	 * Add a synchronization point to the assets/files added within the supplied callback.
	 * 
	 * A synchronization point denotes that an asset <em>must</em> be completely loaded before
	 * subsequent assets can be loaded. An asset marked as a sync-point does not need to wait
	 * for previous assets to load (unless they are sync-points). Resources, such as packs, may still
	 * be downloaded around sync-points, as long as they do not finalize loading.
	 */
	function withSyncPoints (callback:Dynamic, ?callbackContext:Dynamic):phaser.loader.Loader;
	
	/**
	 * Remove a file/asset from the loading queue.
	 * 
	 * A file that is loaded or has started loading cannot be removed.
	 */
	function removeFile (type:String, key:String):Void;
	
	/**
	 * Remove all file loading requests - this is <em>insufficient</em> to stop current loading. Use reset instead.
	 */
	function removeAll ():Void;
	
	/**
	 * Start loading the assets. Normally you don't need to call this yourself as the StateManager will do so.
	 */
	function start ():Void;
	
	/**
	 * Process the next item(s) in the file/asset queue.
	 * 
	 * Process the queue and start loading enough items to fill up the inflight queue.
	 * 
	 * If a sync-file is encountered then subsequent asset processing is delayed until it completes.
	 * The exception to this rule is that packfiles can be downloaded (but not processed) even if
	 * there appear other sync files (ie. packs) - this enables multiple packfiles to be fetched in parallel.
	 * such as during the start phaser.
	 */
	function processLoadQueue ():Void;
	
	/**
	 * The loading is all finished.
	 */
	function finishedLoading (?abnormal:Bool = true):Void;
	
	/**
	 * Informs the loader that the given file resource has been fetched and processed;
	 * or such a request has failed.
	 */
	function asyncComplete (file:Dynamic, ?error:String = ''):Void;
	
	/**
	 * Process pack data. This will usually modify the file list.
	 */
	function processPack (pack:Dynamic):Void;
	
	/**
	 * Transforms the asset URL. The default implementation prepends the baseURL.
	 */
	function transformUrl ():Void;
	
	/**
	 * Start fetching a resource.
	 * 
	 * All code paths, async or otherwise, from this function must return to asyncComplete.
	 */
	function loadFile (file:Dynamic):Void;
	
	/**
	 * Starts the xhr loader.
	 * 
	 * This is designed specifically to use with asset file processing.
	 */
	function xhrLoad (file:Dynamic, url:String, type:String, onload:Dynamic, ?onerror:Dynamic):Void;
	
	/**
	 * Give a bunch of URLs, return the first URL that has an extension this device thinks it can play.
	 * 
	 * It is assumed that the device can play "blob:" or "data:" URIs - There is no mime-type checking on data URIs.
	 */
	@:overload(function (urls:Dynamic):String {})
	function getAudioURL (urls:Dynamic):String;
	
	/**
	 * Error occurred when loading a file.
	 */
	function fileError (file:Dynamic, xhr:Dynamic, reason:String):Void;
	
	/**
	 * Called when a file/resources had been downloaded and needs to be processed further.
	 */
	function fileComplete (file:Dynamic, xhr:Dynamic):Void;
	
	/**
	 * Successfully loaded a JSON file - only used for certain types.
	 */
	function jsonLoadComplete (file:Dynamic, xhr:Dynamic):Void;
	
	/**
	 * Successfully loaded a CSV file - only used for certain types.
	 */
	function csvLoadComplete (file:Dynamic, xhr:Dynamic):Void;
	
	/**
	 * Successfully loaded an XML file - only used for certain types.
	 */
	function xmlLoadComplete (file:Dynamic, xhr:Dynamic):Void;
	
	/**
	 * Update the loading sprite progress.
	 */
	function nextFile (previousFile:Dynamic, success:Bool):Void;
	
	/**
	 * Returns the number of files that have already been loaded, even if they errored.
	 */
	function totalLoadedFiles ():Float;
	
	/**
	 * Returns the number of files still waiting to be processed in the load queue. This value decreases as each file in the queue is loaded.
	 */
	function totalQueuedFiles ():Float;
	
	/**
	 * Returns the number of asset packs that have already been loaded, even if they errored.
	 */
	function totalLoadedPacks ():Float;
	
	/**
	 * Returns the number of asset packs still waiting to be processed in the load queue. This value decreases as each pack in the queue is loaded.
	 */
	function totalQueuedPacks ():Float;
	
	/**
	 * The non-rounded load progress value (from 0.0 to 100.0).
	 * 
	 * A general indicator of the progress.
	 * It is possible for the progress to decrease, after onLoadStart, if more files are dynamically added.
	 */
	var a0:Float;
	
}
