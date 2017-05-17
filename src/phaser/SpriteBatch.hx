package phaser;

/**
* The SpriteBatch class is a really fast version of the DisplayObjectContainer built purely for speed, so use when you need a lot of sprites or particles.
* It's worth mentioning that by default sprite batches are used through-out the renderer, so you only really need to use a SpriteBatch if you have over
* 1000 sprites that all share the same texture (or texture atlas). It's also useful if running in Canvas mode and you have a lot of un-rotated or un-scaled
* Sprites as it skips all of the Canvas setTransform calls, which helps performance, especially on mobile devices.
* 
* Please note that any Sprite that is part of a SpriteBatch will not have its bounds updated, so will fail checks such as outOfBounds.
*/
@:native("Phaser.SpriteBatch")
extern class SpriteBatch extends phaser.Group {

	/**
	* The SpriteBatch class is a really fast version of the DisplayObjectContainer built purely for speed, so use when you need a lot of sprites or particles.
	* It's worth mentioning that by default sprite batches are used through-out the renderer, so you only really need to use a SpriteBatch if you have over
	* 1000 sprites that all share the same texture (or texture atlas). It's also useful if running in Canvas mode and you have a lot of un-rotated or un-scaled
	* Sprites as it skips all of the Canvas setTransform calls, which helps performance, especially on mobile devices.
	* 
	* Please note that any Sprite that is part of a SpriteBatch will not have its bounds updated, so will fail checks such as outOfBounds.
	* 
	* @param game A reference to the currently running game.
	* @param parent The parent Group, DisplayObject or DisplayObjectContainer that this Group will be added to. If `undefined` or `null` it will use game.world.
	* @param name A name for this Group. Not used internally but useful for debugging. - Default: group
	* @param addToStage If set to true this Group will be added directly to the Game.Stage instead of Game.World.
	*/
	function new(game:phaser.Game, parent:pixi.DisplayObjectContainer, ?name:String, ?addedToStage:Bool);
	
}

