package phaser;

/**
* An Image Collection is a special tileset containing mulitple images, with no slicing into each image.
* 
* Image Collections are normally created automatically when Tiled data is loaded.
*/
@:native("Phaser.ImageCollection")
extern class ImageCollection {

	/**
	* An Image Collection is a special tileset containing mulitple images, with no slicing into each image.
	* 
	* Image Collections are normally created automatically when Tiled data is loaded.
	* 
	* @param name The name of the image collection in the map data.
	* @param firstgid The first image index this image collection contains.
	* @param width Width of widest image (in pixels). - Default: 32
	* @param height Height of tallest image (in pixels). - Default: 32
	* @param margin The margin around all images in the collection (in pixels).
	* @param spacing The spacing between each image in the collection (in pixels).
	* @param properties Custom Image Collection properties. - Default: {}
	*/
	function new(name:String, firstgid:Float, ?width:Float, ?height:Float, ?margin:Float, ?spacing:Float, ?properties:Dynamic);
	
	/**
	* The name of the Image Collection.
	*/
	var name:String;
	
	/**
	* The Tiled firstgid value.
	* This is the starting index of the first image index this Image Collection contains.
	*/
	var firstgid:Float;
	
	/**
	* The width of the widest image (in pixels).
	*/
	var imageWidth:Float;
	
	/**
	* The height of the tallest image (in pixels).
	*/
	var imageHeight:Float;
	
	/**
	* The margin around the images in the collection (in pixels).
	* Use `setSpacing` to change.
	*/
	var imageMargin:Float;
	
	/**
	* The spacing between each image in the collection (in pixels).
	* Use `setSpacing` to change.
	*/
	var imageSpacing:Float;
	
	/**
	* Image Collection-specific properties that are typically defined in the Tiled editor.
	*/
	var properties:Dynamic;
	
	/**
	* The cached images that are a part of this collection.
	*/
	var images:Array<Dynamic>;
	
	/**
	* The total number of images in the image collection.
	*/
	var total:Float;
	
	/**
	* Add an image to this Image Collection.
	* 
	* @param gid The gid of the image in the Image Collection.
	* @param image The the key of the image in the Image Collection and in the cache.
	*/
	function addImage(gid:Float, image:String):Void;
	
	/**
	* Returns true if and only if this image collection contains the given image index.
	* 
	* @param imageIndex The image index to search for.
	* @return True if this Image Collection contains the given index.
	*/
	function containsImageIndex(imageIndex:Float):Bool;
	
}

