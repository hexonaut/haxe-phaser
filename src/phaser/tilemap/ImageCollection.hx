package phaser.tilemap;

@:native("Phaser.ImageCollection")
extern class ImageCollection {
	
	/**
	 * An Image Collection is a special tileset containing mulitple images, with no slicing into each image.
	 * 
	 * Image Collections are normally created automatically when Tiled data is loaded.
	 */
	function new (name:String, firstgid:Int, ?width:Int = 32, ?height:Int = 32, ?margin:Int = 0, ?spacing:Int = 0, ?properties:Dynamic);
	
	/**
	 * The name of the Image Collection.
	 */
	var name:String;
	
	/**
	 * The Tiled firstgid value.
	 * This is the starting index of the first image index this Image Collection contains.
	 */
	var firstgid:Int;
	
	/**
	 * The width of the widest image (in pixels).
	 */
	var imageWidth(default, null):Int;
	
	/**
	 * The height of the tallest image (in pixels).
	 */
	var imageHeight(default, null):Int;
	
	/**
	 * The margin around the images in the collection (in pixels).
	 * Use setSpacing to change.
	 */
	var imageMarge(default, null):Int;
	
	/**
	 * The spacing between each image in the collection (in pixels).
	 * Use setSpacing to change.
	 */
	var imageSpacing(default, null):Int;
	
	/**
	 * Image Collection-specific properties that are typically defined in the Tiled editor.
	 */
	var properties:Dynamic;
	
	/**
	 * The cached images that are a part of this collection.
	 */
	var images(default, null):Array<Dynamic>;
	
	/**
	 * The total number of images in the image collection.
	 */
	var total(default, null):Int;
	
	/**
	 * Returns true if and only if this image collection contains the given image index.
	 */
	function containsImageIndex (imageIndex:Int):Bool;
	
	/**
	 * Add an image to this Image Collection.
	 */
	function addImage (gid:Int, image:String):Void;
	
}
