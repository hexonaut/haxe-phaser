package phaser.gameobjects;

@:native("Phaser.Text")
extern class Text extends phaser.gameobjects.components.Smoothed {
	
	/**
	 * Create a new game object for displaying Text.
	 * 
	 * This uses a local hidden Canvas object and renders the type into it. It then makes a texture from this for rendering to the view.
	 * Because of this you can only display fonts that are currently loaded and available to the browser: fonts must be pre-loaded.
	 * 
	 * See {@link <a href='http://www.jordanm.co.uk/tinytype'>http://www.jordanm.co.uk/tinytype</a> this compatibility table} for the available default fonts across mobile browsers.
	 */
	function new (game:phaser.core.Game, x:Float, y:Float, text:String, style:Dynamic);
	
	/**
	 * The const type of this object.
	 */
	var type:Float;
	
	/**
	 * The const physics body type of this object.
	 */
	var physicsType(default, null):Float;
	
	/**
	 * Specify a padding value which is added to the line width and height when calculating the Text size.
	 * ALlows you to add extra spacing if Phaser is unable to accurately determine the true font dimensions.
	 */
	var padding:phaser.geom.Point;
	
	/**
	 * Internal cache var.
	 */
	var _text:String;
	
	/**
	 * The font, broken down into components, set in setStyle.
	 */
	var _fontComponents:Dynamic;
	
	/**
	 * Additional spacing (in pixels) between each line of text if multi-line.
	 */
	var _lineSpacing:Float;
	
	/**
	 * Internal character counter used by the text coloring.
	 */
	var _charCount:Float;
	
	/**
	 * An array of the color values as specified by {@link Phaser.Text#addColor addColor}.
	 */
	var colors:Array<Dynamic>;
	
	/**
	 * Automatically called by World.preUpdate.
	 */
	function preUpdate ():Void;
	
	/**
	 * Override this function to handle any special update requirements.
	 */
	function update ():Void;
	
	/**
	 * Destroy this Text object, removing it from the group it belongs to.
	 */
	function destroy (?destroyChildren:Bool = true):Void;
	
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
	@:overload(function (?style:Dynamic, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:Float, ?style:Bool, ?style:Float):Void {})
	function setStyle (?style:Dynamic, ?style:String, ?style:String, ?style:String, ?style:String, ?style:Float, ?style:String, ?style:String, ?style:String, ?style:String, ?style:Float, ?style:Bool, ?style:Float):Void;
	
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
	 * Set specific colors for certain characters within the Text.
	 * 
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
	 * Updates the internal style.font if it now differs according to generation from components.
	 */
	function updateFont (components:Dynamic):Void;
	
	/**
	 * Converting a short CSS-font string into the relevant components.
	 */
	function fontToComponents (font:String):Void;
	
	/**
	 * Converts individual font components (see fontToComponents) to a short CSS font string.
	 */
	function componentsToFont (components:Dynamic):Void;
	
	/**
	 * The text string to be displayed by this Text object, taking into account the style settings.
	 */
	var text:String;
	
	/**
	 * Change the font used.
	 * 
	 * This is equivalent of the font property specified to {@link Phaser.Text#setStyle setStyle}, except
	 * that unlike using setStyle this will not change any current font fill/color settings.
	 * 
	 * The CSS font string can also be individually altered with the font, fontSize, fontWeight, fontStyle, and fontVariant properties.
	 */
	var cssFont:String;
	
	/**
	 * Change the font family that the text will be rendered in, such as 'Arial'.
	 * 
	 * Multiple CSS font families and generic fallbacks can be specified as long as
	 * {@link <a href='http://www.w3.org/TR/CSS2/fonts.html#propdef-font-family'>http://www.w3.org/TR/CSS2/fonts.html#propdef-font-family</a> CSS font-family rules} are followed.
	 * 
	 * To change the entire font string use {@link Phaser.Text#cssFont cssFont} instead: eg. text.cssFont = 'bold 20pt Arial'.
	 */
	var font:String;
	
	/**
	 * The size of the font.
	 * 
	 * If the font size is specified in pixels (eg. 32 or '32px') then a number (ie. 32) representing
	 * the font size in pixels is returned; otherwise the value with CSS unit is returned as a string (eg. '12pt').
	 */
	var fontSize:Dynamic;
	
	/**
	 * The weight of the font: 'normal', 'bold', or {@link <a href='http://www.w3.org/TR/CSS2/fonts.html#propdef-font-weight'>http://www.w3.org/TR/CSS2/fonts.html#propdef-font-weight</a> a valid CSS font weight}.
	 */
	var fontWeight:String;
	
	/**
	 * The style of the font: 'normal', 'italic', 'oblique'
	 */
	var fontStyle:String;
	
	/**
	 * The variant the font: 'normal', 'small-caps'
	 */
	var fontVariant:String;
	
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
	
}
