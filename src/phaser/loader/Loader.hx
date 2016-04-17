package phaser.loader;

@:native("Phaser.Loader")
extern class Loader {
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * Local reference to the Phaser.Cache.
	 */
	var cache:phaser.loader.Cache;
	
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
	 * The rounded load progress percentage value (from 0 to 100)
	 */
	var progress:Float;
	
	/**
	 * The non-rounded load progress value (from 0.0 to 100.0)
	 */
	var progressFloat:Float;
	
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
	 * The value of path, if set, is placed before any <em>relative</em> file path given. For example:
	 * 
	 * load.path = "images/sprites/";
	 * load.image("ball", "ball.png");
	 * load.image("tree", "level1/oaktree.png");
	 * load.image("boom", "<a href='http://server.com/explode.png'>http://server.com/explode.png</a>");
	 * 
	 * Would load the ball file from images/sprites/ball.png and the tree from
	 * images/sprites/level1/oaktree.png but the file boom would load from the URL
	 * given as it's an absolute URL.
	 * 
	 * Please note that the path is added before the filename but <em>after</em> the baseURL (if set.)
	 * 
	 * The string <em>must</em> end with a "/".
	 */
	var path:String;
	
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
	 * Any function bound to this will receive the following parameters:
	 * 
	 * progress, file key, success?, total loaded files, total files
	 * 
	 * Where progress is a number between 1 and 100 (inclusive) representing the percentage of the load.
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
	var enableParallel:Bool;
	
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
	 * @constant
	 */
	static var TEXTURE_ATLAS_JSON_PYXEL:Float;
	
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
	function addToFileList (type:String, key:String, ?url:String, ?properties:Dynamic, ?overwrite:Bool = false, ?extension:String):phaser.loader.Loader;
	
	/**
	 * Internal function that replaces an existing entry in the file list with a new one. Do not call directly.
	 */
	function replaceInFileList (type:String, key:String, url:String, properties:Dynamic):Void;
	
	/**
	 * Add a JSON resource pack ('packfile') to the Loader.
	 * 
	 * A packfile is a JSON file that contains a list of assets to the be loaded.
	 * Please see the example 'loader/asset pack' in the Phaser Examples repository.
	 * 
	 * Packs are always put before the first non-pack file that is not loaded / loading.
	 * 
	 * This means that all packs added before any loading has started are added to the front
	 * of the file queue, in the order added.
	 * 
	 * The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	 * 
	 * The URL of the packfile can be relative or absolute. If the URL is relative the Loader.baseURL and Loader.path values will be prepended to it.
	 */
	function pack (key:String, ?url:String, ?data:Dynamic, ?callbackContext:Dynamic):phaser.loader.Loader;
	
	/**
	 * Adds an Image to the current load queue.
	 * 
	 * The file is <strong>not</strong> loaded immediately after calling this method. The file is added to the queue ready to be loaded when the loader starts.
	 * 
	 * Phaser can load all common image types: png, jpg, gif and any other format the browser can natively handle.
	 * 
	 * The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	 * 
	 * Retrieve the image via Cache.getImage(key)
	 * 
	 * The URL can be relative or absolute. If the URL is relative the Loader.baseURL and Loader.path values will be prepended to it.
	 * 
	 * If the URL isn't specified the Loader will take the key and create a filename from that. For example if the key is "alien"
	 * and no URL is given then the Loader will set the URL to be "alien.png". It will always add .png as the extension.
	 * If you do not desire this action then provide a URL.
	 */
	function image (key:String, ?url:String, ?overwrite:Bool = false):phaser.loader.Loader;
	
	/**
	 * Adds an array of images to the current load queue.
	 * 
	 * It works by passing each element of the array to the Loader.image method.
	 * 
	 * The files are <strong>not</strong> loaded immediately after calling this method. The files are added to the queue ready to be loaded when the loader starts.
	 * 
	 * Phaser can load all common image types: png, jpg, gif and any other format the browser can natively handle.
	 * 
	 * The keys must be unique Strings. They are used to add the files to the Phaser.Cache upon successful load.
	 * 
	 * Retrieve the images via Cache.getImage(key)
	 * 
	 * The URL can be relative or absolute. If the URL is relative the Loader.baseURL and Loader.path values will be prepended to it.
	 * 
	 * If the URL isn't specified the Loader will take the key and create a filename from that. For example if the key is "alien"
	 * and no URL is given then the Loader will set the URL to be "alien.png". It will always add .png as the extension.
	 * If you do not desire this action then provide a URL.
	 */
	function images (keys:Array<Dynamic>, ?urls:Array<Dynamic>):phaser.loader.Loader;
	
	/**
	 * Adds a Text file to the current load queue.
	 * 
	 * The file is <strong>not</strong> loaded immediately after calling this method. The file is added to the queue ready to be loaded when the loader starts.
	 * 
	 * The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	 * 
	 * Retrieve the file via Cache.getText(key)
	 * 
	 * The URL can be relative or absolute. If the URL is relative the Loader.baseURL and Loader.path values will be prepended to it.
	 * 
	 * If the URL isn't specified the Loader will take the key and create a filename from that. For example if the key is "alien"
	 * and no URL is given then the Loader will set the URL to be "alien.txt". It will always add .txt as the extension.
	 * If you do not desire this action then provide a URL.
	 */
	function text (key:String, ?url:String, ?overwrite:Bool = false):phaser.loader.Loader;
	
	/**
	 * Adds a JSON file to the current load queue.
	 * 
	 * The file is <strong>not</strong> loaded immediately after calling this method. The file is added to the queue ready to be loaded when the loader starts.
	 * 
	 * The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	 * 
	 * Retrieve the file via Cache.getJSON(key). JSON files are automatically parsed upon load.
	 * If you need to control when the JSON is parsed then use Loader.text instead and parse the text file as needed.
	 * 
	 * The URL can be relative or absolute. If the URL is relative the Loader.baseURL and Loader.path values will be prepended to it.
	 * 
	 * If the URL isn't specified the Loader will take the key and create a filename from that. For example if the key is "alien"
	 * and no URL is given then the Loader will set the URL to be "alien.json". It will always add .json as the extension.
	 * If you do not desire this action then provide a URL.
	 */
	function json (key:String, ?url:String, ?overwrite:Bool = false):phaser.loader.Loader;
	
	/**
	 * Adds a fragment shader file to the current load queue.
	 * 
	 * The file is <strong>not</strong> loaded immediately after calling this method. The file is added to the queue ready to be loaded when the loader starts.
	 * 
	 * The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	 * 
	 * Retrieve the file via Cache.getShader(key).
	 * 
	 * The URL can be relative or absolute. If the URL is relative the Loader.baseURL and Loader.path values will be prepended to it.
	 * 
	 * If the URL isn't specified the Loader will take the key and create a filename from that. For example if the key is "blur"
	 * and no URL is given then the Loader will set the URL to be "blur.frag". It will always add .frag as the extension.
	 * If you do not desire this action then provide a URL.
	 */
	function shader (key:String, ?url:String, ?overwrite:Bool = false):phaser.loader.Loader;
	
	/**
	 * Adds an XML file to the current load queue.
	 * 
	 * The file is <strong>not</strong> loaded immediately after calling this method. The file is added to the queue ready to be loaded when the loader starts.
	 * 
	 * The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	 * 
	 * Retrieve the file via Cache.getXML(key).
	 * 
	 * The URL can be relative or absolute. If the URL is relative the Loader.baseURL and Loader.path values will be prepended to it.
	 * 
	 * If the URL isn't specified the Loader will take the key and create a filename from that. For example if the key is "alien"
	 * and no URL is given then the Loader will set the URL to be "alien.xml". It will always add .xml as the extension.
	 * If you do not desire this action then provide a URL.
	 */
	function xml (key:String, ?url:String, ?overwrite:Bool = false):phaser.loader.Loader;
	
	/**
	 * Adds a JavaScript file to the current load queue.
	 * 
	 * The file is <strong>not</strong> loaded immediately after calling this method. The file is added to the queue ready to be loaded when the loader starts.
	 * 
	 * The key must be a unique String.
	 * 
	 * The URL can be relative or absolute. If the URL is relative the Loader.baseURL and Loader.path values will be prepended to it.
	 * 
	 * If the URL isn't specified the Loader will take the key and create a filename from that. For example if the key is "alien"
	 * and no URL is given then the Loader will set the URL to be "alien.js". It will always add .js as the extension.
	 * If you do not desire this action then provide a URL.
	 * 
	 * Upon successful load the JavaScript is automatically turned into a script tag and executed, so be careful what you load!
	 * 
	 * A callback, which will be invoked as the script tag has been created, can also be specified.
	 * The callback must return relevant data.
	 */
	function script (key:String, ?url:String, ?callback:Dynamic, ?callbackContext:Dynamic):phaser.loader.Loader;
	
	/**
	 * Adds a binary file to the current load queue.
	 * 
	 * The file is <strong>not</strong> loaded immediately after calling this method. The file is added to the queue ready to be loaded when the loader starts.
	 * 
	 * The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	 * 
	 * Retrieve the file via Cache.getBinary(key).
	 * 
	 * The URL can be relative or absolute. If the URL is relative the Loader.baseURL and Loader.path values will be prepended to it.
	 * 
	 * If the URL isn't specified the Loader will take the key and create a filename from that. For example if the key is "alien"
	 * and no URL is given then the Loader will set the URL to be "alien.bin". It will always add .bin as the extension.
	 * If you do not desire this action then provide a URL.
	 * 
	 * It will be loaded via xhr with a responseType of "arraybuffer". You can specify an optional callback to process the file after load.
	 * When the callback is called it will be passed 2 parameters: the key of the file and the file data.
	 * 
	 * WARNING: If a callback is specified the data will be set to whatever it returns. Always return the data object, even if you didn't modify it.
	 */
	function binary (key:String, ?url:String, ?callback:Dynamic, ?callbackContext:Dynamic):phaser.loader.Loader;
	
	/**
	 * Adds a Sprite Sheet to the current load queue.
	 * 
	 * The file is <strong>not</strong> loaded immediately after calling this method. The file is added to the queue ready to be loaded when the loader starts.
	 * 
	 * To clarify the terminology that Phaser uses: A Sprite Sheet is an image containing frames, usually of an animation, that are all equal
	 * dimensions and often in sequence. For example if the frame size is 32x32 then every frame in the sprite sheet will be that size.
	 * Sometimes (outside of Phaser) the term "sprite sheet" is used to refer to a texture atlas.
	 * A Texture Atlas works by packing together images as best it can, using whatever frame sizes it likes, often with cropping and trimming
	 * the frames in the process. Software such as Texture Packer, Flash CC or Shoebox all generate texture atlases, not sprite sheets.
	 * If you've got an atlas then use Loader.atlas instead.
	 * 
	 * The key must be a unique String. It is used to add the image to the Phaser.Cache upon successful load.
	 * 
	 * Retrieve the file via Cache.getImage(key). Sprite sheets, being image based, live in the same Cache as all other Images.
	 * 
	 * The URL can be relative or absolute. If the URL is relative the Loader.baseURL and Loader.path values will be prepended to it.
	 * 
	 * If the URL isn't specified the Loader will take the key and create a filename from that. For example if the key is "alien"
	 * and no URL is given then the Loader will set the URL to be "alien.png". It will always add .png as the extension.
	 * If you do not desire this action then provide a URL.
	 */
	function spritesheet (key:String, url:String, frameWidth:Float, frameHeight:Float, ?frameMax:Float, ?margin:Float = 0, ?spacing:Float = 0):phaser.loader.Loader;
	
	/**
	 * Adds an audio file to the current load queue.
	 * 
	 * The file is <strong>not</strong> loaded immediately after calling this method. The file is added to the queue ready to be loaded when the loader starts.
	 * 
	 * The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	 * 
	 * Retrieve the file via Cache.getSound(key).
	 * 
	 * The URL can be relative or absolute. If the URL is relative the Loader.baseURL and Loader.path values will be prepended to it.
	 * 
	 * Mobile warning: There are some mobile devices (certain iPad 2 and iPad Mini revisions) that cannot play 48000 Hz audio.
	 * When they try to play the audio becomes extremely distorted and buzzes, eventually crashing the sound system.
	 * The solution is to use a lower encoding rate such as 44100 Hz.
	 */
	@:overload(function (key:String, urls:String, ?autoDecode:Bool = true):phaser.loader.Loader {})
	@:overload(function (key:String, urls:Dynamic, ?autoDecode:Bool = true):phaser.loader.Loader {})
	function audio (key:String, urls:Dynamic, ?autoDecode:Bool = true):phaser.loader.Loader;
	
	/**
	 * Adds an audio sprite file to the current load queue.
	 * 
	 * The file is <strong>not</strong> loaded immediately after calling this method. The file is added to the queue ready to be loaded when the loader starts.
	 * 
	 * The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	 * 
	 * Audio Sprites are a combination of audio files and a JSON configuration.
	 * 
	 * The JSON follows the format of that created by <a href='https://github.com/tonistiigi/audiosprite'>https://github.com/tonistiigi/audiosprite</a>
	 * 
	 * Retrieve the file via Cache.getSoundData(key).
	 * 
	 * The URL can be relative or absolute. If the URL is relative the Loader.baseURL and Loader.path values will be prepended to it.
	 */
	@:overload(function (key:String, urls:Array<Dynamic>, ?jsonURL:String, ?jsonData:String, ?autoDecode:Bool = true):phaser.loader.Loader {})
	@:overload(function (key:String, urls:String, ?jsonURL:String, ?jsonData:String, ?autoDecode:Bool = true):phaser.loader.Loader {})
	@:overload(function (key:String, urls:Array<Dynamic>, ?jsonURL:String, ?jsonData:Dynamic, ?autoDecode:Bool = true):phaser.loader.Loader {})
	function audiosprite (key:String, urls:String, ?jsonURL:String, ?jsonData:Dynamic, ?autoDecode:Bool = true):phaser.loader.Loader;
	
	/**
	 * Adds a video file to the current load queue.
	 * 
	 * The file is <strong>not</strong> loaded immediately after calling this method. The file is added to the queue ready to be loaded when the loader starts.
	 * 
	 * The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	 * 
	 * Retrieve the file via Cache.getVideo(key).
	 * 
	 * The URL can be relative or absolute. If the URL is relative the Loader.baseURL and Loader.path values will be prepended to it.
	 * 
	 * You don't need to preload a video in order to play it in your game. See Video.createVideoFromURL for details.
	 */
	@:overload(function (key:String, urls:String, ?loadEvent:String = 'canplaythrough', ?asBlob:Bool = false):phaser.loader.Loader {})
	@:overload(function (key:String, urls:Dynamic, ?loadEvent:String = 'canplaythrough', ?asBlob:Bool = false):phaser.loader.Loader {})
	function video (key:String, urls:Dynamic, ?loadEvent:String = 'canplaythrough', ?asBlob:Bool = false):phaser.loader.Loader;
	
	/**
	 * Adds a Tile Map data file to the current load queue.
	 * 
	 * You can choose to either load the data externally, by providing a URL to a json file.
	 * Or you can pass in a JSON object or String via the data parameter.
	 * If you pass a String the data is automatically run through JSON.parse and then immediately added to the Phaser.Cache.
	 * 
	 * If a URL is provided the file is <strong>not</strong> loaded immediately after calling this method, but is added to the load queue.
	 * 
	 * The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	 * 
	 * Retrieve the file via Cache.getTilemapData(key). JSON files are automatically parsed upon load.
	 * If you need to control when the JSON is parsed then use Loader.text instead and parse the text file as needed.
	 * 
	 * The URL can be relative or absolute. If the URL is relative the Loader.baseURL and Loader.path values will be prepended to it.
	 * 
	 * If the URL isn't specified and no data is given then the Loader will take the key and create a filename from that.
	 * For example if the key is "level1" and no URL or data is given then the Loader will set the URL to be "level1.json".
	 * If you set the format to be Tilemap.CSV it will set the URL to be "level1.csv" instead.
	 * 
	 * If you do not desire this action then provide a URL or data object.
	 */
	@:overload(function (key:String, ?url:String, ?data:Dynamic, ?format:Float):phaser.loader.Loader {})
	function tilemap (key:String, ?url:String, ?data:String, ?format:Float):phaser.loader.Loader;
	
	/**
	 * Adds a physics data file to the current load queue.
	 * 
	 * The data must be in Lime + Corona JSON format. <a href="https://www.codeandweb.com">Physics Editor</a> by code'n'web exports in this format natively.
	 * 
	 * You can choose to either load the data externally, by providing a URL to a json file.
	 * Or you can pass in a JSON object or String via the data parameter.
	 * If you pass a String the data is automatically run through JSON.parse and then immediately added to the Phaser.Cache.
	 * 
	 * If a URL is provided the file is <strong>not</strong> loaded immediately after calling this method, but is added to the load queue.
	 * 
	 * The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	 * 
	 * Retrieve the file via Cache.getJSON(key). JSON files are automatically parsed upon load.
	 * If you need to control when the JSON is parsed then use Loader.text instead and parse the text file as needed.
	 * 
	 * The URL can be relative or absolute. If the URL is relative the Loader.baseURL and Loader.path values will be prepended to it.
	 * 
	 * If the URL isn't specified and no data is given then the Loader will take the key and create a filename from that.
	 * For example if the key is "alien" and no URL or data is given then the Loader will set the URL to be "alien.json".
	 * It will always use .json as the extension.
	 * 
	 * If you do not desire this action then provide a URL or data object.
	 */
	@:overload(function (key:String, ?url:String, ?data:Dynamic, ?format:String):phaser.loader.Loader {})
	function physics (key:String, ?url:String, ?data:String, ?format:String):phaser.loader.Loader;
	
	/**
	 * Adds Bitmap Font files to the current load queue.
	 * 
	 * To create the Bitmap Font files you can use:
	 * 
	 * BMFont (Windows, free): <a href='http://www.angelcode.com/products/bmfont/'>http://www.angelcode.com/products/bmfont/</a>
	 * Glyph Designer (OS X, commercial): <a href='http://www.71squared.com/en/glyphdesigner'>http://www.71squared.com/en/glyphdesigner</a>
	 * Littera (Web-based, free): <a href='http://kvazars.com/littera/'>http://kvazars.com/littera/</a>
	 * 
	 * You can choose to either load the data externally, by providing a URL to an xml file.
	 * Or you can pass in an XML object or String via the xmlData parameter.
	 * If you pass a String the data is automatically run through Loader.parseXML and then immediately added to the Phaser.Cache.
	 * 
	 * If URLs are provided the files are <strong>not</strong> loaded immediately after calling this method, but are added to the load queue.
	 * 
	 * The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	 * 
	 * Retrieve the file via Cache.getBitmapFont(key). XML files are automatically parsed upon load.
	 * If you need to control when the XML is parsed then use Loader.text instead and parse the XML file as needed.
	 * 
	 * The URLs can be relative or absolute. If the URL is relative the Loader.baseURL and Loader.path values will be prepended to it.
	 * 
	 * If the textureURL isn't specified then the Loader will take the key and create a filename from that.
	 * For example if the key is "megaFont" and textureURL is null then the Loader will set the URL to be "megaFont.png".
	 * The same is true for the atlasURL. If atlasURL isn't specified and no atlasData has been provided then the Loader will
	 * set the atlasURL to be the key. For example if the key is "megaFont" the atlasURL will be set to "megaFont.xml".
	 * 
	 * If you do not desire this action then provide URLs and / or a data object.
	 */
	function bitmapFont (key:String, textureURL:String, atlasURL:String, atlasData:Dynamic, ?xSpacing:Float = 0, ?ySpacing:Float = 0):phaser.loader.Loader;
	
	/**
	 * Adds a Texture Atlas file to the current load queue.
	 * 
	 * Unlike Loader.atlasJSONHash this call expects the atlas data to be in a JSON Array format.
	 * 
	 * To create the Texture Atlas you can use tools such as:
	 * 
	 * <a href="https://www.codeandweb.com/texturepacker/phaser">Texture Packer</a>
	 * <a href="http://renderhjs.net/shoebox/">Shoebox</a>
	 * 
	 * If using Texture Packer we recommend you enable "Trim sprite names".
	 * If your atlas software has an option to "rotate" the resulting frames, you must disable it.
	 * 
	 * You can choose to either load the data externally, by providing a URL to a json file.
	 * Or you can pass in a JSON object or String via the atlasData parameter.
	 * If you pass a String the data is automatically run through JSON.parse and then immediately added to the Phaser.Cache.
	 * 
	 * If URLs are provided the files are <strong>not</strong> loaded immediately after calling this method, but are added to the load queue.
	 * 
	 * The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	 * 
	 * Retrieve the file via Cache.getImage(key). JSON files are automatically parsed upon load.
	 * If you need to control when the JSON is parsed then use Loader.text instead and parse the JSON file as needed.
	 * 
	 * The URLs can be relative or absolute. If the URL is relative the Loader.baseURL and Loader.path values will be prepended to it.
	 * 
	 * If the textureURL isn't specified then the Loader will take the key and create a filename from that.
	 * For example if the key is "player" and textureURL is null then the Loader will set the URL to be "player.png".
	 * The same is true for the atlasURL. If atlasURL isn't specified and no atlasData has been provided then the Loader will
	 * set the atlasURL to be the key. For example if the key is "player" the atlasURL will be set to "player.json".
	 * 
	 * If you do not desire this action then provide URLs and / or a data object.
	 */
	function atlasJSONArray (key:String, ?textureURL:String, ?atlasURL:String, ?atlasData:Dynamic):phaser.loader.Loader;
	
	/**
	 * Adds a Texture Atlas file to the current load queue.
	 * 
	 * Unlike Loader.atlas this call expects the atlas data to be in a JSON Hash format.
	 * 
	 * To create the Texture Atlas you can use tools such as:
	 * 
	 * <a href="https://www.codeandweb.com/texturepacker/phaser">Texture Packer</a>
	 * <a href="http://renderhjs.net/shoebox/">Shoebox</a>
	 * 
	 * If using Texture Packer we recommend you enable "Trim sprite names".
	 * If your atlas software has an option to "rotate" the resulting frames, you must disable it.
	 * 
	 * You can choose to either load the data externally, by providing a URL to a json file.
	 * Or you can pass in a JSON object or String via the atlasData parameter.
	 * If you pass a String the data is automatically run through JSON.parse and then immediately added to the Phaser.Cache.
	 * 
	 * If URLs are provided the files are <strong>not</strong> loaded immediately after calling this method, but are added to the load queue.
	 * 
	 * The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	 * 
	 * Retrieve the file via Cache.getImage(key). JSON files are automatically parsed upon load.
	 * If you need to control when the JSON is parsed then use Loader.text instead and parse the JSON file as needed.
	 * 
	 * The URLs can be relative or absolute. If the URL is relative the Loader.baseURL and Loader.path values will be prepended to it.
	 * 
	 * If the textureURL isn't specified then the Loader will take the key and create a filename from that.
	 * For example if the key is "player" and textureURL is null then the Loader will set the URL to be "player.png".
	 * The same is true for the atlasURL. If atlasURL isn't specified and no atlasData has been provided then the Loader will
	 * set the atlasURL to be the key. For example if the key is "player" the atlasURL will be set to "player.json".
	 * 
	 * If you do not desire this action then provide URLs and / or a data object.
	 */
	function atlasJSONHash (key:String, ?textureURL:String, ?atlasURL:String, ?atlasData:Dynamic):phaser.loader.Loader;
	
	/**
	 * Adds a Texture Atlas file to the current load queue.
	 * 
	 * This call expects the atlas data to be in the Starling XML data format.
	 * 
	 * To create the Texture Atlas you can use tools such as:
	 * 
	 * <a href="https://www.codeandweb.com/texturepacker/phaser">Texture Packer</a>
	 * <a href="http://renderhjs.net/shoebox/">Shoebox</a>
	 * 
	 * If using Texture Packer we recommend you enable "Trim sprite names".
	 * If your atlas software has an option to "rotate" the resulting frames, you must disable it.
	 * 
	 * You can choose to either load the data externally, by providing a URL to an xml file.
	 * Or you can pass in an XML object or String via the atlasData parameter.
	 * If you pass a String the data is automatically run through Loader.parseXML and then immediately added to the Phaser.Cache.
	 * 
	 * If URLs are provided the files are <strong>not</strong> loaded immediately after calling this method, but are added to the load queue.
	 * 
	 * The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	 * 
	 * Retrieve the file via Cache.getImage(key). XML files are automatically parsed upon load.
	 * If you need to control when the XML is parsed then use Loader.text instead and parse the XML file as needed.
	 * 
	 * The URLs can be relative or absolute. If the URL is relative the Loader.baseURL and Loader.path values will be prepended to it.
	 * 
	 * If the textureURL isn't specified then the Loader will take the key and create a filename from that.
	 * For example if the key is "player" and textureURL is null then the Loader will set the URL to be "player.png".
	 * The same is true for the atlasURL. If atlasURL isn't specified and no atlasData has been provided then the Loader will
	 * set the atlasURL to be the key. For example if the key is "player" the atlasURL will be set to "player.xml".
	 * 
	 * If you do not desire this action then provide URLs and / or a data object.
	 */
	function atlasXML (key:String, ?textureURL:String, ?atlasURL:String, ?atlasData:Dynamic):phaser.loader.Loader;
	
	/**
	 * Adds a Texture Atlas file to the current load queue.
	 * 
	 * To create the Texture Atlas you can use tools such as:
	 * 
	 * <a href="https://www.codeandweb.com/texturepacker/phaser">Texture Packer</a>
	 * <a href="http://renderhjs.net/shoebox/">Shoebox</a>
	 * 
	 * If using Texture Packer we recommend you enable "Trim sprite names".
	 * If your atlas software has an option to "rotate" the resulting frames, you must disable it.
	 * 
	 * You can choose to either load the data externally, by providing a URL to a json file.
	 * Or you can pass in a JSON object or String via the atlasData parameter.
	 * If you pass a String the data is automatically run through JSON.parse and then immediately added to the Phaser.Cache.
	 * 
	 * If URLs are provided the files are <strong>not</strong> loaded immediately after calling this method, but are added to the load queue.
	 * 
	 * The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	 * 
	 * Retrieve the file via Cache.getImage(key). JSON files are automatically parsed upon load.
	 * If you need to control when the JSON is parsed then use Loader.text instead and parse the JSON file as needed.
	 * 
	 * The URLs can be relative or absolute. If the URL is relative the Loader.baseURL and Loader.path values will be prepended to it.
	 * 
	 * If the textureURL isn't specified then the Loader will take the key and create a filename from that.
	 * For example if the key is "player" and textureURL is null then the Loader will set the URL to be "player.png".
	 * The same is true for the atlasURL. If atlasURL isn't specified and no atlasData has been provided then the Loader will
	 * set the atlasURL to be the key. For example if the key is "player" the atlasURL will be set to "player.json".
	 * 
	 * If you do not desire this action then provide URLs and / or a data object.
	 */
	function atlas (key:String, ?textureURL:String, ?atlasURL:String, ?atlasData:Dynamic, ?format:Float):phaser.loader.Loader;
	
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
	 * Add a synchronization point to a specific file/asset in the load queue.
	 * 
	 * This has no effect on already loaded assets.
	 */
	function addSyncPoint (type:String, key:String):phaser.loader.Loader;
	
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
	 * Transforms the asset URL.
	 * 
	 * The default implementation prepends the baseURL if the url doesn't begin with http or //
	 */
	function transformUrl (url:String, file:Dynamic):String;
	
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
	function getVideoURL (urls:Dynamic):String;
	
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
	 * Parses string data as XML.
	 */
	function parseXml (data:String):Dynamic;
	
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
