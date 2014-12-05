package phaser.pixi.display;

@:native("SpriteBatch")
extern class SpriteBatch {
	
	/**
	 * The SpriteBatch class is a really fast version of the DisplayObjectContainer 
	 * built solely for speed, so use when you need a lot of sprites or particles.
	 * And it's extremely easy to use : 
	 * 
	 * <pre>var container = new PIXI.SpriteBatch();
	 * 
	 * stage.addChild(container);
	 * 
	 * for(var i  = 0; i &lt; 100; i++)
	 * {
	 *     var sprite = new PIXI.Sprite.fromImage("myImage.png");
	 *     container.addChild(sprite);
	 * }
	 * </pre>
	 * 
	 * And here you have a hundred sprites that will be renderer at the speed of light
	 */
	function new (Texture:Dynamic);
	
}
