package phaser.pixi.text;

@:native("PIXI.Text")
extern class Text extends phaser.pixi.display.Sprite {
	
	/**
	 * The canvas element that everything is drawn to
	 */
	var canvas:Dynamic;
	
	/**
	 * The canvas 2d context that everything is drawn with
	 */
	var context:Dynamic;

	/**
	 * Destroys this text object
	 *
	 * @method destroy
	 * @param destroyBaseTexture {Boolean} whether to destroy the base texture as well
	*/
	function destroy (?destroyBaseTexture:Bool):Void;
	
	/**
	 * The resolution of the canvas.
	 */
	var resolution:Float;
	
}
