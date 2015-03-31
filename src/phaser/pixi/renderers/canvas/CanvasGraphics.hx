package phaser.pixi.renderers.canvas;

@:native("PIXI.CanvasGraphics")
extern class CanvasGraphics {
	
	/**
	 * var colorR = (fillColor >> 16 &amp; 0xFF) / 255;
	 *         var colorG = (fillColor >> 8 &amp; 0xFF) / 255;
	 *         var colorB = (fillColor &amp; 0xFF) / 255; 
	 * 
	 * <pre>    colorR *= tintR;
	 *     colorG *= tintG;
	 *     colorB *= tintB;
	 * 
	 *     fillColor = ((colorR*255 &lt;&lt; 16) + (colorG*255 &lt;&lt; 8) + colorB*255);
	 * 
	 *     colorR = (lineColor &gt;&gt; 16 &amp; 0xFF) / 255;
	 *     colorG = (lineColor &gt;&gt; 8 &amp; 0xFF) / 255;
	 *     colorB = (lineColor &amp; 0xFF) / 255; 
	 * 
	 *     colorR *= tintR;
	 *     colorG *= tintG;
	 *     colorB *= tintB;
	 * 
	 *     lineColor = ((colorR*255 &lt;&lt; 16) + (colorG*255 &lt;&lt; 8) + colorB*255);
	 * </pre>
	 */
	var _fillTint:Dynamic;
	
}
