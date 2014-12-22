package phaser.gameobjects;

@:native("Phaser.BitmapText")
extern class BitmapText extends phaser.pixi.text.BitmapText {
	
	/**
	 * Creates a new BitmapText object.
	 */
	function new (game:phaser.core.Game, x:Float, y:Float, font:String, ?text:String = '', ?size:Float = 32);
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * If exists = false then the Sprite isn't updated by the core game loop or physics subsystem at all.
	 */
	var exists:Bool;
	
	/**
	 * The user defined name given to this BitmapText.
	 */
	var name:String;
	
	/**
	 * The const type of this object.
	 */
	var type(default, null):Float;
	
	/**
	 * The z-depth value of this object within its Group (remember the World is a Group as well). No two objects in a Group can have the same z value.
	 */
	var z:Float;
	
	/**
	 * The world coordinates of this Sprite. This differs from the x/y coordinates which are relative to the Sprites container.
	 */
	var world:phaser.geom.Point;
	
	/**
	 * Internal cache var.
	 */
	var _text:String;
	
	/**
	 * Internal cache var.
	 */
	var _font:String;
	
	/**
	 * Internal cache var.
	 */
	var _fontSize:Float;
	
	/**
	 * Internal cache var.
	 */
	var _align:String;
	
	/**
	 * Internal cache var.
	 */
	var _tint:Float;
	
	/**
	 * The Events you can subscribe to that are dispatched when certain things happen on this Sprite or its components.
	 */
	var events:phaser.gameobjects.Events;
	
	/**
	 * The Input Handler for this object. Needs to be enabled with image.inputEnabled = true before you can use it.
	 */
	var input:Dynamic;
	
	/**
	 * If this object is fixedToCamera then this stores the x/y offset that its drawn at, from the top-left of the camera view.
	 */
	var cameraOffset:phaser.geom.Point;
	
	/**
	 * A small internal cache:
	 * 0 = previous position.x
	 * 1 = previous position.y
	 * 2 = previous rotation
	 * 3 = renderID
	 * 4 = fresh? (0 = no, 1 = yes)
	 * 5 = outOfBoundsFired (0 = no, 1 = yes)
	 * 6 = exists (0 = no, 1 = yes)
	 * 7 = fixed to camera (0 = no, 1 = yes)
	 * 8 = destroy phase? (0 = no, 1 = yes)
	 */
	var cache:Array<Dynamic>;
	
	/**
	 * Automatically called by World.preUpdate.
	 */
	function preUpdate ():Void;
	
	/**
	 * Override and use this function in your own custom objects to handle any update requirements you may have.
	 */
	function update ():Void;
	
	/**
	 * Automatically called by World.postUpdate.
	 */
	function postUpdate ():Void;
	
	/**
	 * Destroy this BitmapText instance. This will remove any filters and un-parent any children.
	 */
	function destroy (?destroyChildren:Bool = true):Void;
	
	/**
	 * @name Phaser.BitmapText#align
	 */
	var align:String;
	
	/**
	 * @name Phaser.BitmapText#tint
	 */
	var tint:Float;
	
	/**
	 * Indicates the rotation of the Text, in degrees, from its original orientation. Values from 0 to 180 represent clockwise rotation; values from 0 to -180 represent counterclockwise rotation.
	 * Values outside this range are added to or subtracted from 360 to obtain a value within the range. For example, the statement player.angle = 450 is the same as player.angle = 90.
	 * If you wish to work in radians instead of degrees use the property Sprite.rotation instead.
	 */
	var angle:Float;
	
	/**
	 * @name Phaser.BitmapText#font
	 */
	var font:String;
	
	/**
	 * @name Phaser.BitmapText#fontSize
	 */
	var fontSize:Float;
	
	/**
	 * The text string to be displayed by this Text object, taking into account the style settings.
	 */
	var text:String;
	
	/**
	 * By default a Text object won't process any input events at all. By setting inputEnabled to true the Phaser.InputHandler is
	 * activated for this object and it will then start to process click/touch events and more.
	 */
	var inputEnabled:Bool;
	
	/**
	 * An BitmapText that is fixed to the camera uses its x/y coordinates as offsets from the top left of the camera. These are stored in BitmapText.cameraOffset.
	 * Note that the cameraOffset values are in addition to any parent in the display list.
	 * So if this BitmapText was in a Group that has x: 200, then this will be added to the cameraOffset.x
	 */
	var fixedToCamera:Bool;
	
	/**
	 * @name Phaser.BitmapText#destroyPhase
	 */
	var destroyPhase:Bool;
	
}
