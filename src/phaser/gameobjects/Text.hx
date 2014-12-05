package phaser.gameobjects;

@:native("Phaser.Text")
extern class Text extends phaser.pixi.text.Text {
	
	/**
	 * A reference to the currently running Game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * If exists = false then the Text isn't updated by the core game loop.
	 */
	var exists:Bool;
	
	/**
	 * The user defined name given to this object.
	 */
	var name:String;
	
	/**
	 * The const type of this object.
	 */
	var type:Float;
	
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
	var _fontWeight:String;
	
	/**
	 * Additional spacing (in pixels) between each line of text if multi-line.
	 */
	var _lineSpacing:Float;
	
	/**
	 * Internal character counter used by the text coloring.
	 */
	var _charCount:Float;
	
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
	 * An array of the color values as specified by Text.addColor.
	 */
	var colors:Array<Dynamic>;
	
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
	 * Sets a drop shadow effect on the Text. You can specify the horizontal and vertical distance of the drop shadow with the x and y parameters.
	 * The color controls the shade of the shadow (default is black) and can be either an rgba or hex value.
	 * The blur is the strength of the shadow. A value of zero means a hard shadow, a value of 10 means a very soft shadow.
	 * To remove a shadow already in place you can call this method with no parameters set.
	 */
	function setShadow (?x:Float = 0, ?y:Float = 0, ?color:String = 'rgba(0,0,0,1)', ?blur:Float = 0):Void;
	
	/**
	 * Set the style of the text by passing a single style object to it.
	 */
	function setStyle (?style:Dynamic, ?style:String, ?style:String, ?style:String, ?style:String, ?style:Float, ?style:Bool, ?style:Float):Void;
	
	/**
	 * Renders text. This replaces the Pixi.Text.updateText function as we need a few extra bits in here.
	 */
	function updateText ():Void;
	
	/**
	 * Updates a line of text.
	 */
	function updateLine ():Void;
	
	/**
	 * Clears any previously set color stops.
	 */
	function clearColors ():Void;
	
	/**
	 * This method allows you to set specific colors within the Text.
	 * It works by taking a color value, which is a typical HTML string such as #ff0000 or rgb(255,0,0) and a position.
	 * The position value is the index of the character in the Text string to start applying this color to.
	 * Once set the color remains in use until either another color or the end of the string is encountered.
	 * For example if the Text was Photon Storm and you did Text.addColor('#ffff00', 6) it would color in the word Storm in yellow.
	 */
	function addColor (color:String, position:Float):Void;
	
	/**
	 * Greedy wrapping algorithm that will wrap words as the line grows longer than its horizontal bounds.
	 */
	function runWordWrap (text:String):Void;
	
	/**
	 * Indicates the rotation of the Text, in degrees, from its original orientation. Values from 0 to 180 represent clockwise rotation; values from 0 to -180 represent counterclockwise rotation.
	 * Values outside this range are added to or subtracted from 360 to obtain a value within the range. For example, the statement player.angle = 450 is the same as player.angle = 90.
	 * If you wish to work in radians instead of degrees use the property Sprite.rotation instead.
	 */
	var angle:Float;
	
	/**
	 * The text string to be displayed by this Text object, taking into account the style settings.
	 */
	var text:String;
	
	/**
	 * @name Phaser.Text#font
	 */
	var font:String;
	
	/**
	 * @name Phaser.Text#fontSize
	 */
	var fontSize:Float;
	
	/**
	 * @name Phaser.Text#fontWeight
	 */
	var fontWeight:Float;
	
	/**
	 * @name Phaser.Text#fill
	 */
	var fill:Dynamic;
	
	/**
	 * @name Phaser.Text#align
	 */
	var align:String;
	
	/**
	 * @name Phaser.Text#stroke
	 */
	var stroke:String;
	
	/**
	 * @name Phaser.Text#strokeThickness
	 */
	var strokeThickness:Float;
	
	/**
	 * @name Phaser.Text#wordWrap
	 */
	var wordWrap:Bool;
	
	/**
	 * @name Phaser.Text#wordWrapWidth
	 */
	var wordWrapWidth:Float;
	
	/**
	 * @name Phaser.Text#lineSpacing
	 */
	var lineSpacing:Float;
	
	/**
	 * @name Phaser.Text#shadowOffsetX
	 */
	var shadowOffsetX:Float;
	
	/**
	 * @name Phaser.Text#shadowOffsetY
	 */
	var shadowOffsetY:Float;
	
	/**
	 * @name Phaser.Text#shadowColor
	 */
	var shadowColor:String;
	
	/**
	 * @name Phaser.Text#shadowBlur
	 */
	var shadowBlur:Float;
	
	/**
	 * By default a Text object won't process any input events at all. By setting inputEnabled to true the Phaser.InputHandler is
	 * activated for this object and it will then start to process click/touch events and more.
	 */
	var inputEnabled:Bool;
	
	/**
	 * An Text that is fixed to the camera uses its x/y coordinates as offsets from the top left of the camera. These are stored in Text.cameraOffset.
	 * Note that the cameraOffset values are in addition to any parent in the display list.
	 * So if this Text was in a Group that has x: 200, then this will be added to the cameraOffset.x
	 */
	var fixedToCamera:Bool;
	
	/**
	 * @name Phaser.Text#destroyPhase
	 */
	var destroyPhase:Bool;
	
}
