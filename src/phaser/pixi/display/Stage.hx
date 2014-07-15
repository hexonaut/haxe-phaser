package phaser.pixi.display;

@:native("PIXI.Stage")
extern class Stage extends phaser.pixi.display.DisplayObjectContainer {
	
	/**
	 * The interaction manage for this stage, manages all interactive activity on the stage
	 */
	var interactionManager:Dynamic;
	
	/**
	 * Whether the stage is dirty and needs to have interactions updated
	 */
	var dirty:Bool;
	
}
