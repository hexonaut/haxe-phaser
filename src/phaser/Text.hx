package phaser;

import haxe.extern.EitherType;
import js.html.CanvasElement as HTMLCanvasElement;
import js.html.CanvasRenderingContext2D;

/**
* Create a new game object for displaying Text.
* 
* This uses a local hidden Canvas object and renders the type into it. It then makes a texture from this for rendering to the view.
* Because of this you can only display fonts that are currently loaded and available to the browser: fonts must be pre-loaded.
* 
* See {@link http://www.jordanm.co.uk/tinytype this compatibility table} for the available default fonts across mobile browsers.
*/
@:native("Phaser.Text")
extern class Text extends phaser.Sprite {

	/**
	* Create a new game object for displaying Text.
	* 
	* This uses a local hidden Canvas object and renders the type into it. It then makes a texture from this for rendering to the view.
	* Because of this you can only display fonts that are currently loaded and available to the browser: fonts must be pre-loaded.
	* 
	* See {@link http://www.jordanm.co.uk/tinytype this compatibility table} for the available default fonts across mobile browsers.
	* 
	* @param game Current game instance.
	* @param x X position of the new text object.
	* @param y Y position of the new text object.
	* @param text The actual text that will be written.
	* @param style The style properties to be set on the Text.
	* @param style .font The style and size of the font. - Default: 'bold 20pt Arial'
	* @param style .fontStyle The style of the font (eg. 'italic'): overrides the value in `style.font`. - Default: (from font)
	* @param style .fontVariant The variant of the font (eg. 'small-caps'): overrides the value in `style.font`. - Default: (from font)
	* @param style .fontWeight The weight of the font (eg. 'bold'): overrides the value in `style.font`. - Default: (from font)
	* @param style .fontSize The size of the font (eg. 32 or '32px'): overrides the value in `style.font`. - Default: (from font)
	* @param style .backgroundColor A canvas fillstyle that will be used as the background for the whole Text object. Set to `null` to disable.
	* @param style .fill A canvas fillstyle that will be used on the text eg 'red', '#00FF00'. - Default: 'black'
	* @param style .align Horizontal alignment of each line in multiline text. Can be: 'left', 'center' or 'right'. Does not affect single lines of text (see `textBounds` and `boundsAlignH` for that). - Default: 'left'
	* @param style .boundsAlignH Horizontal alignment of the text within the `textBounds`. Can be: 'left', 'center' or 'right'. - Default: 'left'
	* @param style .boundsAlignV Vertical alignment of the text within the `textBounds`. Can be: 'top', 'middle' or 'bottom'. - Default: 'top'
	* @param style .stroke A canvas stroke style that will be used on the text stroke eg 'blue', '#FCFF00'. - Default: 'black'
	* @param style .strokeThickness A number that represents the thickness of the stroke. Default is 0 (no stroke).
	* @param style .wordWrap Indicates if word wrap should be used.
	* @param style .wordWrapWidth The width in pixels at which text will wrap. - Default: 100
	* @param style .maxLines The maximum number of lines to be shown for wrapped text.
	* @param style .tabs The size (in pixels) of the tabs, for when text includes tab characters. 0 disables. Can be an array of varying tab sizes, one per tab stop.
	*/
	function new(game:phaser.Game, x:Float, y:Float, text:String, ?style:PhaserTextStyle);
	
	static var fontPropertiesCanvas:Dynamic;
	
	static var fontPropertiesContext:Dynamic;
	
	static var fontPropertiesCache:Dynamic;
	
	/**
	* Controls the horizontal alignment for multiline text.
	* Can be: 'left', 'center' or 'right'.
	* Does not affect single lines of text. For that please see `setTextBounds`.
	*/
	var align:String;
	
	/**
	* Should the linePositionX and Y values be automatically rounded before rendering the Text?
	* You may wish to enable this if you want to remove the effect of sub-pixel aliasing from text.
	*/
	var autoRound:Bool;
	
	/**
	* Horizontal alignment of the text within the `textBounds`. Can be: 'left', 'center' or 'right'.
	*/
	var boundsAlignH:String;
	
	/**
	* Vertical alignment of the text within the `textBounds`. Can be: 'top', 'middle' or 'bottom'.
	*/
	var boundsAlignV:String;
	
	/**
	* The canvas element that the text is rendered.
	*/
	var canvas:HTMLCanvasElement;
	
	/**
	* An array of the color values as specified by {@link Phaser.Text#addColor addColor}.
	*/
	var colors:Array<String>;
	
	/**
	* The context of the canvas element that the text is rendered to.
	*/
	var context:CanvasRenderingContext2D;
	
	/**
	* Change the font used.
	* 
	* This is equivalent of the `font` property specified to {@link Phaser.Text#setStyle setStyle}, except
	* that unlike using `setStyle` this will not change any current font fill/color settings.
	* 
	* The CSS font string can also be individually altered with the `font`, `fontSize`, `fontWeight`, `fontStyle`, and `fontVariant` properties.
	*/
	var cssFont:String;
	
	/**
	* A canvas fillstyle that will be used on the text eg 'red', '#00FF00'.
	*/
	var fill:Dynamic;
	
	/**
	* Change the font family that the text will be rendered in, such as 'Arial'.
	* 
	* Multiple CSS font families and generic fallbacks can be specified as long as
	* {@link http://www.w3.org/TR/CSS2/fonts.html#propdef-font-family CSS font-family rules} are followed.
	* 
	* To change the entire font string use {@link Phaser.Text#cssFont cssFont} instead: eg. `text.cssFont = 'bold 20pt Arial'`.
	*/
	var font:String;
	
	/**
	* The size of the font.
	* 
	* If the font size is specified in pixels (eg. `32` or `'32px`') then a number (ie. `32`) representing
	* the font size in pixels is returned; otherwise the value with CSS unit is returned as a string (eg. `'12pt'`).
	*/
	var fontSize:EitherType<Float, String>;
	
	/**
	* The style of the font: 'normal', 'italic', 'oblique'
	*/
	var fontStyle:String;
	
	/**
	* An array of the font styles values as specified by {@link Phaser.Text#addFontStyle addFontStyle}.
	*/
	var fontStyles:Array<String>;
	
	/**
	* The variant the font: 'normal', 'small-caps'
	*/
	var fontVariant:String;
	
	/**
	* The weight of the font: 'normal', 'bold', or {@link http://www.w3.org/TR/CSS2/fonts.html#propdef-font-weight a valid CSS font weight}.
	*/
	var fontWeight:EitherType<String, Float>;
	
	/**
	* An array of the font weights values as specified by {@link Phaser.Text#addFontWeight addFontWeight}.
	*/
	var fontWeights:Array<EitherType<String, Float>>;
	
	/**
	* Additional spacing (in pixels) between each line of text if multi-line.
	*/
	var lineSpacing:Float;
	
	/**
	* Specify a padding value which is added to the line width and height when calculating the Text size.
	* ALlows you to add extra spacing if Phaser is unable to accurately determine the true font dimensions.
	*/
	var padding:phaser.Point;
	
	/**
	* The coordinates, in pixels, of this DisplayObject, relative to its parent container.
	* 
	* The value of this property does not reflect any positioning happening further up the display list.
	* To obtain that value please see the `worldPosition` property.
	*/
	@:native("position")
	var Text_position:phaser.Point;
	
	/**
	* The resolution of the canvas the text is rendered to.
	* This defaults to match the resolution of the renderer, but can be changed on a per Text object basis.
	*/
	var resolution:Float;
	
	/**
	* The shadowBlur value. Make the shadow softer by applying a Gaussian blur to it. A number from 0 (no blur) up to approx. 10 (depending on scene).
	*/
	var shadowBlur:Float;
	
	/**
	* The color of the shadow, as given in CSS rgba format. Set the alpha component to 0 to disable the shadow.
	*/
	var shadowColor:String;
	
	/**
	* Sets if the drop shadow is applied to the Text fill.
	*/
	var shadowFill:Bool;
	
	/**
	* The shadowOffsetX value in pixels. This is how far offset horizontally the shadow effect will be.
	*/
	var shadowOffsetX:Float;
	
	/**
	* The shadowOffsetY value in pixels. This is how far offset vertically the shadow effect will be.
	*/
	var shadowOffsetY:Float;
	
	/**
	* Sets if the drop shadow is applied to the Text stroke.
	*/
	var shadowStroke:Bool;
	
	/**
	* The Regular Expression that is used to split the text up into lines, in
	* multi-line text. By default this is `/(?:\r\n|\r|\n)/`.
	* You can change this RegExp to be anything else that you may need.
	*/
	var splitRegExp:Dynamic;
	
	/**
	* A canvas fillstyle that will be used on the text stroke eg 'blue', '#FCFF00'.
	*/
	var stroke:String;
	
	/**
	* An array of the stroke color values as specified by {@link Phaser.Text#addStrokeColor addStrokeColor}.
	*/
	var strokeColors:Array<String>;
	
	/**
	* A number that represents the thickness of the stroke. Default is 0 (no stroke)
	*/
	var strokeThickness:Float;
	
	/**
	* The scale of this DisplayObject. A scale of 1:1 represents the DisplayObject
	* at its default size. A value of 0.5 would scale this DisplayObject by half, and so on.
	* 
	* The value of this property does not reflect any scaling happening further up the display list.
	* To obtain that value please see the `worldScale` property.
	*/
	@:native("scale")
	var Text_scale:phaser.Point;
	
	var tab:Float;
	
	/**
	* The size (in pixels) of the tabs, for when text includes tab characters. 0 disables.
	* Can be an integer or an array of varying tab sizes, one tab per element.
	* For example if you set tabs to 100 then when Text encounters a tab it will jump ahead 100 pixels.
	* If you set tabs to be `[100,200]` then it will set the first tab at 100px and the second at 200px.
	*/
	var tabs:EitherType<Float, Array<Float>>;
	
	/**
	* The text to be displayed by this Text object.
	* Use a \n to insert a carriage return and split the text.
	* The text will be rendered with any style currently set.
	*/
	var text:String;
	
	/**
	* The textBounds property allows you to specify a rectangular region upon which text alignment is based.
	* See `Text.setTextBounds` for more details.
	*/
	var textBounds:phaser.Rectangle;
	
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
	* Indicates if word wrap should be used.
	*/
	var wordWrap:Bool;
	
	/**
	* The width at which text will wrap.
	*/
	var wordWrapWidth:Float;
	
	/**
	* Set specific colors for certain characters within the Text.
	* 
	* It works by taking a color value, which is a typical HTML string such as `#ff0000` or `rgb(255,0,0)` and a position.
	* The position value is the index of the character in the Text string to start applying this color to.
	* Once set the color remains in use until either another color or the end of the string is encountered.
	* For example if the Text was `Photon Storm` and you did `Text.addColor('#ffff00', 6)` it would color in the word `Storm` in yellow.
	* 
	* If you wish to change the stroke color see addStrokeColor instead.
	* 
	* @param color A canvas fillstyle that will be used on the text eg `red`, `#00FF00`, `rgba()`.
	* @param position The index of the character in the string to start applying this color value from.
	* @return This Text instance.
	*/
	function addColor(color:String, position:Float):phaser.Text;
	
	/**
	* Set specific font styles for certain characters within the Text.
	* 
	* It works by taking a font style value, which is a typical string such as `normal`, `italic` or `oblique`.
	* The position value is the index of the character in the Text string to start applying this font style to.
	* Once set the font style remains in use until either another font style or the end of the string is encountered.
	* For example if the Text was `Photon Storm` and you did `Text.addFontStyle('italic', 6)` it would font style in the word `Storm` in italic.
	* 
	* If you wish to change the text font weight see addFontWeight instead.
	* 
	* @param style A canvas font-style that will be used on the text style eg `normal`, `italic`, `oblique`.
	* @param position The index of the character in the string to start applying this font style value from.
	* @return This Text instance.
	*/
	function addFontStyle(style:String, position:Float):phaser.Text;
	
	/**
	* Set specific font weights for certain characters within the Text.
	* 
	* It works by taking a font weight value, which is a typical string such as `normal`, `bold`, `bolder`, etc.
	* The position value is the index of the character in the Text string to start applying this font weight to.
	* Once set the font weight remains in use until either another font weight or the end of the string is encountered.
	* For example if the Text was `Photon Storm` and you did `Text.addFontWeight('bold', 6)` it would font weight in the word `Storm` in bold.
	* 
	* If you wish to change the text font style see addFontStyle instead.
	* 
	* @param style A canvas font-weight that will be used on the text weight eg `normal`, `bold`, `bolder`, `lighter`, etc.
	* @param position The index of the character in the string to start applying this font weight value from.
	* @return This Text instance.
	*/
	function addFontWeight(weight:String, position:Float):phaser.Text;
	
	/**
	* Set specific stroke colors for certain characters within the Text.
	* 
	* It works by taking a color value, which is a typical HTML string such as `#ff0000` or `rgb(255,0,0)` and a position.
	* The position value is the index of the character in the Text string to start applying this color to.
	* Once set the color remains in use until either another color or the end of the string is encountered.
	* For example if the Text was `Photon Storm` and you did `Text.addColor('#ffff00', 6)` it would color in the word `Storm` in yellow.
	* 
	* This has no effect if stroke is disabled or has a thickness of 0.
	* 
	* If you wish to change the text fill color see addColor instead.
	* 
	* @param color A canvas fillstyle that will be used on the text stroke eg `red`, `#00FF00`, `rgba()`.
	* @param position The index of the character in the string to start applying this color value from.
	* @return This Text instance.
	*/
	function addStrokeColor(color:String, position:Float):phaser.Text;
	
	/**
	* Clears any text fill or stroke colors that were set by `addColor` or `addStrokeColor`.
	* 
	* @return This Text instance.
	*/
	function clearColors():phaser.Text;
	
	/**
	* Clears any text styles or weights font that were set by `addFontStyle` or `addFontWeight`.
	* 
	* @return This Text instance.
	*/
	function clearFontValues():phaser.Text;
	
	/**
	* Converts individual font components (see `fontToComponents`) to a short CSS font string.
	* 
	* @param components Font components.
	*/
	function componentsToFont(components:Dynamic):String;
	
	/**
	* Destroy this Text object, removing it from the group it belongs to.
	* 
	* @param destroyChildren Should every child of this object have its destroy method called? - Default: true
	*/
	@:native("destroy")
	function Text_destroy(?destroyChildren:Bool):Void;
	
	/**
	* Converting a short CSS-font string into the relevant components.
	* 
	* @param font a CSS font string
	*/
	function fontToComponents(font:String):Dynamic;
	
	/**
	* Converts the given array into a tab delimited string and then updates this Text object.
	* This is mostly used when you want to display external data using tab stops.
	* 
	* The array can be either single or multi dimensional depending on the result you need:
	* 
	* `[ 'a', 'b', 'c' ]` would convert in to `"a\tb\tc"`.
	* 
	* Where as:
	* 
	* `[
	*       [ 'a', 'b', 'c' ],
	*       [ 'd', 'e', 'f']
	* ]`
	* 
	* would convert in to: `"a\tb\tc\nd\te\tf"`
	* 
	* @param list The array of data to convert into a string.
	* @return This Text instance.
	*/
	function parseList(list:Array<Dynamic>):phaser.Text;
	
	/**
	* Runs the given text through the Text.runWordWrap function and returns
	* the results as an array, where each element of the array corresponds to a wrapped
	* line of text.
	* 
	* Useful if you wish to control pagination on long pieces of content.
	* 
	* @param text The text for which the wrapping will be calculated.
	* @return An array of strings with the pieces of wrapped text.
	*/
	function precalculateWordWrap(text:String):Array<String>;
	
	/**
	* Automatically called by World.preUpdate.
	*/
	@:native("preUpdate")
	function Text_preUpdate():Void;
	
	/**
	* Renders a line of text that contains tab characters if Text.tab > 0.
	* Called automatically by updateText.
	* 
	* @param line The line of text to render.
	* @param x The x position to start rendering from.
	* @param y The y position to start rendering from.
	* @param fill If true uses fillText, if false uses strokeText.
	*/
	function renderTabLine(line:String, x:Float, y:Float, ?fill:Bool):Void;
	
	/**
	* Sets a drop shadow effect on the Text. You can specify the horizontal and vertical distance of the drop shadow with the `x` and `y` parameters.
	* The color controls the shade of the shadow (default is black) and can be either an `rgba` or `hex` value.
	* The blur is the strength of the shadow. A value of zero means a hard shadow, a value of 10 means a very soft shadow.
	* To remove a shadow already in place you can call this method with no parameters set.
	* 
	* @param x The shadowOffsetX value in pixels. This is how far offset horizontally the shadow effect will be.
	* @param y The shadowOffsetY value in pixels. This is how far offset vertically the shadow effect will be.
	* @param color The color of the shadow, as given in CSS rgba or hex format. Set the alpha component to 0 to disable the shadow. - Default: 'rgba(0,0,0,1)'
	* @param blur The shadowBlur value. Make the shadow softer by applying a Gaussian blur to it. A number from 0 (no blur) up to approx. 10 (depending on scene).
	* @param shadowStroke Apply the drop shadow to the Text stroke (if set). - Default: true
	* @param shadowFill Apply the drop shadow to the Text fill (if set). - Default: true
	* @return This Text instance.
	*/
	function setShadow(?x:Float, ?y:Float, ?color:Dynamic, ?blur:Float, ?shadowStroke:Bool, ?shadowFill:Bool):phaser.Text;
	
	/**
	* Set the style of the text by passing a single style object to it.
	* 
	* @param style The style properties to be set on the Text.
	* @param style .font The style and size of the font. - Default: 'bold 20pt Arial'
	* @param style .fontStyle The style of the font (eg. 'italic'): overrides the value in `style.font`. - Default: (from font)
	* @param style .fontVariant The variant of the font (eg. 'small-caps'): overrides the value in `style.font`. - Default: (from font)
	* @param style .fontWeight The weight of the font (eg. 'bold'): overrides the value in `style.font`. - Default: (from font)
	* @param style .fontSize The size of the font (eg. 32 or '32px'): overrides the value in `style.font`. - Default: (from font)
	* @param style .backgroundColor A canvas fillstyle that will be used as the background for the whole Text object. Set to `null` to disable.
	* @param style .fill A canvas fillstyle that will be used on the text eg 'red', '#00FF00'. - Default: 'black'
	* @param style .align Horizontal alignment of each line in multiline text. Can be: 'left', 'center' or 'right'. Does not affect single lines of text (see `textBounds` and `boundsAlignH` for that). - Default: 'left'
	* @param style .boundsAlignH Horizontal alignment of the text within the `textBounds`. Can be: 'left', 'center' or 'right'. - Default: 'left'
	* @param style .boundsAlignV Vertical alignment of the text within the `textBounds`. Can be: 'top', 'middle' or 'bottom'. - Default: 'top'
	* @param style .stroke A canvas stroke style that will be used on the text stroke eg 'blue', '#FCFF00'. - Default: 'black'
	* @param style .strokeThickness A number that represents the thickness of the stroke. Default is 0 (no stroke).
	* @param style .wordWrap Indicates if word wrap should be used.
	* @param style .wordWrapWidth The width in pixels at which text will wrap. - Default: 100
	* @param style .maxLines The maximum number of lines to be shown for wrapped text.
	* @param style .tabs The size (in pixels) of the tabs, for when text includes tab characters. 0 disables. Can be an array of varying tab sizes, one per tab stop.
	* @param update Immediately update the Text object after setting the new style? Or wait for the next frame.
	* @return This Text instance.
	*/
	function setStyle(?style:PhaserTextStyle, ?update:Bool):phaser.Text;
	
	/**
	* The text to be displayed by this Text object.
	* Use a \n to insert a carriage return and split the text.
	* The text will be rendered with any style currently set.
	* 
	* Use the optional `immediate` argument if you need the Text display to update immediately.
	* 
	* If not it will re-create the texture of this Text object during the next time the render
	* loop is called.
	* 
	* @param text The text to be displayed. Set to an empty string to clear text that is already present.
	* @param immediate Update the texture used by this Text object immediately (true) or automatically during the next render loop (false).
	* @return This Text instance.
	*/
	function setText(text:String, ?immediate:Bool):phaser.Text;
	
	/**
	* The Text Bounds is a rectangular region that you control the dimensions of into which the Text object itself is positioned,
	* regardless of the number of lines in the text, the font size or any other attribute.
	* 
	* Alignment is controlled via the properties `boundsAlignH` and `boundsAlignV` within the Text.style object, or can be directly
	* set through the setters `Text.boundsAlignH` and `Text.boundsAlignV`. Bounds alignment is independent of text alignment.
	* 
	* For example: If your game is 800x600 in size and you set the text bounds to be 0,0,800,600 then by setting boundsAlignH to
	* 'center' and boundsAlignV to 'bottom' the text will render in the center and at the bottom of your game window, regardless of
	* how many lines of text there may be. Even if you adjust the text content or change the style it will remain at the bottom center
	* of the text bounds.
	* 
	* This is especially powerful when you need to align text against specific coordinates in your game, but the actual text dimensions
	* may vary based on font (say for multi-lingual games).
	* 
	* If `Text.wordWrapWidth` is greater than the width of the text bounds it is clamped to match the bounds width.
	* 
	* Call this method with no arguments given to reset an existing textBounds.
	* 
	* It works by calculating the final position based on the Text.canvas size, which is modified as the text is updated. Some fonts
	* have additional padding around them which you can mitigate by tweaking the Text.padding property. It then adjusts the `pivot`
	* property based on the given bounds and canvas size. This means if you need to set the pivot property directly in your game then
	* you either cannot use `setTextBounds` or you must place the Text object inside another DisplayObject on which you set the pivot.
	* 
	* @param x The x coordinate of the Text Bounds region.
	* @param y The y coordinate of the Text Bounds region.
	* @param width The width of the Text Bounds region.
	* @param height The height of the Text Bounds region.
	* @return This Text instance.
	*/
	function setTextBounds(?x:Float, ?y:Float, ?width:Float, ?height:Float):phaser.Text;
	
	/**
	* Override this function to handle any special update requirements.
	*/
	@:native("update")
	function Text_update():Void;
	
	/**
	* Updates the internal `style.font` if it now differs according to generation from components.
	* 
	* @param components Font components.
	*/
	function updateFont(components:Dynamic):Void;
	
	/**
	* Updates a line of text, applying fill and stroke per-character colors or style and weight per-character font if applicable.
	*/
	function updateLine(text:String, ?x:Float, ?y:Float):Void;
	
	/**
	* Sets the Shadow on the Text.context based on the Style settings, or disables it if not enabled.
	* This is called automatically by Text.updateText.
	* 
	* @param state If true the shadow will be set to the Style values, otherwise it will be set to zero.
	*/
	function updateShadow(?state:Bool):Void;
	
	/**
	* Updates the texture based on the canvas dimensions.
	*/
	function updateTexture():Void;
	
}

