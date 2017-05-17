package phaser;

/**
* A RenderTexture is a special texture that allows any displayObject to be rendered to it. It allows you to take many complex objects and
* render them down into a single quad (on WebGL) which can then be used to texture other display objects with. A way of generating textures at run-time.
*/
@:native("Phaser.RenderTexture")
extern class RenderTexture extends pixi.RenderTexture {

	/**
	* A RenderTexture is a special texture that allows any displayObject to be rendered to it. It allows you to take many complex objects and
	* render them down into a single quad (on WebGL) which can then be used to texture other display objects with. A way of generating textures at run-time.
	* 
	* @param game Current game instance.
	* @param width The width of the render texture. - Default: 100
	* @param height The height of the render texture. - Default: 100
	* @param key The key of the RenderTexture in the Cache, if stored there. - Default: ''
	* @param scaleMode One of the Phaser.scaleModes consts. - Default: Phaser.scaleModes.DEFAULT
	* @param resolution The resolution of the texture being generated. - Default: 1
	*/
	function new(game:phaser.Game, ?width:Float, ?height:Float, ?key:String, ?scaleMode:Float, ?resolution:Float);
	
	/**
	* This is the area of the BaseTexture image to actually copy to the Canvas / WebGL when rendering,
	* irrespective of the actual frame size or placement (which can be influenced by trimmed texture atlases)
	*/
	@:native("crop")
	var RenderTexture_crop:pixi.Rectangle;
	
	/**
	* A reference to the currently running game.
	*/
	var game:phaser.Game;
	
	/**
	* The key of the RenderTexture in the Cache, if stored there.
	*/
	var key:String;
	
	/**
	* Base Phaser object type.
	*/
	var type:Float;
	
	/**
	* This function will draw the display object to the RenderTexture.
	* 
	* In versions of Phaser prior to 2.4.0 the second parameter was a Phaser.Point object.
	* This is now a Matrix allowing you much more control over how the Display Object is rendered.
	* If you need to replicate the earlier behavior please use Phaser.RenderTexture.renderXY instead.
	* 
	* If you wish for the displayObject to be rendered taking its current scale, rotation and translation into account then either
	* pass `null`, leave it undefined or pass `displayObject.worldTransform` as the matrix value.
	* 
	* @param displayObject The display object to render to this texture.
	* @param matrix Optional matrix to apply to the display object before rendering. If null or undefined it will use the worldTransform matrix of the given display object.
	* @param clear If true the texture will be cleared before the display object is drawn.
	*/
	@:native("render")
	function RenderTexture_render(displayObject:pixi.DisplayObject, ?matrix:phaser.Matrix, ?clear:Bool):Void;
	
	/**
	* This function will draw the display object to the RenderTexture at the given coordinates.
	* 
	* When the display object is drawn it takes into account scale and rotation.
	* 
	* If you don't want those then use RenderTexture.renderRawXY instead.
	* 
	* @param displayObject The display object to render to this texture.
	* @param x The x position to render the object at.
	* @param y The y position to render the object at.
	* @param clear If true the texture will be cleared before the display object is drawn.
	*/
	function renderXY(displayObject:pixi.DisplayObject, x:Float, y:Float, ?clear:Bool):Void;
	
	/**
	* This function will draw the display object to the RenderTexture at the given coordinates.
	* 
	* When the display object is drawn it doesn't take into account scale, rotation or translation.
	* 
	* If you need those then use RenderTexture.renderXY instead.
	* 
	* @param displayObject The display object to render to this texture.
	* @param x The x position to render the object at.
	* @param y The y position to render the object at.
	* @param clear If true the texture will be cleared before the display object is drawn.
	*/
	function renderRawXY(displayObject:pixi.DisplayObject, x:Float, y:Float, ?clear:Bool):Void;
	
}

