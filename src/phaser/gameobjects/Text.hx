package phaser.gameobjects;

@:native("Phaser.Text")
extern class Text extends phaser.gameobjects.Sprite {
	
	/**
	 * Specify a padding value which is added to the line width and height when calculating the Text size.
	 * ALlows you to add extra spacing if Phaser is unable to accurately determine the true font dimensions.
	 */
	var padding:phaser.geom.Point;
	
	/**
	 * The textBounds property allows you to specify a rectangular region upon which text alignment is based.
	 * See Text.setTextBounds for more details.
	 */
	var textBounds:phaser.geom.Rectangle;
	
	/**
	 * The canvas element that the text is rendered.
	 */
	var canvas:Dynamic;
	
	/**
	 * The context of the canvas element that the text is rendered to.
	 */
	var context:Dynamic;
	
	/**
	 * An array of the color values as specified by {@link Phaser.Text#addColor addColor}.
	 */
	var colors:Array<Dynamic>;
	
	/**
	 * An array of the stroke color values as specified by {@link Phaser.Text#addStrokeColor addStrokeColor}.
	 */
	var strokeColors:Array<Dynamic>;
	
	/**
	 * An array of the font styles values as specified by {@link Phaser.Text#addFontStyle addFontStyle}.
	 */
	var fontStyles:Array<Dynamic>;
	
	/**
	 * An array of the font weights values as specified by {@link Phaser.Text#addFontWeight addFontWeight}.
	 */
	var fontWeights:Array<Dynamic>;
	
	/**
	 * Should the linePositionX and Y values be automatically rounded before rendering the Text?
	 * You may wish to enable this if you want to remove the effect of sub-pixel aliasing from text.
	 */
	var autoRound:Bool;
	
	/**
	 * Will this Text object use Basic or Advanced Word Wrapping?
	 * 
	 * Advanced wrapping breaks long words if they are the first of a line, and repeats the process as necessary.
	 * White space is condensed (e.g., consecutive spaces are replaced with one).
	 * Lines are trimmed of white space before processing.
	 * 
	 * It throws an error if wordWrapWidth is less than a single character.
	 */
	var useAdvancedWrap:Bool;
	
	/**
	 * Internal canvas resolution var.
	 */
	var _res:Float;
	
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
	 * Internal width var.
	 */
	var _width:Float;
	
	/**
	 * Internal height var.
	 */
	var _height:Float;
	
	/**
	 * Automatically called by World.preUpdate.
	 */
	function preUpdate ():Void;
	
	/**
	 * Override this function to handle any special update requirements.
	 */
	function update ():Void;
	
	/**
	 * Sets a drop shadow effect on the Text. You can specify the horizontal and vertical distance of the drop shadow with the x and y parameters.
	 * The color controls the shade of the shadow (default is black) and can be either an rgba or hex value.
	 * The blur is the strength of the shadow. A value of zero means a hard shadow, a value of 10 means a very soft shadow.
	 * To remove a shadow already in place you can call this method with no parameters set.
	 */
	function setShadow (?x:Float = 0, ?y:Float = 0, ?color:String = 'rgba(0,0,0,1)', ?blur:Float = 0, ?shadowStroke:Bool = true, ?shadowFill:Bool = true):phaser.gameobjects.Text;
	
	/**
	 * Set the style of the text by passing a single style object to it.
	 */
	@:overload(function (?style:Dynamic, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:Float, ?style:Bool, ?style:Float, ?style:Float):phaser.gameobjects.Text {})
	@:overload(function (?style:Dynamic, ?style:String, ?style:String, ?style:String, ?style:String, ?style:Float, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:Float, ?style:Bool, ?style:Float, ?style:Float):phaser.gameobjects.Text {})
	@:overload(function (?style:Dynamic, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:Float, ?style:Bool, ?style:Float, ?style:Array<Dynamic>):phaser.gameobjects.Text {})
	function setStyle (?style:Dynamic, ?style:String, ?style:String, ?style:String, ?style:String, ?style:Float, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:String, ?style:Float, ?style:Bool, ?style:Float, ?style:Array<Dynamic>):phaser.gameobjects.Text;
	
	/**
	 * Renders text. This replaces the Pixi.Text.updateText function as we need a few extra bits in here.
	 */
	function updateText ():Void;
	
	/**
	 * Renders a line of text that contains tab characters if Text.tab > 0.
	 * Called automatically by updateText.
	 */
	function renderTabLine (line:String, x:Int, y:Int, fill:Bool):Void;
	
	/**
	 * Sets the Shadow on the Text.context based on the Style settings, or disables it if not enabled.
	 * This is called automatically by Text.updateText.
	 */
	function updateShadow (state:Bool):Void;
	
	/**
	 * Updates a line of text, applying fill and stroke per-character colors or style and weight per-character font if applicable.
	 */
	function updateLine ():Void;
	
	/**
	 * Clears any text fill or stroke colors that were set by addColor or addStrokeColor.
	 */
	function clearColors ():phaser.gameobjects.Text;
	
	/**
	 * Clears any text styles or weights font that were set by addFontStyle or addFontWeight.
	 */
	function clearFontValues ():phaser.gameobjects.Text;
	
	/**
	 * Set specific colors for certain characters within the Text.
	 * 
	 * It works by taking a color value, which is a typical HTML string such as #ff0000 or rgb(255,0,0) and a position.
	 * The position value is the index of the character in the Text string to start applying this color to.
	 * Once set the color remains in use until either another color or the end of the string is encountered.
	 * For example if the Text was Photon Storm and you did Text.addColor('#ffff00', 6) it would color in the word Storm in yellow.
	 * 
	 * If you wish to change the stroke color see addStrokeColor instead.
	 */
	function addColor (color:String, position:Float):phaser.gameobjects.Text;
	
	/**
	 * Set specific stroke colors for certain characters within the Text.
	 * 
	 * It works by taking a color value, which is a typical HTML string such as #ff0000 or rgb(255,0,0) and a position.
	 * The position value is the index of the character in the Text string to start applying this color to.
	 * Once set the color remains in use until either another color or the end of the string is encountered.
	 * For example if the Text was Photon Storm and you did Text.addColor('#ffff00', 6) it would color in the word Storm in yellow.
	 * 
	 * This has no effect if stroke is disabled or has a thickness of 0.
	 * 
	 * If you wish to change the text fill color see addColor instead.
	 */
	function addStrokeColor (color:String, position:Float):phaser.gameobjects.Text;
	
	/**
	 * Set specific font styles for certain characters within the Text.
	 * 
	 * It works by taking a font style value, which is a typical string such as normal, italic or oblique.
	 * The position value is the index of the character in the Text string to start applying this font style to.
	 * Once set the font style remains in use until either another font style or the end of the string is encountered.
	 * For example if the Text was Photon Storm and you did Text.addFontStyle('italic', 6) it would font style in the word Storm in italic.
	 * 
	 * If you wish to change the text font weight see addFontWeight instead.
	 */
	function addFontStyle (style:String, position:Float):phaser.gameobjects.Text;
	
	/**
	 * Set specific font weights for certain characters within the Text.
	 * 
	 * It works by taking a font weight value, which is a typical string such as normal, bold, bolder, etc.
	 * The position value is the index of the character in the Text string to start applying this font weight to.
	 * Once set the font weight remains in use until either another font weight or the end of the string is encountered.
	 * For example if the Text was Photon Storm and you did Text.addFontWeight('bold', 6) it would font weight in the word Storm in bold.
	 * 
	 * If you wish to change the text font style see addFontStyle instead.
	 */
	function addFontWeight (style:String, position:Float):phaser.gameobjects.Text;
	
	/**
	 * Runs the given text through the Text.runWordWrap function and returns
	 * the results as an array, where each element of the array corresponds to a wrapped
	 * line of text.
	 * 
	 * Useful if you wish to control pagination on long pieces of content.
	 */
	function precalculateWordWrap (text:String):Array<Dynamic>;
	
	/**
	 * Greedy wrapping algorithm that will wrap words as the line grows longer than its horizontal bounds.
	 */
	function runWordWrap (text:String):Void;
	
	/**
	 * Advanced wrapping algorithm that will wrap words as the line grows longer than its horizontal bounds.
	 * White space is condensed (e.g., consecutive spaces are replaced with one).
	 * Lines are trimmed of white space before processing.
	 * Throws an error if the user was smart enough to specify a wordWrapWidth less than a single character.
	 */
	function advancedWordWrap (text:String):Void;
	
	/**
	 * Greedy wrapping algorithm that will wrap words as the line grows longer than its horizontal bounds.
	 */
	function basicWordWrap (text:String):Void;
	
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
	 * The text to be displayed by this Text object.
	 * Use a \n to insert a carriage return and split the text.
	 * The text will be rendered with any style currently set.
	 */
	function setText (?text:String):phaser.gameobjects.Text;
	
	/**
	 * Converts the given array into a tab delimited string and then updates this Text object.
	 * This is mostly used when you want to display external data using tab stops.
	 * 
	 * The array can be either single or multi dimensional depending on the result you need:
	 * 
	 * [ 'a', 'b', 'c' ] would convert in to "a\tb\tc".
	 * 
	 * Where as:
	 * 
	 * [
	 *      [ 'a', 'b', 'c' ],
	 *      [ 'd', 'e', 'f']
	 * ]
	 * 
	 * would convert in to: "a\tb\tc\nd\te\tf"
	 */
	function parseList (list:Array<Dynamic>):phaser.gameobjects.Text;
	
	/**
	 * The Text Bounds is a rectangular region that you control the dimensions of into which the Text object itself is positioned,
	 * regardless of the number of lines in the text, the font size or any other attribute.
	 * 
	 * Alignment is controlled via the properties boundsAlignH and boundsAlignV within the Text.style object, or can be directly
	 * set through the setters Text.boundsAlignH and Text.boundsAlignV. Bounds alignment is independent of text alignment.
	 * 
	 * For example: If your game is 800x600 in size and you set the text bounds to be 0,0,800,600 then by setting boundsAlignH to
	 * 'center' and boundsAlignV to 'bottom' the text will render in the center and at the bottom of your game window, regardless of
	 * how many lines of text there may be. Even if you adjust the text content or change the style it will remain at the bottom center
	 * of the text bounds.
	 * 
	 * This is especially powerful when you need to align text against specific coordinates in your game, but the actual text dimensions
	 * may vary based on font (say for multi-lingual games).
	 * 
	 * If Text.wordWrapWidth is greater than the width of the text bounds it is clamped to match the bounds width.
	 * 
	 * Call this method with no arguments given to reset an existing textBounds.
	 * 
	 * It works by calculating the final position based on the Text.canvas size, which is modified as the text is updated. Some fonts
	 * have additional padding around them which you can mitigate by tweaking the Text.padding property. It then adjusts the pivot
	 * property based on the given bounds and canvas size. This means if you need to set the pivot property directly in your game then
	 * you either cannot use setTextBounds or you must place the Text object inside another DisplayObject on which you set the pivot.
	 */
	function setTextBounds (?x:Float, ?y:Float, ?width:Float, ?height:Float):phaser.gameobjects.Text;
	
	/**
	 * Updates the texture based on the canvas dimensions.
	 */
	function updateTexture ():Void;
	
	/**
	 * Renders the object using the WebGL renderer
	 */
	function _renderWebGL (renderSession:Dynamic):Void;
	
	/**
	 * Renders the object using the Canvas renderer.
	 */
	function _renderCanvas (renderSession:Dynamic):Void;
	
	/**
	 * Calculates the ascent, descent and fontSize of a given font style.
	 */
	function determineFontProperties (fontStyle:Dynamic):Void;
	
	/**
	 * Returns the bounds of the Text as a rectangle.
	 * The bounds calculation takes the worldTransform into account.
	 */
	function getBounds (matrix:phaser.geom.Matrix):phaser.geom.Rectangle;
	
	/**
	 * The text to be displayed by this Text object.
	 * Use a \n to insert a carriage return and split the text.
	 * The text will be rendered with any style currently set.
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
	 * Controls the horizontal alignment for multiline text.
	 * Can be: 'left', 'center' or 'right'.
	 * Does not affect single lines of text. For that please see setTextBounds.
	 */
	var align:String;
	
	/**
	 * The resolution of the canvas the text is rendered to.
	 * This defaults to match the resolution of the renderer, but can be changed on a per Text object basis.
	 */
	var resolution:Int;
	
	/**
	 * The size (in pixels) of the tabs, for when text includes tab characters. 0 disables. 
	 * Can be an integer or an array of varying tab sizes, one tab per element.
	 * For example if you set tabs to 100 then when Text encounters a tab it will jump ahead 100 pixels.
	 * If you set tabs to be [100,200] then it will set the first tab at 100px and the second at 200px.
	 */
	var tabs:Dynamic;
	
	/**
	 * Horizontal alignment of the text within the textBounds. Can be: 'left', 'center' or 'right'.
	 */
	var boundsAlignH:String;
	
	/**
	 * Vertical alignment of the text within the textBounds. Can be: 'top', 'middle' or 'bottom'.
	 */
	var boundsAlignV:String;
	
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
	 * @name Phaser.Text#shadowStroke
	 */
	var shadowStroke:Bool;
	
	/**
	 * @name Phaser.Text#shadowFill
	 */
	var shadowFill:Bool;
	
}
