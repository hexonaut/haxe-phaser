package phaser;

import haxe.extern.EitherType;
import js.html.XMLHttpRequest;
import js.html.XMLDocument;

/**
* The Loader handles loading all external content such as Images, Sounds, Texture Atlases and data files.
* 
* The loader uses a combination of tag loading (eg. Image elements) and XHR and provides progress and completion callbacks.
* 
* Parallel loading (see {@link Phaser.Loader#enableParallel enableParallel}) is supported and enabled by default.
* Load-before behavior of parallel resources is controlled by synchronization points as discussed in {@link Phaser.Loader#withSyncPoint withSyncPoint}.
* 
* Texture Atlases can be created with tools such as [Texture Packer](https://www.codeandweb.com/texturepacker/phaser) and
* [Shoebox](http://renderhjs.net/shoebox/)
*/
@:native("Phaser.Loader")
extern class Loader {

	/**
	* The Loader handles loading all external content such as Images, Sounds, Texture Atlases and data files.
	* 
	* The loader uses a combination of tag loading (eg. Image elements) and XHR and provides progress and completion callbacks.
	* 
	* Parallel loading (see {@link Phaser.Loader#enableParallel enableParallel}) is supported and enabled by default.
	* Load-before behavior of parallel resources is controlled by synchronization points as discussed in {@link Phaser.Loader#withSyncPoint withSyncPoint}.
	* 
	* Texture Atlases can be created with tools such as [Texture Packer](https://www.codeandweb.com/texturepacker/phaser) and
	* [Shoebox](http://renderhjs.net/shoebox/)
	* 
	* @param game A reference to the currently running game.
	*/
	function new(game:phaser.Game);
	
	static var PHYSICS_LIME_CORONA_JSON:Float;
	
	static var PHYSICS_PHASER_JSON:Float;
	
	static var TEXTURE_ATLAS_JSON_ARRAY:Float;
	
	static var TEXTURE_ATLAS_JSON_HASH:Float;
	
	static var TEXTURE_ATLAS_XML_STARLING:Float;
	
	static var TEXTURE_ATLAS_JSON_PYXEL:Float;
	
	/**
	* If you want to append a URL before the path of any asset you can set this here.
	* Useful if allowing the asset base url to be configured outside of the game code.
	* The string _must_ end with a "/".
	*/
	var baseURL:String;
	
	/**
	* Local reference to the Phaser.Cache.
	*/
	var cache:phaser.Cache;
	
	/**
	* The crossOrigin value applied to loaded images. Very often this needs to be set to 'anonymous'.
	*/
	var crossOrigin:EitherType<Bool, String>;
	
	/**
	* If true (the default) then parallel downloading will be enabled.
	* 
	* To disable all parallel downloads this must be set to false prior to any resource being loaded.
	*/
	var enableParallel:Bool;
	
	/**
	* Local reference to game.
	*/
	var game:phaser.Game;
	
	/**
	* True if all assets in the queue have finished loading.
	*/
	var hasLoaded:Bool;
	
	/**
	* Used to map the application mime-types to to the Accept header in XHR requests.
	* If you don't require these mappings, or they cause problems on your server, then
	* remove them from the headers object and the XHR request will not try to use them.
	* 
	* This object can also be used to set the `X-Requested-With` header to
	* `XMLHttpRequest` (or any other value you need). To enable this do:
	* 
	* `this.load.headers.requestedWith = 'XMLHttpRequest'`
	* 
	* before adding anything to the Loader. The XHR loader will then call:
	* 
	* `setRequestHeader('X-Requested-With', this.headers['requestedWith'])`
	* Default: {"undefined":"application/xml"}
	*/
	var headers:Dynamic;
	
	/**
	* True if the Loader is in the process of loading the queue.
	*/
	var isLoading:Bool;
	
	/**
	* The number of concurrent / parallel resources to try and fetch at once.
	* 
	* Many current browsers limit 6 requests per domain; this is slightly conservative.
	* 
	* This should generally be left at the default, but can be set to a higher limit for specific use-cases. Just be careful when setting large values as different browsers could behave differently.
	*/
	var maxParallelDownloads:Float;
	
	/**
	* This event is dispatched immediately before a file starts loading.
	* It's possible the file may fail (eg. download error, invalid format) after this event is sent.
	* 
	* Params: `(progress, file key, file url)`
	*/
	var onFileStart:phaser.Signal;
	
	/**
	* This event is dispatched when a file has either loaded or failed to load.
	* 
	* Any function bound to this will receive the following parameters:
	* 
	* progress, file key, success?, total loaded files, total files
	* 
	* Where progress is a number between 1 and 100 (inclusive) representing the percentage of the load.
	*/
	var onFileComplete:phaser.Signal;
	
	/**
	* This event is dispatched when a file (or pack) errors as a result of the load request.
	* 
	* For files it will be triggered before `onFileComplete`. For packs it will be triggered before `onPackComplete`.
	* 
	* Params: `(file key, file)`
	*/
	var onFileError:phaser.Signal;
	
	/**
	* This event is dispatched when the final file in the load queue has either loaded or failed.
	*/
	var onLoadComplete:phaser.Signal;
	
	/**
	* This event is dispatched when the loading process starts: before the first file has been requested,
	* but after all the initial packs have been loaded.
	*/
	var onLoadStart:phaser.Signal;
	
	/**
	* This event is dispatched when an asset pack has either loaded or failed to load.
	* 
	* This is called when the asset pack manifest file has loaded and successfully added its contents to the loader queue.
	* 
	* Params: `(pack key, success?, total packs loaded, total packs)`
	*/
	var onPackComplete:phaser.Signal;
	
	/**
	* The value of `path`, if set, is placed before any _relative_ file path given. For example:
	* 
	* `load.path = "images/sprites/";
	* load.image("ball", "ball.png");
	* load.image("tree", "level1/oaktree.png");
	* load.image("boom", "http://server.com/explode.png");`
	* 
	* Would load the `ball` file from `images/sprites/ball.png` and the tree from
	* `images/sprites/level1/oaktree.png` but the file `boom` would load from the URL
	* given as it's an absolute URL.
	* 
	* Please note that the path is added before the filename but *after* the baseURL (if set.)
	* 
	* The string _must_ end with a "/".
	*/
	var path:String;
	
	/**
	* You can optionally link a progress sprite with {@link Phaser.Loader#setPreloadSprite setPreloadSprite}.
	* 
	* This property is an object containing: sprite, rect, direction, width and height
	*/
	var preloadSprite:Dynamic;
	
	/**
	* The rounded load progress percentage value (from 0 to 100). See {@link Phaser.Loader#progressFloat}.
	*/
	var progress:Float;
	
	/**
	* The non-rounded load progress value (from 0.0 to 100.0).
	* 
	* A general indicator of the progress.
	* It is possible for the progress to decrease, after `onLoadStart`, if more files are dynamically added.
	*/
	var progressFloat:Float;
	
	/**
	* If true all calls to Loader.reset will be ignored. Useful if you need to create a load queue before swapping to a preloader state.
	*/
	var resetLocked:Bool;
	
	/**
	* If true and if the browser supports XDomainRequest, it will be used in preference for XHR.
	* 
	* This is only relevant for IE 9 and should _only_ be enabled for IE 9 clients when required by the server/CDN.
	*/
	var useXDomainRequest:Bool;
	
	/**
	* Informs the loader that the given file resource has been fetched and processed;
	* or such a request has failed.
	* 
	* @param file 
	* @param error The error message, if any. No message implies no error. - Default: ''
	*/
	function asyncComplete(file:Dynamic, ?errorMessage:String):Void;
	
	/**
	* Add a synchronization point to a specific file/asset in the load queue.
	* 
	* This has no effect on already loaded assets.
	* 
	* @param type The type of resource to turn into a sync point (image, audio, xml, etc).
	* @param key Key of the file you want to turn into a sync point.
	* @return This Loader instance.
	*/
	function addSyncPoint(type:String, key:String):phaser.Loader;
	
	/**
	* Internal function that adds a new entry to the file list. Do not call directly.
	* 
	* @param type The type of resource to add to the list (image, audio, xml, etc).
	* @param key The unique Cache ID key of this resource.
	* @param url The URL the asset will be loaded from.
	* @param properties Any additional properties needed to load the file. These are added directly to the added file object and overwrite any defaults. - Default: (none)
	* @param overwrite If true then this will overwrite a file asset of the same type/key. Otherwise it will only add a new asset. If overwrite is true, and the asset is already being loaded (or has been loaded), then it is appended instead.
	* @param extension If no URL is given the Loader will sometimes auto-generate the URL based on the key, using this as the extension.
	* @return This instance of the Phaser Loader.
	*/
	function addToFileList(type:String, key:String, ?url:String, ?properties:Dynamic, ?overwrite:Bool, ?extension:String):phaser.Loader;
	
	/**
	* Adds a Texture Atlas file to the current load queue.
	* 
	* To create the Texture Atlas you can use tools such as:
	* 
	* [Texture Packer](https://www.codeandweb.com/texturepacker/phaser)
	* [Shoebox](http://renderhjs.net/shoebox/)
	* 
	* If using Texture Packer we recommend you enable "Trim sprite names".
	* If your atlas software has an option to "rotate" the resulting frames, you must disable it.
	* 
	* You can choose to either load the data externally, by providing a URL to a json file.
	* Or you can pass in a JSON object or String via the `atlasData` parameter.
	* If you pass a String the data is automatically run through `JSON.parse` and then immediately added to the Phaser.Cache.
	* 
	* If URLs are provided the files are **not** loaded immediately after calling this method, but are added to the load queue.
	* 
	* The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	* 
	* Retrieve the file via `Cache.getImage(key)`. JSON files are automatically parsed upon load.
	* If you need to control when the JSON is parsed then use `Loader.text` instead and parse the JSON file as needed.
	* 
	* The URLs can be relative or absolute. If the URL is relative the `Loader.baseURL` and `Loader.path` values will be prepended to it.
	* 
	* If the textureURL isn't specified then the Loader will take the key and create a filename from that.
	* For example if the key is "player" and textureURL is null then the Loader will set the URL to be "player.png".
	* The same is true for the atlasURL. If atlasURL isn't specified and no atlasData has been provided then the Loader will
	* set the atlasURL to be the key. For example if the key is "player" the atlasURL will be set to "player.json".
	* 
	* If you do not desire this action then provide URLs and / or a data object.
	* 
	* @param key Unique asset key of the texture atlas file.
	* @param textureURL URL of the texture atlas image file. If undefined or `null` the url will be set to `<key>.png`, i.e. if `key` was "alien" then the URL will be "alien.png".
	* @param atlasURL URL of the texture atlas data file. If undefined or `null` and no atlasData is given, the url will be set to `<key>.json`, i.e. if `key` was "alien" then the URL will be "alien.json".
	* @param atlasData A JSON or XML data object. You don't need this if the data is being loaded from a URL.
	* @param format The format of the data. Can be Phaser.Loader.TEXTURE_ATLAS_JSON_ARRAY (the default), Phaser.Loader.TEXTURE_ATLAS_JSON_HASH or Phaser.Loader.TEXTURE_ATLAS_XML_STARLING.
	* @return This Loader instance.
	*/
	function atlas(key:String, ?textureURL:String, ?atlasURL:String, ?atlasData:Dynamic, ?format:Float):phaser.Loader;
	
	/**
	* Adds a Texture Atlas file to the current load queue.
	* 
	* Unlike `Loader.atlasJSONHash` this call expects the atlas data to be in a JSON Array format.
	* 
	* To create the Texture Atlas you can use tools such as:
	* 
	* [Texture Packer](https://www.codeandweb.com/texturepacker/phaser)
	* [Shoebox](http://renderhjs.net/shoebox/)
	* 
	* If using Texture Packer we recommend you enable "Trim sprite names".
	* If your atlas software has an option to "rotate" the resulting frames, you must disable it.
	* 
	* You can choose to either load the data externally, by providing a URL to a json file.
	* Or you can pass in a JSON object or String via the `atlasData` parameter.
	* If you pass a String the data is automatically run through `JSON.parse` and then immediately added to the Phaser.Cache.
	* 
	* If URLs are provided the files are **not** loaded immediately after calling this method, but are added to the load queue.
	* 
	* The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	* 
	* Retrieve the file via `Cache.getImage(key)`. JSON files are automatically parsed upon load.
	* If you need to control when the JSON is parsed then use `Loader.text` instead and parse the JSON file as needed.
	* 
	* The URLs can be relative or absolute. If the URL is relative the `Loader.baseURL` and `Loader.path` values will be prepended to it.
	* 
	* If the textureURL isn't specified then the Loader will take the key and create a filename from that.
	* For example if the key is "player" and textureURL is null then the Loader will set the URL to be "player.png".
	* The same is true for the atlasURL. If atlasURL isn't specified and no atlasData has been provided then the Loader will
	* set the atlasURL to be the key. For example if the key is "player" the atlasURL will be set to "player.json".
	* 
	* If you do not desire this action then provide URLs and / or a data object.
	* 
	* @param key Unique asset key of the texture atlas file.
	* @param textureURL URL of the texture atlas image file. If undefined or `null` the url will be set to `<key>.png`, i.e. if `key` was "alien" then the URL will be "alien.png".
	* @param atlasURL URL of the texture atlas data file. If undefined or `null` and no atlasData is given, the url will be set to `<key>.json`, i.e. if `key` was "alien" then the URL will be "alien.json".
	* @param atlasData A JSON data object. You don't need this if the data is being loaded from a URL.
	* @return This Loader instance.
	*/
	function atlasJSONArray(key:String, ?textureURL:String, ?atlasURL:String, ?atlasData:Dynamic):phaser.Loader;
	
	/**
	* Adds a Texture Atlas file to the current load queue.
	* 
	* Unlike `Loader.atlas` this call expects the atlas data to be in a JSON Hash format.
	* 
	* To create the Texture Atlas you can use tools such as:
	* 
	* [Texture Packer](https://www.codeandweb.com/texturepacker/phaser)
	* [Shoebox](http://renderhjs.net/shoebox/)
	* 
	* If using Texture Packer we recommend you enable "Trim sprite names".
	* If your atlas software has an option to "rotate" the resulting frames, you must disable it.
	* 
	* You can choose to either load the data externally, by providing a URL to a json file.
	* Or you can pass in a JSON object or String via the `atlasData` parameter.
	* If you pass a String the data is automatically run through `JSON.parse` and then immediately added to the Phaser.Cache.
	* 
	* If URLs are provided the files are **not** loaded immediately after calling this method, but are added to the load queue.
	* 
	* The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	* 
	* Retrieve the file via `Cache.getImage(key)`. JSON files are automatically parsed upon load.
	* If you need to control when the JSON is parsed then use `Loader.text` instead and parse the JSON file as needed.
	* 
	* The URLs can be relative or absolute. If the URL is relative the `Loader.baseURL` and `Loader.path` values will be prepended to it.
	* 
	* If the textureURL isn't specified then the Loader will take the key and create a filename from that.
	* For example if the key is "player" and textureURL is null then the Loader will set the URL to be "player.png".
	* The same is true for the atlasURL. If atlasURL isn't specified and no atlasData has been provided then the Loader will
	* set the atlasURL to be the key. For example if the key is "player" the atlasURL will be set to "player.json".
	* 
	* If you do not desire this action then provide URLs and / or a data object.
	* 
	* @param key Unique asset key of the texture atlas file.
	* @param textureURL URL of the texture atlas image file. If undefined or `null` the url will be set to `<key>.png`, i.e. if `key` was "alien" then the URL will be "alien.png".
	* @param atlasURL URL of the texture atlas data file. If undefined or `null` and no atlasData is given, the url will be set to `<key>.json`, i.e. if `key` was "alien" then the URL will be "alien.json".
	* @param atlasData A JSON data object. You don't need this if the data is being loaded from a URL.
	* @return This Loader instance.
	*/
	function atlasJSONHash(key:String, ?textureURL:String, ?atlasURL:String, ?atlasData:Dynamic):phaser.Loader;
	
	/**
	* Adds a Texture Atlas file to the current load queue.
	* 
	* This call expects the atlas data to be in the Starling XML data format.
	* 
	* To create the Texture Atlas you can use tools such as:
	* 
	* [Texture Packer](https://www.codeandweb.com/texturepacker/phaser)
	* [Shoebox](http://renderhjs.net/shoebox/)
	* 
	* If using Texture Packer we recommend you enable "Trim sprite names".
	* If your atlas software has an option to "rotate" the resulting frames, you must disable it.
	* 
	* You can choose to either load the data externally, by providing a URL to an xml file.
	* Or you can pass in an XML object or String via the `atlasData` parameter.
	* If you pass a String the data is automatically run through `Loader.parseXML` and then immediately added to the Phaser.Cache.
	* 
	* If URLs are provided the files are **not** loaded immediately after calling this method, but are added to the load queue.
	* 
	* The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	* 
	* Retrieve the file via `Cache.getImage(key)`. XML files are automatically parsed upon load.
	* If you need to control when the XML is parsed then use `Loader.text` instead and parse the XML file as needed.
	* 
	* The URLs can be relative or absolute. If the URL is relative the `Loader.baseURL` and `Loader.path` values will be prepended to it.
	* 
	* If the textureURL isn't specified then the Loader will take the key and create a filename from that.
	* For example if the key is "player" and textureURL is null then the Loader will set the URL to be "player.png".
	* The same is true for the atlasURL. If atlasURL isn't specified and no atlasData has been provided then the Loader will
	* set the atlasURL to be the key. For example if the key is "player" the atlasURL will be set to "player.xml".
	* 
	* If you do not desire this action then provide URLs and / or a data object.
	* 
	* @param key Unique asset key of the texture atlas file.
	* @param textureURL URL of the texture atlas image file. If undefined or `null` the url will be set to `<key>.png`, i.e. if `key` was "alien" then the URL will be "alien.png".
	* @param atlasURL URL of the texture atlas data file. If undefined or `null` and no atlasData is given, the url will be set to `<key>.json`, i.e. if `key` was "alien" then the URL will be "alien.xml".
	* @param atlasData An XML data object. You don't need this if the data is being loaded from a URL.
	* @return This Loader instance.
	*/
	function atlasXML(key:String, ?textureURL:String, ?atlasURL:String, ?atlasData:Dynamic):phaser.Loader;
	
	/**
	* Adds an audio file to the current load queue.
	* 
	* The file is **not** loaded immediately after calling this method. The file is added to the queue ready to be loaded when the loader starts.
	* 
	* The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	* 
	* Retrieve the file via `Cache.getSound(key)`.
	* 
	* The URL can be relative or absolute. If the URL is relative the `Loader.baseURL` and `Loader.path` values will be prepended to it.
	* 
	* Mobile warning: There are some mobile devices (certain iPad 2 and iPad Mini revisions) that cannot play 48000 Hz audio.
	* When they try to play the audio becomes extremely distorted and buzzes, eventually crashing the sound system.
	* The solution is to use a lower encoding rate such as 44100 Hz.
	* 
	* @param key Unique asset key of the audio file.
	* @param urls Either a single string or an array of URIs or pairs of `{uri: .., type: ..}`.If an array is specified then the first URI (or URI + mime pair) that is device-compatible will be selected.For example: `"jump.mp3"`, `['jump.mp3', 'jump.ogg', 'jump.m4a']`, or `[{uri: "data:<opus_resource>", type: 'opus'}, 'fallback.mp3']`.BLOB and DATA URIs can be used but only support automatic detection when used in the pair form; otherwise the format must be manually checked before adding the resource.
	* @param autoDecode When using Web Audio the audio files can either be decoded at load time or run-time.Audio files can't be played until they are decoded and, if specified, this enables immediate decoding. Decoding is a non-blocking async process, however it consumes huge amounts of CPU time on mobiles especially. - Default: true
	* @return This Loader instance.
	*/
	function audio(key:String, urls:EitherType<String, EitherType<Array<String>, Dynamic>>, ?autoDecode:Bool):phaser.Loader;
	
	/**
	* A legacy alias for Loader.audioSprite. Please see that method for documentation.
	* 
	* @param key Unique asset key of the audio file.
	* @param urls An array containing the URLs of the audio files, i.e.: [ 'audiosprite.mp3', 'audiosprite.ogg', 'audiosprite.m4a' ] or a single string containing just one URL.
	* @param jsonURL The URL of the audiosprite configuration JSON object. If you wish to pass the data directly set this parameter to null.
	* @param jsonData A JSON object or string containing the audiosprite configuration data. This is ignored if jsonURL is not null.
	* @param autoDecode When using Web Audio the audio files can either be decoded at load time or run-time.Audio files can't be played until they are decoded and, if specified, this enables immediate decoding. Decoding is a non-blocking async process, however it consumes huge amounts of CPU time on mobiles especially. - Default: true
	* @return This Loader instance.
	*/
	function audiosprite(key:String, urls:Array<String>, ?jsonURL:String, ?jsonData:EitherType<String, Dynamic>, ?autoDecode:Bool):phaser.Loader;
	
	/**
	* Adds a binary file to the current load queue.
	* 
	* The file is **not** loaded immediately after calling this method. The file is added to the queue ready to be loaded when the loader starts.
	* 
	* The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	* 
	* Retrieve the file via `Cache.getBinary(key)`.
	* 
	* The URL can be relative or absolute. If the URL is relative the `Loader.baseURL` and `Loader.path` values will be prepended to it.
	* 
	* If the URL isn't specified the Loader will take the key and create a filename from that. For example if the key is "alien"
	* and no URL is given then the Loader will set the URL to be "alien.bin". It will always add `.bin` as the extension.
	* If you do not desire this action then provide a URL.
	* 
	* It will be loaded via xhr with a responseType of "arraybuffer". You can specify an optional callback to process the file after load.
	* When the callback is called it will be passed 2 parameters: the key of the file and the file data.
	* 
	* WARNING: If a callback is specified the data will be set to whatever it returns. Always return the data object, even if you didn't modify it.
	* 
	* @param key Unique asset key of the binary file.
	* @param url URL of the binary file. If undefined or `null` the url will be set to `<key>.bin`, i.e. if `key` was "alien" then the URL will be "alien.bin".
	* @param callback Optional callback that will be passed the file after loading, so you can perform additional processing on it. - Default: (none)
	* @param callbackContext The context under which the callback will be applied. If not specified it will use the callback itself as the context.
	* @return This Loader instance.
	*/
	function binary(key:String, ?url:String, ?callback:Dynamic, ?callbackContext:Dynamic):phaser.Loader;
	
	/**
	* Adds Bitmap Font files to the current load queue.
	* 
	* To create the Bitmap Font files you can use:
	* 
	* BMFont (Windows, free): http://www.angelcode.com/products/bmfont/
	* Glyph Designer (OS X, commercial): http://www.71squared.com/en/glyphdesigner
	* Littera (Web-based, free): http://kvazars.com/littera/
	* 
	* You can choose to either load the data externally, by providing a URL to an xml file.
	* Or you can pass in an XML object or String via the `xmlData` parameter.
	* If you pass a String the data is automatically run through `Loader.parseXML` and then immediately added to the Phaser.Cache.
	* 
	* If URLs are provided the files are **not** loaded immediately after calling this method, but are added to the load queue.
	* 
	* The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	* 
	* Retrieve the file via `Cache.getBitmapFont(key)`. XML files are automatically parsed upon load.
	* If you need to control when the XML is parsed then use `Loader.text` instead and parse the XML file as needed.
	* 
	* The URLs can be relative or absolute. If the URL is relative the `Loader.baseURL` and `Loader.path` values will be prepended to it.
	* 
	* If the textureURL isn't specified then the Loader will take the key and create a filename from that.
	* For example if the key is "megaFont" and textureURL is null then the Loader will set the URL to be "megaFont.png".
	* The same is true for the atlasURL. If atlasURL isn't specified and no atlasData has been provided then the Loader will
	* set the atlasURL to be the key. For example if the key is "megaFont" the atlasURL will be set to "megaFont.xml".
	* 
	* If you do not desire this action then provide URLs and / or a data object.
	* 
	* @param key Unique asset key of the bitmap font.
	* @param textureURL URL of the Bitmap Font texture file. If undefined or `null` the url will be set to `<key>.png`, i.e. if `key` was "megaFont" then the URL will be "megaFont.png".
	* @param atlasURL URL of the Bitmap Font atlas file (xml/json). If undefined or `null` AND `atlasData` is null, the url will be set to `<key>.xml`, i.e. if `key` was "megaFont" then the URL will be "megaFont.xml".
	* @param atlasData An optional Bitmap Font atlas in string form (stringified xml/json).
	* @param xSpacing If you'd like to add additional horizontal spacing between the characters then set the pixel value here.
	* @param ySpacing If you'd like to add additional vertical spacing between the lines then set the pixel value here.
	* @return This Loader instance.
	*/
	function bitmapFont(key:String, ?textureURL:String, ?atlasURL:String, ?atlasData:Dynamic, ?xSpacing:Float, ?ySpacing:Float):phaser.Loader;
	
	/**
	* Check whether a file/asset with a specific key is queued to be loaded.
	* 
	* To access a loaded asset use Phaser.Cache, eg. {@link Phaser.Cache#checkImageKey}
	* 
	* @param type The type asset you want to check.
	* @param key Key of the asset you want to check.
	* @return Return true if exists, otherwise return false.
	*/
	function checkKeyExists(type:String, key:String):Bool;
	
	/**
	* Successfully loaded a CSV file - only used for certain types.
	* 
	* @param file File associated with this request
	* @param xhr 
	*/
	function csvLoadComplete(file:Dynamic, xhr:XMLHttpRequest):Void;
	
	/**
	* Called when a file has been downloaded and needs to be processed further.
	* 
	* @param file File loaded
	* @param xhr XHR request, unspecified if loaded via other means (eg. tags)
	*/
	function fileComplete(file:Dynamic, xhr:XMLHttpRequest):Void;
	
	/**
	* Error occurred when loading a file.
	* 
	* @param file 
	* @param xhr XHR request, unspecified if loaded via other means (eg. tags)
	* @param reason 
	*/
	function fileError(file:Dynamic, xhr:XMLHttpRequest, reason:String):Void;
	
	/**
	* The loading is all finished.
	* 
	* @param abnormal True if the loading finished abnormally. - Default: true
	*/
	function finishedLoading(?abnormal:Bool):Void;
	
	/**
	* Find a file/asset with a specific key.
	* 
	* Only assets in the download file queue will be found.
	* 
	* @param type The type asset you want to check.
	* @param key Key of the asset you want to check.
	* @return Returns an object if found that has 2 properties: `index` and `file`; otherwise a non-true value is returned.The index may change and should only be used immediately following this call.
	*/
	function getAsset(type:String, key:String):Dynamic;
	
	/**
	* Get the queue-index of the file/asset with a specific key.
	* 
	* Only assets in the download file queue will be found.
	* 
	* @param type The type asset you want to check.
	* @param key Key of the asset you want to check.
	* @return The index of this key in the filelist, or -1 if not found.The index may change and should only be used immediately following this call
	*/
	function getAssetIndex(type:String, key:String):Float;
	
	/**
	* Give a bunch of URLs, return the first URL that has an extension this device thinks it can play.
	* 
	* It is assumed that the device can play "blob:" or "data:" URIs - There is no mime-type checking on data URIs.
	* 
	* @param urls See {
	* @link #audio} for format.
	* @return The URL to try and fetch; or null.
	*/
	function getAudioURL(urls:Array<Dynamic>):Void;
	
	/**
	* Adds an Image to the current load queue.
	* 
	* The file is **not** loaded immediately after calling this method. The file is added to the queue ready to be loaded when the loader starts.
	* 
	* Phaser can load all common image types: png, jpg, gif and any other format the browser can natively handle.
	* 
	* The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	* 
	* Retrieve the image via `Cache.getImage(key)`
	* 
	* The URL can be relative or absolute. If the URL is relative the `Loader.baseURL` and `Loader.path` values will be prepended to it.
	* 
	* If the URL isn't specified the Loader will take the key and create a filename from that. For example if the key is "alien"
	* and no URL is given then the Loader will set the URL to be "alien.png". It will always add `.png` as the extension.
	* If you do not desire this action then provide a URL.
	* 
	* This method also supports passing in a texture object as the `url` argument. This allows you to load
	* compressed textures into Phaser. You can also use `Loader.texture` to do this.
	* 
	* Compressed Textures are a WebGL only feature, and require 3rd party tools to create.
	* Available tools include Texture Packer, PVRTexTool, DirectX Texture Tool and Mali Texture Compression Tool.
	* 
	* Supported texture compression formats are: PVRTC, S3TC and ETC1.
	* Supported file formats are: PVR, DDS, KTX and PKM.
	* 
	* The formats that support all 3 compression algorithms are PVR and KTX.
	* PKM only supports ETC1, and DDS only S3TC for now.
	* 
	* The texture path object looks like this:
	* 
	* ```
	* load.image('factory', {
	*      etc1: 'assets/factory_etc1.pkm',
	*      s3tc: 'assets/factory_dxt1.pvr',
	*      pvrtc: 'assets/factory_pvrtc.pvr',
	*      truecolor: 'assets/factory.png'
	* });
	* ```
	* 
	* The `truecolor` property points to a standard PNG file, that will be used if none of the
	* compressed formats are supported by the browser / GPU.
	* 
	* @param key Unique asset key of this image file.
	* @param url URL of an image file. If undefined or `null` the url will be set to `<key>.png`, i.e. if `key` was "alien" then the URL will be "alien.png". Can also be a texture data object.
	* @param overwrite If an unloaded file with a matching key already exists in the queue, this entry will overwrite it.
	* @return This Loader instance.
	*/
	function image(key:String, ?url:EitherType<String, Dynamic>, ?overwrite:Bool):phaser.Loader;
	
	/**
	* Generate an image from a BitmapData object and add it to the current load queue.
	* 
	* @param key Unique asset key for the generated image.
	* @param bitmapData 
	* @param overwrite If an unloaded file with a matching key already exists in the queue, this entry will overwrite it.
	* @return This Loader instance.
	*/
	function imageFromBitmapData(key:String, bitmapData:phaser.BitmapData, ?overwrite:Bool):phaser.Loader;
	
	/**
	* Adds an array of images to the current load queue.
	* 
	* It works by passing each element of the array to the Loader.image method.
	* 
	* The files are **not** loaded immediately after calling this method. The files are added to the queue ready to be loaded when the loader starts.
	* 
	* Phaser can load all common image types: png, jpg, gif and any other format the browser can natively handle.
	* 
	* The keys must be unique Strings. They are used to add the files to the Phaser.Cache upon successful load.
	* 
	* Retrieve the images via `Cache.getImage(key)`
	* 
	* The URL can be relative or absolute. If the URL is relative the `Loader.baseURL` and `Loader.path` values will be prepended to it.
	* 
	* If the URL isn't specified the Loader will take the key and create a filename from that. For example if the key is "alien"
	* and no URL is given then the Loader will set the URL to be "alien.png". It will always add `.png` as the extension.
	* If you do not desire this action then provide a URL.
	* 
	* @param keys An array of unique asset keys of the image files.
	* @param urls Optional array of URLs. If undefined or `null` the url will be set to `<key>.png`, i.e. if `key` was "alien" then the URL will be "alien.png". If provided the URLs array length must match the keys array length.
	* @return This Loader instance.
	*/
	function images(keys:Array<String>, ?urls:Array<String>):phaser.Loader;
	
	/**
	* Adds a JSON file to the current load queue.
	* 
	* The file is **not** loaded immediately after calling this method. The file is added to the queue ready to be loaded when the loader starts.
	* 
	* The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	* 
	* Retrieve the file via `Cache.getJSON(key)`. JSON files are automatically parsed upon load.
	* If you need to control when the JSON is parsed then use `Loader.text` instead and parse the text file as needed.
	* 
	* The URL can be relative or absolute. If the URL is relative the `Loader.baseURL` and `Loader.path` values will be prepended to it.
	* 
	* If the URL isn't specified the Loader will take the key and create a filename from that. For example if the key is "alien"
	* and no URL is given then the Loader will set the URL to be "alien.json". It will always add `.json` as the extension.
	* If you do not desire this action then provide a URL.
	* 
	* @param key Unique asset key of the json file.
	* @param url URL of the JSON file. If undefined or `null` the url will be set to `<key>.json`, i.e. if `key` was "alien" then the URL will be "alien.json".
	* @param overwrite If an unloaded file with a matching key already exists in the queue, this entry will overwrite it.
	* @return This Loader instance.
	*/
	function json(key:String, ?url:String, ?overwrite:Bool):phaser.Loader;
	
	/**
	* Successfully loaded a JSON file - only used for certain types.
	* 
	* @param file File associated with this request
	* @param xhr 
	*/
	function jsonLoadComplete(file:Dynamic, xhr:XMLHttpRequest):Void;
	
	/**
	* Continue async loading through an Audio tag.
	*/
	function loadAudioTag(file:Dynamic):Void;
	
	/**
	* Start fetching a resource.
	* 
	* All code paths, async or otherwise, from this function must return to `asyncComplete`.
	* 
	* @param file 
	*/
	function loadFile(file:Dynamic):Void;
	
	/**
	* Continue async loading through an Image tag.
	*/
	function loadImageTag(file:Dynamic):Void;
	
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
	* The URL of the packfile can be relative or absolute. If the URL is relative the `Loader.baseURL` and `Loader.path` values will be prepended to it.
	* 
	* @param key Unique asset key of this resource pack.
	* @param url URL of the Asset Pack JSON file. If you wish to pass a json object instead set this to null and pass the object as the data parameter.
	* @param data The Asset Pack JSON data. Use this to pass in a json data object rather than loading it from a URL. TODO
	* @param callbackContext Some Loader operations, like Binary and Script require a context for their callbacks. Pass the context here. - Default: (loader)
	* @return This Loader instance.
	*/
	function pack(key:String, ?url:String, ?data:Dynamic, ?callbackContext:Dynamic):phaser.Loader;
	
	/**
	* Parses string data as XML.
	* 
	* @param data The XML text to parse
	* @return Returns the xml document, or null if such could not parsed to a valid document.
	*/
	function parseXml(data:String):XMLDocument;
	
	/**
	* Adds a physics data file to the current load queue.
	* 
	* The data must be in `Lime + Corona` JSON format. [Physics Editor](https://www.codeandweb.com) by code'n'web exports in this format natively.
	* 
	* You can choose to either load the data externally, by providing a URL to a json file.
	* Or you can pass in a JSON object or String via the `data` parameter.
	* If you pass a String the data is automatically run through `JSON.parse` and then immediately added to the Phaser.Cache.
	* 
	* If a URL is provided the file is **not** loaded immediately after calling this method, but is added to the load queue.
	* 
	* The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	* 
	* Retrieve the file via `Cache.getJSON(key)`. JSON files are automatically parsed upon load.
	* If you need to control when the JSON is parsed then use `Loader.text` instead and parse the text file as needed.
	* 
	* The URL can be relative or absolute. If the URL is relative the `Loader.baseURL` and `Loader.path` values will be prepended to it.
	* 
	* If the URL isn't specified and no data is given then the Loader will take the key and create a filename from that.
	* For example if the key is "alien" and no URL or data is given then the Loader will set the URL to be "alien.json".
	* It will always use `.json` as the extension.
	* 
	* If you do not desire this action then provide a URL or data object.
	* 
	* @param key Unique asset key of the physics json data.
	* @param url URL of the physics data file. If undefined or `null` and no data is given the url will be set to `<key>.json`, i.e. if `key` was "alien" then the URL will be "alien.json".
	* @param data An optional JSON data object. If given then the url is ignored and this JSON object is used for physics data instead.
	* @param format The format of the physics data. - Default: Phaser.Physics.LIME_CORONA_JSON
	* @return This Loader instance.
	*/
	function physics(key:String, ?url:String, ?data:Dynamic, ?format:String):phaser.Loader;
	
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
	function processLoadQueue():Void;
	
	/**
	* Process pack data. This will usually modify the file list.
	* 
	* @param pack 
	*/
	function processPack(pack:Dynamic):Void;
	
	/**
	* Remove all file loading requests - this is _insufficient_ to stop current loading. Use `reset` instead.
	*/
	function removeAll():Void;
	
	/**
	* Remove a file/asset from the loading queue.
	* 
	* A file that is loaded or has started loading cannot be removed.
	* 
	* @param type The type of resource to add to the list (image, audio, xml, etc).
	* @param key Key of the file you want to remove.
	*/
	function removeFile(type:String, key:String):Void;
	
	/**
	* Internal function that replaces an existing entry in the file list with a new one. Do not call directly.
	* 
	* @param type The type of resource to add to the list (image, audio, xml, etc).
	* @param key The unique Cache ID key of this resource.
	* @param url The URL the asset will be loaded from.
	* @param properties Any additional properties needed to load the file.
	*/
	function replaceInFileList(type:String, key:String, url:String, properties:Dynamic):Void;
	
	/**
	* Reset the loader and clear any queued assets. If `Loader.resetLocked` is true this operation will abort.
	* 
	* This will abort any loading and clear any queued assets.
	* 
	* Optionally you can clear any associated events.
	* 
	* @param hard If true then the preload sprite and other artifacts may also be cleared.
	* @param clearEvents If true then the all Loader signals will have removeAll called on them.
	*/
	function reset(?hard:Bool, ?clearEvents:Bool):Void;
	
	/**
	* Called automatically by ScaleManager when the game resizes in RESIZE scalemode.
	* 
	* This can be used to adjust the preloading sprite size, eg.
	*/
	function resize():Void;
	
	/**
	* Adds a JavaScript file to the current load queue.
	* 
	* The file is **not** loaded immediately after calling this method. The file is added to the queue ready to be loaded when the loader starts.
	* 
	* The key must be a unique String.
	* 
	* The URL can be relative or absolute. If the URL is relative the `Loader.baseURL` and `Loader.path` values will be prepended to it.
	* 
	* If the URL isn't specified the Loader will take the key and create a filename from that. For example if the key is "alien"
	* and no URL is given then the Loader will set the URL to be "alien.js". It will always add `.js` as the extension.
	* If you do not desire this action then provide a URL.
	* 
	* Upon successful load the JavaScript is automatically turned into a script tag and executed, so be careful what you load!
	* 
	* A callback, which will be invoked as the script tag has been created, can also be specified.
	* The callback must return relevant `data`.
	* 
	* @param key Unique asset key of the script file.
	* @param url URL of the JavaScript file. If undefined or `null` the url will be set to `<key>.js`, i.e. if `key` was "alien" then the URL will be "alien.js".
	* @param callback Optional callback that will be called after the script tag has loaded, so you can perform additional processing. - Default: (none)
	* @param callbackContext The context under which the callback will be applied. If not specified it will use the Phaser Loader as the context. - Default: (loader)
	* @return This Loader instance.
	*/
	function script(key:String, ?url:String, ?callback:Dynamic, ?callbackContext:Dynamic):phaser.Loader;
	
	/**
	* Adds a fragment shader file to the current load queue.
	* 
	* The file is **not** loaded immediately after calling this method. The file is added to the queue ready to be loaded when the loader starts.
	* 
	* The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	* 
	* Retrieve the file via `Cache.getShader(key)`.
	* 
	* The URL can be relative or absolute. If the URL is relative the `Loader.baseURL` and `Loader.path` values will be prepended to it.
	* 
	* If the URL isn't specified the Loader will take the key and create a filename from that. For example if the key is "blur"
	* and no URL is given then the Loader will set the URL to be "blur.frag". It will always add `.frag` as the extension.
	* If you do not desire this action then provide a URL.
	* 
	* @param key Unique asset key of the fragment file.
	* @param url URL of the fragment file. If undefined or `null` the url will be set to `<key>.frag`, i.e. if `key` was "blur" then the URL will be "blur.frag".
	* @param overwrite If an unloaded file with a matching key already exists in the queue, this entry will overwrite it.
	* @return This Loader instance.
	*/
	function shader(key:String, ?url:String, ?overwrite:Bool):phaser.Loader;
	
	/**
	* Set a Sprite to be a "preload" sprite by passing it to this method.
	* 
	* A "preload" sprite will have its width or height crop adjusted based on the percentage of the loader in real-time.
	* This allows you to easily make loading bars for games.
	* 
	* The sprite will automatically be made visible when calling this.
	* 
	* @param sprite The sprite or image that will be cropped during the load.
	* @param direction A value of zero means the sprite will be cropped horizontally, a value of 1 means its will be cropped vertically.
	*/
	function setPreloadSprite(sprite:EitherType<phaser.Sprite, phaser.Image>, ?direction:Float):Void;
	
	/**
	* Adds a Sprite Sheet to the current load queue.
	* 
	* The file is **not** loaded immediately after calling this method. The file is added to the queue ready to be loaded when the loader starts.
	* 
	* To clarify the terminology that Phaser uses: A Sprite Sheet is an image containing frames, usually of an animation, that are all equal
	* dimensions and often in sequence. For example if the frame size is 32x32 then every frame in the sprite sheet will be that size.
	* Sometimes (outside of Phaser) the term "sprite sheet" is used to refer to a texture atlas.
	* A Texture Atlas works by packing together images as best it can, using whatever frame sizes it likes, often with cropping and trimming
	* the frames in the process. Software such as Texture Packer, Flash CC or Shoebox all generate texture atlases, not sprite sheets.
	* If you've got an atlas then use `Loader.atlas` instead.
	* 
	* The key must be a unique String. It is used to add the image to the Phaser.Cache upon successful load.
	* 
	* Retrieve the file via `Cache.getImage(key)`. Sprite sheets, being image based, live in the same Cache as all other Images.
	* 
	* The URL can be relative or absolute. If the URL is relative the `Loader.baseURL` and `Loader.path` values will be prepended to it.
	* 
	* If the URL isn't specified the Loader will take the key and create a filename from that. For example if the key is "alien"
	* and no URL is given then the Loader will set the URL to be "alien.png". It will always add `.png` as the extension.
	* If you do not desire this action then provide a URL.
	* 
	* @param key Unique asset key of the sheet file.
	* @param url URL of the sprite sheet file. If undefined or `null` the url will be set to `<key>.png`, i.e. if `key` was "alien" then the URL will be "alien.png".
	* @param frameWidth Width in pixels of a single frame in the sprite sheet.
	* @param frameHeight Height in pixels of a single frame in the sprite sheet.
	* @param frameMax How many frames in this sprite sheet. If not specified it will divide the whole image into frames. - Default: -1
	* @param margin If the frames have been drawn with a margin, specify the amount here.
	* @param spacing If the frames have been drawn with spacing between them, specify the amount here.
	* @param skipFrames Skip a number of frames. Useful when there are multiple sprite sheets in one image.
	* @return This Loader instance.
	*/
	function spritesheet(key:String, url:String, frameWidth:Float, frameHeight:Float, ?frameMax:Float, ?margin:Float, ?spacing:Float, ?skipFrames:Float):phaser.Loader;
	
	/**
	* Start loading the assets. Normally you don't need to call this yourself as the StateManager will do so.
	*/
	function start():Void;
	
	/**
	* Adds a Text file to the current load queue.
	* 
	* The file is **not** loaded immediately after calling this method. The file is added to the queue ready to be loaded when the loader starts.
	* 
	* The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	* 
	* Retrieve the file via `Cache.getText(key)`
	* 
	* The URL can be relative or absolute. If the URL is relative the `Loader.baseURL` and `Loader.path` values will be prepended to it.
	* 
	* If the URL isn't specified the Loader will take the key and create a filename from that. For example if the key is "alien"
	* and no URL is given then the Loader will set the URL to be "alien.txt". It will always add `.txt` as the extension.
	* If you do not desire this action then provide a URL.
	* 
	* @param key Unique asset key of the text file.
	* @param url URL of the text file. If undefined or `null` the url will be set to `<key>.txt`, i.e. if `key` was "alien" then the URL will be "alien.txt".
	* @param overwrite If an unloaded file with a matching key already exists in the queue, this entry will overwrite it.
	* @return This Loader instance.
	*/
	function text(key:String, ?url:String, ?overwrite:Bool):phaser.Loader;
	
	/**
	* Adds a Compressed Texture Image to the current load queue.
	* 
	* Compressed Textures are a WebGL only feature, and require 3rd party tools to create.
	* Available tools include Texture Packer, PVRTexTool, DirectX Texture Tool and Mali Texture Compression Tool.
	* 
	* Supported texture compression formats are: PVRTC, S3TC and ETC1.
	* Supported file formats are: PVR, DDS, KTX and PKM.
	* 
	* The formats that support all 3 compression algorithms are PVR and KTX.
	* PKM only supports ETC1, and DDS only S3TC for now.
	* 
	* The texture path object looks like this:
	* 
	* ```
	* load.texture('factory', {
	*      etc1: 'assets/factory_etc1.pkm',
	*      s3tc: 'assets/factory_dxt1.pvr',
	*      pvrtc: 'assets/factory_pvrtc.pvr',
	*      truecolor: 'assets/factory.png'
	* });
	* ```
	* 
	* The `truecolor` property points to a standard PNG file, that will be used if none of the
	* compressed formats are supported by the browser / GPU.
	* 
	* The file is **not** loaded immediately after calling this method. The file is added to the queue ready to be loaded when the loader starts.
	* 
	* The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	* 
	* Retrieve the image via `Cache.getImage(key)`
	* 
	* The URL can be relative or absolute. If the URL is relative the `Loader.baseURL` and `Loader.path` values will be prepended to it.
	* 
	* If the URL isn't specified the Loader will take the key and create a filename from that. For example if the key is "alien"
	* and no URL is given then the Loader will set the URL to be "alien.pvr". It will always add `.pvr` as the extension.
	* If you do not desire this action then provide a URL.
	* 
	* @param key Unique asset key of this image file.
	* @param object The texture path data object.
	* @param overwrite If an unloaded file with a matching key already exists in the queue, this entry will overwrite it.
	* @return This Loader instance.
	*/
	function texture(key:String, object:Dynamic, ?overwrite:Bool):phaser.Loader;
	
	/**
	* Adds a Tile Map data file to the current load queue.
	* 
	* Phaser can load data in two different formats: CSV and Tiled JSON.
	* 
	* Tiled is a free software package, specifically for creating tilemaps, and is available from http://www.mapeditor.org
	* 
	* You can choose to either load the data externally, by providing a URL to a json file.
	* Or you can pass in a JSON object or String via the `data` parameter.
	* If you pass a String the data is automatically run through `JSON.parse` and then immediately added to the Phaser.Cache.
	* 
	* If a URL is provided the file is **not** loaded immediately after calling this method, but is added to the load queue.
	* 
	* The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	* 
	* Retrieve the file via `Cache.getTilemapData(key)`. JSON files are automatically parsed upon load.
	* If you need to control when the JSON is parsed then use `Loader.text` instead and parse the text file as needed.
	* 
	* The URL can be relative or absolute. If the URL is relative the `Loader.baseURL` and `Loader.path` values will be prepended to it.
	* 
	* If the URL isn't specified and no data is given then the Loader will take the key and create a filename from that.
	* For example if the key is "level1" and no URL or data is given then the Loader will set the URL to be "level1.json".
	* If you set the format to be Tilemap.CSV it will set the URL to be "level1.csv" instead.
	* 
	* If you do not desire this action then provide a URL or data object.
	* 
	* @param key Unique asset key of the tilemap data.
	* @param url URL of the tile map file. If undefined or `null` and no data is given the url will be set to `<key>.json`, i.e. if `key` was "level1" then the URL will be "level1.json".
	* @param data An optional JSON data object. If given then the url is ignored and this JSON object is used for map data instead.
	* @param format The format of the map data. Either Phaser.Tilemap.CSV or Phaser.Tilemap.TILED_JSON. - Default: Phaser.Tilemap.CSV
	* @return This Loader instance.
	*/
	function tilemap(key:String, ?url:String, ?data:Dynamic, ?format:Float):phaser.Loader;
	
	/**
	* Returns the number of files that have already been loaded, even if they errored.
	* 
	* @return The number of files that have already been loaded (even if they errored)
	*/
	function totalLoadedFiles():Float;
	
	/**
	* Returns the number of asset packs that have already been loaded, even if they errored.
	* 
	* @return The number of asset packs that have already been loaded (even if they errored)
	*/
	function totalLoadedPacks():Float;
	
	/**
	* Returns the number of files still waiting to be processed in the load queue. This value decreases as each file in the queue is loaded.
	* 
	* @return The number of files that still remain in the load queue.
	*/
	function totalQueuedFiles():Float;
	
	/**
	* Returns the number of asset packs still waiting to be processed in the load queue. This value decreases as each pack in the queue is loaded.
	* 
	* @return The number of asset packs that still remain in the load queue.
	*/
	function totalQueuedPacks():Float;
	
	/**
	* Transforms the asset URL.
	* 
	* The default implementation prepends the baseURL if the url doesn't begin with http or //
	* 
	* @param url The url to transform.
	* @param file The file object being transformed.
	* @return The transformed url. In rare cases where the url isn't specified it will return false instead.
	*/
	function transformUrl(url:String, ?file:Dynamic):String;
	
	function updateProgress():Void;
	
	/**
	* Adds a video file to the current load queue.
	* 
	* The file is **not** loaded immediately after calling this method. The file is added to the queue ready to be loaded when the loader starts.
	* 
	* The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	* 
	* Retrieve the file via `Cache.getVideo(key)`.
	* 
	* The URL can be relative or absolute. If the URL is relative the `Loader.baseURL` and `Loader.path` values will be prepended to it.
	* 
	* You don't need to preload a video in order to play it in your game. See `Video.createVideoFromURL` for details.
	* 
	* @param key Unique asset key of the video file.
	* @param urls Either a single string or an array of URIs or pairs of `{uri: .., type: ..}`.If an array is specified then the first URI (or URI + mime pair) that is device-compatible will be selected.For example: `"boom.mp4"`, `['boom.mp4', 'boom.ogg', 'boom.webm']`, or `[{uri: "data:<opus_resource>", type: 'opus'}, 'fallback.mp4']`.BLOB and DATA URIs can be used but only support automatic detection when used in the pair form; otherwise the format must be manually checked before adding the resource.
	* @param loadEvent This sets the Video source event to listen for before the load is considered complete.'canplaythrough' implies the video has downloaded enough, and bandwidth is high enough that it can be played to completion.'canplay' implies the video has downloaded enough to start playing, but not necessarily to finish.'loadeddata' just makes sure that the video meta data and first frame have downloaded. Phaser uses this value automatically if thebrowser is detected as being Firefox and no `loadEvent` is given, otherwise it defaults to `canplaythrough`. - Default: 'canplaythrough'
	* @param asBlob Video files can either be loaded via the creation of a video element which has its src property set.Or they can be loaded via xhr, stored as binary data in memory and then converted to a Blob. This isn't supported in IE9 or Android 2.If you need to have the same video playing at different times across multiple Sprites then you need to load it as a Blob.
	* @return This Loader instance.
	*/
	function video(key:String, urls:EitherType<String, EitherType<Array<String>, Dynamic>>, ?loadEvent:String, ?asBlob:Bool):phaser.Loader;
	
	/**
	* Add a synchronization point to the assets / files added within the supplied callback.
	* 
	* A synchronization point denotes that an asset _must_ be completely loaded before
	* subsequent assets can be loaded. An asset marked as a sync-point does not need to wait
	* for previous assets to load (unless they are sync-points). Resources, such as packs, may still
	* be downloaded around sync-points, as long as they do not finalize loading.
	* 
	* @param callback The callback is invoked and is supplied with a single argument: the loader.
	* @param callbackContext Context for the callback. - Default: (loader)
	* @return This Loader instance.
	*/
	function withSyncPoint(callback:Dynamic, ?callbackContext:Dynamic):phaser.Loader;
	
	/**
	* Adds an XML file to the current load queue.
	* 
	* The file is **not** loaded immediately after calling this method. The file is added to the queue ready to be loaded when the loader starts.
	* 
	* The key must be a unique String. It is used to add the file to the Phaser.Cache upon successful load.
	* 
	* Retrieve the file via `Cache.getXML(key)`.
	* 
	* The URL can be relative or absolute. If the URL is relative the `Loader.baseURL` and `Loader.path` values will be prepended to it.
	* 
	* If the URL isn't specified the Loader will take the key and create a filename from that. For example if the key is "alien"
	* and no URL is given then the Loader will set the URL to be "alien.xml". It will always add `.xml` as the extension.
	* If you do not desire this action then provide a URL.
	* 
	* @param key Unique asset key of the xml file.
	* @param url URL of the XML file. If undefined or `null` the url will be set to `<key>.xml`, i.e. if `key` was "alien" then the URL will be "alien.xml".
	* @param overwrite If an unloaded file with a matching key already exists in the queue, this entry will overwrite it.
	* @return This Loader instance.
	*/
	function xml(key:String, ?url:String, ?overwrite:Bool):phaser.Loader;
	
	/**
	* Starts the xhr loader.
	* 
	* This is designed specifically to use with asset file processing.
	* 
	* @param file The file/pack to load.
	* @param url The URL of the file.
	* @param type The xhr responseType.
	* @param onload The function to call on success. Invoked in `this` context and supplied with `(file, xhr)` arguments.
	* @param onerror The function to call on error. Invoked in `this` context and supplied with `(file, xhr)` arguments. - Default: fileError
	*/
	function xhrLoad(file:Dynamic, url:String, type:String, onload:Dynamic, ?onerror:Dynamic):Void;
	
	function xhrLoadWithXDR(file:Dynamic, url:String, type:String, onload:Dynamic, ?onerror:Dynamic):Void;
	
	/**
	* Successfully loaded an XML file - only used for certain types.
	* 
	* @param file File associated with this request
	* @param xhr 
	*/
	function xmlLoadComplete(file:Dynamic, xhr:XMLHttpRequest):Void;
	
}

